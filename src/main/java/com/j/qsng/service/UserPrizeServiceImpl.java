package com.j.qsng.service;

import com.j.qsng.common.util.BeanHolder;
import com.j.qsng.dao.CongfigMapper;
import com.j.qsng.dao.UserIsPrizeMapper;
import com.j.qsng.model.UserPrize;
import com.sun.webpane.platform.ConfigManager;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/21.
 */
@Service("userPrizeService")
public class UserPrizeServiceImpl implements UserPrizeService
{
	@Autowired
	ConfigService     configService ;
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired UserIsPrizeMapper userIsPrizeMapper;
	private int LIMITNUM =1;


	//初始化
	@PostConstruct
	public void init(){
		LIMITNUM= Integer.parseInt(configService.getConfigvalue("day_prize_num"));
	}

	public boolean isPrizeAdd(String userId, String adminUserPicId, String dayDate)
	{


		UserPrize up =new UserPrize();
		up.setUserId(userId);
		up.setAdminUserPicId(adminUserPicId);
		up.setDayDate(dayDate);
		int num = userIsPrizeMapper.prizeAddIs(up);
		if(num>=LIMITNUM) return false;
		else return true;
	}

	public void add(UserPrize userPrize)
	{
		userIsPrizeMapper.add(userPrize);
	}
}
