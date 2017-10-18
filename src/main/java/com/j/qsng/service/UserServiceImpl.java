package com.j.qsng.service;

import com.j.qsng.dao.UserMapper;
import com.j.qsng.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/17.
 */
@Service("userService")
public class UserServiceImpl implements  UserService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired UserMapper userMapper;

	public void add(User user)
	{
		userMapper.add(user);
	}

	public void update(User user)
	{
		userMapper.update(user);
	}

	public User queryByMsisdn(String msisdn)
	{
		return userMapper.queryByMsisdn(msisdn);
	}

	public User queryById(String id)
	{
		return userMapper.queryById(id);
	}

	public User queryByUsername(String username)
	{
		return userMapper.queryByUsername(username);
	}

	public User queryByCardId(String cardId)
	{
		return userMapper.queryByCardId(cardId);
	}
	public User queryByLogin(String username,String msisdn,String cardId,String password){
		Map map  = new HashMap<String,String>();
		map.put("username",username);
		map.put("msisdn",msisdn);
		map.put("cardId",cardId);
		map.put("password",password);
		return userMapper.queryByLogin(map);
	}
}
