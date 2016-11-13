package com.lxb.service;

import java.util.List;

import com.lxb.domain.Reply;

public interface ReplyService extends Service {

	/**
	 * 添加博文回复内容
	 * @param reply 回复内容Bean
	 */
	public void addReply(Reply reply);

	/**
	 * 根据博文id查询所有回复内容
	 * @param art_id 博文id
	 * @return 找到的回复集合或者null
	 */
	public List<Reply> getAllReplyByArt_Id(String art_id);

}
