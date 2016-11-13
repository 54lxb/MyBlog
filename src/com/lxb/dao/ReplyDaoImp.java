package com.lxb.dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.lxb.domain.Reply;
import com.lxb.util.TransactionManager;

public class ReplyDaoImp implements ReplyDao {

	@Override
	public void addReply(Reply reply) {
		String sql = "insert into reply values (null,?,?,?,?,null)";
		try {
			QueryRunner run = new QueryRunner(TransactionManager.getSource());
			run.update(sql, reply.getArt_id(), reply.getUser_id(), reply.getAuthor(), reply.getContent());
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Reply> findReplyListByArt_Id(String art_id) {
		String sql = "select * from reply where art_id = ?";
		try {
			QueryRunner run = new QueryRunner(TransactionManager.getSource());
			return run.query(sql, new BeanListHandler<Reply>(Reply.class), art_id);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
