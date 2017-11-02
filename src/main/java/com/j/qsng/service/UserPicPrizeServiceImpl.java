package com.j.qsng.service;

import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.dao.UserPicPrizeMapper;
import com.j.qsng.model.UserPicPrize;
import com.j.qsng.model.UserPrize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserPicPrizeServiceImpl implements UserPicPrizeService {
    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    UserPicPrizeMapper userPicPrizeMapper;

    @Autowired UserPrizeService userPrizeService;
    public UserPicPrize queryByProdId(String prodId) {
        return userPicPrizeMapper.queryByProdId(prodId);
    }

    public void add(UserPicPrize userPicPrize) {
        userPicPrizeMapper.add(userPicPrize);
    }

    public int plusUserPrize(String userId,String prodId) {
        UserPicPrize oldUserPicPrize=userPicPrizeMapper.queryByProdId(prodId);
        int reNum=0;
        if(null==oldUserPicPrize){
            UserPicPrize userPicPrize = new UserPicPrize();
            userPicPrize.setId(String.valueOf(IDUtils.genItemId()));
            userPicPrize.setProdId(prodId);
            userPicPrize.setPrizeNum(1);
            add((userPicPrize));
            reNum=1;
        }else{
            reNum=userPicPrizeMapper.plusPrize(prodId);
        }

        //插入用户点赞
        String  nowDate = DateUtils.getShortNowDate();

        UserPrize userPrize = new UserPrize();
        userPrize.setId(String.valueOf(IDUtils.genItemId()));
        userPrize.setUserId(userId);
        //该id是前段用户id
        userPrize.setAdminUserPicId(prodId);
        userPrize.setDayDate(nowDate);
        userPrizeService.add(userPrize);
        return reNum;
    }
}
