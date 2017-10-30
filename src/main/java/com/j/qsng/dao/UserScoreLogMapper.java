package com.j.qsng.dao;

import com.j.qsng.model.admin.UserScoreLog;

import java.util.List;

/**
 * Created by Administrator on 2017/10/29.
 */
public interface UserScoreLogMapper
{
	//插入
	public void add(UserScoreLog userScoreLog);
	//根据选择用户名查询
	public List<UserScoreLog> queryByChooseUsername(String chooseUsername);
	//每个选择用户评分的数量
	//根据用户chhoseLogId 查询该作品每个老师的评分
	public List<UserScoreLog> queryByChooseLogId(String chooseLogId);
	//计算每个作品的平均分
	public double excChooseLogIdAvg(String chooseLogId);
	//清楚数据
	public void deleteAll();

	//查询用户打分的记录
	
}
