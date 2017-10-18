package com.j.qsng.model;

import lombok.Data;

/**
 * Created by Administrator on 2017/10/17.
 */
@Data
public class User
{
	long id;
	String username;
	String password;
	String cardId;
	String name;
	String msisdn;
	String sex;
	int age;
	String insertTime;
	String updateTime;

}
