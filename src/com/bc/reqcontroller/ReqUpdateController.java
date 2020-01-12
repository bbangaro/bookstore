package com.bc.reqcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.reqcommand.ReqUpdateCommand;

@WebServlet("/ReqUpdateController")
public class ReqUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청에 대한 처리
		doPost(request, response);
		
		
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		ReqUpdateCommand comm = new ReqUpdateCommand();
		
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}














