package com.j.qsng.dao;

import com.j.qsng.dto.UserActivityDto;
import com.j.qsng.model.UserActivity;

/**
 * Created by Administrator on 2017/10/16.
 */
public interface UserActivityMapper
{
	public void add(UserActivity a);
	public UserActivity querybyMsisdn(String msisdn);
	public UserActivityDto queryDtobyMsisdn(String msisdn);


}
