package com.bc.model.command.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.QnADAO;

public class QnACommentDeleteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cIdx = Integer.parseInt(request.getParameter("cIdx"));
		int qNum = Integer.parseInt(request.getParameter("qNum"));
		
		System.out.println("cIdx : " + cIdx);
		int result = QnADAO.deleteComment(cIdx);
		
		return "QnAOneListController?qNum=" + qNum;
	}
 
}
