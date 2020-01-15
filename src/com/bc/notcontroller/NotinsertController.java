package com.bc.notcontroller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.notcommand.NotInsCommand;


@WebServlet("/Notinsert")
public class NotinsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String CHARSET = "utf-8";
	private static final String ATTACHES_DIR = "c:\\attaches";
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		NotInsCommand comm = new NotInsCommand();
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
