package com.bc.reqcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.reqcommand.ReqWriteOKCommand;

@WebServlet("/ReqWriteOkController")
public class ReqWriteOkController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
				
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 폼 객체가 post방식으로 전달 되니까 doGet이 아닌 doPost에 작성해줘야 한다
		
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
		
		ReqWriteOKCommand comm = new ReqWriteOKCommand();
		
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
















