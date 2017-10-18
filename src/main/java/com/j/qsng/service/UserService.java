package com.j.qsng.service;

import com.j.qsng.model.User;

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
}
