package com.lxb.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lxb.domain.Article;
import com.lxb.factory.BasicFactory;
import com.lxb.service.ArticleService;

public class SelectArtServlet extends HttpServlet {

	/**
	 * 查询帖子列表
	 */
	private static final long serialVersionUID = 1L;
	private ArticleService service = BasicFactory.getFactory().getService(ArticleService.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//---1.查询帖子信息
		List<Article> list = service.getAllArticles();
		//---2.转发到learns.jsp
		request.setAttribute("list", list);
		request.getRequestDispatcher("/user/learns.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
