package com.poly.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.poly.constant.SessionAttr;
import com.poly.entity.History;
import com.poly.entity.User;
import com.poly.entity.Video;
import com.poly.service.HistoryService;
import com.poly.service.VideoService;
import com.poly.service.impl.HistoryServiceImpl;
import com.poly.service.impl.VideoServiceImpl;
@WebServlet(urlPatterns = {"/home","/favorite","/history"})
public class HomeController extends HttpServlet{

	private static final long serialVersionUID = -5784696383211059601L;
	private static final int VIDEO_MAX_SIZE_PAGE=6;
	private VideoService videoService = new VideoServiceImpl();
	private HistoryService historyService = new HistoryServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch (path) {
		case "/home":
			doGetIndex(req, resp);
			break;
		case "/favorite":
			doGetFavorite(session,req, resp);
			break;
		case "/history":
			doGetHistory(session,req, resp);
			break;
		

		}
		
}


	

	private void doGetIndex(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Video> countVideo = videoService.findAll();
		int maxPage = (int) Math.ceil(countVideo.size()/(double) VIDEO_MAX_SIZE_PAGE);
		req.setAttribute("maxPage", maxPage);
		List<Video> videos;
		String pageNumber = req.getParameter("page");
		if(pageNumber == null) {
			videos = videoService.findAll(1, VIDEO_MAX_SIZE_PAGE);
			req.setAttribute("currentPage", 1);
		}else {
			videos = videoService.findAll(Integer.valueOf(pageNumber), VIDEO_MAX_SIZE_PAGE);
			req.setAttribute("currentPage", Integer.valueOf(pageNumber));
		}
		
		req.setAttribute("videos", videos);
		req.getRequestDispatcher("/view/indexCus.jsp").forward(req, resp);
		
	}
	private void doGetFavorite(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user =(User) session.getAttribute(SessionAttr.CURRENT_USER);
		List<History> histories = historyService.findByUserAndIsLike(user.getUsername());
		List<Video> videos = new ArrayList<>();
//		histories.forEach(item -> videos.add(item.getVideo()));
		for(int i = 0;i< histories.size();i++) {
			videos.add(histories.get(i).getVideo());
		}
		req.setAttribute("videos", videos);
		req.getRequestDispatcher("/view/khachhang/favorite.jsp").forward(req, resp);
		
	}
	private void doGetHistory(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user =(User) session.getAttribute(SessionAttr.CURRENT_USER);
		List<History> histories = historyService.findByUser(user.getUsername());
		List<Video> videos = new ArrayList<>();
		histories.forEach(item -> videos.add(item.getVideo()));
		req.setAttribute("videos", videos);
		req.getRequestDispatcher("/view/khachhang/history.jsp").forward(req, resp);
		
	}
}
