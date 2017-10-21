package com.j.qsng.dto;

import com.j.qsng.model.Attachment;
import com.j.qsng.model.UserPic;
import lombok.Data;

/**
 * Created by Administrator on 2017/10/20.
 */
@Data
public class UserPicShowDto
{
	UserPic userPic;
	Attachment attachment;
	String     imageName;
	String     intro;

}
