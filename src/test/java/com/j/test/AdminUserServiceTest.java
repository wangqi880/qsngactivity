package com.j.test;

import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.model.admin.AdminUser;
import com.j.qsng.service.AdminUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by Administrator on 2017/10/28.
 */
@RunWith (SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration (locations={"classpath:spring/*.xml"})
public class AdminUserServiceTest
{
	@Autowired AdminUserService adminUserService;

	/*//计算选择用户总数
	public int chooseUserNum();

	//增加用户
	public void add(com.j.qsng.model.admin.AdminUser adminUser);

	//根据用户名查询信息
	public com.j.qsng.model.admin.AdminUser queryByUsername(String username);

	//修改用户
	public void update(com.j.qsng.model.admin.AdminUser adminUser);*/
	@Test
	public void testChooseUserNum(){
		System.out.println("计算选择用户总数:"+adminUserService.chooseUserNum());
	}
	@Test
	public void testAdd(){
		AdminUser adminUser = new AdminUser();
		adminUser.setId(String.valueOf(IDUtils.genItemId()));
		adminUser.setInsertTime(DateUtils.getStandardNowDateTime());
		adminUser.setMsisdn("15682051518");
		adminUser.setName("wq");
		adminUser.setUsername("wangqi");
		adminUser.setRole("2");
		adminUser.setUpdateTime(DateUtils.getStandardNowDateTime());
		adminUserService.add(adminUser);
	}

	@Test
	public  void testQueryByUsername(){

		AdminUser ad = adminUserService.queryByUsername("wangqi");
		System.out.println(ad);
	}

	@Test
	public void testUpdate(){
		AdminUser ad = adminUserService.queryByUsername("wangqi");
		ad.setMsisdn("156820515182");
		ad.setPassword("www");
		adminUserService.update(ad);
	}

}
