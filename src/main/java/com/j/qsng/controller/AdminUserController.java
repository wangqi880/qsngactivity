package com.j.qsng.controller;

import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.common.pojo.Pager;
import com.j.qsng.common.util.DateUtils;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.model.User;
import com.j.qsng.model.admin.AdminUser;
import com.j.qsng.service.AdminUserService;
import com.j.qsng.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sun.misc.resources.Messages_pt_BR;

import javax.servlet.http.HttpSession;
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


    //进入修改密码界面
    @RequestMapping("/adminUser/updatePassword.html")
    private  ModelAndView updatePassword(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("adminUser/updatePassword");
        return modelAndView;
    }

    //修改密码
    @RequestMapping(value = "/adminUser/updatePassword")
    @ResponseBody
    private  Object updatePassword2(String oldPassword,String newPassword1,String newPassword2,HttpSession session){
        BaseResp resp = new BaseResp();
        AdminUser user = (AdminUser)session.getAttribute("adminUser");

        resp.setCode("000000");
        resp.setInfo("修改成功");

       if(StringUtils.isEmpty(oldPassword) || StringUtils.isEmpty(newPassword1) ||  StringUtils.isEmpty(newPassword2)){
           resp.setCode("000001");
           resp.setInfo("密码不能为空");
           return resp;
       }
       if(!newPassword1.equals(newPassword2)){
           resp.setCode("000002");
           resp.setInfo("两次密码不一致");
           return resp;
       }

       if(!oldPassword.equals(user.getPassword())){
           resp.setCode("000003");
           resp.setInfo("以前的密码输入不正确");
           return resp;
       }
       adminUserService.updatePassword(user.getId(),newPassword1);
       return  resp;
    }
}
