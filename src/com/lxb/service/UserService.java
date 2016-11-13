package com.lxb.service;

import com.lxb.domain.User;
import com.lxb.exception.MsgException;

public interface UserService extends Service {

	/**
	 * 根据用户名和密码来查找用户
	 * @param username 用户名
	 * @param password 密码
	 */
	public User isUser(String username, String password) throws MsgException ;

	/**
	 * 注册用户
	 * @param user 用户信息bean
	 */
	public void registUser(User user) throws MsgException;

}
