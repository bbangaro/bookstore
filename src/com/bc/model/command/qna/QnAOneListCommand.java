package com.bc.model.command.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.QnADAO;
import com.bc.model.vo.QnAVO;

public class QnAOneListCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qNum = Integer.parseInt(request.getParameter("qNum"));
		
		QnAVO vo = QnADAO.getOne(qNum);
		
		request.setAttribute("vo", vo);
		
		return "qna_oneList.jsp";
	}

}
