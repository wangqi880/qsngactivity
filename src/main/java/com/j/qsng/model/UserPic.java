package com.j.qsng.model;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * Created by Administrator on 2017/10/19.
 */
@Data
public class UserPic
{
	String id;
	String userId;
	String attachmentId ;
	String imageName;
	String intro;
	//创作时间
	String creationDate;
}
