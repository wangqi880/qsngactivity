package com.j.qsng.service;

import com.j.qsng.dao.CongfigMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

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
}
