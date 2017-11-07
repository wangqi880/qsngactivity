package com.j.qsng.controller;

import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.common.pojo.ChooseUtils;
import com.j.qsng.common.pojo.Pager;
import com.j.qsng.common.pojo.SystemContext;
import com.j.qsng.common.util.IDUtils;
import com.j.qsng.common.util.PictureUtils;
import com.j.qsng.dto.AdminUserPicDto;
import com.j.qsng.model.Attachment;
import com.j.qsng.model.User;
import com.j.qsng.model.admin.AdminUser;
import com.j.qsng.model.admin.AdminUserPic;
import com.j.qsng.service.AdminUserPicService;
import com.j.qsng.service.AttachmentService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class AdminUserPicController {

    @Autowired
    AdminUserPicService adminUserPicService;

    @Autowired
    AttachmentService attachmentService;
    //查看所有的管理员上传图片
    @RequestMapping("/admin/adminUserPicList")
    public ModelAndView adminUserPicList(){
        ModelAndView modelAndView  = new ModelAndView();
        modelAndView.setViewName("/admin/adminUserPicList");
        Pager<AdminUserPicDto> page = adminUserPicService.queryByPage();
        modelAndView.addObject("page",page);
        return  modelAndView;
    }

    //进入添加管理员图片界面
    @RequestMapping("/admin/addAdminUserPic")
    public  ModelAndView addAdminUserPic(){
        ModelAndView modelAndView  = new ModelAndView();
        modelAndView.setViewName("/admin/addAdminUserPic");
        return modelAndView;
    }

    //添加管理员图片
    @RequestMapping(value = "/admin/addAdminUserPic",method = RequestMethod.POST)
    public  ModelAndView addAdminUserPic(AdminUserPic adminUserPic,HttpSession session){
        ModelAndView modelAndView  = new ModelAndView();
        modelAndView.setViewName("redirect:/admin/adminUserPicList");
        try{
        AdminUser adminUser = (AdminUser)session.getAttribute("adminUser");
        adminUserPic.setUserId(adminUser.getId());
        adminUserPic.setStatus("1");
        adminUserPic.setId(String.valueOf(IDUtils.genItemId()));
        Attachment attachment =  attachmentService.load(adminUserPic.getAttachmentId());
        adminUserPic.setNewName(attachment.getNewName());
        adminUserPicService.add(adminUserPic);
        } catch (Exception e){
            System.out.println("添加错误");
        }
        return modelAndView;

    }
    //删除管理员图片
    @RequestMapping("/admin/deleteAdminUserPi/{id}")
    public  ModelAndView deleteAdminUserPi(@PathVariable  String id){
        ModelAndView modelAndView  = new ModelAndView();
        modelAndView.setViewName("redirect:/admin/adminUserPicList");
        adminUserPicService.delete(id);
        return modelAndView;
    }

    //管理员上传图片
    @RequestMapping(value = "/admin/pic/upload",method= RequestMethod.POST)
    @ResponseBody
    public Object uploadPic(HttpServletRequest req, HttpSession session) throws IOException
    {
        BaseResp resp  = new BaseResp();
        resp.setCode("000000");
        resp.setInfo("sccuess");
        List<Attachment> list = new ArrayList<Attachment>();

        AdminUser adminUser = (AdminUser) session.getAttribute("adminUser");
        String realPath= SystemContext.getRealPath();

        String path = "/resources/indexPic/";
        MultipartHttpServletRequest MulRequest = req instanceof MultipartHttpServletRequest ? (MultipartHttpServletRequest) req : null;
        Map<String, MultipartFile> map = MulRequest.getFileMap();
        try
        {
            for(Map.Entry<String, MultipartFile> entry:map.entrySet()){
                Attachment att = new Attachment();
                MultipartFile attach=entry.getValue();

                String ext = FilenameUtils.getExtension(attach.getOriginalFilename());
                if(!PictureUtils.imgTypes.contains(ext))
                {
                    resp.setCode("000001");
                    resp.setInfo("只支持图片上传请上传图片");
                    return resp;
                }else{
                    att.setIsImg(1);
                }
                if(attach.getSize()<PictureUtils.PICTURE_MIN || attach.getSize()>PictureUtils.PICTURE_MAX){
                    resp.setCode("000002");
                    resp.setInfo("图片只能1MB以上，5MB以下");
                    return resp;
                }

                long id = IDUtils.genItemId();
                att.setId(id);
                att.setUserId(Long.parseLong(adminUser.getId()));
                att.setNewName(String.valueOf(new Date().getTime()) + "." + ext);
                att.setOldName(FilenameUtils.getBaseName(attach.getOriginalFilename()));
                att.setSuffix(ext);
                att.setType(attach.getContentType());
                att.setSize(attach.getSize());
                att.setFilePath(path+""+att.getNewName());
                attachmentService.add(att, attach.getInputStream(),realPath+path);
                list.add(att);
            }
        }catch (Exception e){
            resp.setCode("999999");
            resp.setInfo("上传图片失败");
        }
        resp.setData(list);
        return resp;


    }

}
