package com.bc.notcommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.NotDAO;
import com.bc.mybatis.DBService;

public class NoticeUpCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Map<String,String> map = new HashMap<>();
		map.put("nNum", request.getParameter("nNum"));
		map.put("subject", request.getParameter("subject"));
		map.put("content", request.getParameter("content"));
		request.setAttribute("update", map);
		return "ninsert.jsp";
	}
	
}
