package com.j.qsng.controller;

import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.common.pojo.ChooseUtils;
import com.j.qsng.common.pojo.SystemContext;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.common.util.IdcardUtils;
import com.j.qsng.common.util.PictureUtils;
import com.j.qsng.dto.ChooseUserPicDto;
import com.j.qsng.dto.IdCardDto;
import com.j.qsng.dto.UserPicDto;
import com.j.qsng.dto.UserPicShowDto;
import com.j.qsng.model.Attachment;
import com.j.qsng.model.User;
import com.j.qsng.model.UserPic;
import com.j.qsng.service.*;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/14.
 */
@Controller
public class UserContoller
{
	//控制上传图片格式
	private final static List<String> imgTypes = PictureUtils.imgTypes;

	private final static String  UPLOADPAH="/resources/upload/";
	private final static String  UPLOADTHUMPAH="/resources/upload/thumbnail/";
	private final static  int UPLOADLIMITNUM=4;

	//上传图片最小大小
	private final static  int PICTURE_MIN=1000000;
	//上传图片最大大小
	private final static  int PICTURE_MAX=20000000;

	@Autowired AttachmentService   attachmentService;


	@Autowired UserService         userService;
	@Autowired UserPicService      userPicService;
	@Autowired AdminUserPicService adminUserPicService;
	@Autowired ConfigService       configService;

	@Autowired
	ChooseLogService chooseLogService;
	//进入活动上传也，需要登录之后
	@RequestMapping("/user/joinActivity.html")
	public ModelAndView getJoinActivity(HttpServletRequest request){
		ModelAndView mode = new ModelAndView();
		mode.setViewName("/user/joinActivity");
		request.getSession().setAttribute("user","wq");
		mode.addObject("session",request.getSession());
		return mode;
	}
	@RequestMapping(value = "/test")
	@ResponseBody
	public Object test(){
		BaseResp resp  = new BaseResp();
		resp.setCode("000000");
		resp.setInfo("sccuess");
		return resp;
	}

	//单用户作品展示
	@RequestMapping("/user/showproduct.html")
	public ModelAndView showproduct(HttpServletRequest req,HttpSession session){
		User user = (User) session.getAttribute("loginUser");
		String userId = String.valueOf(user.getId());
		List<UserPic> userPicList = userPicService.queryByUserId(userId);
		ModelAndView mode = new ModelAndView();
		mode.setViewName("/user/showproduct");
		mode.addObject("user",user);

		//如果没有上传，那么跳转到上传界面
		if(CollectionUtils.isEmpty(userPicList)){
			mode.setViewName("redirect:/user/upload.html");
			return mode;
		}

		List<UserPicShowDto> userPicShowDtoList = new ArrayList<UserPicShowDto>();
		for(UserPic up:userPicList){
			UserPicShowDto upsd = new UserPicShowDto();
			Attachment attachment = attachmentService.load(up.getAttachmentId());
			upsd.setAttachment(attachment);
			upsd.setImageName(up.getImageName());
			upsd.setIntro(up.getIntro());
			userPicShowDtoList.add(upsd);
		}
		int myNum=userPicShowDtoList.size();
		mode.addObject("userPicShowDtoList",userPicShowDtoList);
			mode.addObject("message","已提交"+myNum);
		mode.addObject("myNum",myNum);
		mode.addObject("uploadLimitNum",UPLOADLIMITNUM);
		String isToUpload="0";
		if(myNum<UPLOADLIMITNUM){
			isToUpload="1";
		}
		mode.addObject("isToUpload",isToUpload);
		mode.addObject("num",UPLOADLIMITNUM-myNum);
		return mode;
	}

	@RequestMapping(value = "/user/addUserPics",method = RequestMethod.POST)
	public ModelAndView addUserPics(UserPicDto userPicDto,HttpSession session){
		ModelAndView mode = new ModelAndView();

		//是否添加控制
		String isAllow = configService.getConfigvalue(ChooseUtils.USER_ALLOW_ADD_USER_PIC);
		if(!("1".equals(isAllow))){
			mode.addObject("message","添加时间已经过了，不允许添加");
			mode.setViewName("/common/message");
			return mode;
		}
		//时间是否上传控制
		boolean flag = ipUpdate();
		if(!flag){
			mode.setViewName("redirect:/user/upload.html");
			return mode;
		}
		User user = (User) session.getAttribute("loginUser");
		String userId = String.valueOf(user.getId());

		//如果已经上传那么调到展示界面
		List<UserPic> oldUp = userPicService.queryByUserId(userId+"");
		if(!CollectionUtils.isEmpty(oldUp) && oldUp.size()>=UPLOADLIMITNUM){
			mode.setViewName("redirect:/user/showproduct.html");
			mode.addObject("message","你已经提交过作品并且已经大于"+UPLOADLIMITNUM);
			return mode;
		}
		if(StringUtils.isNotEmpty(userPicDto.getAttachmentId1())){
			UserPic userPic = new UserPic();
			userPic.setUserId(String.valueOf(userId));
			userPic.setImageName(userPicDto.getImageName1());
			userPic.setAttachmentId(userPicDto.getAttachmentId1());
			userPic.setIntro(userPicDto.getIntro1());
			userPic.setCreationDate(userPicDto.getCreationDate());
			userPicService.add(userPic);
		}
		mode.setViewName("redirect:/user/showproduct.html");
		mode.addObject("message","欢迎提交作品");
		return mode;
	}





	@RequestMapping(value = "/user/pic/upload",method= RequestMethod.POST)
	@ResponseBody
	public Object uploadPic(HttpServletRequest req,HttpSession session) throws IOException
	{
		BaseResp resp  = new BaseResp();
		resp.setCode("000000");
		resp.setInfo("sccuess");
		String isAllow = configService.getConfigvalue(ChooseUtils.USER_ALLOW_UPLOAD);
		if(!("1".equals(isAllow))){
			resp.setCode("666666");
			resp.setInfo("上传时间已过，不允许上传");
			return  resp;
		}

		List<Attachment> list = new ArrayList<Attachment>();

		User u = (User) session.getAttribute("loginUser");
		String realPath= SystemContext.getRealPath();

		String path = UPLOADPAH;
		String thumbPath = UPLOADTHUMPAH;
		MultipartHttpServletRequest MulRequest = req instanceof MultipartHttpServletRequest ? (MultipartHttpServletRequest) req : null;
		Map<String, MultipartFile> map = MulRequest.getFileMap();
		try
		{
			for(Map.Entry<String, MultipartFile> entry:map.entrySet()){
				Attachment att = new Attachment();
				MultipartFile attach=entry.getValue();

				String ext = FilenameUtils.getExtension(attach.getOriginalFilename());
				if(!imgTypes.contains(ext))
				{
					resp.setCode("000001");
					resp.setInfo("只支持图片上传,请上传图片");
					return resp;
				}else{
					att.setIsImg(1);
				}
				if(attach.getSize()<PICTURE_MIN || attach.getSize()>PICTURE_MAX){
					resp.setCode("000002");
					resp.setInfo("图片只能1MB以上，20MB以下");
					return resp;
				}

				long id = IDUtils.genItemId();
				att.setId(id);
				/*att.setUserId(u.getId());*/
				att.setUserId(u.getId());
				att.setNewName(String.valueOf(new Date().getTime()) + "." + ext);
				att.setOldName(FilenameUtils.getBaseName(attach.getOriginalFilename()));
				att.setSuffix(ext);
				att.setType(attach.getContentType());
				att.setSize(attach.getSize());
				attachmentService.add(att, attach.getInputStream());
				att.setFilePath(path+""+att.getNewName());
				att.setThumFilePath(thumbPath+""+att.getNewName());
				list.add(att);
			}
		}catch (Exception e){
			resp.setCode("999999");
			resp.setInfo("上传图片失败");
		}
		resp.setData(list);
		return resp;


	}



	@RequestMapping(value="/user/upload.html")
	public ModelAndView upload(HttpServletRequest resp,HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("user/upload");
		User user = (User)session.getAttribute("loginUser");
		List<UserPic> oldUp = userPicService.queryByUserId(user.getId()+"");
		//已经达到作品数量限制，跳转到展示界面
		if(oldUp.size()>=UPLOADLIMITNUM){
			modelAndView.setViewName("redirect:/user/showproduct.html");
			modelAndView.addObject("message","以达到作品数量上限");
		}
		modelAndView.addObject("user",user);
		modelAndView.addObject("num",oldUp.size());
		modelAndView.addObject("canupNum",UPLOADLIMITNUM-oldUp.size());
		return modelAndView;
	}




	@RequestMapping(value="/user/test.html")
	public ModelAndView test1(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("user/test");
		return modelAndView;
	}

	@RequestMapping(value="/user/test2.html")
	public ModelAndView test2(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("user/test2");
		return modelAndView;
	}

	@RequestMapping("/user/userInfo.html")
	public ModelAndView userInfo(String messageType,HttpSession session){
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("user/userInfo");
		User u = (User) session.getAttribute("loginUser");
		String userId=String.valueOf(u.getId());
		User user = userService.queryById(userId);
		modelAndView.addObject("user",user);
		List<UserPicShowDto> list = userPicService.queryUserPicDtoByUserId(userId);
		modelAndView.addObject("userPicShowList",list);
		if("1".equals(messageType)){
			modelAndView.addObject("message","请填写正确的身份证");
		}
		//查看该用户在那个阶段
		List<ChooseUserPicDto>  userDataList= chooseLogService.queryUserIdAndPeriod(userId,ChooseUtils.FIRST_PERIOD,ChooseUtils.NO_CHOOSE);
		List<ChooseUserPicDto>  first= chooseLogService.queryUserIdAndPeriod(userId,ChooseUtils.FIRST_PERIOD,ChooseUtils.YES_CHOOSE);
		List<ChooseUserPicDto>  second= chooseLogService.queryUserIdAndPeriod(userId,ChooseUtils.SECOND_PERIOD,ChooseUtils.YES_CHOOSE);

		//获奖阶段
		String is_allowd_prize_show =configService.getConfigvalue(ChooseUtils.IS_ALLOWD_PRIZE_SHOW);
		if(("1".equals(is_allowd_prize_show))){
			List<ChooseUserPicDto>  dataList= chooseLogService.queryPrizeInfo(ChooseUtils.SECOND_PERIOD,0,95);
			List<ChooseUserPicDto> huojiangList = new ArrayList<ChooseUserPicDto>();
			String stage_message="";
			for(ChooseUserPicDto ccuuppdd:dataList){
				if(ccuuppdd.getUserId().equals(userId)){
					huojiangList.add(ccuuppdd);
				}
			}
			if(!CollectionUtils.isEmpty(huojiangList)){
				stage_message="恭喜你获奖，请在获奖名单中查看， 以获奖名单为准。";
			}
			if(CollectionUtils.isEmpty(huojiangList)){
				List<ChooseUserPicDto>  huanyDataList= chooseLogService.queryPrizeInfo(ChooseUtils.FIRST_PERIOD,0,5);
				for(ChooseUserPicDto hdl:huanyDataList){
					if(hdl.getUserId().equals(userId)){
						huojiangList.add(hdl);
					}
				}
				if(!CollectionUtils.isEmpty(huojiangList)){
					stage_message="恭喜你获最受欢迎奖，请在欢迎奖名单中查看。已获奖名单为准。";
				}
			}


			if(StringUtils.isEmpty(stage_message)){
				stage_message="对不起您未获奖。";
			}
			modelAndView.addObject("stage_message",stage_message);
			modelAndView.addObject("dataList",huojiangList);

		}else{
			if(!CollectionUtils.isEmpty(second)){
				modelAndView.addObject("dataList",second);
				modelAndView.addObject("stage_message","恭喜您进入复赛");
			}else if(!CollectionUtils.isEmpty(first)){
				modelAndView.addObject("dataList",first);
				modelAndView.addObject("stage_message","恭喜您进入初赛，可在首页参赛作品中进行点赞");
			}else if(!CollectionUtils.isEmpty(userDataList)){
				modelAndView.addObject("stage_message","对不起您未进入初赛");
			}
		}


		return modelAndView;
	}

	//修改用户信息
	@RequestMapping(value = "/user/updateUserInfo.do",method =RequestMethod.POST)
	public ModelAndView updateUserInfo(User user){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/user/userInfo.html");
		User oldU = userService.queryById(String.valueOf(user.getId()));
		IdCardDto idCardDto = IdcardUtils.parseCertificateNo(user.getCardId());
		if(!IdcardUtils.validateCard(user.getCardId().trim())){
			//身份证格式问题
			modelAndView.addObject("message","身份证格式问题");
			modelAndView.setViewName("redirect:/user/userInfo.html?messageType=1");

			return modelAndView;
		}

		//更新msisdn和age
			oldU.setMsisdn(user.getMsisdn());
			oldU.setCardId(user.getCardId().trim());
			oldU.setName(user.getName().trim());
			oldU.setSex(user.getSex());
			oldU.setAge(idCardDto.getAge());
			oldU.setUpdateTime(DateUtils.getStandardNowDateTime());
			userService.update(oldU);

		return  modelAndView;
	}

	//进入用户修改上传图片界面
	@RequestMapping("/user/updateUserPic/{attachmentId}")
	public ModelAndView updateUserPic(@PathVariable String attachmentId,HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/user/updateUserPic");


		User u = (User) session.getAttribute("loginUser");
		String userId = String.valueOf(u.getId());
		Attachment attachment = attachmentService.load(attachmentId);
		UserPic userPic = userPicService.queryByUserIdAndAttachmentId(userId,attachmentId);
		UserPicShowDto upsd = new UserPicShowDto();
		upsd.setAttachment(attachment);
		upsd.setUserPic(userPic);
		modelAndView.addObject("user",u);
		modelAndView.addObject("upsd",upsd);
		return modelAndView;
	}

	//修改上传图片信息与上传图片
	@RequestMapping(value = "/user/updateUserPicOne",method = RequestMethod.POST)
	public ModelAndView updateUserPicPost(UserPic userPic,String oldAttachmentId,HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/user/showproduct.html");
		User u = (User) session.getAttribute("loginUser");

		//判断是否允许修改
		String isAllow = configService.getConfigvalue(ChooseUtils.USER_ALLOW_UPDATE);
		if(!("1".equals(isAllow))){
			modelAndView.addObject("message","修改时间已过，不允许修改");
			modelAndView.setViewName("/common/message");
			return  modelAndView;
		}


		//是否可以修改判断
		boolean flag = ipUpdate();
		if(!flag){
			modelAndView.setViewName("redirect:/user/updateUserPic/"+oldAttachmentId);
			modelAndView.addObject("message","已经超过修改期限");
			return modelAndView;
		}
		String userId=String.valueOf(u.getId());
		if((StringUtils.isNotEmpty(userPic.getAttachmentId())) && (!oldAttachmentId.equals(userPic.getAttachmentId()))){
			userPic.setId(String.valueOf(IDUtils.genItemId()));
			userPic.setUserId(userId);
			userPicService.updateUserPic(userPic,oldAttachmentId);

		}else{
			UserPic oldUserPic = userPicService.queryByUserIdAndAttachmentId(userId,oldAttachmentId);
			if(!(oldUserPic.getImageName().equals(userPic.getImageName()))){
				oldUserPic.setImageName(userPic.getImageName());
			}
			oldUserPic.setIntro(userPic.getIntro());
			oldUserPic.setCreationDate(userPic.getCreationDate());
			userPicService.updateNameAndInfo(oldUserPic);
		}
		return modelAndView;


	}

	//删除用户上传记录
	@RequestMapping("/user/deleteUserPic.do")
	public ModelAndView deleteUserPic(@RequestParam String attachmentId,HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/user/userInfo.html");
		//判断是否允许修改
		String isAllow = configService.getConfigvalue(ChooseUtils.USER_ALLOW_UPDATE);
		if(!("1".equals(isAllow))){
			modelAndView.addObject("message","修改时间已过，不允许修改");
			modelAndView.setViewName("/common/message");
			return  modelAndView;
		}
		User u = (User) session.getAttribute("loginUser");
		String userId =String.valueOf(u.getId());
		userPicService.delByUserIdAndAttachmentId(userId,attachmentId);

		return modelAndView;
	}

	//查看是否可以上传作品
	@RequestMapping("/user/isUploadPermission")
	@ResponseBody
	public Object isUploadPermission(HttpSession session){
		BaseResp resp = new BaseResp();
		User u = (User) session.getAttribute("loginUser");
		String userId = String.valueOf(u.getId());
		boolean flag = isUpload();
		if(flag){
			resp.setCode("000000");
			resp.setInfo("可以上传");
		}else{
			resp.setCode("000002");
			resp.setInfo("上传时间已过，不能上传");
			return resp;
		}

		List<UserPic> oldUp = userPicService.queryByUserId(userId+"");
		if(!CollectionUtils.isEmpty(oldUp) && oldUp.size()>=UPLOADLIMITNUM){
			resp.setCode("000001");
			resp.setInfo("已经达到上传上限，不可上传");
			resp.setData(false);
		}else {
			resp.setCode("000000");
			resp.setInfo("可以上传");
			resp.setData(true);
		}
		return resp;
	}

	//是否能修改照片信息
	@RequestMapping("/user/updateUserPicDateLimit")
	@ResponseBody
	public Object updateUserPicDateLimit(){
		BaseResp resp = new BaseResp();
		String limtDate = configService.getConfigvalue("limit_update_pic_date");
		boolean flag=ipUpdate();
		if(flag){
			resp.setCode("000000");
			resp.setInfo("可以修改");
		}else {
			resp.setCode("000001");
			resp.setInfo("修改时间已过，不能修改");
		}
		return  resp;
	}

	//是否可以修改作品
	public boolean ipUpdate(){
		String limtDate = configService.getConfigvalue("limit_update_pic_date");
		if(StringUtils.isNotEmpty(limtDate)){
			long nowDatevalue = new Date().getTime();
			long limtDateValue =0;
			try
			{
				limtDateValue=DateUtils.toUnixTime(limtDate,DateUtils.STANDARD_DATETIME_FORMAT);
			}
			catch (ParseException e)
			{
				System.out.println("修改时间戳转换失败");
				limtDateValue=nowDatevalue;
			}

			if(nowDatevalue>limtDateValue){
				return false;
			}else {
				return true;
			}
		}
		return false;
	}


	//是否可以上传作品
	@RequestMapping("/user/uploadUserPicDateLimit")
	@ResponseBody
	public Object uploadUserPicDateLimit(){
		BaseResp resp = new BaseResp();
		boolean flag = isUpload();
		if(flag){
			resp.setCode("000000");
			resp.setInfo("可以上传");
		}else{
			resp.setCode("000001");
			resp.setInfo("上传时间已过，不能上传");
		}
		return  resp;
	}
	//是否可以上传作品函数
	public boolean isUpload(){
		String limtDate = configService.getConfigvalue("limit_upoad_pic_date");

		if(StringUtils.isNotEmpty(limtDate)){
			long nowDatevalue = new Date().getTime();
			long limtDateValue =0;
			try
			{
				limtDateValue=DateUtils.toUnixTime(limtDate,DateUtils.STANDARD_DATETIME_FORMAT);
			}
			catch (ParseException e)
			{
				System.out.println("修改时间戳转换失败");
				limtDateValue=nowDatevalue;
			}

			if(nowDatevalue>limtDateValue){
				return false;
			}else {
				return  true;
			}

		}
		return true;
	}

//普通用户退出
	@RequestMapping("/user/logout")
	public ModelAndView userLogout(HttpSession session){
		session.removeAttribute("loginUser");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/index/indexnew.html");
		return modelAndView;
	}
	//查看用户是否允许添加照片
	@RequestMapping("/user/isAddUserpic")
	@ResponseBody
	public  Object isAddUserpic(String userId){
		BaseResp resp = new BaseResp();
		resp.setCode("000000");
		resp.setInfo("成功");
		int num=userPicService.queryNumByUserId(userId);
		if(1==num){
			resp.setCode("000001");
			resp.setInfo("每人参赛作品不能超过2张");
		}
		return resp;
	}
}
