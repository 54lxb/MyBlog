package com.lxb.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.lxb.domain.Article;
import com.lxb.exception.MsgException;
import com.lxb.factory.BasicFactory;
import com.lxb.service.ArticleService;

public class NewArtServlet extends HttpServlet {

	/**
	 * 添加帖子
	 */
	private static final long serialVersionUID = 1L;
	private ArticleService service = BasicFactory.getFactory().getService(ArticleService.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			//---1.获取帖子数据
			Article article = new Article();
			BeanUtils.populate(article, request.getParameterMap());
			//---2.校验数据，调用Service中添加帖子的方法
			article.chechNull();
			service.newArticle(article);
			//---3.重定向到帖子列表
			response.getWriter().write("恭喜你留言成功！3秒后将自动跳转到留言列表。。。");
			response.sendRedirect(request.getContextPath()+"/servlet/SelectArtServlet");
		} catch (MsgException m) {
			request.setAttribute("msg", m.getMessage());
			request.getRequestDispatcher("/user/learns.jsp").forward(request, response);
			return;
		} catch (Exception  e) {
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
}
