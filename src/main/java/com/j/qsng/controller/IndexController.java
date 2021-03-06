package com.j.qsng.controller;

import com.j.qsng.common.pojo.*;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.dto.AdminUserPicDto;
import com.j.qsng.dto.ChooseUserPicDto;
import com.j.qsng.dto.UserPicScorePrizeDto;
import com.j.qsng.dto.UserPicShowDto;
import com.j.qsng.model.ColumnContent;
import com.j.qsng.model.User;
import com.j.qsng.model.UserPrize;
import com.j.qsng.service.*;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	@Autowired
	ChooseLogService chooseLogService;
	@Autowired UserPicService userPicService;
	@Autowired
	UserPicPrizeService userPicPrizeService;
	final static String ADMINTYPE="1";
	final static String USERTYPE="2";

	@Autowired
	ColumnInfoContentService columnInfoContentService;

	@RequestMapping("/test.html")
	public String test(){
		return "index/test";
	}

	@RequestMapping("/indexnew.html")
	public ModelAndView indexnew(String type){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/indexnew");


		String isAllow = configService.getConfigvalue(ChooseUtils.USER_ALLOW_SEE_USER_PIC_SCORE);
		if(null==type){
			if("1".equals(isAllow)){
				type="2";
			}else{
				type="1";
			}
		}
			modelAndView.addObject("type",type);
			modelAndView.addObject("isAllow",isAllow);
			if(ADMINTYPE.equals(type) ){
				Pager<AdminUserPicDto> page = adminUserPicService.queryByPage();
				modelAndView.addObject("page",page);

			}
			if(USERTYPE.equals(type)){
				//普通用户的
				if(!("1".equals(isAllow))){
					modelAndView.setViewName("common/message");
					modelAndView.setViewName("index/indexnew2");
					modelAndView.addObject("message","还没有到查看作品的时间");
				}else{
					modelAndView.setViewName("index/indexnew2");
					Pager<UserPicScorePrizeDto> page = chooseLogService.queryPageDetailScorePrizeNum();
					modelAndView.addObject("page",page);
				}
		}
		return modelAndView;
	}

	//活动介绍界面
	@RequestMapping("/act_info.html")
	public  ModelAndView actInfo(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/act_info");
		List<ColumnContent> dataList = columnInfoContentService.getByType(ColumnUtils.ACT_INFO);
		for(ColumnContent columnContent:dataList){
			columnContent.setInfo(Text2Html(columnContent.getInfo()));
		}
		modelAndView.addObject("data",dataList);
		return modelAndView;
	}
	//活动规则界面
	@RequestMapping("/act_rule.html")
	public ModelAndView act_rule(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/act_rule");
		List<ColumnContent> dataList = columnInfoContentService.getByType(ColumnUtils.ACT_RULE);
		for(ColumnContent columnContent:dataList){
			columnContent.setInfo(Text2Html(columnContent.getInfo()));
		}
		modelAndView.addObject("data",dataList);
		return modelAndView;
	}


	//奖品界面
	@RequestMapping("/prize_info.html")
	public ModelAndView prize_info(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/prize_info");
		List<ColumnContent> dataList = columnInfoContentService.getByType(ColumnUtils.PRIZE_INFO);
		for(ColumnContent columnContent:dataList){
			columnContent.setInfo(Text2Html(columnContent.getInfo()));
		}
		modelAndView.addObject("data",dataList);
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

	//展示图片详情
	@RequestMapping("/show2")
	public ModelAndView show2(String id,String type){
		ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("index/show2");
			UserPicShowDto upsd = userPicService.queryUserPicDtoById(id);
			modelAndView.addObject("updto",upsd);
		return modelAndView;
	}

	//用户作品点赞
	@RequestMapping("/user_add_prize")
	@ResponseBody
	public Object userAddPrizeNum(String id,HttpSession session){
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

		int LIMITNUM= Integer.parseInt(configService.getConfigvalue("day_prize_num"));
		if(0==LIMITNUM){
			resp.setCode("000003");
			resp.setInfo("点赞已经结束，谢谢参与");
			return  resp;
		}
		boolean isPrize=userPrizeService.isPrizeAdd(userId,id,nowDate);
		//允许点赞
		if(isPrize){
			//更新id
			userPicPrizeService.plusUserPrize(userId,id);
			resp.setCode("000000");
			resp.setInfo("操作成功");
		}
		else {
			resp.setCode("000002");
			resp.setInfo("今天对该作品操作次数已达上限");

		}
		return resp;
	}

	//查看所有通过初赛的照片
	@RequestMapping("/theFirstChoose.html")
	public ModelAndView theFirstChoose(String from ,HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/theFirstChoose");
		String isAllow=configService.getConfigvalue(ChooseUtils.IS_ALLOWD_FIRST_SHOW);
		if("1".equals(isAllow)){
			User user = (User) session.getAttribute("loginUser");
			//如果来登录跳转过来，那么使用用户自己的作品替换
			if(null!=user && "login".equals(from)){
				//这里查询是要排除用户id的记录
				/*Pager<ChooseUserPicDto> pager= chooseLogService.queryPagerDetailByPeriodAndIsChoose(null,ChooseUtils.YES_CHOOSE,ChooseUtils.FIRST_PERIOD,null);
				List<ChooseUserPicDto> userList = chooseLogService.queryUserIdAndPeriod(String.valueOf(user.getId()),ChooseUtils.FIRST_PERIOD,ChooseUtils.YES_CHOOSE);
				if(0==pageOffset || 1==pageOffset){
					replace(pager,userList);
					modelAndView.addObject("page",pager);
				}else{
					Pager<ChooseUserPicDto> pager1= chooseLogService.queryPagerDetailByPeriodAndIsChoose(null,ChooseUtils.YES_CHOOSE,ChooseUtils.FIRST_PERIOD,pageOffset-1);
					modelAndView.addObject("page",pager1);
					pager1.setOffset(pageOffset);
				}*/

				//定位，在确定页数，再查数据

				String userId= String.valueOf(user.getId());
				//先查询所有数据不分页
				List<ChooseUserPicDto>  allcup =	chooseLogService.queryALLDetailByPeriodAndIsChoose(ChooseUtils.FIRST_PERIOD,ChooseUtils.YES_CHOOSE);
				int i;
				for(i=0;i<allcup.size();i++){
					if(userId.equals(allcup.get(i).getUserId())){
						break;
					}
				}
				if(i<allcup.size()){
					Integer pageSize = SystemContext.getPageSize();
					Integer pageOffset = i/pageSize;
					Pager<ChooseUserPicDto> pager= chooseLogService.queryPagerDetailByPeriodAndIsChoose(null,ChooseUtils.YES_CHOOSE,ChooseUtils.FIRST_PERIOD,pageOffset+1);
					modelAndView.addObject("page",pager);
				}else {
					Pager<ChooseUserPicDto> pager= chooseLogService.queryPagerDetailByPeriodAndIsChoose(null,ChooseUtils.YES_CHOOSE,ChooseUtils.FIRST_PERIOD,null);
					modelAndView.addObject("page",pager);
				}

			}else{
				Pager<ChooseUserPicDto> pager= chooseLogService.queryPagerDetailByPeriodAndIsChoose(null,ChooseUtils.YES_CHOOSE,ChooseUtils.FIRST_PERIOD,null);
				modelAndView.addObject("page",pager);

			}
			//人气榜
			Pager<ChooseUserPicDto> renqibang= chooseLogService.queryPagerDetailByPeriodAndIsChoose(null,ChooseUtils.YES_CHOOSE,ChooseUtils.FIRST_PERIOD,1,"1");
			modelAndView.addObject("renqi",renqibang);
		}else {
			modelAndView.addObject("message","初赛还没结束，敬请期待！");
		}

		return modelAndView;
	}

	//替换
	private void replace(Pager<ChooseUserPicDto> pager,List<ChooseUserPicDto> userList){
		if(null==pager || CollectionUtils.isEmpty(pager.getDatas())){
			return;
		}
		if(CollectionUtils.isEmpty(userList)){
			return;
		}
		int num = userList.size();
		for(int i=0;i<num;i++){
			pager.getDatas().remove(i);
			pager.getDatas().add(i,userList.get(i));
		}
	}
	//进入奖励界面
	@RequestMapping("/rewardList")
	public ModelAndView reward_list(String type){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/rewardList");
		String is_allowd_prize_show =configService.getConfigvalue(ChooseUtils.IS_ALLOWD_PRIZE_SHOW);
		if(!("1".equals(is_allowd_prize_show))){
			return modelAndView;
		}
		if(StringUtils.isEmpty(type)){
			type="1";
		}
		int offset=0;
		int size=0;

		if(RewardType.SPECUAK_PRIZE.equals(type)){
			//特等奖1-3
			offset=0;
			size=3;
			List<ChooseUserPicDto>  dataList= chooseLogService.queryPrizeInfo(ChooseUtils.SECOND_PERIOD,offset,size);
			modelAndView.addObject("data",dataList);
		}
		if(RewardType.FIRTST_PRIZE.equals(type)){
			 offset=3;
			 size=5;
			List<ChooseUserPicDto>  dataList= chooseLogService.queryPrizeInfo(ChooseUtils.SECOND_PERIOD,offset,size);
			modelAndView.addObject("data",dataList);
		}else if(RewardType.SECONDE_PRIZE.equals(type)){
			offset=8;
			size=10;
			List<ChooseUserPicDto>  dataList= chooseLogService.queryPrizeInfo(ChooseUtils.SECOND_PERIOD,offset,size);
			modelAndView.addObject("data",dataList);
		}else if(RewardType.THIRD_PRIZE.equals(type)){
			offset=18;
			size=20;
			List<ChooseUserPicDto>  dataList= chooseLogService.queryPrizeInfo(ChooseUtils.SECOND_PERIOD,offset,size);
			modelAndView.addObject("data",dataList);
		}else if(RewardType.EXCELLENT_PRIZE.equals(type)){
			offset=38;
			size=62;
			List<ChooseUserPicDto>  dataList= chooseLogService.queryPrizeInfo(ChooseUtils.SECOND_PERIOD,offset,size);
			modelAndView.addObject("data",dataList);
		}else if(RewardType.POPULAR_PRIZE.equals(type)){
			offset=0;
			size=5;
			List<ChooseUserPicDto>  dataList= chooseLogService.queryPrizeInfo(ChooseUtils.FIRST_PERIOD,offset,size);
			modelAndView.addObject("data",dataList);
		}
		modelAndView.addObject("type",type);
		return modelAndView;
	}
	public static String Text2Html(String str) {
		if (str == null) {
			return "";
		} else if (str.length() == 0) {
			return "";
		}
		str = str.replaceAll("\n", "<br />");
/*
		str = str.replaceAll("\r", "<br />");
*/
		return str;
	}
}
