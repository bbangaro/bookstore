package com.bc.model.reqcommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqCommentDAO;
import com.bc.model.dao.ReqDAO;
import com.bc.model.vo.CommentVO;
import com.bc.model.vo.GuestBookVO;
import com.bc.page.vo.Paging;

public class ReqCommentListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. DB연결하고 전체 데이터 가져와서(DAO)
		int requestNum = Integer.parseInt(request.getParameter("requestNum"));
		List<CommentVO> List = ReqCommentDAO.getReqCommentList(requestNum);
		
		//2. 응답페이지에 전달(request 객체에 속성값 저장) 
		request.setAttribute("list", List);
		
		//응답페이지(list.jsp) 저장하고 페이지 전환(포워딩)
		//request.getRequestDispatcher("list.jsp").forward(request, response);
		
		return "reqComment_list.jsp";
	}
}
