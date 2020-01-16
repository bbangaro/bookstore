package com.bc.model.command.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.QnADAO;
import com.bc.model.vo.CommentVO;

public class QnACommentWriteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommentVO vo = new CommentVO();
		
		int qNum = Integer.parseInt(request.getParameter("qNum"));
		
		vo.setqNum(qNum);
		vo.setMemberId(request.getParameter("memberId"));
		vo.setContent(request.getParameter("content"));
		
		
		System.out.println("vo : " + vo);
		int result = QnADAO.insertComment(vo);
		
		return "QnAOneListController";
	}
	
}
