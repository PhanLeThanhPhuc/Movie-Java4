package com.poly.dao.impl;

import java.util.List;

import com.poly.dao.AbstractDAO;
import com.poly.dao.VideoDAO;
import com.poly.entity.Video;

public class VideoDAOImpl extends AbstractDAO<Video> implements VideoDAO{

	@Override
	public Video findById(Integer id) {
		// TODO Auto-generated method stub
		return super.findById(Video.class, id);
	}

	@Override
	public Video findByHref(String href) {
		String sql = "SELECT u FROM Video u WHERE u.href = ?0";
		return super.findOne(Video.class, sql, href);
	}

	@Override
	public List<Video> findAll() {
		return super.findAll(Video.class, true);
	}

	@Override
	public List<Video> findAll(int pageNumber, int pageSize) {
		return super.findAll(Video.class, true, pageNumber, pageSize);
	}

	@Override
	public Video create(Video entity) {
		// TODO Auto-generated method stub
		return super.create(entity);
	}

	@Override
	public Video update(Video entity) {
		// TODO Auto-generated method stub
		return super.update(entity);
	}

	@Override
	public Video delete(Video entity) {
		// TODO Auto-generated method stub
		return super.delete(entity);
	}

}
