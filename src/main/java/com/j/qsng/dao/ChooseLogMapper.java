package com.j.qsng.dao;

import com.github.pagehelper.Page;
import com.j.qsng.dto.AdminuserChoosePeriodNum;
import com.j.qsng.dto.ChooseUserPicDto;
import com.j.qsng.dto.UserPicScorePrizeDto;
import com.j.qsng.dto.UserScoreLogDto;
import com.j.qsng.model.admin.ChooseLog;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/28.
 */
public interface ChooseLogMapper
{
	//根据用户名和期间查询
	public int queryNumByUsernameAndPeriod(Map map);

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

	//获取该期和是否选中的数量
	public int queryNumByPeriodAndCheckedAndUserid(Map map);

	//查询该用户，第几期，已经选择了多少照片
	public int queryNumByUserAndPeriodAndChoosed(Map map);

	//统计每个用户，第几期，已经选择了多少照片
	public List<AdminuserChoosePeriodNum> queryStaticsByUserAndPeriodAndChoosed();
	//根据id查询详细信息
	public ChooseUserPicDto queryDetailByid(String id);

	//更新分数
	public void updateScore(ChooseLog chooseLog);

	//查询已经评分的用户作品的分数，点赞详细信息
	public List<UserPicScorePrizeDto> queryPageDetailScorePrizeNum(Map map);

	//根据用户期数分页显示
	List<ChooseUserPicDto> queryPageByUsernameAndPeriod(Map map);

	//根据用户名，期数，是否已经选项查询数据
	List<ChooseUserPicDto> queryDetailByUsernamePeriodAndIsChoose(Map map);

	//根据期数和是否选中查询详细信息(分页)
	List<ChooseUserPicDto> queryPagerDetailByPeriodAndIsChoose(Map map);

	//根据前段用户的id和期数,是否已选中，来查询该用户已经是否被选的详情
	List<ChooseUserPicDto> queryUserIdAndPeriod(Map map);

	//查询奖励用户
	List<ChooseUserPicDto> queryPrizeInfo(Map map);
}
