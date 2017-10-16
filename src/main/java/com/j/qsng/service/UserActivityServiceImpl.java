package com.j.qsng.service;

import com.j.qsng.dao.UserActivityMapper;
import com.j.qsng.dto.UserActivityDto;
import com.j.qsng.model.UserActivity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/10/16.
 */
@Service("userActivityService")
public class UserActivityServiceImpl implements UserActivityService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired UserActivityMapper userActivityMapper;
	public void add(UserActivity a)
	{
		userActivityMapper.add(a);
	}

	public UserActivity querybyMsisdn(String msisdn){
		return userActivityMapper.querybyMsisdn(msisdn);
	}

	public UserActivityDto queryDtobyMsisdn(String msisdn){
		return userActivityMapper.queryDtobyMsisdn(msisdn);
	}
}
