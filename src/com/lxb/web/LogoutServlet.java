package com.lxb.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutServlet extends HttpServlet {

	/**
	 * 注销用户
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//---1.找到该用户的Session，杀死Session
		if (request.getSession(false) != null && request.getSession().getAttribute("user") != null) {
			request.getSession().invalidate();
			//2.删除自动登录Cookie
			Cookie autologinC = new Cookie("autologin","");
			autologinC.setPath(request.getContextPath());
			autologinC.setMaxAge(0);
			response.addCookie(autologinC);
		}
		//---2.重定向到主页
		response.sendRedirect(request.getContextPath()+"/user/index.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
