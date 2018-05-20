package com.j.qsng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @version 1.0 created by xxxx on 2018/5/20 15:39
 */
@Controller
public class HuiyiController {

    /**
     * 首页
     * @return
     */
    @RequestMapping("/huiyi")
    public String index(){
        return "huiyi/index";
    }

    /**
     * 会议议程
     * @return
     */
    @RequestMapping("/huiyi/hyrc")
    public String hyrc(){
        return  "/huiyi/hyrc";
    }

    /**
     * 会议议程
     * @return
     */
    @RequestMapping("/huiyi/hyyc")
    public String hyyc(){
        return  "/huiyi/hyyc";
    }

    /**
     * 人员名单
     * @return
     */
    @RequestMapping("/huiyi/rymd")
    public String rymd(){
        return "/huiyi/rymd";
    }

    /**
     * 简介
     * @return
     */
    @RequestMapping("/huiyi/info")
    public String info(){
        return  "/huiyi/info";
    }



}
