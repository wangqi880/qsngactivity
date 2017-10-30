package com.j.qsng.dao;

import com.j.qsng.model.UserPic;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface UserPicMapper
{
	//根据用户id查询记录
	public List<UserPic> queryByUserId(String userId);
	public void add(UserPic userPic);

	//根据用户id和删除记录,userId和att
	public void delByUserIdAndAttachmentId(Map map);
	//根据用户id和附件id查询数据,
	public List<UserPic> queryByUserIdAndAttachmentId(Map map);

	//更新图片标题和描述
	public  void updateNameAndInfo(UserPic userPic);

	//一共有多少个作品
	public int queryByAllNum();

	//查询所有的作品
	public List<UserPic> listAll();
}
