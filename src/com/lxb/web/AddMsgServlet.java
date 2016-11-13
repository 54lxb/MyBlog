package com.lxb.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lxb.domain.Msgs;
import com.lxb.factory.BasicFactory;
import com.lxb.service.MsgService;

public class AddMsgServlet extends HttpServlet {

	/**
	 * 添加留言
	 */
	private static final long serialVersionUID = 1L;
	private MsgService service = BasicFactory.getFactory().getService(MsgService.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//---1.获取数据，校验数据
		Msgs msg = new Msgs();
		String content = request.getParameter("content");
		if (content == null || "".equals(content)) {
			request.setAttribute("msg", "对不起！请输入留言内容！");
			request.getRequestDispatcher("/user/mesgs.jsp").forward(request, response);
			return;
		}
		msg.setContent(content);
		msg.setAuthor(request.getParameter("author"));
		//---2.调用service里的天留言的方法
		service.addMsg(msg);
		//---3.重定向到留言列表
		response.getWriter().write("恭喜你留言成功！3秒后将自动跳转到留言列表。。。");
		response.sendRedirect(request.getContextPath()+"/servlet/SelectMsgServlet");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
