package com.bc.kbookcommand;

import java.util.List;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.NotDAO;
import com.bc.model.vo.BookVO;

public class AllbookCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String,String> map = new HashMap<>();
		map.put("hCode", request.getParameter("hCode"));
		map.put("lCode", request.getParameter("lCode"));
		
		List<BookVO> list = NotDAO.getAllbook(map);
		
		request.setAttribute("list", list);
		
		return "allbook.jsp";
	}
	
}
