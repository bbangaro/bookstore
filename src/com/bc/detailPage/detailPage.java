package com.bc.detailPage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.TakDAO;
import com.bc.model.vo.BookVO;

@WebServlet("/detailPage")
public class detailPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String b_code = request.getParameter("b_code");
		
		BookVO bookvo =	TakDAO.detailPage(b_code);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("detailPage.jsp");
		 request.setAttribute("b_code", bookvo);
		 dispatcher.forward(request, response);
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
