package com.j.qsng.dto;

import com.j.qsng.model.Attachment;
import lombok.Data;

import java.util.List;

/**
 * Created by Administrator on 2017/10/16.
 */
@Data
public class UserActivityDto
{
	long             id;
	String           msisdn;
	String           name;
	String           cardId;
	String           age;
	String           sex;
	String           imageName;
	String           intro;
	String           attachIds;
	List<Attachment> attachList;
	String           insertTime;

}
