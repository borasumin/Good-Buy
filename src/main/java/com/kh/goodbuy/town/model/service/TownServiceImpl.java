package com.kh.goodbuy.town.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.goodbuy.member.model.vo.MyTown;
import com.kh.goodbuy.town.model.dao.TownDao;
import com.kh.goodbuy.town.model.vo.Town;

@Service
public class TownServiceImpl implements TownService {

	@Autowired
	private TownDao tDao;
	
	@Override
	public List<Town> selectAllTown1() {
		
		return tDao.selectAllTown1();
	}

	@Override
	public List<Town> selectAllTown2() {
		return tDao.selectAllTown2();
	}

	@Override
	public List<Town> selectAllTown3() {
		return tDao.selectAllTown3();
	}

	@Override
	public int selectTownNo(String address_3) {
		return tDao.selectTownNo(address_3);
	}

	@Override
	public int insertMyTown(MyTown mt) {
		return tDao.insertMyTown(mt);
	}

	@Override
	public int insertMyNewTown(MyTown mt) {
		return tDao.insertMyNewTown(mt);
	}

	@Override
	public List<String> selectMyTownList(String user_id) {
		return tDao.selectMyTownList(user_id);
	}

	@Override
	public int deleteTown(MyTown mt) {
		return tDao.deleteTown(mt);
	}

	@Override
	public Town selectUserTown(String user_id) {
		return tDao.selectUserTown(user_id);
	}

	@Override
	public int changeTownType(String user_id) {
		return tDao.changeTownType(user_id);
	}

	@Override
	public int changeTownType2(String user_id) {
		return tDao.changeTownType2(user_id);
	}

	@Override
	public int changeArea(MyTown mt) {
		return tDao.changeArea(mt);
	}

	@Override
	public int updateMyTown(MyTown mt) {
		return tDao.updateMyTown(mt);
	}

	@Override
	public List<Town> selectSeoul() {
		// TODO Auto-generated method stub
		return tDao.selectSeoul();
	}

	

	

}
