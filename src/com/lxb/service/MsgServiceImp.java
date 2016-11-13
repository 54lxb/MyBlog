package com.lxb.service;

import java.sql.Date;
import java.util.List;
import java.util.Random;

import com.lxb.dao.MsgDao;
import com.lxb.domain.Msgs;
import com.lxb.factory.BasicFactory;

public class MsgServiceImp implements MsgService {

	private MsgDao msgdao = BasicFactory.getFactory().getDao(MsgDao.class);
	
	@Override
	public List<Msgs> selectMsg() {
		return msgdao.getAllMsg();
	}

	@Override
	public void addMsg(Msgs msg) {
		//---1.单独设置留言时间和头像存储路径
		int number = new Random().nextInt(10) + 1;
		String path = "/MyBlog/static/img/headers/";
		msg.setHeaders(path+"0"+number+".jpg");
		Date writetime = new Date(System.currentTimeMillis());
		msg.setWritetime(writetime);
		//--2.调用dao中添加留言的方法
		msgdao.addMsg(msg);
	}

}
