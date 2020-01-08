package com.bc.reqcontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqDAO;
import com.bc.model.reqcommand.ReqListCommand;

@WebServlet("/OneListController")
public class ReqOneListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//OneListCommand comm = new OneListCommand();
		
		//String path = comm.exec(request, response);
		//request.getRequestDispatcher(path).forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}















