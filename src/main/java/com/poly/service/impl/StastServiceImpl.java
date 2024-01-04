package com.poly.service.impl;

import java.util.List;

import com.poly.dao.StastDAO;
import com.poly.dao.impl.StastDAOImpl;
import com.poly.dto.VideoLikedInfo;
import com.poly.service.StastServie;

public class StastServiceImpl implements StastServie{

	private StastDAO stastDAO;
	
	public StastServiceImpl() {
		stastDAO = new StastDAOImpl();
	}
	@Override
	public List<VideoLikedInfo> finVideoLikeInfos() {
		return stastDAO.fiVideoLikedInfos();
	}

}
