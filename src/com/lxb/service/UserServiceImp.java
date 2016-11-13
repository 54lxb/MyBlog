package com.lxb.service;

import java.util.UUID;

import com.lxb.dao.UserDao;
import com.lxb.domain.User;
import com.lxb.exception.MsgException;
import com.lxb.factory.BasicFactory;

public class UserServiceImp implements UserService {

	private UserDao userdao = BasicFactory.getFactory().getDao(UserDao.class);
	
	@Override
	public User isUser(String username, String password) throws MsgException {
		return userdao.loginUser(username, password);
	}
	
	@Override
	public void registUser(User user) throws MsgException {
		//---根据用户名查找用户，判断用户名是否已存在
		if(userdao.findUserByUsername(user.getUsername()) != null) {
			throw new MsgException("用户名已经存在，换一个试试看吧！"); 
		}
		user.setRole(0);  //---设置用户角色，0为普通用户，1为管理员
		user.setActivestate(0);  //---设置用户激活状态，0为未激活
		user.setActivecode(UUID.randomUUID().toString());//---随机生成激活码
		userdao.addUser(user);  //---调用userdao里面的添加用户的方法
//		//--发送激活邮件
//		try {
//			SendEmail.sendEmail(user);
//		} catch (AddressException e) {
//			e.printStackTrace();
//		} catch (MessagingException e) {
//			e.printStackTrace();
//		} 
	}
}
