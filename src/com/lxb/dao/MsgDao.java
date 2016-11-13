package com.lxb.dao;

import java.util.List;

import com.lxb.domain.Msgs;

public interface MsgDao extends Dao {

	/**
	 * 查询所有留言信息
	 * @return 找到的留言信息
	 */
	public List<Msgs> getAllMsg();

	/**
	 * 添加留言
	 * @param msg 留言信息bean
	 */
	public void addMsg(Msgs msg);

}
