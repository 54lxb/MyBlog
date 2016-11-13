package com.lxb.domain;

import java.io.Serializable;
import java.sql.Date;

public class Msgs implements Serializable {

	/**
	 * Message Bean
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String content;  //---留言内容
	private String author;   //---留言作者
	private Date writetime;  //---留言时间
	private String headers;  //---头像路径
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getWritetime() {
		return writetime;
	}
	public void setWritetime(Date writetime) {
		this.writetime = writetime;
	}
	public String getHeaders() {
		return headers;
	}
	public void setHeaders(String headers) {
		this.headers = headers;
	}
}
