package com.lxb.dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.lxb.domain.User;
import com.lxb.util.TransactionManager;

public class UserDaoImp implements UserDao {

	@Override
	public User findUserByUsername(String username) {
		String sql = "select * from user where username = ?";
		try {
			QueryRunner run = new QueryRunner(TransactionManager.getSource());
			return run.query(sql, new BeanHandler<User>(User.class), username);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public User loginUser(String username, String password) {
		String sql = "select * from user where username = ? and password = ?";
		try {
			QueryRunner run = new QueryRunner(TransactionManager.getSource());
			return run.query(sql, new BeanHandler<User>(User.class), username, password);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void addUser(User user) {
		String sql = "insert into user values (null,?,?,?,?,?,?,?,null)";
		try {
			QueryRunner run = new QueryRunner(TransactionManager.getSource());
			run.update(sql, user.getUsername(), user.getPassword(), user.getEmail(), user.getIp(), user.getRole(), user.getActivecode(), user.getActivestate());
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
