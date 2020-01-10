package com.bc.notcommand;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.NotDAO;
import com.bc.model.vo.GuestBookVO;

public class NotViewCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int nNum = Integer.parseInt(request.getParameter("nNum"));
		
		GuestBookVO vo = NotDAO.getOne(nNum);
		request.setAttribute("vo", vo);
		return "nview.jsp";
	}
	
	
}
