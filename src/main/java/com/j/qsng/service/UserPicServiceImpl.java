package com.j.qsng.service;

import com.j.qsng.dao.AttachmentMapper;
import com.j.qsng.dao.UserPicMapper;
import com.j.qsng.dto.UserPicShowDto;
import com.j.qsng.model.Attachment;
import com.j.qsng.model.UserPic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/19.
 */
@Service("userPicService")
public class UserPicServiceImpl implements  UserPicService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired UserPicMapper    userPicMapper;
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired AttachmentMapper attachmentMapper;
	public List<UserPic> queryByUserId(String userId)
	{
		return userPicMapper.queryByUserId(userId);
	}

	public void add(UserPic userPic)
	{
		userPicMapper.add(userPic);
	}

	public List<UserPicShowDto> queryUserPicDtoByUserId(String userId)
	{

		List<UserPicShowDto> list  = new ArrayList<UserPicShowDto>();

		List<UserPic> userPicList=userPicMapper.queryByUserId(userId);

		for(UserPic up:userPicList){
			UserPicShowDto upsd = new UserPicShowDto();
			upsd.setUserPic(up);
			Attachment attachment = attachmentMapper.load(up.getAttachmentId());
			upsd.setAttachment(attachment);
			upsd.setImageName(up.getImageName());
			upsd.setIntro(up.getIntro());
			list.add(upsd);
		}


		return list;
	}

	public void delByUserIdAndAttachmentId(String userId, String attachmentId)
	{
		Map map =new HashMap();
		map.put("userId",userId);
		map.put("attachmentId",attachmentId);
		userPicMapper.delByUserIdAndAttachmentId(map);
	}

	public UserPic queryByUserIdAndAttachmentId(String userId, String attachmentId)
	{
		Map map =new HashMap();
		map.put("userId",userId);
		map.put("attachmentId",attachmentId);
		List<UserPic> list =userPicMapper.queryByUserIdAndAttachmentId(map);
		if(!CollectionUtils.isEmpty(list)){
			return list.get(0);
		}
		return null;
	}

	public void updateUserPic(UserPic userPic, String attachmentId)
	{
		Map map = new HashMap();
		map.put("userId",userPic.getUserId());
		map.put("attachmentId",attachmentId);
		userPicMapper.delByUserIdAndAttachmentId(map);
		userPicMapper.add(userPic);
	}

	public void updateNameAndInfo(UserPic userPic)
	{
		userPicMapper.updateNameAndInfo(userPic);
	}

	public int queryByAllNum()
	{
		return userPicMapper.queryByAllNum();
	}

	public List<UserPic> listAll()
	{
		return userPicMapper.listAll();
	}

	public UserPicShowDto queryUserPicDtoById(String id) {

			UserPicShowDto upsd  = new UserPicShowDto();
			UserPic up=userPicMapper.queryById(id);
			if(null==up){
				return  null;
			}
			upsd.setUserPic(up);
			Attachment attachment = attachmentMapper.load(up.getAttachmentId());
			upsd.setAttachment(attachment);
			upsd.setImageName(up.getImageName());
			upsd.setIntro(up.getIntro());
			return  upsd;
	}
}
