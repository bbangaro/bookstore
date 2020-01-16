package com.bc.model.command.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.QnADAO;

public class QnAUpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int qNum = Integer.parseInt(request.getParameter("qNum"));
		request.setAttribute("qNum", qNum);
		System.out.println("qNum:" + qNum);
		return "qna_update.jsp";
	}

}
