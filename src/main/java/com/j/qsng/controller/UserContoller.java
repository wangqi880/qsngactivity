package com.j.qsng.controller;

import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.common.pojo.SystemContext;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.dto.UserPicDto;
import com.j.qsng.dto.UserPicShowDto;
import com.j.qsng.model.Attachment;
import com.j.qsng.model.User;
import com.j.qsng.model.UserPic;
import com.j.qsng.service.AttachmentService;
import com.j.qsng.service.UserActivityService;
import com.j.qsng.service.UserPicService;
import com.j.qsng.service.UserService;
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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
	private final static List<String> imgTypes = Arrays.asList("jpg","jpeg","gif","png","JPEG","JPG");

	private final static String  UPLOADPAH="/resources/upload/";
	private final static String  UPLOADTHUMPAH="/resources/upload/thumbnail/";

	@Autowired AttachmentService attachmentService;

	@Autowired UserActivityService userActivityService;

	@Autowired UserService userService;
	@Autowired UserPicService userPicService;
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

		mode.addObject("userPicShowDtoList",userPicShowDtoList);
		mode.addObject("message","你已经提交过作品");
		return mode;
	}

	@RequestMapping(value = "/user/addUserPics",method = RequestMethod.POST)
	public ModelAndView addUserPics(UserPicDto userPicDto,HttpSession session){
		ModelAndView mode = new ModelAndView();

		User user = (User) session.getAttribute("loginUser");
		String userId = String.valueOf(user.getId());

		//如果已经上传那么调到展示界面
		List<UserPic> oldUp = userPicService.queryByUserId(userId+"");
		if(!CollectionUtils.isEmpty(oldUp) && oldUp.size()>=2){
			mode.setViewName("redirect:/user/showproduct.html");
			mode.addObject("message","你已经提交过作品并且已经大于2个");
			return mode;
		}


		if(StringUtils.isNotEmpty(userPicDto.getAttachmentId1())){
			UserPic userPic = new UserPic();
			userPic.setUserId(String.valueOf(userId));
			userPic.setImageName(userPicDto.getImageName1());
			userPic.setAttachmentId(userPicDto.getAttachmentId1());
			userPic.setIntro(userPicDto.getIntro1());
			userPicService.add(userPic);
		}

		if(StringUtils.isNotEmpty(userPicDto.getAttachmentId2())){
			UserPic userPic = new UserPic();
			userPic.setUserId(String.valueOf(userId));
			userPic.setImageName(userPicDto.getImageName2());
			userPic.setAttachmentId(userPicDto.getAttachmentId2());
			userPic.setIntro(userPicDto.getIntro2());
			userPicService.add(userPic);
		}
		mode.setViewName("redirect:/user/showproduct.html");
		mode.addObject("message","欢迎提交作品");
		return mode;

		/*ModelAndView mode = new ModelAndView();
		mode.setViewName("/user/showproduct");
		userActivity.setId(IDUtils.genItemId());
		UserActivity oldUa = userActivityService.querybyMsisdn(userActivity.getMsisdn());

		String realPath= SystemContext.getRealPath();

		String path = realPath+UPLOADPAH;
		String thumbPath = realPath+UPLOADTHUMPAH;
		if(StringUtils.isEmpty(userActivity.getAttachIds())){
			//为null,那么进入异常界面
		}
		if(oldUa!=null){
			UserActivityDto uadto = userActivityService.queryDtobyMsisdn(userActivity.getMsisdn());
			String attIds = uadto.getAttachIds();
			String [] arryAttIds=StringUtils.split(attIds,",");
			List<Attachment> list = new ArrayList<Attachment>();
			for(String aid :arryAttIds){
				Attachment ament = attachmentService.load(aid);
				ament.setFilePath(path+""+ament.getNewName());
				ament.setThumFilePath(thumbPath+""+ament.getNewName());
				list.add(ament);

			}
			uadto.setAttachList(list);
			mode.setViewName("redirect:/user/showproduct.html");
			mode.addObject("uadto",uadto);
			mode.addObject("message","你已经提交过作品");
			return mode;
		}
		userActivity.setInsertTime(DateUtils.getStandardNowDateTime());
		userActivityService.add(userActivity);
		UserActivityDto uadto = new UserActivityDto();
		BeanUtils.copyProperties(userActivity,uadto);

		String attIds = userActivity.getAttachIds();
		String [] arryAttIds=StringUtils.split(attIds,",");
		List<Attachment> list = new ArrayList<Attachment>();
		for(String aid :arryAttIds){
			Attachment ament = attachmentService.load(aid);
			ament.setFilePath(path+""+ament.getNewName());
			ament.setThumFilePath(thumbPath+""+ament.getNewName());
			list.add(ament);

		}
		uadto.setAttachList(list);
		mode.addObject("uadto",uadto);
		mode.addObject("message","欢迎提交作品");
		mode.setViewName("redirect:/user/showproduct.html");

		return mode;*/
	}





	@RequestMapping(value = "/user/pic/upload",method= RequestMethod.POST)
	@ResponseBody
	public Object uploadPic(HttpServletRequest req,HttpSession session) throws IOException
	{
		BaseResp resp  = new BaseResp();
		resp.setCode("000000");
		resp.setInfo("sccuess");
		List<Attachment> list = new ArrayList<Attachment>();

		User u = (User) session.getAttribute("loginUser");

		/*if(null==u){
			resp.setCode("000005");
			resp.setInfo("登录失效，请重新登录");
			return  resp;
		}*/

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
					resp.setInfo("只支持图片上传请上传图片");
				}else{
					att.setIsImg(1);
				}
				long id = IDUtils.genItemId();
				att.setId(id);
				/*att.setUserId(u.getId());*/
				att.setUserId(110);
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
		modelAndView.addObject("user",user);
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
	public ModelAndView userInfo(HttpSession session){
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("user/userInfo");
		User u = (User) session.getAttribute("loginUser");
		String userId=String.valueOf(u.getId());
		modelAndView.addObject("user",u);
		List<UserPicShowDto> list = userPicService.queryUserPicDtoByUserId(userId);
		modelAndView.addObject("userPicShowList",list);
		return modelAndView;
	}

	//修改用户信息
	@RequestMapping(value = "/user/updateUserInfo.do",method =RequestMethod.POST)
	public ModelAndView updateUserInfo(User user){

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/user/userInfo.html");
		User oldU = userService.queryById(String.valueOf(user.getId()));
		if(!oldU.getMsisdn().equals(user.getMsisdn()) || oldU.getAge()!=user.getAge()){
			//更新msisdn和age
			oldU.setMsisdn(user.getMsisdn());
			oldU.setAge(user.getAge());
			oldU.setUpdateTime(DateUtils.getStandardNowDateTime());
			userService.update(oldU);
		}
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


		String userId=String.valueOf(u.getId());
		if(!oldAttachmentId.equals(userPic.getAttachmentId())){
			//如果不想等，那么就是重新上传了,那么必须删除重新传
			userPic.setId(String.valueOf(IDUtils.genItemId()));
			userPic.setUserId(userId);
			userPicService.updateUserPic(userPic,oldAttachmentId);

		}else{
			UserPic oldUserPic = userPicService.queryByUserIdAndAttachmentId(userId,oldAttachmentId);
			if(!(oldUserPic.getImageName().equals(userPic.getImageName()))){
				oldUserPic.setImageName(userPic.getImageName());
			}
			oldUserPic.setIntro(userPic.getIntro());
			userPicService.updateNameAndInfo(oldUserPic);
		}
		return modelAndView;


	}

	//删除用户上传记录
	@RequestMapping("/user/deleteUserPic.do")
	public ModelAndView deleteUserPic(@RequestParam String attachmentId,HttpSession session){
		User u = (User) session.getAttribute("loginUser");
		String userId =String.valueOf(u.getId());
		userPicService.delByUserIdAndAttachmentId(userId,attachmentId);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/user/userInfo.html");
		return modelAndView;
	}
}
