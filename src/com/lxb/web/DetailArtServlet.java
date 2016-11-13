package com.lxb.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lxb.domain.Article;
import com.lxb.domain.Reply;
import com.lxb.factory.BasicFactory;
import com.lxb.service.ArticleService;
import com.lxb.service.ReplyService;

public class DetailArtServlet extends HttpServlet {

	/**
	 * 查询博文详情
	 */
	private static final long serialVersionUID = 1L;
	private ArticleService aservice = BasicFactory.getFactory().getService(ArticleService.class);
	private ReplyService rservice = BasicFactory.getFactory().getService(ReplyService.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//---1.获取博文id
		String art_id = request.getParameter("id");
		//---2.调用Service中根据id查找博文
		Article article = aservice.findArticleById(art_id);
		//---3.调用service中根据博文id查找回复列表的方法
		List<Reply> list = rservice.getAllReplyByArt_Id(art_id);
		//---4.存入request域，带到页面做显示
		request.setAttribute("article", article);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/user/article.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
