package com.j.qsng.service;

import com.j.qsng.model.UserPrize;

import java.util.Map;

/**
 * Created by Administrator on 2017/10/21.
 */
public interface UserPrizeService
{
	//判断是否有记录,false表示不能点赞,true表示可以点赞
	public  boolean isPrizeAdd(String userId,String adminUserPicId,String dayDate);
	public void add(UserPrize userPrize);
}
