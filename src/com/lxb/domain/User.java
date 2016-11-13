package com.lxb.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import com.lxb.exception.MsgException;

public class User implements Serializable, HttpSessionBindingListener {
	/**
	 * UserBean
	 */
	private static final long serialVersionUID = 1L;
	private int id;            //---用户编号
	private String username;   //---用户名
	private String password;   //---密码
	private String repassword; //---确认密码
	private String email;      //---用户邮箱
	private String ip;         //---注册地址
	private int role;          //---用户角色
	private Date registtime;   //---注册时间
	private String activecode; //---帐号激活码
	private int activestate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegisttime() {
		return registtime;
	}
	public void setRegisttime(Date registtime) {
		this.registtime = registtime;
	}
	public String getActivecode() {
		return activecode;
	}
	public void setActivecode(String activecode) {
		this.activecode = activecode;
	}
	public int getActivestate() {
		return activestate;
	}
	public void setActivestate(int activestate) {
		this.activestate = activestate;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	
	//---用户提交数据校验
	public void checkValue() throws MsgException {

		if (username.equals("") || username == null) {
			throw new MsgException("对不起！用户名不能为空！");
		}
		if (password.equals("") || password == null) {
			throw new MsgException("对不起！密码不允许为空！");
		}
		if (repassword.equals("") || repassword == null) {
			throw new MsgException("对不起！确认密码不能为空！");
		}
		if (!password.equals(repassword)) {
			throw new MsgException("您两次输入的密码不一致！");
		}
		if (email.equals("") || email == null) {
			throw new MsgException("对不起！邮箱不允许为空！");
		}
		if (!email.matches("^\\w+@\\w+(\\.\\w+)+$")) {
			throw new MsgException("您输入的邮箱格式不正确！");
		}
	}
	/**
	 * 当用户登录时，代表当前用户的JavaBean存入session中，此时自动向用户列表中添加自己
	 */
	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		HttpSession session = event.getSession();
		ServletContext context = session.getServletContext();
		@SuppressWarnings("unchecked")
		Map<User,HttpSession> map = (Map<User, HttpSession>) context.getAttribute("userMap");
		map.put(this,session);
	}
	/**
	 * 当用户下线时，无论是手动注销还是超时下线，代表用户的Bean从session中移除，
	 * 此时自动向用户列表中移除自己，避免资源浪费
	 */
	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		HttpSession session = event.getSession();
		ServletContext context = session.getServletContext();
		@SuppressWarnings("unchecked")
		Map<User,HttpSession> map = (Map<User, HttpSession>) context.getAttribute("userMap");
		map.remove(this);
	}
	
	/**
	 * 问题：
	 *    避免出现一个账号，多个对象
	 * 解决方法：
	 *    比较哈希值，重写hashCode和equals方法，
	 *    根据id和用户名来判断，再在登录Servlet里做下线操作
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result
				+ ((username == null) ? 0 : username.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (id != other.id)
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}
}
