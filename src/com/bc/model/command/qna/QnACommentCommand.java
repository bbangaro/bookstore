package com.bc.model.command.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.QnADAO;
import com.bc.model.vo.CommentVO;

public class QnACommentCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qNum = Integer.parseInt(request.getParameter("qNum"));
		
		List<CommentVO> clist = QnADAO.getComment(qNum);
		
		request.setAttribute("clist", clist);
		
		return "QnAOneListController";
	}
	
}
