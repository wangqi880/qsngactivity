package com.j.qsng.service;

import com.j.qsng.common.pojo.Pager;
import com.j.qsng.dto.AdminuserChoosePeriodNum;
import com.j.qsng.dto.ChooseUserPicDto;
import com.j.qsng.dto.UserPicScorePrizeDto;
import com.j.qsng.model.admin.ChooseLog;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/28.
 */
public interface ChooseLogService
{
	//根据用户名和期间查询
	public int queryNumByUsernameAndPeriod(String username,String choosePeriod);
	//插入选择日志
	public void add(ChooseLog chooseLog);
	//根据期数与是否选中查询
	public List<ChooseLog> queryByPeriodAndIsChoose(String choosePeriod,String chooseIs );

	//根据用户名和期间查询查询第一期已选中节刚过
	public int queryFisrtChoosedByusernameAndPeriod(String username,String prodId,String choosePeriod);
	//删除对应的期数选择日志
	public void deleteByPeriod(String period);
	//获取该期数的数量
	public int queryByPeriod(String period);

	//根据选择用户名和period查询作品资源
	List<ChooseUserPicDto> queryByUsernameAndPeriod(String username,String period);

	//根据id查询
	public ChooseLog queryById(String id);

	//更新选中状态
	public void updateCheck(ChooseLog chooseLog);

	//根据期数和是否选中查询详细信息
	List<ChooseUserPicDto> queryDetailByPeriodAndIsChoose(String chooseIs,String period);

	//获取该期和是否选中的数量
	public int queryNumByPeriodAndChecked(String choosePeriod,String chooseIs);

	//查询该用户，第几期，已经选择了多少照片
	public int  queryNumByUserAndPeriodAndChoosed(String username,String choosePeriod,String chooseIs);

	//统计每个用户，第几期，已经选择了多少照片
	public List<AdminuserChoosePeriodNum> queryStaticsByUserAndPeriodAndChoosed();

	//根据id查询详细信息
	public ChooseUserPicDto queryDetailByid(String id);
	//更新分数
	public void updateScore(ChooseLog chooseLog);

	public Pager<UserPicScorePrizeDto> queryPageDetailScorePrizeNum();

}
