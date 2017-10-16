package com.j.test;

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
	@Autowired ConfigService configService;
	@Test
	public void test1(){
		String value = configService.getConfigvalue("a");
		System.out.println("a:"+value);
	}
}
