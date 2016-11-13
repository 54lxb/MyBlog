package com.lxb.dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.lxb.domain.Article;
import com.lxb.util.TransactionManager;

public class ArticleDaoImp implements ArticleDao {

	@Override
	public void addArticle(Article article) {
		String sql = "insert into article values (null,?,?,?,?,?,null)";
		try {
			QueryRunner run = new QueryRunner(TransactionManager.getSource());
			run.update(sql, article.getTitle(), article.getType(), article.getAuthor(), article.getImgurl(), article.getContent());
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Article> selectAllArticles() {
		String sql = "select * from article";
		try {
			QueryRunner run = new QueryRunner(TransactionManager.getSource());
			return run.query(sql, new BeanListHandler<Article> (Article.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public Article getArticleById(String id) {
		String sql = "select * from article where id = ?";
		try {
			QueryRunner run = new QueryRunner(TransactionManager.getSource());
			return run.query(sql, new BeanHandler<Article> (Article.class), id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
