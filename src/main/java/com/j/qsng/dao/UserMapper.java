package com.j.qsng.dao;

import com.j.qsng.model.User;

import java.util.Map;

/**
 * Created by Administrator on 2017/10/17.
 */
public interface UserMapper
{
	public void  add(User user);
	public void  update(User user);
	public User queryByMsisdn(String msisdn);
	public User queryById(String id);
	public User queryByUsername(String username);
	public User queryByCardId(String cardId);
	//根据用户名，电话号码，身份证号码进行登录验证
	public User queryByLogin(Map map);

}
