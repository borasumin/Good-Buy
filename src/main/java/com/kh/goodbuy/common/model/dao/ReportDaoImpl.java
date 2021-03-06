package com.kh.goodbuy.common.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.goodbuy.common.model.vo.Report;
import com.kh.goodbuy.member.model.vo.Member;
import com.kh.goodbuy.member.model.vo.PageInfo;

@Repository
public class ReportDaoImpl implements ReportDao{
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<Report> selectReportList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("reportMapper.selectReportList");
	}

	@Override
	public Report selectReport(int re_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reportMapper.selectReport", re_no);
	}

	@Override
	public int updateReport(Report r) {
		// TODO Auto-generated method stub
		return sqlSession.update("reportMapper.updateReport", r);
	}

	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reportMapper.selectListCount");
	}

	@Override
	public List<Report> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds=new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("reportMapper.selectList", null, rowBounds);
	}

	@Override
	public int insertGoodsReport(Report r, int gno, String report_id, String reported_id) {
		Map<String, Object> map = new HashMap <String, Object>();
		map.put("r",r);
		map.put("gno", gno);
		map.put("report_id", report_id);
		map.put("reported_id", reported_id);
		return sqlSession.insert("reportMapper.insertGoodsReport", map);
	}

	@Override
	public int selecMyReportCount(String user_id) {
		return sqlSession.selectOne("reportMapper.selecMyReportCount",user_id);
	}

	@Override
	public List<Report> selectMyReportList(String user_id, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds=new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("reportMapper.selectMyReportList",user_id,rowBounds);
	}

	@Override
	public int deleteReport(int re_no) {
		return sqlSession.update("reportMapper.deleteReport", re_no);
	}

	@Override

	public List<Report> selectReportList1() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("reportMapper.selectReport1List");
	}

	@Override
	public List<Report> selectReportList2() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("reportMapper.selectReport2List");
	}

	@Override
	public List<Report> selectReportList3() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("reportMapper.selectReport3List");
  }
  	@Override
	public int selectMyReportedCount(String user_id) {
		return sqlSession.selectOne("reportMapper.selectMyReportedCount", user_id);
	}

	@Override
	public List<Report> selectReportedList(String user_id, PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds=new RowBounds(offset, pi.getBoardLimit());
		return sqlSession.selectList("reportMapper.selectReportedList",user_id,rowBounds);

	}


	@Override
	public int insertUserReport(Report r) {

		return sqlSession.insert("reportMapper.insertUserReport", r);
	}

	@Override
	public int addCountReported(String reported_id) {
		return sqlSession.update("reportMapper.addCountReported", reported_id);
	}

	@Override
	public String selectMyReportedDate(String user_id) {
		return sqlSession.selectOne("reportMapper.selectMyReportedDate", user_id);
	}

	@Override
	public int updateReportedDate(String user_id) {
		return sqlSession.update("reportMapper.updateReportedDate", user_id);
	}

	@Override
	public int insertAlarmproduct(Report r) {
		// TODO Auto-generated method stub
		return sqlSession.insert("reportMapper.insertAlarmproduct", r);
	}

	@Override
	public int insertAlarmMember(String reported_id) {
		// TODO Auto-generated method stub
		return sqlSession.insert("reportMapper.insertAlarmMember", reported_id);
	}

	@Override
	public String selectReportedid(int re_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("reportMapper.selectReportedid", re_no);
	}

	@Override
	public int updateReportedid(int re_no) {
		// TODO Auto-generated method stub
		return sqlSession.update("reportMapper.updateReportedid", re_no);
	}



}
