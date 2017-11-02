package com.j.qsng.web;

import com.j.qsng.model.User;
import com.j.qsng.model.admin.AdminUser;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	@SuppressWarnings("unchecked")
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		HttpSession session = request.getSession();
		/*
		 * 如果使用uploadify进行文件的上传，由于flash的bug问题，会产生一个新的session，此时验证失败
		 * 所以必须在此处获取一个原有的session，然后重置session信息
		 */
		String sid = request.getParameter("sid");
		if(sid!=null&&!"".equals(sid.trim())) {
			//当sid有值，就表示是通过uploadify上传文件，此时就应该获取原有的session
			session = CmsSessionContext.getSession(sid);
		}
		HandlerMethod hm = (HandlerMethod)handler;
		if(session==null){
			String s = request.getContextPath();
			response.sendRedirect(request.getContextPath()+"/login");
		}
		User user = (User)session.getAttribute("loginUser");
		//AdminUser adminUser = (AdminUser)session.getAttribute("adminUser");

		if(null==user) {
			String s = request.getContextPath();
			response.sendRedirect(request.getContextPath()+"/login/login.html");
			return false;
		} else{
			//判断是否有访问功能
		}

		return super.preHandle(request, response, handler);
	}
}
