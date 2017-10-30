package com.j.qsng.dto;

import lombok.Data;

/**
 * Created by Administrator on 2017/10/30.
 */
//用户在该期数下的已选作品数
@Data
public class AdminuserChoosePeriodNum
{
	 String username;
	 String choosePeriod;
	 String choosedNum;
	 //总共的作品数
	 String allNum;


}
