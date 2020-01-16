package com.bc.command.cart;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.CartDAO;
import com.bc.model.vo.CartVO;

public class AddProduct implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String bCode = request.getParameter("bCode");
		//int bType = Integer.parseInt(request.getParameter("bType"));
		String bCode = "19"; //코드랑 타입 넘겨받기!!!!!!!!!!!1
		int bType = 1;
		CartVO vo = new CartVO();
		vo.setbCode(bCode);
		vo.setbType(bType);
		vo.setMemberId("test1");
		
		int count = CartDAO.findProduct(vo);
		
		Map<String, Object> map = new HashMap<>();
		map.put("bType", bType);
		map.put("bCode", bCode);
		map.put("count", 3); //개수 수정!!!!!!!!!!!!!!!
		map.put("memberId", "test1");
		
		
		//가격 총 합계 조정 추가해야함
		if (count == 0) {
			CartDAO.insertCart(map);
		} else {
			CartDAO.updateCount(map);
		}
		
		return "cart.jsp";
	}
	
}
