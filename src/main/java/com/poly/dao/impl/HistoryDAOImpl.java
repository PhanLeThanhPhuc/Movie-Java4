package com.poly.dao.impl;

import java.util.List;

import com.poly.dao.AbstractDAO;
import com.poly.dao.HistoryDAO;
import com.poly.entity.History;

public class HistoryDAOImpl extends AbstractDAO<History> implements HistoryDAO{

	@Override
	public List<History> findByUser(String username) {
		String sql = "SELECT u FROM History u WHERE u.user.username = ?0 AND u.video.isActive = 1"
				+" ORDER BY u.viewedDate DESC";
				return super.findMany(History.class, sql, username);
	}

	@Override
	public List<History> findByUserAndIsLike(String username) {
		String sql = "SELECT u FROM History u WHERE u.user.username = ?0 AND u.isLike = 1 "
				+ "AND u.video.isActive = 1"
				+" ORDER BY u.viewedDate DESC";
				return super.findMany(History.class, sql, username);
	}

	@Override
	public History findByUserIdAndVideoId(Integer userId, Integer videoId) {
		String sql = "SELECT u FROM History u WHERE u.user.id = ?0 AND u.video.id = ?1"
				+ " AND u.video.isActive = 1";
		return super.findOne(History.class, sql, userId, videoId);
	}

	@Override
	public History create(History entity) {
		// TODO Auto-generated method stub
		return super.create(entity);
	}

	@Override
	public History update(History entity) {
		// TODO Auto-generated method stub
		return super.update(entity);
	}





	
	

}
