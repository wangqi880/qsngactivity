package com.j.qsng.model.admin;

import lombok.Data;

/**
 * Created by Administrator on 2017/10/21.
 */
@Data
public class AdminUserPic
{
	String id;
	String userId;
	String attachmentId;
	String imageName;
	String intro;
	String newName;
	int prizeNum;
	int score;
	String status;
}
