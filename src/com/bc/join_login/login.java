package com.bc.join_login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.TakDAO;
import com.bc.model.vo.MemberVO;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String member_id = request.getParameter("member_id");
		String password = request.getParameter("password");
		
		MemberVO membervo = TakDAO.logincheck(member_id);
		
		if(membervo == null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				request.setAttribute("loginFiledId", "등록된 아이디가 없습니다. 다시로그인 하세요");
				 dispatcher.forward(request, response);
		}else {
			
			if(!membervo.getPassword().equals(password)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				request.setAttribute("loginFiledPassword", "비밀번호가 일지하지 않습니다. 다시로그인 하세요");
				 dispatcher.forward(request, response);
			}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			request.setAttribute("loginSucceed", "로그인에 성공 하였습니다.");
			request.setAttribute("id", "로그인에 성공 하였습니다.");
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
