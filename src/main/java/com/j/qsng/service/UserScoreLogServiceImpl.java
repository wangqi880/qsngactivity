package com.j.qsng.service;

import com.j.qsng.dao.UserScoreLogMapper;
import com.j.qsng.dto.UserScoreLogDto;
import com.j.qsng.model.admin.UserScoreLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/29.
 */
@Service
public class UserScoreLogServiceImpl implements UserScoreLogService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired UserScoreLogMapper userScoreLogMapper;
	public void add(UserScoreLog userScoreLog)
	{
		userScoreLogMapper.add(userScoreLog);
	}

	public List<UserScoreLog> queryByChooseUsername(String chooseUsername)
	{
		return userScoreLogMapper.queryByChooseUsername(chooseUsername);
	}

	public List<UserScoreLog> queryByChooseLogId(String chooseLogId)
	{
		return userScoreLogMapper.queryByChooseLogId(chooseLogId);
	}

	public double excChooseLogIdAvg(String chooseLogId)
	{
		return userScoreLogMapper.excChooseLogIdAvg(chooseLogId);
	}

	public void deleteAll()
	{
		userScoreLogMapper.deleteAll();
	}

	public int queryNumAll()
	{
		return userScoreLogMapper.queryNumAll();
	}

	public List<UserScoreLogDto> queryDetailByUsernameAndScoreIs(String chooseusername, String score)
	{
		Map map  = new HashMap();
		map.put("chooseusername",chooseusername);
		map.put("score",score);
		return userScoreLogMapper.queryDetailByUsernameAndScoreIs(map);
	}

	public UserScoreLog queryById(String id)
	{
		return userScoreLogMapper.queryById(id);
	}

	public void updateScoreAndTime(UserScoreLog userScoreLog)
	{
		userScoreLogMapper.updateScoreAndTime(userScoreLog);
	}
}
