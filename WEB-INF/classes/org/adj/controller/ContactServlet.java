package org.adj.controller;

import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.net.InetAddress;
import java.time.LocalDateTime;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.adj.serviceImpl.SendUserMail;
import org.adj.serviceImpl.UserMail;

@WebServlet("/contactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("name");
		String userEmail = request.getParameter("email");
		String phoneNo = request.getParameter("mobile_no");
		String message = request.getParameter("message");

		System.out.println(
				"name : " + userName + ", Email : " + userEmail + ", Phone no : " + phoneNo + ", Message : " + message);
		try {
			boolean msg = SendUserMail.sendMail(userName, userEmail, phoneNo, message);
			System.out.println("___________________________ success message : " + msg);

			LocalDateTime now = LocalDateTime.now();
			String date = now.getDayOfMonth() + "/" + now.getMonth() + "/" + now.getYear();
			String time = now.getHour() + " : " + now.getMinute() + " : " + now.getSecond();

			InetAddress ipAddress = InetAddress.getLocalHost();
			String ip = ipAddress.getHostAddress();

			UserMail userMail = new UserMail();
			HttpSession sesion = request.getSession();
			if (msg == true) {
				userMail.saveUserMail(ip, date, time, userName, userEmail, phoneNo, message);

				sesion.setAttribute("mail_message", "success");
				System.out.println("::::::::::;; mail_message :" + sesion.getAttribute("mail_message"));

			} else {
				sesion.setAttribute("mail_message", "fail");
			}

		} catch (MessagingException e) {

			e.printStackTrace();
		}

		response.sendRedirect("contact.jsp#contact");

	}

}
