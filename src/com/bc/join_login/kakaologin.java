package com.bc.join_login;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.kakaocommand.KakaoAPI;

@WebServlet("/kakaologin")
public class kakaologin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession Session = request.getSession(true);
		String code = request.getParameter("code");
		System.out.println("requestgetPa"+request.getParameter("code"));
		 KakaoAPI kakao = new KakaoAPI();
		 String access_Token = kakao.getAccessToken(code);
		 HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		 System.out.println("login Controller : " + userInfo);
		 System.out.println(userInfo.get("email"));
		 if(userInfo.get("email") != null) {
			 Session.setAttribute("id", userInfo.get("email"));
			 Session.setAttribute("access_Token", access_Token);
		 }
		 
		 request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
