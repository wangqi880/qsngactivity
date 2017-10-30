package com.j.qsng.service;

import com.j.qsng.dao.ActivityStatusMapper;
import com.j.qsng.model.admin.ActivityStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/10/29.
 */
@Service
public class ActivityStatusServiceImpl implements ActivityStatusService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired ActivityStatusMapper activityStatusMapper;
	public List<ActivityStatus> listAll()
	{
		return activityStatusMapper.listAll();
	}

	public void updateStaus(ActivityStatus activityStatus)
	{
		activityStatusMapper.updateStaus(activityStatus);
	}

	public String queryByPeriod(String persion)
	{
		return activityStatusMapper.queryByPeriod(persion);
	}

	public ActivityStatus queryById(String id)
	{
		return activityStatusMapper.queryById(id);
	}
}
