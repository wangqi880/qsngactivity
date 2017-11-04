package com.j.qsng.service;

import com.j.qsng.common.pojo.Pager;
import com.j.qsng.dto.AdminUserPicDto;
import com.j.qsng.model.admin.AdminUserPic;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/21.
 */
public interface AdminUserPicService
{
	//分页查询
	public Pager<AdminUserPicDto> queryByPage();
	//点赞数+1,根据用户id和附件id
	public void addParise(String userId,String attachmentId);

	//点赞数+1,根据记录id
	public void addPariseById(String id);
	//查询根据id
	public AdminUserPicDto load(String id);

	public void add(AdminUserPic adminUserPic);
	//根据id删除
	public  void delete(String id);


}
