package com.lxb.service;

import java.util.List;
import java.util.Random;

import com.lxb.dao.ArticleDao;
import com.lxb.domain.Article;
import com.lxb.factory.BasicFactory;

public class ArticleServiceImp implements ArticleService {
	
	private ArticleDao articledao = BasicFactory.getFactory().getDao(ArticleDao.class);

	@Override
	public void newArticle(Article article) {
		//---单独设置imgurl
		int number = new Random().nextInt(17) + 1;
		String path = "/MyBlog/static/img/article/";
		article.setImgurl(path+"s"+number+".jpg");
		articledao.addArticle(article);
	}

	@Override
	public List<Article> getAllArticles() {
		return articledao.selectAllArticles();
	}

	@Override
	public Article findArticleById(String id) {
		return articledao.getArticleById(id);
	}
	
}
