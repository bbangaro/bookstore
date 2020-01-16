package com.bc.reqcontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqCommentDAO;
import com.bc.model.dao.ReqDAO;
import com.bc.model.vo.CommentVO;
import com.bc.model.vo.GuestBookVO;

@WebServlet("/GetXmlReqUpdateCommentController")
public class GetXmlReqUpdateCommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		//int requestNum = Integer.parseInt(request.getParameter("requestNum"));
		int cIdx = Integer.parseInt(request.getParameter("cIdx"));
		CommentVO vo = new CommentVO();
		
		vo.setMemberId(request.getParameter("memberId"));
//		vo.setRequestNum(requestNum);
		vo.setContent(request.getParameter("content"));
		vo.setPassword(request.getParameter("password"));
		vo.setcIdx(request.getParameter("cIdx"));
		
		

		
		int result = ReqCommentDAO.getreqCommentUpdate(vo);
        
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
