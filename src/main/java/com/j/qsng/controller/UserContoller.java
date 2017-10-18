package com.j.qsng.controller;

import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.common.pojo.SystemContext;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.dto.UserActivityDto;
import com.j.qsng.model.Attachment;
import com.j.qsng.model.User;
import com.j.qsng.model.UserActivity;
import com.j.qsng.service.AttachmentService;
import com.j.qsng.service.UserActivityService;
import com.j.qsng.service.UserService;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
public class UserContoller extends BaseController
{
	//控制上传图片格式
	private final static List<String> imgTypes = Arrays.asList("jpg","jpeg","gif","png","JPEG","JPG");

	private final static String  UPLOADPAH="/resources/upload/";
	private final static String  UPLOADTHUMPAH="/resources/upload/thumbnail/";

	@Autowired AttachmentService attachmentService;

	@Autowired UserActivityService userActivityService;

	@Autowired UserService userService;
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
	public ModelAndView showproduct(HttpServletRequest req){
		String msisdn = (String) req.getSession().getAttribute("msisdn");
		ModelAndView mode = new ModelAndView();
		mode.setViewName("/user/showproduct");
		if(StringUtils.isEmpty(msisdn)){
			//跳转登录界面
		}
		UserActivity oldUa = userActivityService.querybyMsisdn(msisdn);
		String realPath= SystemContext.getRealPath();
		String path = realPath+UPLOADPAH;
		String thumbPath = realPath+UPLOADTHUMPAH;

		//不为null进入展示界面，为null进入上传界面
		if(oldUa!=null){
			UserActivityDto uadto = userActivityService.queryDtobyMsisdn(msisdn);
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
			mode.setViewName("/user/showproduct");
			mode.addObject("uadto",uadto);
			mode.addObject("message","你已经提交过作品");
			return mode;
		}else{

			return new ModelAndView("redirect:/user/upload.html");
		}
	}

	@RequestMapping(value = "/user/addUserPics",method = RequestMethod.POST)
	public ModelAndView addUserPics(UserActivity userActivity){
		ModelAndView mode = new ModelAndView();
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
			mode.setViewName("/user/showproduct");
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
		mode.setViewName("/user/showproduct");

		return mode;
	}





	@RequestMapping(value = "/user/pic/upload",method= RequestMethod.POST)
	@ResponseBody
	public Object uploadPic(@RequestParam ("attachs") MultipartFile[] attachs,HttpServletRequest req) throws IOException
	{
		BaseResp resp  = new BaseResp();
		resp.setCode("000000");
		resp.setInfo("sccuess");
		List<Attachment> list = new ArrayList<Attachment>();
		String realPath= SystemContext.getRealPath();
		String path = realPath+UPLOADPAH;
		String thumbPath = realPath+UPLOADTHUMPAH;
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





}
