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

@WebServlet("/getXmlRequest")
public class GetJXmlReqOneListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		int requestNum = Integer.parseInt(request.getParameter("requestNum"));
		
		GuestBookVO vo = ReqDAO.getOneList(requestNum);
		
		StringBuilder result = new StringBuilder();
		result.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		
			result.append("<books>");
	    	result.append("<book>");
	    	result.append("<rContent>" + vo.getrContent() + "</rContent>");
	    	result.append("<upload>" + vo.getUpload() + "</upload>");
	    	result.append("<memberId>" + vo.getMemberId() + "</memberId>");
	    	result.append("</book>");
	    	result.append("</books>");
	    	
	    	out.print(result.toString());
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
		
	}

}