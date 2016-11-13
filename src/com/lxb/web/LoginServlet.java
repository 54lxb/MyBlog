package com.lxb.web;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lxb.domain.User;
import com.lxb.exception.MsgException;
import com.lxb.factory.BasicFactory;
import com.lxb.service.UserService;

public class LoginServlet extends HttpServlet {

	/**
	 * 登录用户
	 */
	private static final long serialVersionUID = 1L;
	private UserService userservice = BasicFactory.getFactory().getService(UserService.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			//---1.获取用户输入的验证码并校验
			String valistr1 = request.getParameter("valistr");
			String valistr2 = request.getSession().getAttribute("valistr").toString();
			
			if (valistr1 == null || valistr1.equals("") || valistr2 == null || valistr2.equals("")) {
				//---验证码为空，重回登录页面并提示用户
				request.setAttribute("msg", "对不起！验证码不允许为空！");
				request.getRequestDispatcher("/user/login.jsp").forward(request, response);
				return;
			}
			if (!valistr1.equalsIgnoreCase(valistr2)) {
				//---验证码错误，重回登录页面并提示用户
				request.setAttribute("msg", "对不起！您输入的验证码不正确！");
				request.getRequestDispatcher("/user/login.jsp").forward(request, response);
				return;
			}
			//---2.获取用户名和密码
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			//---3.判断用户名密码是否为空
			if (username.equals("") || username == null || password.equals("") || password == null ) {
				//---用户名密码为空，重回登录页面并提示用户
				request.setAttribute("msg", "对不起！用户名和密码都不允许为空！");
				request.getRequestDispatcher("/user/login.jsp").forward(request, response);
				return;
			}
			
			//---4.调用service中登录用户的方法并判断用户密码
			User user = userservice.isUser(username, password);
			if (user == null) {
				//---当密码错误时，转发错误信息到登陆页面并提示
				request.setAttribute("msg", "用户名和密码不匹配，请仔细检查后再试！");
				request.getRequestDispatcher("/user/login.jsp").forward(request, response);
				return;
			}
			
			//---5.判断用户的激活状态
			if (user.getActivestate() == 0) {
				request.setAttribute("msg", "对不起，您的帐号还未激活，登录失败！");
				request.getRequestDispatcher("/user/login.jsp").forward(request, response);
				return;
			}
			
			//---6.登录用户，重定向到主页
			//---上线之前先检查该用户是否已经登录，若已登录，把先前登录的用户挤下线
			ServletContext context = this.getServletContext();
			@SuppressWarnings("unchecked")
			Map<User,HttpSession> map = (Map<User, HttpSession>) context.getAttribute("userMap");
			HttpSession session = map.get(user);
			if (session != null) {
				session.invalidate();
				response.getWriter().write("");
			}
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("userid", user.getId());
			request.getSession().setAttribute("username", user.getUsername());
			
			//---如果用户勾选过自动登陆,发送自动登陆cookie
			if("true".equals(request.getParameter("autologin"))){
				String un = URLEncoder.encode(user.getUsername(), "utf-8");
				String pd = URLEncoder.encode(user.getPassword(), "utf-8");
				Cookie autologinC = new Cookie("autologin",un+":"+pd);
				autologinC.setPath(request.getContextPath());
				autologinC.setMaxAge(3600*24*30);
				response.addCookie(autologinC);
			}
			response.sendRedirect(request.getContextPath()+"/user/index.jsp");
			
		} catch (MsgException e) {
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("/user/login.jsp").forward(request, response);
			return;
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
