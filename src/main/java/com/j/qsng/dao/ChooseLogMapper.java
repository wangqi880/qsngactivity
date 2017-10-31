package com.j.qsng.dao;

import com.j.qsng.dto.AdminuserChoosePeriodNum;
import com.j.qsng.dto.ChooseUserPicDto;
import com.j.qsng.model.admin.ChooseLog;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/28.
 */
public interface ChooseLogMapper
{
	//根据用户名和期间查询
	public int queryByusernameAndPeriod(Map map);

	//插入选择日志
	public void add(ChooseLog chooseLog);

	//根据期数与是否选中查询
	public List<ChooseLog> queryByPeriodAndIsChoose(Map map);
	//根据用户名和期间查询查询第一期已选中节刚过
	public int queryFisrtChoosedByusernameAndPeriod(Map map);
	//删除对应的期数选择日志
	public void deleteByPeriod(String period);

	//获取该期数的数量
	public int queryByPeriod(String period);

	//根据选择用户名和period查询作品资源
	List<ChooseUserPicDto> queryByUsernameAndPeriod(Map map);

	//根据id查询
	public ChooseLog queryById(String id);
	public void updateCheck(ChooseLog chooseLog);

	//根据期数和是否选中查询详细信息
	List<ChooseUserPicDto> queryDetailByPeriodAndIsChoose(Map map);

	//获取该期和是否选中的数量
	public int queryNumByPeriodAndChecked(Map map);

	//查询该用户，第几期，已经选择了多少照片
	public int queryNumByUserAndPeriodAndChoosed(Map map);

	//统计每个用户，第几期，已经选择了多少照片
	public List<AdminuserChoosePeriodNum> queryStaticsByUserAndPeriodAndChoosed();
	//根据id查询详细信息
	public ChooseUserPicDto queryDetailByid(String id);

	//更新分数
	public void updateScore(ChooseLog chooseLog);
}
