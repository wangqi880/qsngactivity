package com.j.qsng.dao;

import com.j.qsng.dto.AdminUserPicDto;
import com.j.qsng.model.admin.AdminUserPic;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/21.
 */
public interface AdminUserPicMapper
{
	public void add(AdminUserPic adminUserPic);
	//分页查询
	public List<AdminUserPicDto> queryByPage(Map map);
	//总条数
	public int count();

	//点赞数+1
	public void addParise(Map map);
	//点赞数+1,根据记录id
	public void addPariseById(String id);
}
