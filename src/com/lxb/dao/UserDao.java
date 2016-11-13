package com.lxb.dao;

import com.lxb.annotation.Tran;
import com.lxb.domain.User;

public interface UserDao extends Dao {

	/**
	 * 根据用户名查找用户
	 * @param username 用户名
	 * @return 找到的用户或者null
	 */
	public User findUserByUsername(String username);

	/**
	 * 根据用户名和密码查找用户
	 * @param username 用户名
	 * @param password 密码
	 * @return 找到用户或者null
	 */
	public User loginUser(String username, String password);

	/**
	 * 添加用户
	 * @param user 用户信息bean
	 */
	@Tran
	public void addUser(User user);

}
