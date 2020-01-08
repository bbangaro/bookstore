package com.bc.model.command.hh;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.QnADAO;
import com.bc.model.vo.QnAVO;

public class QnAListCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<QnAVO> list = QnADAO.getList();
		
		request.setAttribute("list", list);
		
		return "qna_list.jsp";
	}
}
