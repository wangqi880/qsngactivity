package com.j.qsng.dao;

import com.j.qsng.model.admin.ActivityStatus;

import java.util.List;

/**
 * Created by Administrator on 2017/10/29.
 */
public interface ActivityStatusMapper
{
	//查询所有活动状态
	List<ActivityStatus> listAll();
	//修改活动状态
	public void updateStaus(ActivityStatus activityStatus);

	//根据期数查询状态
	public String queryByPeriod(String persion);
	//根据id查询
	public ActivityStatus queryById(String id);

}
