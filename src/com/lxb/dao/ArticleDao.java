package com.lxb.dao;

import java.util.List;

import com.lxb.domain.Article;

public interface ArticleDao extends Dao {

	/**
	 * 添加博文
	 * @param article 博文信息bean
	 */
	public void addArticle(Article article);

	/**
	 * 查询帖子列表
	 * @return  所有帖子组成的集合
	 */
	public List<Article> selectAllArticles();

	/**
	 * 根据id查找博文
	 * @param id 博文id
	 * @return 博文信息Bean
	 */
	public Article getArticleById(String id);

}
