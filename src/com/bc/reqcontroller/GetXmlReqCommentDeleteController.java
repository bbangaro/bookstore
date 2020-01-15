package com.bc.reqcontroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqCommentDAO;
import com.bc.model.vo.CommentVO;

@WebServlet("/GetXmlReqCommentDeleteController")
public class GetXmlReqCommentDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		
		CommentVO vo = new CommentVO();
		
		int cIdx = Integer.parseInt(request.getParameter("cIdx"));
		
		vo.setcIdx(request.getParameter("cIdx"));
		
		

		
		int result = ReqCommentDAO.getreqCommentDelete(cIdx);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		System.out.println("코멘트 ");
		
	}

}