package com.j.qsng.controller;

import com.j.qsng.common.pojo.Pager;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.model.User;
import com.j.qsng.model.admin.AdminUser;
import com.j.qsng.service.AdminUserService;
import com.j.qsng.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.List;

@Controller
public class AdminUserController {

    @Autowired
    AdminUserService adminUserService;

    @Autowired
    UserService userService;
    //所有用户列表
    @RequestMapping("/adminUser/adminUserList")
    public ModelAndView adminuserList(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/adminUser/adminuserList");
        List<AdminUser> adminUserList =  adminUserService.queryAll();
        modelAndView.addObject("adminUserList",adminUserList);
        return  modelAndView;
    }

    //评委用户列表
    @RequestMapping("/adminUser/selectUserList")
    public ModelAndView selectUserList(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/adminUser/adminuserList");
        List<AdminUser> adminUserList =  adminUserService.queryChooseUsers();
        modelAndView.addObject("adminUserList",adminUserList);
        return  modelAndView;
    }

    //进入添加用户界面
    @RequestMapping("/adminUser/addAdminUser")
    public ModelAndView addAdminUser(){
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.setViewName("adminUser/addAdminUser");
        return modelAndView;
    }
    //处理添加用户请求
    @RequestMapping(value = "/adminUser/addAdminUser",method = RequestMethod.POST)
    public ModelAndView addAdminUser(AdminUser adminUser){
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.setViewName("redirect:/adminUser/adminUserList");
        AdminUser oldUser = adminUserService.queryByUsername(adminUser.getUsername());
        if(null!=oldUser){
            modelAndView.setViewName("/adminUser/addAdminUser");
            modelAndView.addObject("message","用户名已经存在");
            return modelAndView;
        }
        adminUser.setId(String.valueOf(IDUtils.genItemId()));
        adminUser.setUpdateTime(DateUtils.getStandardNowDateTime());
        adminUser.setInsertTime(DateUtils.getStandardNowDateTime());
        adminUserService.add(adminUser);
        return  modelAndView;

    }
    //删除用户
    @RequestMapping("/adminUser/delete/{id}")
    public ModelAndView deleteAdminuser(@PathVariable String id){
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.setViewName("redirect:/adminUser/adminUserList");
        adminUserService.delete(id);
        return modelAndView;
    }

    //查看所有普通用户
    @RequestMapping("/adminUser/userList")
    private ModelAndView userList(){
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.setViewName("/adminUser/userList");
        Pager<User> page = userService.queryPager();
        modelAndView.addObject("page",page);
        return  modelAndView;
    }

}
