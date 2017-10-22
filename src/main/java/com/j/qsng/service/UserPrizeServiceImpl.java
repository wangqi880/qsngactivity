package com.j.qsng.service;

import com.j.qsng.dao.UserIsPrizeMapper;
import com.j.qsng.model.UserPrize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/21.
 */
@Service("userPrizeService")
public class UserPrizeServiceImpl implements UserPrizeService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired UserIsPrizeMapper userIsPrizeMapper;

	public boolean isPrizeAdd(String userId, String adminUserPicId, String dayDate)
	{

		UserPrize up =new UserPrize();
		up.setUserId(userId);
		up.setAdminUserPicId(adminUserPicId);
		up.setDayDate(dayDate);
		int num = userIsPrizeMapper.prizeAddIs(up);
		if(num>0) return false;
		else return true;
	}

	public void add(UserPrize userPrize)
	{
		userIsPrizeMapper.add(userPrize);
	}
}
