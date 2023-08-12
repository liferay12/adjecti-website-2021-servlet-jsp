package org.adj.captcha;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nl.captcha.Captcha;
import nl.captcha.servlet.StickyCaptchaServlet;

@WebFilter("/contactServlet")
public class ValidateCaptcha extends HttpFilter implements Filter {

	public ValidateCaptcha() {
		super();

	}

	public void destroy() {

	}

	public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {


		HttpSession session = request.getSession();

		Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
		request.setCharacterEncoding("UTF-8");

		String answer = request.getParameter("captcha");

		if (captcha.isCorrect(answer)) {
			System.out.println("YES it is Valid Captcha................");
			chain.doFilter(request, response);
		} else {
			session.setAttribute("invalid_captcha", "Please Enter Valid captcha");
			response.sendRedirect("contact.jsp#contact");
		}

	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
