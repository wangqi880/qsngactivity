package com.j.qsng.dto;

import lombok.Data;

/**
 * Created by Administrator on 2017/10/30.
 */
@Data
public class UserScoreLogDto
{
	String userScoreId;
	String id;
	String prodId;
	String userId;
	String attachmentId;
	String chooseIs;
	String imageName;
	String intro;
	String username;
	String name;
	String msisdn;
	String sex;
	String newName;
	//每个用户的score
	int score;
}
