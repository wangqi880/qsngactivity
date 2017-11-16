package com.j.qsng.controller;

import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.common.util.IdcardUtils;
import com.j.qsng.dto.IdCardDto;
import com.j.qsng.model.User;
import com.j.qsng.model.admin.AdminUser;
import com.j.qsng.service.AdminUserService;
import com.j.qsng.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

/**
 * Created by Administrator on 2017/10/17.
 */
@Controller
public class LoginController
{
	final static String SUCCESS="success";
	@Autowired UserService userService;
	@Autowired
	AdminUserService adminUserService;
	//用户提交注册
	@RequestMapping (value = "/login/register",method= RequestMethod.POST)
	@ResponseBody
	public Object register(User user){
		String isOk = isNull(user);
		BaseResp resp =  new BaseResp();
		resp.setCode("000000");
		if(!SUCCESS.equals(isOk)){
			//返回提示错误信息
			resp.setCode("000002");
			resp.setInfo(isOk);
			return resp;
		}
		//校验身份证格式
		if(!IdcardUtils.validateCard(user.getCardId())){
			resp.setCode("000003");
			resp.setInfo("请填写正确的身份证");
			return resp;
		}
		String isRepeat= isRepeat(user);
		if(!SUCCESS.equals(isRepeat)){
			resp.setCode("000004");
			resp.setInfo(isRepeat);
			return resp;
		}
		IdCardDto idCardDto = IdcardUtils.parseCertificateNo(user.getCardId());
		user.setAge(idCardDto.getAge());
		user.setId(IDUtils.genItemId());
		user.setInsertTime(DateUtils.getStandardNowDateTime());
		user.setUpdateTime(DateUtils.getStandardNowDateTime());
		userService.add(user);
		resp.setInfo("添加用户成功");

		return resp;
	}

	//跳转注册界面，但是使用的是index开头的
	@RequestMapping("/login/register.html")
	public ModelAndView toRegister(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login/register");
		return modelAndView;

	}

	//跳转登录界面，但是使用的是index开头的
	@RequestMapping("/login/login.html")
	public  ModelAndView toLogin(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login/login");
		return modelAndView;

	}


	//登录接口
	@RequestMapping("/login/login")
	public ModelAndView login(User user,HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		if(null==user||StringUtils.isEmpty(user.getUsername()) || StringUtils.isEmpty(user.getPassword())){
			modelAndView.setViewName("/login/login");
			modelAndView.addObject("message","账户或者密码不为空");
			return modelAndView;
		}
		//判断用户是否用登录权限
		User oldU = userService.queryByLogin(user.getUsername(),user.getUsername(),user.getUsername(),user.getPassword());
		AdminUser adminUser =adminUserService.queryByLogin(user.getUsername(),user.getPassword());
		if(null!=oldU)
		{
			modelAndView.setViewName("redirect:/index/indexnew.html");
			session.setAttribute("loginUser", oldU);
		}
		else if(null!=adminUser){
			modelAndView.setViewName("redirect:/admin");
			session.setAttribute("role",adminUser.getRole());
			session.setAttribute("adminUser", adminUser);
		}else{
			modelAndView.setViewName("/login/login");
			modelAndView.addObject("message","账户或者密码不正确");
		}
		return modelAndView;
	}


	//判断是否非null
	public String isNull(User u){
		if(null==u){
			return "用户为null";
		}
		if(StringUtils.isEmpty(u.getUsername())){
			return "用户名为null";
		}
		if(StringUtils.isEmpty(u.getPassword())){
			return "密码为null";
		}
		if(StringUtils.isEmpty(u.getCardId())){

			return "身份证号为null";
		}
		if(StringUtils.isEmpty(u.getName())){
			return "姓名为null";
		}
		if(StringUtils.isEmpty(u.getMsisdn())){
			return "电话号码为null";
		}

		if(StringUtils.isEmpty(u.getUsername())){
			return "用户名为null";
		}
		if(StringUtils.isEmpty(u.getUsername())){
			return "用户名为null";
		}
		if(StringUtils.isEmpty(u.getUsername())){
			return "用户名为null";
		}
		return SUCCESS;

	}

	public String isRepeat(User u){
		User ou1 = userService.queryByUsername(u.getUsername());
		if(null!=ou1){
			return "账户名重复";
		}

		User ou2 = userService.queryByCardId(u.getCardId());

		if(null!=ou2){
			return "身份证号码重复";
		}

		User ou3 = userService.queryByMsisdn(u.getMsisdn());

		if(null!=ou3){
			return "电话号码重复";
		}

		return SUCCESS;
	}

	//进入忘记密码页面
	@RequestMapping("/login/forgetPassword.html")
	public ModelAndView forgetPassword(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login/forgetPassword");
		return modelAndView;
	}
	//获取密码密码
	@RequestMapping("/login/getForgetPassword/{idCard}/{msisdn}/{name}")
	@ResponseBody
	public Object getForgetPassword(@PathVariable  String idCard, @PathVariable String msisdn, @PathVariable String name){
		BaseResp resp = new BaseResp();
		resp.setCode("000000");
		resp.setInfo("成功");
		try {
			name = new String(name.getBytes("ISO-8859-1"), "utf8");
		} catch (UnsupportedEncodingException e) {
			resp.setCode("000002");
			resp.setInfo("转码失败");
		}
		String password = userService.queryPassword(name,msisdn,idCard);
		if(StringUtils.isNotEmpty(password)){
			resp.setData(password);

		}else {
			resp.setCode("000001");
			resp.setInfo("信息不正确，请核对！");
		}
		return resp;

	}
}
