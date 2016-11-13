package com.lxb.dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.lxb.domain.Msgs;
import com.lxb.util.TransactionManager;

public class MsgDaoImp implements MsgDao {

	@Override
	public List<Msgs> getAllMsg() {
		String sql = "select * from msgs";
		try {
			QueryRunner run = new QueryRunner(TransactionManager.getSource());
			return run.query(sql, new BeanListHandler<Msgs>(Msgs.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public void addMsg(Msgs msg) {
		String sql = "insert into msgs values (null,?,?,?,?)";
		try {
			QueryRunner run = new QueryRunner(TransactionManager.getSource());
			run.update(sql, msg.getContent(), msg.getAuthor(), msg.getWritetime(), msg.getHeaders());
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
