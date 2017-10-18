package com.j.qsng.controller;

import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.common.util.IdcardUtils;
import com.j.qsng.model.User;
import com.j.qsng.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017/10/14.
 */
@Controller
@RequestMapping("/index")
public class IndexController
{
	final static String SUCCESS="success";
	@Autowired UserService userService;

	@RequestMapping("/index.html")
	public ModelAndView index(HttpServletRequest request ){

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/index");
		request.getSession().setAttribute("user","wq");
		modelAndView.addObject("session",request.getSession());
		return modelAndView;
	}
	@RequestMapping("/test.html")
	public String test(){
		return "index/test";
	}

	@RequestMapping("/indexnew.html")
	public ModelAndView indexnew(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/indexnew");
		return modelAndView;
	}

	//活动介绍界面
	@RequestMapping("/act_info.html")
	public  ModelAndView actInfo(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/act_info");
		return modelAndView;
	}
	//活动规则界面
	@RequestMapping("act_rule.html")
	public ModelAndView act_rule(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/act_rule");
		return modelAndView;
	}


	//奖品界面
	@RequestMapping("prize_info.html")
	public ModelAndView prize_info(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/prize_info");
		return modelAndView;
	}



}
