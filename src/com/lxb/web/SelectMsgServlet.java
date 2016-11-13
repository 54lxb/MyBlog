package com.lxb.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lxb.domain.Msgs;
import com.lxb.factory.BasicFactory;
import com.lxb.service.MsgService;

public class SelectMsgServlet extends HttpServlet {

	/**
	 * 查询留言内容
	 */
	private static final long serialVersionUID = 1L;
	private MsgService service = BasicFactory.getFactory().getService(MsgService.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//---1.查询留言内容
		List<Msgs> list = service.selectMsg();
		//---2.带到页面显示
		request.setAttribute("list", list);
		request.getRequestDispatcher("/user/mesgs.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
