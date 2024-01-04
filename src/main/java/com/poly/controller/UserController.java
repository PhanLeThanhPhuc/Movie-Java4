package com.poly.controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.validation.Validator;

import com.poly.constant.SessionAttr;
import com.poly.dao.UserDAO;
import com.poly.entity.User;
import com.poly.service.EmailService;
import com.poly.service.UserService;
import com.poly.service.impl.EmailServiceImpl;
import com.poly.service.impl.UserServiceImpl;

@WebServlet(urlPatterns = { "/login", "/logout", "/register","/forgotPass" ,"/changePass"})
public class UserController extends HttpServlet {

	private static final long serialVersionUID = -5860351843059541642L;

	private UserService userService = new UserServiceImpl();
	private EmailService emailService = new EmailServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch (path) {
		case "/login":
			doGetLogin(req, resp);
			break;
		case "/register":
			doGetRegister(req, resp);
			break;
		case "/forgotPass":
			doGetForgotPass(req, resp);
			break;
		case "/logout":
			doGetLogout(session,req, resp);
			break;

		}
	}


	private void doGetLogout(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws IOException {
		session.removeAttribute(SessionAttr.CURRENT_USER);
		resp.sendRedirect("home");
		
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch (path) {
		case "/login": 
			doPostLogin(session,req, resp);
			break;
		case "/register": 
			doPostRegister(session,req, resp);
			break;
		case "/forgotPass": 
			doPostForgotPass(req, resp);
			break;
		case "/changePass": 
			doPostChangePass(session,req, resp);
			break;
		
		}
	}

	


	private void doGetRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/view/khachhang/register.jsp").forward(req, resp);
		
	}
	private void doGetLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/view/khachhang/login.jsp").forward(req, resp);
	}
	private void doGetForgotPass(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/view/khachhang/forgotPass.jsp").forward(req, resp);
		
	}
	
//	private void doPostLogin(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String username = req.getParameter("username");
//		String password = req.getParameter("password");
//		User user = userService.login(username, password);
//		if(user != null) {
//			session.setAttribute(SessionAttr.CURRENT_USER, user);
//			resp.sendRedirect("home");
//		}else{
//			String errorMessage = "Invalid username or password";
//	        req.setAttribute("errorMessage", errorMessage);
//	        RequestDispatcher dispatcher = req.getRequestDispatcher("/view/khachhang/login.jsp");
//	        dispatcher.forward(req, resp);
//		}
//	}
	private void doPostLogin(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String username = req.getParameter("username");
	    String password = req.getParameter("password");
	    User user = userService.login(username, password);
	    if(user != null) {
	    	req.setAttribute("successMessage", "Success");
	        session.setAttribute(SessionAttr.CURRENT_USER, user);
	        resp.sendRedirect("home");
	    } else {
	        String errorMessage;
	        if (username == null || username.isEmpty()) {
	            errorMessage = "Username is required";
	        } else if (password == null || password.isEmpty()) {
	            errorMessage = "Password is required";
	        } else if (userService.findByUsername(username) == null) {
	            errorMessage = "Username does not exist";
	        }else if (!checkPassword(username, password)) {
	            errorMessage = "password is invalid";
	        }else {
	            errorMessage = "Invalid username or password";
	        }
	        
	        req.setAttribute("errorMessage", errorMessage);
	        req.getRequestDispatcher("/view/khachhang/login.jsp").forward(req, resp);
	    }
	}


//////////////////////////////
	
	
	public boolean checkPassword(String username, String password) {
	    User user = userService.findByUsername(username);
	    if(user != null) {
	        String hashedPassword = md5Hash(password); // Hàm md5Hash sẽ thực hiện mã hóa băm MD5 cho mật khẩu
	        return hashedPassword.equals(user.getPassword());
	    }
	    return false;
	}

	private String md5Hash(String input) {
	    try {
	        MessageDigest md = MessageDigest.getInstance("MD5");
	        byte[] messageDigest = md.digest(input.getBytes());
	        BigInteger no = new BigInteger(1, messageDigest);
	        String hashtext = no.toString(16);
	        while (hashtext.length() < 32) {
	            hashtext = "0" + hashtext;
	        }
	        return hashtext;
	    } catch (NoSuchAlgorithmException e) {
	        throw new RuntimeException(e);
	    }
	}

	
/////////////////////////////


	private void doPostRegister(HttpSession session, HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		User user = userService.create(username, password, email);
		if(user != null) {
			emailService.sendEmail(getServletContext(), user, "welcome");
			session.setAttribute(SessionAttr.CURRENT_USER, user);
			resp.sendRedirect("home");
		}else{
			resp.sendRedirect("register");
			
		}
		
	}
	
	private void doPostForgotPass( HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		resp.setContentType("application/json");
		String email = req.getParameter("email");
		User userWithnewPass = userService.resetPassword(email);
		if(userWithnewPass != null) {
			emailService.sendEmail(getServletContext(), userWithnewPass, "forgot");
			resp.setStatus(204);
		}else {
			resp.setStatus(400);
		}
	}
	
	
	private void doPostChangePass( HttpSession session,HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		resp.setContentType("application/json");
		String currentPass = req.getParameter("currentPass");
		String newPass = req.getParameter("newPass");
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if(currentUser.getPassword().equals(currentPass)) {
			currentUser.setPassword(newPass);
			User updateUser = userService.update(currentUser);
			if(updateUser != null) {
				session.setAttribute(SessionAttr.CURRENT_USER, updateUser);
				resp.setStatus(204);
			}else {
				resp.setStatus(400);
			}
		}else {
			resp.setStatus(400);
		}
	}
}
