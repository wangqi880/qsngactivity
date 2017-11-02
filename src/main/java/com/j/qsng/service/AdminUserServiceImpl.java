package com.j.qsng.service;

import com.j.qsng.dao.AdminUserMapper;
import com.j.qsng.model.admin.AdminUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/28.
 */
@Service("adminUserService")
public class AdminUserServiceImpl implements AdminUserService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired AdminUserMapper adminUserMapper;

	public int chooseUserNum()
	{
		return adminUserMapper.chooseUserNum();
	}

	public void add(AdminUser adminUser)
	{
		adminUserMapper.add(adminUser);
	}

	public AdminUser queryByUsername(String username)
	{
		return adminUserMapper.queryByUsername(username);
	}

	public void update(AdminUser adminUser)
	{
		adminUserMapper.update(adminUser);
	}

	public List<AdminUser> queryChooseUsers()
	{
		return adminUserMapper.queryChooseUsers();
	}

	public AdminUser queryByLogin(String username, String password) {
		Map map =new HashMap();
		map.put("username",username);
		map.put("password",password);
		return adminUserMapper.queryByLogin(map);
	}
}
