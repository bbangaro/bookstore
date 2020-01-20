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

public class PayDirectCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		String memberId = (String)session.getAttribute("id");
		String bCode = (String)session.getAttribute("b_Code");
		//int bType = (Integer)session.getAttribute("bType");
		int bType = 1;
		
		CartVO vo = new CartVO();
		vo.setbCode(bCode);
		vo.setbType(bType);
		vo.setMemberId(memberId);
		
		Map<String, Object> map = new HashMap<>();
		map.put("bType", bType);
		map.put("bCode", bCode);
		map.put("count", 1);
		map.put("memberId", memberId);
		
		int result = CartDAO.insertDirectPay(map);
		
		return "DirectOrderController";
	}

}
