package com.lxb.service;

import java.util.List;

import com.lxb.domain.Msgs;

public interface MsgService extends Service {

	/**
	 * 查询留言
	 * @return 找到的留言或者null
	 */
	public List<Msgs> selectMsg();

	/**
	 * 添加留言
	 * @param msg 留言信息bean
	 */
	public void addMsg(Msgs msg);

}
