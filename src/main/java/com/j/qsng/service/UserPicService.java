package com.j.qsng.service;

import com.j.qsng.dto.UserPicShowDto;
import com.j.qsng.model.UserPic;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface UserPicService//根据用户id查询记录
{
	public List<UserPic> queryByUserId(String userId);
	public void add(UserPic userPic);
	//根据用户id查询该用户的上传作品信息
	public List<UserPicShowDto> queryUserPicDtoByUserId(String userId);
	//根据用户id和附件id删除记录
	public void delByUserIdAndAttachmentId(String userId,String attachmentId);

	//public
	public UserPic queryByUserIdAndAttachmentId(String userId,String attachmentId);

	//更新图片信息
	public void updateUserPic(UserPic userPic,String oldAttachmentId);

	//更新图片标题和描述
	public  void updateNameAndInfo(UserPic userPic);
	//一共有多少个作品
	public int queryByAllNum();
	//查询所有的作品
	public List<UserPic> listAll();

	//根据作品id查询作品详细信息
	public UserPicShowDto queryUserPicDtoById(String id);
	//根据用户id查询用户上传的作品数量
	public int queryNumByUserId(String userId);


}
