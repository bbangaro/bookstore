package com.bc.join_login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.TakDAO;
import com.bc.model.vo.MemberVO;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String memberId = request.getParameter("memberId");
		String password = request.getParameter("password");
		System.out.println(memberId);
		System.out.println(password);
		MemberVO membervo = TakDAO.logincheck(memberId);
		
		if(membervo == null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				request.setAttribute("loginFiledId", "등록된 아이디가 없습니다.");
				 dispatcher.forward(request, response);
		}else {
			if(!membervo.getPassword().equals(password)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				request.setAttribute("loginFiledPassword", "비밀번호를 확인해주세요");
				 dispatcher.forward(request, response);
			}else {
				HttpSession Session = request.getSession(true);
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				Session.setAttribute("id",membervo.getMemberId());    
				Session.setAttribute("password",membervo.getPassword());    
				dispatcher.forward(request, response);
			}
		}
		System.out.println(membervo);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
