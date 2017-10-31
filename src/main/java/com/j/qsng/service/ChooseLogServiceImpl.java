package com.j.qsng.service;

import com.j.qsng.common.pojo.ChooseUtils;
import com.j.qsng.dao.ChooseLogMapper;
import com.j.qsng.dto.AdminuserChoosePeriodNum;
import com.j.qsng.dto.ChooseUserPicDto;
import com.j.qsng.model.admin.ChooseLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/28.
 */
@Service("chooseLogService")
public class ChooseLogServiceImpl implements ChooseLogService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired ChooseLogMapper chooseLogMapper;

	public int queryNumByUsernameAndPeriod(String username, String choosePeriod)
	{
		Map map =new HashMap();
		map.put("username",username);
		map.put("choosePeriod",choosePeriod);
		return chooseLogMapper.queryByusernameAndPeriod(map);
	}
	public void add(ChooseLog chooseLog)
	{
		chooseLogMapper.add(chooseLog);

	}
	public List<ChooseLog> queryByPeriodAndIsChoose(String choosePeriod,String chooseIs)
	{
		Map map =new HashMap();
		map.put("choosePeriod",choosePeriod);
		map.put("chooseIs",chooseIs);
		return chooseLogMapper.queryByPeriodAndIsChoose(map);
	}
	public int queryFisrtChoosedByusernameAndPeriod(String username,String prodId, String choosePeriod)
	{
		Map map = new HashMap();
		map.put("username",username);
		map.put("prodId",prodId);
		map.put("choosePeriod",choosePeriod);
		return chooseLogMapper.queryFisrtChoosedByusernameAndPeriod(map);
	}

	public void deleteByPeriod(String period)
	{
		chooseLogMapper.deleteByPeriod(period);
	}

	public int queryByPeriod(String period)
	{
		return chooseLogMapper.queryByPeriod(period);
	}

	public List<ChooseUserPicDto> queryByUsernameAndPeriod(String username, String period)
	{
		Map map =new HashMap();
		map.put("username",username);
		map.put("period",period);
		return chooseLogMapper.queryByUsernameAndPeriod(map);
	}

	public ChooseLog queryById(String id)
	{
		return chooseLogMapper.queryById(id);
	}

	public void updateCheck(ChooseLog chooseLog)
	{
		chooseLogMapper.updateCheck(chooseLog);
	}

	public List<ChooseUserPicDto> queryDetailByPeriodAndIsChoose(String chooseIs, String period)
	{
		Map map = new HashMap();
		map.put("chooseIs",chooseIs);
		map.put("period",period);
		return chooseLogMapper.queryDetailByPeriodAndIsChoose(map);
	}

	public int queryNumByPeriodAndChecked(String choosePeriod,String chooseIs)
	{
		Map map = new HashMap();
		map.put("choosePeriod",choosePeriod);
		map.put("chooseIs",chooseIs);
		return chooseLogMapper.queryNumByPeriodAndChecked(map);
	}

	public int   queryNumByUserAndPeriodAndChoosed(String username,String choosePeriod,String chooseIs)
	{
		Map map = new HashMap();
		map.put("username",username);
		map.put("choosePeriod",choosePeriod);
		map.put("chooseIs",chooseIs);
		return chooseLogMapper.queryNumByUserAndPeriodAndChoosed(map);
	}

	public List<AdminuserChoosePeriodNum> queryStaticsByUserAndPeriodAndChoosed()
	{
		return chooseLogMapper.queryStaticsByUserAndPeriodAndChoosed();
	}

	public ChooseUserPicDto queryDetailByid(String id)
	{
		return chooseLogMapper.queryDetailByid(id);
	}

	public void updateScore(ChooseLog chooseLog)
	{
		chooseLogMapper.updateScore(chooseLog);
	}
}
