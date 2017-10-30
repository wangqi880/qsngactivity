package com.j.qsng.dao;

import com.j.qsng.model.admin.AdminUser;

import java.util.List;

/**
 * Created by Administrator on 2017/10/28.
 */
public interface AdminUserMapper
{
	//计算选择用户总数
	public int chooseUserNum();

	//增加用户
	public void add(AdminUser adminUser);

	//根据用户名查询信息
	public AdminUser queryByUsername(String username);

	//修改用户
	public void update(AdminUser adminUser);

	//查询所有的choose用户
	public List<AdminUser> queryChooseUsers();
}
