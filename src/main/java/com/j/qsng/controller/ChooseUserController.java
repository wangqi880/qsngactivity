package com.j.qsng.controller;

import com.github.pagehelper.Page;
import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.common.pojo.ChooseUtils;
import com.j.qsng.common.pojo.Pager;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.dto.ChooseUserPicDto;
import com.j.qsng.dto.UserPicScorePrizeDto;
import com.j.qsng.dto.UserScoreLogDto;
import com.j.qsng.model.admin.AdminUser;
import com.j.qsng.model.admin.ChooseLog;
import com.j.qsng.model.admin.UserScoreLog;
import com.j.qsng.service.ChooseLogService;
import com.j.qsng.service.ConfigService;
import com.j.qsng.service.UserScoreLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2017/10/29.
 */
@Controller
public class ChooseUserController
{
	@Autowired ChooseLogService chooseLogService;
	@Autowired ConfigService    configService;
	@Autowired UserScoreLogService  userScoreLogService;

	private final  static String CHECK_OK="1";
	private final  static String CHECK_UN="0";




	@RequestMapping("/chooseUser/listUserPicture/{period}")
	public ModelAndView listUserPicture(@PathVariable String period,HttpSession session){
		if(StringUtils.isEmpty(period)){
			period= ChooseUtils.FIRST_PERIOD;
		}
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/chooseUser/listUserPicture");
		AdminUser adminUser = (AdminUser) session.getAttribute("adminUser");
		String adminUsername = adminUser.getUsername();
		if(ChooseUtils.FIRST_PERIOD.equals(period) || ChooseUtils.SECOND_PERIOD.equals(period)){
			//从session获取admin登录用户名
			/*List<ChooseUserPicDto> chooseUserPicDtoList = chooseLogService.queryByUsernameAndPeriod(adminUsername,period);
			modelAndView.addObject("chooseUserPicDtoList",chooseUserPicDtoList);
			*/
			Pager<ChooseUserPicDto> page=chooseLogService.queryPageByUsernameAndPeriod(adminUsername,period);
			modelAndView.addObject("page",page);
			modelAndView.addObject("period",period);
		}else if(ChooseUtils.THIRD_PERIOD.equals(period)){
			//第三期为，period=2，已选中,已经放在user_score表
			 /*List<UserScoreLogDto> everyUserScorelist = userScoreLogService.queryDetailByUsernameAndScoreIs(adminUsername,null);
			modelAndView.addObject("everyUserScorelist",everyUserScorelist);*/
			Pager<UserScoreLogDto> page = userScoreLogService.queryPageDetailByUsernameAndScoreIs(adminUsername,null);
			modelAndView.addObject("page",page);
			modelAndView.addObject("period",period);
			modelAndView.setViewName("/chooseUser/thirdUserScore");
		}
		return  modelAndView;
	}


	//选中照片或者取消照片
	@RequestMapping("/chooseUser/checkOrUncheck/{id}/{type}")
	@ResponseBody
	public  Object checkOrUncheck(@PathVariable String id,@PathVariable String type,HttpSession session){
		BaseResp resp = new BaseResp();
		resp.setCode("000000");
		resp.setInfo("sccuess");
		if(StringUtils.isEmpty(id) || StringUtils.isEmpty(type)){
			resp.setCode("000001");
			resp.setInfo("id或者type为null");
			return  resp;
		}
		ChooseLog chooseLog = chooseLogService.queryById(id);
		String period = chooseLog.getChoosePeriod();
		AdminUser adminUser = (AdminUser) session.getAttribute("adminUser");
		String username=adminUser.getUsername();

		//第一期
		if(ChooseUtils.FIRST_PERIOD.equals(period)){
			String first_iscan_choose=configService.getConfigvalue(ChooseUtils.ADMIN_CHOOSE_FIRST_STATUS);
			//不允许选照片了
			if(!("1".equals(first_iscan_choose))){
				resp.setCode("000002");
				resp.setInfo("第一期选择照片权限已经取消，请联系管理员");
				return  resp;
			}
		}
		//第二期
		if(ChooseUtils.SECOND_PERIOD.equals(period)){
			String second_iscan_choose=configService.getConfigvalue(ChooseUtils.ADMIN_CHOOSE_SENCOND_STATUS);
			if(!("1".equals(second_iscan_choose))){
				resp.setCode("000002");
				resp.setInfo("第二期选择照片权限已经取消，请联系管理员");
				return resp;
			}
		}
		//如果选中
		if(CHECK_OK.equals(type)){

			//配置的第一期可以选择数量
			if(ChooseUtils.FIRST_PERIOD.equals(period)){
				String first_choose_num_value = configService.getConfigvalue(ChooseUtils.FIRST_CHOOSE_NUM_KEY);
				int first_choose_num=0;
				if(StringUtils.isEmpty(first_choose_num_value)){
					first_choose_num=ChooseUtils.FIRST_CHOOSE_NUM;
				}else{
					first_choose_num = Integer.parseInt(first_choose_num_value);
				}
				//一直bug,第三次的时候没有删除元数据，修改活动状态的时候可以删除
				int readyFirstChooseNum = chooseLogService.queryNumByUserAndPeriodAndChoosed(username,ChooseUtils.FIRST_PERIOD,ChooseUtils.YES_CHOOSE);
				if(readyFirstChooseNum>=first_choose_num){
					resp.setCode("000003");
					resp.setInfo("不能选择,选择已经超过数量："+first_choose_num);
					return  resp;
				}
			}

			if(ChooseUtils.SECOND_PERIOD.equals(period)){
				String first_choose_num_value = configService.getConfigvalue(ChooseUtils.SECOND_CHOOSE_NUM_KEY);
				int first_choose_num=0;
				if(StringUtils.isEmpty(first_choose_num_value)){
					first_choose_num=ChooseUtils.SECOND_CHOOSE_NUM;
				}else{
					first_choose_num = Integer.parseInt(first_choose_num_value);
				}
				int readyFirstChooseNum = chooseLogService.queryNumByUserAndPeriodAndChoosed(username,ChooseUtils.SECOND_PERIOD,ChooseUtils.YES_CHOOSE);
				if(readyFirstChooseNum>=first_choose_num){
					resp.setCode("000003");
					resp.setInfo("不能选择,选择已经超过数量："+first_choose_num);
					return  resp;
				}
			}

			chooseLog.setChooseIs("1");
		}
		//如果取消选中
		if(CHECK_UN.equals(type)){
			chooseLog.setChooseIs("0");
		}
		//更新选中状态
		chooseLogService.updateCheck(chooseLog);
		return resp;
	}

	@RequestMapping("/chooseUser/updateUserScore/{id}/{score}")
	@ResponseBody
	public  Object updateUserScore(@PathVariable String id,@PathVariable String score){
		BaseResp resp = new BaseResp();
		resp.setCode("000000");
		resp.setInfo("修改成功");
		String isCanScore = configService.getConfigvalue(ChooseUtils.ADMIN_CHOOSE_THIRD_STATUS);
		if(!("1".equals(isCanScore))){
			resp.setCode("000005");
			resp.setInfo("打分时间已过");
			return resp;
		}


		int score_value=0;
		try
		{
			score_value = Integer.parseInt(score);
		}catch (Exception e){
			resp.setCode("000002");
			resp.setInfo("分数格式不正确");
			return  resp;
		}
		UserScoreLog userScoreLog = userScoreLogService.queryById(id);
		if(null==userScoreLog){
			resp.setCode("000003");
			resp.setInfo("没有评分记录");
			return resp;
		}

		if(userScoreLog.getScore()!=score_value){
			userScoreLog.setScore(score_value);
			userScoreLog.setInsertTime(DateUtils.getStandardNowDateTime());
			userScoreLogService.updateScoreAndTime(userScoreLog);
		}else{
			resp.setCode("000004");
			resp.setInfo("没有更新");
		}

		return  resp;
	}

	//查看所有最后得分
	@RequestMapping("/chooseUser/seeUserPicScore")
	public ModelAndView seeUserPicScore(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/chooseUser/seeUserPicScore");

		List<ChooseUserPicDto> chooseUserPicDtoList= chooseLogService.queryDetailByPeriodAndIsChoose(ChooseUtils.YES_CHOOSE,ChooseUtils.SECOND_PERIOD);
		modelAndView.addObject("chooseUserPicDtoList",chooseUserPicDtoList);

		return  modelAndView;
	}

	//查看点赞数
	@RequestMapping("/chooseUser/showPrizeNum")
	public ModelAndView showPrizeNum(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/chooseUser/showPrizeNum");
		Pager<UserPicScorePrizeDto> page = chooseLogService.queryPageDetailScorePrizeNum();
		modelAndView.addObject("page",page);
		return modelAndView;

	}
}
