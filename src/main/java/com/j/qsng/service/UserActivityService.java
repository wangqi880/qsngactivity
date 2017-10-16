package com.j.qsng.service;

import com.j.qsng.dto.UserActivityDto;
import com.j.qsng.model.UserActivity;

/**
 * Created by Administrator on 2017/10/16.
 */
public interface UserActivityService
{
	public void add(UserActivity a);
	public UserActivity querybyMsisdn(String msisdn);
	public UserActivityDto queryDtobyMsisdn(String msisdn);


}
