package com.j.qsng.service;

import com.j.qsng.dao.CongfigMapper;
import com.j.qsng.model.CongfigPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/10/14.
 */
@Service ("configService")
public class ConfigServiceImpl implements ConfigService
{
	@SuppressWarnings ("SpringJavaAutowiringInspection") @Autowired CongfigMapper congfigMapper;
	public String getConfigvalue(String key)
	{
		String value = congfigMapper.getConfigvalue(key);
		return value;
	}

	public List<CongfigPojo> listAll()
	{
		return congfigMapper.listAll();
	}

	public void add(CongfigPojo congfigPojo)
	{
		String oldValue =  congfigMapper.getConfigvalue(congfigPojo.getConfigKey());
		if(StringUtils.isEmpty(oldValue)){
			congfigMapper.add(congfigPojo);
		}

	}

	public void delelte(String id)
	{
		congfigMapper.delelte(id);
	}

	public CongfigPojo queryById(String id)
	{
		return congfigMapper.queryById(id);
	}

	public void update(CongfigPojo congfigPojo)
	{
		congfigMapper.update(congfigPojo);
	}
}
