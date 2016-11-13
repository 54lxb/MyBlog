package com.lxb.domain;

import java.io.Serializable;
import java.sql.Date;

public class Reply implements Serializable {
	
	/**
	 * 博文评论列表
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private int art_id;
	private int user_id;
	private String author;
	private String content;
	private Date replytime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getArt_id() {
		return art_id;
	}
	public void setArt_id(int art_id) {
		this.art_id = art_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReplytime() {
		return replytime;
	}
	public void setReplytime(Date replytime) {
		this.replytime = replytime;
	}
}
