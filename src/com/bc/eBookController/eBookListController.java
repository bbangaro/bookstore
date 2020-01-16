package com.bc.eBookController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.eBookcommand.EbookListCommand;

@WebServlet("/eBookListController")
public class eBookListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청에 대한 처리
		EbookListCommand comm = new EbookListCommand();
		
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}















