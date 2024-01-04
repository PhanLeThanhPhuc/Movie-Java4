package com.poly.service.impl;

import javax.servlet.ServletContext;

import com.poly.entity.User;
import com.poly.service.EmailService;
import com.poly.util.SendEmailUtil;

public class EmailServiceImpl implements EmailService{

	private static final String EMAIL_WELCOM="Welcome to OnlineEntertament";
	private static final String EMAIL_PASSWORD="OnlineEntertamnent - New password";
	
	@Override
	public void sendEmail(ServletContext context, User recipient, String type) {
		String host = context.getInitParameter("host");
        String port = context.getInitParameter("port");
        String user = context.getInitParameter("user");
        String pass = context.getInitParameter("pass");
		
        try {
			String content = null;
			String subject= null;
			switch (type) {
			case "welcome": 
				subject= EMAIL_WELCOM;
				content = "Dear " + recipient.getUsername()+" hope you happy ^^";
				break;
			case "forgot":
				subject = EMAIL_PASSWORD;
				content = "Dear " + recipient.getUsername()+" your new password!"+recipient.getPassword();
				break;
			default:
				subject = "Online Entertament";
				content = "Maybe this email is wrong, don't care about it!";
			}
			
			SendEmailUtil.EendEmail(host, port, user, pass,recipient.getEmail(), content, subject);
//			SendEmailUtil.sendEmail(host, port, user, pass, recipient.getEmail(),  subject,content);
			} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
