package com.j.qsng.dao;

import com.j.qsng.model.ColumnContent;

import java.util.List;

public interface ColumnInfoContentMapper {
    //获取数据根据type
    public List<ColumnContent> getByType(String type);
    //修改内容
    public void update(ColumnContent columnContent);

    //根据id查询数据
    public  ColumnContent queryById(String id);

}
