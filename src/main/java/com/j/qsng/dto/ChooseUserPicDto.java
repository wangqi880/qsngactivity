package com.j.qsng.dto;

import lombok.Data;

/**
 * Created by Administrator on 2017/10/29.
 */
//用户选择的图片dto
@Data
public class ChooseUserPicDto
{
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
	double score;
	int prizeNum;

}
