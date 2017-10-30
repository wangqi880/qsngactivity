package com.j.qsng.service;

import com.j.qsng.dao.AdminUserMapper;
import com.j.qsng.model.admin.AdminUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
}
