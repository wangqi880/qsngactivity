package com.j.qsng.model.admin;

import lombok.Data;

/**
 * Created by Administrator on 2017/10/28.
 */
@Data
public class ChooseLog
{
	String id;
	String username;
	String prodId;
	String choosePeriod;
	String insertTime;
	//1为选中，其他为不选中
	String chooseIs;
	double score;
}
