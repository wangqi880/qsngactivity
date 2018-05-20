package com.j.qsng.dao;

import com.j.qsng.dto.UserScoreLogDto;
import com.j.qsng.model.admin.UserScoreLog;

import java.util.List;
import java.util.Map;

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

	//查询总记录数
	public int queryNumAll();

	//查询每个用户的评分
	public List<UserScoreLogDto> queryDetailByUsernameAndScoreIs(Map map);

	//根据id查询
	public UserScoreLog queryById(String id);

	//更新分数和时间
	public void updateScoreAndTime(UserScoreLog userScoreLog);
	public List<UserScoreLogDto> queryPageDetailByUsernameAndScoreIs(Map map);
	//根据用户查询所有记录
	public int queryNumByChooseusername(Map map);

	//查询用户已选记录
	public int queryNumByChooseusernameAndScoreIs(Map map);
}
