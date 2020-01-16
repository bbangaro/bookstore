package com.bc.serController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.sercommand.Command;
import com.bc.sercommand.SearchBnaCommand;
import com.bc.sercommand.SearchComCommand;
import com.bc.sercommand.SearchListCommand;
import com.bc.sercommand.SearchWriCommand;


@WebServlet("/SearchList")
public class SearchListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Command comm = null;
		String kind = request.getParameter("kind");
		if(kind.equalsIgnoreCase("all"))
			comm = new SearchListCommand();
		else if(kind.equalsIgnoreCase("company"))
			comm = new SearchComCommand();
		else if(kind.equalsIgnoreCase("writer"))
			comm = new SearchWriCommand();
		else if(kind.equalsIgnoreCase("bookname"))
			comm = new SearchBnaCommand();
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
