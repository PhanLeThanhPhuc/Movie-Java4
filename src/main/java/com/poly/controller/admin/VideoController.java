package com.poly.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.poly.constant.SessionAttr;
import com.poly.entity.User;
import com.poly.entity.Video;
import com.poly.service.VideoService;
import com.poly.service.impl.VideoServiceImpl;

@WebServlet(urlPatterns = {"/admin/video"},name = "VideoControllerOfadmin")
public class VideoController extends HttpServlet{
	

	private static final long serialVersionUID = 1L;
	private VideoService videoService = new VideoServiceImpl();
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	HttpSession session = req.getSession();
	User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
	if(currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
		String action = req.getParameter("action");	
		switch (action) {
		case "view":
			doGetView(req,resp);
			break;
		case "delete":
			doGetDelete(req,resp);
			break;
		case "add":
			req.setAttribute("isEdit", false);
			doGetAdd(req,resp);
			break;
		case "edit":
			req.setAttribute("isEdit", true);
			doGetEdit(req,resp);
			break;
		}
	}else {
		resp.sendRedirect("home");
	}
}

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session = req.getSession();
	User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
	if(currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
		String action = req.getParameter("action");	
		switch (action) {
		case "add":
			doPostAdd(req,resp);
			break;
		case "edit":
			doPostEdit(req,resp);
			break;
		
		}
	}else {
		resp.sendRedirect("home");
	}
}



private void doGetView(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	List<Video> videos = videoService.findAll();
	req.setAttribute("videos", videos);
	req.getRequestDispatcher("/view/nhanvien/video-overview.jsp").forward(req, resp);
}

private void doGetDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	resp.setContentType("application/json");
	String href = req.getParameter("href");
	Video videoDelete = videoService.delete(href);
	if (videoDelete != null) {
		resp.setStatus(204);
	}else {
		resp.setStatus(400);
	}
}
	
private void doGetAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	List<Video> videos = videoService.findAll();
	req.setAttribute("videos", videos);
	req.getRequestDispatcher("/view/nhanvien/video-edit.jsp").forward(req, resp);
}

private void doGetEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String href = req.getParameter("href");
	Video video = videoService.findByHref(href);
	req.setAttribute("video", video);
	req.getRequestDispatcher("/view/nhanvien/video-edit.jsp").forward(req, resp);
}

private void doPostAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	resp.setContentType("application/json");
	String title = req.getParameter("title");
	String description = req.getParameter("description");
	String href = req.getParameter("href");
	String poster = req.getParameter("poster");
	
	Video video = new Video();
	video.setTitle(title);
	video.setHref(href);
	video.setDesscription(description);
	video.setPosster(poster);
	Video videoReturn = videoService.create(video);
	if (videoReturn != null) {
		resp.setStatus(204);
	}else {
		resp.setStatus(400);
	}
	
}

private void doPostEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	resp.setContentType("application/json");
	String title = req.getParameter("title");
	String description = req.getParameter("description");
	String href = req.getParameter("newhref");
	String poster = req.getParameter("poster");
	String hrefOrigin = req.getParameter("hrefOrigin");
	
	Video video = videoService.findByHref(hrefOrigin);
	video.setTitle(title);
	video.setHref(href);
	video.setDesscription(description);
	video.setPosster(poster);
	Video videoReturn = videoService.update(video);
	if (videoReturn != null) {
		resp.setStatus(204);
	}else {
		resp.setStatus(400);
	}
	
}
}
