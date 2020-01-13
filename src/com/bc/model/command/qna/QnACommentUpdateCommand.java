package com.bc.model.command.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.QnADAO;
import com.bc.model.vo.CommentVO;

public class QnACommentUpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CommentVO vo = new CommentVO();
		
		vo.setContent(request.getParameter("content"));
		vo.setcIdx(request.getParameter("cIdx"));
		
		System.out.println("수정vo:" + vo);
		
		int result = QnADAO.updateComment(vo);
		
		return "QnAOneListController";
	}

}
