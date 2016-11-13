package com.lxb.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lxb.domain.Reply;
import com.lxb.factory.BasicFactory;
import com.lxb.service.ReplyService;

public class AddReplayServlet extends HttpServlet {

	/**
	 * 评论博文
	 */
	private static final long serialVersionUID = 1L;
	private ReplyService service = BasicFactory.getFactory().getService(ReplyService.class); 

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//---1.获取数据,校验页面数据
		String content = request.getParameter("content");
		String artid =  request.getParameter("articleid");
		if (content == null || "".equals(content)) {
			if (artid == null || "".equals(artid)) {
				response.getWriter().write("对不起！由于系统原因，评论失败！对此给您带来的不便我们深感抱歉！3秒后将自动回到主页。。。");
				response.setHeader("Refresh", "3; url="+request.getContextPath()+"/user/index.jsp");
				return;
			}
			request.setAttribute("msg", "请输入回复内容后再提交！");
			request.getRequestDispatcher("/servlet/DetailArtServlet?id="+artid).forward(request, response);
			return;
		}
		//---单独设置author，userid
		String author = request.getSession().getAttribute("username").toString();
		int userid = (Integer) request.getSession().getAttribute("userid");
		
		//---2.封装数据
		Reply reply = new Reply();
		reply.setAuthor(author);
		reply.setContent(content);
		reply.setUser_id(userid);
		reply.setArt_id(Integer.parseInt(artid));
		
		//---3.调用Service里的方法添加回复
		service.addReply(reply);
		//---4.重定向到文章详情页面
		response.sendRedirect(request.getContextPath()+"/servlet/DetailArtServlet?id="+reply.getArt_id());
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
