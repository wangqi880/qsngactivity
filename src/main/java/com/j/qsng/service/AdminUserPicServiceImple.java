package com.j.qsng.service;

import com.j.qsng.common.pojo.Pager;
import com.j.qsng.common.pojo.SystemContext;
import com.j.qsng.dao.AdminUserPicMapper;
import com.j.qsng.dto.AdminUserPicDto;
import com.j.qsng.model.admin.AdminUserPic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/21.
 */
@Service("adminUserPicService")
public class AdminUserPicServiceImple implements AdminUserPicService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired AdminUserPicMapper adminUserPicMapper;

	public Pager<AdminUserPicDto> queryByPage()
	{
		Map map = new HashMap();
		Integer pageSize = SystemContext.getPageSize();
		Integer pageOffset = SystemContext.getPageOffset();
		if(0==pageOffset){
			pageOffset=1;
		}
		map.put("size",pageSize);
		map.put("offset",(pageOffset-1)*pageSize);
		Pager<AdminUserPicDto> page = new Pager<AdminUserPicDto>();
		int totole = adminUserPicMapper.count();
		page.setTotal(totole);
		page.setSize(pageSize);
		page.setOffset(pageOffset);
		List<AdminUserPicDto> list = adminUserPicMapper.queryByPage(map);
		page.setDatas(list);
		return page;
	}

	public void addParise(String userId, String attachmentId)
	{
		Map map  =new HashMap();
		map.put("userId",userId);
		map.put("attachmentId",attachmentId);
		adminUserPicMapper.addParise(map);
	}

	public void addPariseById(String id)
	{
		adminUserPicMapper.addPariseById(id);
	}
}
