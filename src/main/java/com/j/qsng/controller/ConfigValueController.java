package com.j.qsng.controller;

import com.j.qsng.common.pojo.BaseResp;
import com.j.qsng.service.ConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2017/10/14.
 */
@Controller
public class ConfigValueController extends BaseResp
{
	@Autowired ConfigService configService;

	@RequestMapping(value = "/config.do",method = RequestMethod.GET)
	@ResponseBody
	public String getVale(@RequestParam String key){
	String value = configService.getConfigvalue(key);
	return value+"哈哈";
	}
}
