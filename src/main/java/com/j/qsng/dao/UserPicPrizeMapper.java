package com.j.qsng.dao;

import com.j.qsng.model.UserPicPrize;

public interface UserPicPrizeMapper {

    //根产品id查询点赞
    public UserPicPrize queryByProdId(String prodId);

    //添加点赞
    public void add(UserPicPrize userPicPrize);

    //增加1次点赞
    public int plusPrize(String prodId);

}
