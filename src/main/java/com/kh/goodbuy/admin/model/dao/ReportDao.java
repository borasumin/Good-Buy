package com.kh.goodbuy.admin.model.dao;

import java.util.List;

import com.kh.goodbuy.admin.model.vo.Report;
import com.kh.goodbuy.member.model.vo.PageInfo;

public interface ReportDao {

	public List<Report> selectReportList();

	public Report selectReport(int re_no);

	public int updateReport(Report r);

	public int selectListCount();

	public List<Report> selectList(PageInfo pi);

}