package com.kh.goodbuy.common.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodbuy.common.model.vo.Messenger;
import com.kh.goodbuy.goods.model.vo.Goods;
import com.kh.goodbuy.member.model.vo.PageInfo;

@Repository
public class MessengerDaoImpl implements MessengerDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertMsg(String mcontent, Goods g, String caller) {
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("mcontent", mcontent);
		map.put("g", g);
		map.put("caller", caller);
		System.out.println("dao"+mcontent);
		return sqlSession.insert("msgMapper.insertMsg",map);
	}

	@Override
	public int selectMsgCount(String user_id) {
		return sqlSession.selectOne("msgMapper.selectMsgCount", user_id);
	}

	@Override
	public List<Messenger> selectMsgList(String user_id, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds=new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("msgMapper.selectMsgList", user_id ,rowBounds);
	}

	@Override
	public Messenger selectOneMsg(int mno) {
		return sqlSession.selectOne("msgMapper.selectOneMsg",mno);
	}

	@Override
	public int insertMsg2(Messenger msg) {
		return sqlSession.insert("msgMapper.insertMsg2",msg);
	}

	@Override
	public int insertMsgUser(String mcontent, String user_id, String seller) {
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("mcontent", mcontent);
		map.put("caller", user_id);
		map.put("seller", seller);
		
		return sqlSession.insert("msgMapper.insertMsgUser",map);
	}

	@Override
	public int selectUserMsgCount(String string, String user_id) {
		return sqlSession.selectOne("msgMapper.selectUserMsgCount",user_id);
	}

	@Override
	public List<Messenger> selectUserMsgList(String user_id, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds=new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("msgMapper.selectUserMsgList",user_id,rowBounds);
	}

	@Override
	public Messenger selectOneMsg2(int mno) {
		return sqlSession.selectOne("msgMapper.selectOneMsg2",mno);
	}

	@Override
	public int insertMsgUser2(Messenger msg){
		return sqlSession.insert("msgMapper.insertMsgUser2",msg);
	}

}
