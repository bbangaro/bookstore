package com.bc.join_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.kakaocommand.KakaoAPI;

@WebServlet("/kakaologout")
public class kakaologout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession(true);
		 String code = request.getParameter("code");
		 KakaoAPI kakao = new KakaoAPI();
		 
		 kakao.kakaoLogout((String)session.getAttribute("access_Token"));
	     session.removeAttribute("access_Token");
	     session.removeAttribute("userId");
	     request.getRequestDispatcher("kako.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
