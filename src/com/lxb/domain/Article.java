package com.lxb.domain;

import java.io.Serializable;
import java.sql.Date;

import com.lxb.exception.MsgException;

public class Article implements Serializable {

	/**
	 * Article Bean
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String title;
	private String type;
	private String author;
	private String imgurl;
	private String content;
	private Date writetime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getHalfcont() {
		return content.substring(0,100)+"...";
	}
	public Date getWritetime() {
		return writetime;
	}
	public void setWritetime(Date writetime) {
		this.writetime = writetime;
	}
	public void chechNull() throws MsgException {
		if (title == null || "".equals(title)) {
			throw new MsgException("对不起！标题内容不能为空！");
		}
		if (content == null || "".equals(content)) {
			throw new MsgException("对不起！文章内容不能为空！");
		}
	}
}
