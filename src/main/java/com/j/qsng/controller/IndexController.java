package com.j.qsng.controller;

import com.github.pagehelper.Page;
import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.common.pojo.Pager;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.common.util.IdcardUtils;
import com.j.qsng.dto.AdminUserPicDto;
import com.j.qsng.model.User;
import com.j.qsng.model.UserPrize;
import com.j.qsng.model.admin.AdminUserPic;
import com.j.qsng.service.AdminUserPicService;
import com.j.qsng.service.ConfigService;
import com.j.qsng.service.UserPrizeService;
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
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2017/10/14.
 */
@Controller
@RequestMapping("/index")
public class IndexController
{
	final static String SUCCESS="success";
	@Autowired UserService         userService;

	@Autowired AdminUserPicService adminUserPicService;

	@Autowired ConfigService       configService;
	@Autowired UserPrizeService    userPrizeService;

	final static String ADMINTYPE="1";
	final static String USERTYPE="2";

	@RequestMapping("/test.html")
	public String test(){
		return "index/test";
	}

	@RequestMapping("/indexnew.html")
	public ModelAndView indexnew(String type){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/indexnew");
		if(StringUtils.isEmpty(type) ||ADMINTYPE.equals(type) ){
			Pager<AdminUserPicDto> page = adminUserPicService.queryByPage();
			modelAndView.addObject("page",page);

		}
		if(USERTYPE.equals(type)){
			//普通用户的
			modelAndView.addObject("message","还没有数据");
		}
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
	@RequestMapping("/act_rule.html")
	public ModelAndView act_rule(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/act_rule");
		return modelAndView;
	}


	//奖品界面
	@RequestMapping("/prize_info.html")
	public ModelAndView prize_info(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/prize_info");
		return modelAndView;
	}


	//点赞
	@RequestMapping("/add_prize")
	@ResponseBody
	public Object addPrizeNum(String id,HttpSession session){
		//规则，每天每个作品可以点赞一次，点赞需要登录
		//首先看一下今天,对该作品是否已经点过赞
		BaseResp resp = new BaseResp();
		String  nowDate = DateUtils.getShortNowDate();
		User u = (User) session.getAttribute("loginUser");
		if(null==u){
			resp.setCode("000001");
			resp.setInfo("登录之后继续操作!");
			return resp;
		}
		String userId = String.valueOf(u.getId());
		boolean isPrize=userPrizeService.isPrizeAdd(userId,id,nowDate);
		//允许点赞
		if(isPrize){
			//更新id
			adminUserPicService.addPariseById(id);

			//插入用户点赞
			//
			UserPrize userPrize = new UserPrize();
			userPrize.setId(String.valueOf(IDUtils.genItemId()));
			userPrize.setUserId(userId);
			userPrize.setAdminUserPicId(id);
			userPrize.setDayDate(nowDate);
			userPrizeService.add(userPrize);
			resp.setCode("000000");
			resp.setInfo("操作成功");
		}
		else {
			resp.setCode("000002");
			resp.setInfo("今天对该作品操作次数已达上限");

		}
		return resp;
	}

	//展示图片详情
	@RequestMapping("/show")
	public ModelAndView show(String id,String type){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/show");
		AdminUserPicDto adminUserPicDto = adminUserPicService.load(id);
		modelAndView.addObject("updto",adminUserPicDto);
		return modelAndView;
	}


}
