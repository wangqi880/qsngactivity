package com.j.qsng.controller;

import com.j.qsng.common.pojo.ColumnUtils;
import com.j.qsng.model.ColumnContent;
import com.j.qsng.service.ColumnInfoContentService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AdminIndexController {
    @Autowired
    ColumnInfoContentService columnInfoContentService;

    //进入首页栏目内容显示界面
    @RequestMapping("/adminIndex/content")
    public ModelAndView content(String type){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("adminIndex/content");
        if(StringUtils.isEmpty(type)){
            type= ColumnUtils.ACT_INFO;
        }
        List<ColumnContent> list = columnInfoContentService.getByType(type);
        modelAndView.addObject("data",list);
        modelAndView.addObject("type",type);
        return modelAndView;
    }
    //修改内容
    @RequestMapping(value = "/adminIndex/updateContent",method = RequestMethod.POST)
    public ModelAndView updateContent(String type,String[] id,String []info ){
        for(int i=0;i<id.length;i++){
            ColumnContent columnContent= columnInfoContentService.queryById(id[i]);
            columnContent.setInfo(info[i]);
            columnInfoContentService.update(columnContent);
        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/adminIndex/content?type="+type);
        return modelAndView;
    }
}
