package com.j.qsng.service;

import com.j.qsng.dao.UserIsPrizeMapper;
import com.j.qsng.model.UserPrize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;

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
		try{
		LIMITNUM= Integer.parseInt(configService.getConfigvalue("day_prize_num"));
		}catch (Exception e){
			System.out.println(e);
		}

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
