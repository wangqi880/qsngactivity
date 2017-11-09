package com.j.qsng.service;

import com.j.qsng.model.admin.AdminUser;
import com.j.qsng.model.admin.ChooseUserConfig;

import java.util.List;
import java.util.Map;

public interface ChooseUserConfigService {
    //根据id查询
    public ChooseUserConfig load(String id);

    //根据期数选择
    public List<ChooseUserConfig> queryByPeriod(String period);

    //根据id删除
    public void delete(String id);

    //添加
    public void add(ChooseUserConfig chooseUserConfig);

    //查询所有的用户id
    public List<String> queryIdsByPeriod(String period);
    //根据userId和period删除
    public  void deleteByUserIdAndPeriod(String userId,String period);
    //已经选择的每一起人数
    public int queryNumByPeriod(String period);
    //根据期数用户信息
    public List<AdminUser> queryAdminUserByPeriod(String period);

}
