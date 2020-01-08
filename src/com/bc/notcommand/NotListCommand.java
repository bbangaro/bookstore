package com.bc.notcommand;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.NotDAO;
import com.bc.model.vo.GuestBookVO;

public class NotListCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<GuestBookVO> list = NotDAO.getList();
		
		request.setAttribute("list", list);
		
		return "notice.jsp";
	}
	
	
	
}
