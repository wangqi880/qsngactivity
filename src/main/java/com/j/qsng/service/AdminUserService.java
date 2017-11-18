package com.j.qsng.service;

import com.j.qsng.model.admin.AdminUser;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/28.
 */
public interface AdminUserService
{
	//计算选择用户总数
	public int chooseUserNum();

	//增加用户
	public void add(com.j.qsng.model.admin.AdminUser adminUser);

	//根据用户名查询信息
	public com.j.qsng.model.admin.AdminUser queryByUsername(String username);

	//修改用户
	public void update(com.j.qsng.model.admin.AdminUser adminUser);
	//查询所有的choose用户
	public List<AdminUser> queryChooseUsers();

	//根据用户密码登录验证
	public AdminUser queryByLogin(String username,String password);
	//查询所有用户
	public List<AdminUser> queryAll();


	//根据id删除用户
	public void delete(String id);
	//更加id修改密码
	public  void updatePassword(String userId,String password);



}
