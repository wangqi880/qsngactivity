package com.j.qsng.dao;

import com.j.qsng.model.UserPrize;

/**
 * Created by Administrator on 2017/10/21.
 * 用户点赞的操作
 */
public interface UserIsPrizeMapper
{
	//判断是否有记录
	public  int prizeAddIs(UserPrize userPrize);
	public void add(UserPrize userPrize);
}
