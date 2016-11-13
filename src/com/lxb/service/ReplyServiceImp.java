package com.lxb.service;

import java.util.List;

import com.lxb.dao.ReplyDao;
import com.lxb.domain.Reply;
import com.lxb.factory.BasicFactory;

public class ReplyServiceImp implements ReplyService {
	
	private ReplyDao dao = BasicFactory.getFactory().getDao(ReplyDao.class);

	@Override
	public void addReply(Reply reply) {
		dao.addReply(reply);
	}

	@Override
	public List<Reply> getAllReplyByArt_Id(String art_id) {
		return dao.findReplyListByArt_Id(art_id);
	}

}
