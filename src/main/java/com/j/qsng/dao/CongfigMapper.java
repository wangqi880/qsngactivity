package com.j.qsng.dao;

import com.j.qsng.model.CongfigPojo;

import java.util.List;

/**
 * Created by Administrator on 2017/10/14.
 */
public interface CongfigMapper
{
	public String getConfigvalue(String key);
	//查询所有配置
	public List<CongfigPojo> listAll();

	//添加
	public void add(CongfigPojo congfigPojo);
	//删除配置
	public void delelte(String id);

	//根据id查询
	public CongfigPojo queryById(String id);
	//更新
	public void update(CongfigPojo congfigPojo);
}
