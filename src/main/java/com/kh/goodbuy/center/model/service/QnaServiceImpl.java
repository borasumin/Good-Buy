package com.kh.goodbuy.center.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodbuy.center.model.dao.NoticeDao;
import com.kh.goodbuy.center.model.dao.QnaDao;
import com.kh.goodbuy.center.model.vo.QNA;

@Service
public class QnaServiceImpl implements QnaService{
	@Autowired
	private QnaDao qDao;

	@Override
	public List<QNA> selectFAQList() {
		// TODO Auto-generated method stub
		return qDao.selectFAQList();
	}

	@Override
	public QNA selectFAQ(int qa_no) {
		// TODO Auto-generated method stub
		return qDao.selectFAQ(qa_no);
	}

	@Override
	public int updateFAQ(QNA q) {
		// TODO Auto-generated method stub
		return qDao.updateFAQ(q);
	}

	@Override
	public int deleteFAQ(int qa_no) {
		// TODO Auto-generated method stub
		return qDao.deleteFAQ(qa_no);
	}

	@Override
	public int insertQNA(QNA q) {
		// TODO Auto-generated method stub
		return qDao.insertQNA(q);
	}

	@Override
	public List<QNA> selectQNAList() {
		// TODO Auto-generated method stub
		return qDao.selectQNAList();
	}

	@Override
	public QNA selectQNA(int qa_no) {
		// TODO Auto-generated method stub
		return qDao.selectQNA(qa_no);
	}

	@Override
	public int insertFAQ(QNA q) {
		// TODO Auto-generated method stub
		return qDao.insertFAQ(q);
	}

	@Override
	public int updateQNAA(QNA q) {
		int result = qDao.insertAlarmQNAA(q);
		if(result >0) {
			return qDao.updateQNAA(q);
		}else {
			
			return 0;
		}
	}

	@Override
	public List<QNA> selectQNAQList(String user_id) {
		// TODO Auto-generated method stub
		return qDao.selectQNAQList(user_id);
	}

	@Override
	public List<QNA> selectQNAList1() {
		// TODO Auto-generated method stub
		return qDao.selectQNAList1();
	}

	@Override
	public List<QNA> selectQNAList2() {
		// TODO Auto-generated method stub
		return qDao.selectQNAList2();
	}

	@Override
	public List<QNA> selectQNAList3() {
		// TODO Auto-generated method stub
		return qDao.selectQNAList3();
	}
}
