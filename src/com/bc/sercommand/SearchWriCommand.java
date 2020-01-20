package com.bc.sercommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.SerDAO;
import com.bc.model.vo.GuestBookVO;

public class SearchWriCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Map<String, String> map = new HashMap<>();
		map.put("search", request.getParameter("search"));
		List<GuestBookVO> list = SerDAO.getWri(map);
		List<GuestBookVO> list2 = SerDAO.geteWri(map);
		request.setAttribute("list2", list2);
		request.setAttribute("list", list);
		return "search.jsp";
	}
	
}
