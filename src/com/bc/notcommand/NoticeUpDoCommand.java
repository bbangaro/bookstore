package com.bc.notcommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.NotDAO;

public class NoticeUpDoCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String,String> map = new HashMap<>();
		map.put("subject", request.getParameter("subject"));
		map.put("content", request.getParameter("content"));
		map.put("nNum", request.getParameter("nNum"));
		int result = NotDAO.getUpdate(map);
		return "NotListController";
	}
	
}
