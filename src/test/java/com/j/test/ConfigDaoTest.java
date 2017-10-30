package com.j.test;

import com.j.qsng.common.util.DateUtils;
import com.j.qsng.model.admin.ChooseLog;
import com.j.qsng.service.ChooseLogService;
import com.j.qsng.service.ConfigService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/14.
 */
@RunWith (SpringJUnit4ClassRunner.class) //使用junit4进行测试
@ContextConfiguration (locations={"classpath:spring/*.xml"})
public class ConfigDaoTest
{
	@Autowired    ConfigService    configService;


	 @Autowired ChooseLogService chooseLogService;

	@Test
	public void test1(){
		String value = configService.getConfigvalue("a");
		System.out.println("a:"+value);
	}

	@Test
	public void test2(){
		int n = chooseLogService.queryNumByUsernameAndPeriod("wq","1");
		System.out.println("hah:"+n);
	}
	@Test
	public void test3(){
		ChooseLog cl  = new ChooseLog();
		cl.setUsername("wq");
		cl.setProdId("2");
		cl.setChoosePeriod("1");
		cl.setInsertTime(DateUtils.getStandardNowDateTime());
		chooseLogService.add(cl);
	}
}
