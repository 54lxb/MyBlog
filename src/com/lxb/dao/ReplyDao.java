package com.lxb.dao;

import java.util.List;

import com.lxb.domain.Reply;

public interface ReplyDao extends Dao {

	/**
	 * 添加回复内容
	 * @param reply 回复内容Bean
	 */
	public void addReply(Reply reply);

	/**
	 * 
	 * @param art_id
	 * @return
	 */
	public List<Reply> findReplyListByArt_Id(String art_id);

}
