package com.bc.notcommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.NotDAO;

public class NotDelCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String,Integer> map = new HashMap<>();
		int nNum = Integer.parseInt(request.getParameter("nNum"));
		map.put("nNum", nNum);
		int result = NotDAO.getDelete(map);
		
		return "NotListController";
	}
	
}
