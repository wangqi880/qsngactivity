package com.j.qsng.service;

import com.j.qsng.dao.ChooseUserConfigMapper;
import com.j.qsng.model.admin.AdminUser;
import com.j.qsng.model.admin.ChooseUserConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ChooseUserConfigServiceImpl implements ChooseUserConfigService {

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    ChooseUserConfigMapper chooseUserConfigMapper;

    public ChooseUserConfig load(String id) {

        return chooseUserConfigMapper.load(id);
    }

    public List<ChooseUserConfig> queryByPeriod(String period) {
        return chooseUserConfigMapper.queryByPeriod(period);
    }

    public void delete(String id) {
        chooseUserConfigMapper.delete(id);
    }

    public void add(ChooseUserConfig chooseUserConfig) {
        chooseUserConfigMapper.add(chooseUserConfig);
    }

    public List<String> queryIdsByPeriod(String period) {
        return chooseUserConfigMapper.queryIdsByPeriod(period);
    }

    public void deleteByUserIdAndPeriod(String userId, String period) {
        Map map = new HashMap();
        map.put("userId",userId);
        map.put("period",period);
        chooseUserConfigMapper.deleteByUserIdAndPeriod(map);
    }

    public int queryNumByPeriod(String period) {
        return chooseUserConfigMapper.queryNumByPeriod(period);
    }

    public List<AdminUser> queryAdminUserByPeriod(String period) {
        return chooseUserConfigMapper.queryAdminUserByPeriod(period);
    }
}
