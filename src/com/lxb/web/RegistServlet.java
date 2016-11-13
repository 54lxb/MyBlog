package com.lxb.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.lxb.domain.User;
import com.lxb.exception.MsgException;
import com.lxb.factory.BasicFactory;
import com.lxb.service.UserService;

public class RegistServlet extends HttpServlet {

	/**
	 * 注册用户
	 */
	private static final long serialVersionUID = 1L;
	private UserService service = BasicFactory.getFactory().getService(UserService.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			//---1.校验验证码，校验验证码
			String valistr1 = request.getParameter("valistr");
			String valistr2 = request.getSession().getAttribute("valistr").toString();
			//---如果验证码为空
			if (valistr1 == null || "".equals(valistr1) ||valistr2 == null || "".equals(valistr2)) {
				request.setAttribute("msg", "对不起！请输入验证码！");
				request.getRequestDispatcher("/user/regist.jsp").forward(request, response);
				return;
			}
			//---如果验证码输入错误
			if (!valistr1.equalsIgnoreCase(valistr2)) {
				request.setAttribute("msg", "对不起！验证码输入错误！");
				request.getRequestDispatcher("/user/regist.jsp").forward(request, response);
				return;
			}
			//---2.获取页面表单数据，封装数据
			User user = new User();
			BeanUtils.populate(user, request.getParameterMap());
			//--单独设置ip
			String ip = request.getHeader("x-forwarded-for");
		    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
		        ip = request.getRemoteAddr();
		    }
		    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
		        ip = request.getHeader("Proxy-Client-IP");
		    }
		    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
		        ip = request.getHeader("WL-Proxy-Client-IP");
		    }
			user.setIp(ip);
			//---3.校验数据
			user.checkValue();
			//---4.调用service里面的注册用户的方法
			service.registUser(user);
			//---5.提示用户激活
			response.getWriter().write("<p align='center'>您的注册请求已提交！激活邮件已发送至您的邮箱，请注意查收并及时激活，以免超时未激活导致信息作废！3秒后将自动跳转到主页。。。</p>");
			response.setHeader("Refresh", "3;url="+request.getContextPath()+"/user/index.jsp");
		
		} catch (MsgException e) {
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("/user/regist.jsp").forward(request, response);
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}  
}
