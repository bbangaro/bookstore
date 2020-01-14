package com.bc.kbookcommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.NotDAO;
import com.bc.model.vo.BookVO;

public class ObookCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Map<String,String> map = new HashMap<>();
		request.setAttribute("oo", request.getParameter("oo"));
		map.put("hCode", request.getParameter("hCode"));
		List<BookVO> list1 = NotDAO.get1list(map);
		request.setAttribute("list1", list1);
		List<BookVO> list2 = NotDAO.get2list(map);
		System.out.println(list2.get(0));
		request.setAttribute("list2", list2);
		List<BookVO> list3 = NotDAO.get3list(map);
		request.setAttribute("list3", list3);
		List<BookVO> list4 = NotDAO.get4list(map);
		request.setAttribute("list4", list4);
		List<BookVO> list5 = NotDAO.get5list(map);
		request.setAttribute("list5", list5);
		request.setAttribute("hCode", request.getParameter("hCode"));
		
		return "obook.jsp";
	}

}
