package com.j.qsng.service;

import com.j.qsng.common.pojo.Pager;
import com.j.qsng.model.User;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/17.
 */
public interface UserService
{
	public void  add(User user);
	public void  update(User user);
	public User queryByMsisdn(String msisdn);
	public User queryById(String id);
	public User queryByUsername(String username);
	public User queryByCardId(String cardId);
	public User queryByLogin(String username,String msisdn,String cardId,String password);
	//分页查询
	public Pager<User> queryPager();

	//查询所有记录
	public int queryAllNum();

}
