package com.bc.command.cart;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.CartDAO;
import com.bc.model.vo.CartVO;

public class SetCount implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		
		String memberId = (String)session.getAttribute("id");
		
		String bCode = request.getParameter("bCode");
		int bType = Integer.parseInt(request.getParameter("bType"));

		
		CartVO vo = new CartVO();
		vo.setbCode(bCode);
		vo.setbType(bType);
		vo.setMemberId(memberId);
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		System.out.println("quantity:" + quantity);
		
		int count = CartDAO.findProduct(vo);
		
		Map<String, Object> map = new HashMap<>();
		map.put("bType", bType);
		map.put("bCode", bCode);
		map.put("quantity", quantity);
		map.put("memberId", memberId);
		
		if (count > 0) {
			CartDAO.setCount(map);
		}
		
		return "CartListController";
	}

}
