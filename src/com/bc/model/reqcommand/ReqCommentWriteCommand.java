package com.bc.model.reqcommand;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.QnADAO;
import com.bc.model.dao.ReqCommentDAO;
import com.bc.model.vo.CommentVO;

public class ReqCommentWriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CommentVO vo = new CommentVO();
		
		int requestNum = Integer.parseInt(request.getParameter("requestNum"));
		
		vo.setRequestNum(requestNum);
		vo.setMemberId(request.getParameter("memberId"));
		vo.setContent(request.getParameter("content"));
		vo.setPassword(request.getParameter("password"));
		
		System.out.println("vo : " + vo);
		
		int result = ReqCommentDAO.getReqCommentInsert(requestNum);
		
		return "QnAOneListController";
	}
	
}
