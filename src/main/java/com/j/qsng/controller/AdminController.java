package com.j.qsng.controller;

import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.common.pojo.ChooseUtils;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.dto.AdminuserChoosePeriodNum;
import com.j.qsng.model.CongfigPojo;
import com.j.qsng.model.UserPic;
import com.j.qsng.model.admin.ActivityStatus;
import com.j.qsng.model.admin.AdminUser;
import com.j.qsng.model.admin.ChooseLog;
import com.j.qsng.model.admin.UserScoreLog;
import com.j.qsng.service.ActivityStatusService;
import com.j.qsng.service.AdminUserService;
import com.j.qsng.service.ChooseLogService;
import com.j.qsng.service.ConfigService;
import com.j.qsng.service.UserPicService;
import com.j.qsng.service.UserScoreLogService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2017/10/28.
 */
@Controller
public class AdminController
{

	@Autowired UserPicService        userPicService;
	@Autowired AdminUserService      adminUserService;
	@Autowired ChooseLogService      chooseLogService;
	@Autowired ConfigService         configService;
	@Autowired ActivityStatusService activityStatusService;
	@Autowired UserScoreLogService   userScoreLogService;
	@RequestMapping("/admin")
	public ModelAndView adminIdex(HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/index");
		session.setAttribute("isAdmin",true);
		return modelAndView;
	}

	//进入系统配置界面
	@RequestMapping("/admin/sysConifList")
	public ModelAndView sysconfig(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/sysConifList");
		List<CongfigPojo> listConfig = configService.listAll();
		modelAndView.addObject("listConfig",listConfig);
		return modelAndView;

	}
	//进入添加系统配置界面
	@RequestMapping("/admin/addSysconfig")
	public ModelAndView addSysconfig(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/addSysconfig");

		return modelAndView;
	}
	//添加系统配置
	@RequestMapping(value = "/admin/addSysconfig",method= RequestMethod.POST)
	public ModelAndView addSysconfig(CongfigPojo congfigPojo){
		ModelAndView modelAndView = new ModelAndView();
		String olodValue =  configService.getConfigvalue(congfigPojo.getConfigKey());
		if(!StringUtils.isEmpty(olodValue)){
			modelAndView.setViewName("admin/addSysconfig");
			modelAndView.addObject("message","key重复了");
			return modelAndView;
		}
		congfigPojo.setInsertTime(DateUtils.getStandardNowDateTime());
		configService.add(congfigPojo);

		modelAndView.setViewName("redirect:/admin/sysConifList");
		return  modelAndView;

	}
	//删除配置表
	@RequestMapping("/admin/delete/{id}")
	public ModelAndView delete(@PathVariable String id){


		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/admin/sysConifList");
		configService.delelte(id);
		return  modelAndView;

	}
	//进入更新配置
	@RequestMapping("/admin/updateSysconfig/{id}")
	public ModelAndView updateSysconfig(@PathVariable String id){
		CongfigPojo config = configService.queryById(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin/updateSysconfig");
		modelAndView.addObject("config",config);
		return modelAndView;
	}

	//更新配置
	@RequestMapping(value = "/admin/updateSysconfig",method = RequestMethod.POST)
	public ModelAndView updateSysconfig(CongfigPojo config){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/admin/sysConifList");
		config.setInsertTime(DateUtils.getStandardNowDateTime());
		configService.update(config);
		return modelAndView;
	}

	//进入活动开始配置，第一次筛选，第二次筛选，第三次评分控制界面
	@RequestMapping("/admin/startActivity")
	public ModelAndView startActivity(){

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/admin/startActivity");
		int firstChoosedNum=chooseLogService.queryNumByPeriodAndChecked(ChooseUtils.FIRST_PERIOD,ChooseUtils.YES_CHOOSE);
		int secondChoosedNum=chooseLogService.queryNumByPeriodAndChecked(ChooseUtils.SECOND_PERIOD,ChooseUtils.YES_CHOOSE);
		modelAndView.addObject("firstChoosedNum",firstChoosedNum);
		modelAndView.addObject("secondChoosedNum",secondChoosedNum);
		return modelAndView;
	}

	//进入活动状态查询
	@RequestMapping("/admin/activityStatus")
	public ModelAndView activityStatus(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/admin/activityStatus");
		List<ActivityStatus> list = activityStatusService.listAll();
		modelAndView.addObject("activityStatus",list);

		return modelAndView;
	}
	//修改活动状态
	@RequestMapping("/admin/updateActivityStatus/{id}")
	public ModelAndView updateActivityStatus(@PathVariable String id){
		ModelAndView modelAndView = new ModelAndView();
		ActivityStatus activityStatus = activityStatusService.queryById(id);
		if(activityStatus!=null){
			if("1".equals(activityStatus.getStatus())){
				activityStatus.setStatus("0");
			}
			else if("0".equals(activityStatus.getStatus())){
				//删除选择日志
				//第一期和第二期删除用户选择，第三期是删除后台管理员评分
				if(ChooseUtils.THIRD_PERIOD.equals(activityStatus.getActivityPeriod())){
					userScoreLogService.deleteAll();
				}else{
					chooseLogService.deleteByPeriod(activityStatus.getActivityPeriod());
				}
				activityStatus.setStatus("1");
			}
			activityStatusService.updateStaus(activityStatus);

		}
		modelAndView.setViewName("redirect:/admin/activityStatus");
		return  modelAndView;
	}


	//开启第一次活动给教师分配照片
	@RequestMapping("/admin/firstStart")
	@ResponseBody
	public Object fistChooseConfig(){
		BaseResp resp = new BaseResp();
		String activityStatus = activityStatusService.queryByPeriod(ChooseUtils.FIRST_PERIOD);
		//没有开启的话，直接返回
		if(!("1".equals(activityStatus))){
			resp.setInfo("第一次选择图片没有开始");
			resp.setCode("000001");
			return resp;
		}
		int fisrtPeriodNum = chooseLogService.queryByPeriod(ChooseUtils.FIRST_PERIOD);
		if(0<fisrtPeriodNum){
			resp.setInfo("第一次选择图片已经配置，重新部署联系管理员");
			resp.setCode("000002");
			return resp;
		}
		try
		{
			//先判断是否已经开始第一次选择配置

			//先从数据库取（缓存更好），没有使用默认的
			int firstChoosrNum = ChooseUtils.FIRST_CHOOSE_NUM;
			//一共有多少个作品
			int allNum = userPicService.queryByAllNum();
			//选择评委老师人数
			int choosePerson = adminUserService.chooseUserNum();
			List<AdminUser> userList = adminUserService.queryChooseUsers();
			//所有的作品
			List<UserPic> userPicList = userPicService.listAll();
			//给每个照片选择分配照片
			int j = 0;
			for(int i = 0; i < userPicList.size(); i++)
			{
				AdminUser adminUser = userList.get(j);
				ChooseLog cl = new ChooseLog();
				cl.setUsername(adminUser.getUsername());
				cl.setProdId(userPicList.get(i).getId());
				cl.setChooseIs(ChooseUtils.NO_CHOOSE);
				cl.setChoosePeriod(ChooseUtils.FIRST_PERIOD);
				cl.setInsertTime(DateUtils.getStandardNowDateTime());
				chooseLogService.add(cl);
				j++;
				if(0 == j % userList.size())
				{
					j = 0;
				}
			}
		} catch (Exception e){
			resp.setCode("000001");
			resp.setInfo("异常:"+e);
		}
		resp.setCode("000000");
		resp.setInfo("分配成功");
		return resp;
	}

	//开启第二次活动给教师分配照片
	@RequestMapping("/admin/secondStart")
	@ResponseBody
	public Object secondChooseConfig(){
		BaseResp resp = new BaseResp();
		List<AdminUser> userList=adminUserService.queryChooseUsers();
		//第一次已经选中照片
		List<ChooseLog> firstChoosedList =chooseLogService.queryByPeriodAndIsChoose(ChooseUtils.FIRST_PERIOD,ChooseUtils.YES_CHOOSE);
		if(CollectionUtils.isEmpty(firstChoosedList)){
			resp.setCode("000001");
			resp.setInfo("没有选中照片");
			return resp;
		}

		String activityStatus = activityStatusService.queryByPeriod(ChooseUtils.SECOND_PERIOD);
		//没有开启的话，直接返回
		if(!("1".equals(activityStatus))){
			resp.setInfo("第二次选择图片没有开始");
			resp.setCode("000001");
			return resp;
		}
		int secondPeriodNum = chooseLogService.queryByPeriod(ChooseUtils.SECOND_PERIOD);
		if(0<secondPeriodNum){
			resp.setInfo("第二次选择图片已经配置，重新配置请联系管理员");
			resp.setCode("000002");
			return resp;
		}
		int j=0;
		for(int i=0;i<firstChoosedList.size();i++){
			boolean flag = true;
			AdminUser adminUser = null;
			while(flag){
				 adminUser= userList.get(j);
				//是否已经第一次选过
				int chooseNum = chooseLogService.queryFisrtChoosedByusernameAndPeriod(adminUser.getUsername(),firstChoosedList.get(i).getProdId(),ChooseUtils.FIRST_PERIOD);
				if(chooseNum>=1){
					j++;
				}else{
					flag=false;
				}
				if(j>=userList.size()){
					continue;
				}

			}

			ChooseLog cl = new ChooseLog();
			cl.setUsername(adminUser.getUsername());
			cl.setProdId(firstChoosedList.get(i).getProdId());
			cl.setChooseIs(ChooseUtils.NO_CHOOSE);
			cl.setChoosePeriod(ChooseUtils.SECOND_PERIOD);
			cl.setInsertTime(DateUtils.getStandardNowDateTime());
			chooseLogService.add(cl);
			j++;
			if(0==j%userList.size()){
				j=0;
			}
		}
		resp.setCode("000000");
		resp.setInfo("分配成功");
		return resp;
	}

	@RequestMapping("/admin/thirdStart")
	@ResponseBody
	public Object thirdStart(){
		BaseResp resp = new BaseResp();
		try
		{
			String activityStatus = activityStatusService.queryByPeriod(ChooseUtils.THIRD_PERIOD);
			//没有开启的话，直接返回
			if(!("1".equals(activityStatus)))
			{
				resp.setInfo("第三次图片评分没有开始");
				resp.setCode("000001");
				return resp;
			}
			//第二次选了好多个
			int secondChooseNum=chooseLogService.queryNumByPeriodAndChecked(ChooseUtils.SECOND_PERIOD, ChooseUtils.YES_CHOOSE);
			if(0>=secondChooseNum){
				resp.setInfo("第二次还没有开始选图片");
				resp.setCode("000002");
				return resp;
			}
			//如果已经分配之后，就不能再次分配了
			int allNum= userScoreLogService.queryNumAll();
			if(0<allNum){
				resp.setInfo("已经分配过");
				resp.setCode("000003");
				return resp;
			}


			List<ChooseLog> list = chooseLogService
				.queryByPeriodAndIsChoose(ChooseUtils.SECOND_PERIOD, ChooseUtils.YES_CHOOSE);
			//选择用户
			List<AdminUser> adminUserList=adminUserService.queryChooseUsers();
			for(ChooseLog chooseLog : list)
			{
				for(AdminUser adminUser:adminUserList){
					UserScoreLog usl = new UserScoreLog();
					usl.setChooseLogId(chooseLog.getId());
					usl.setChooseUsername(adminUser.getUsername());
					usl.setScore(0);
					usl.setInsertTime(DateUtils.getStandardNowDateTime());
					userScoreLogService.add(usl);
				}

			}
		} catch (Exception e){
			resp.setCode("000002");
			resp.setInfo(e.getMessage());
			return resp;
		}
		resp.setCode("000000");
		resp.setInfo("success");
		return  resp;
	}

	//显示选择和打分详情
	@RequestMapping("/admin/chooseAndScoreInfo")
	public ModelAndView chooseAndScoreInfo(){

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/admin/chooseAndScoreInfo");
		List<AdminuserChoosePeriodNum>  choosedlist = chooseLogService.queryStaticsByUserAndPeriodAndChoosed();
		modelAndView.addObject("choosedlist",choosedlist);
		return modelAndView;
	}
}
