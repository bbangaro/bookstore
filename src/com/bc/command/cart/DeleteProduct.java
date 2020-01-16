package com.bc.command.cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.CartDAO;
import com.bc.model.vo.CartVO;

public class DeleteProduct implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String bCode = request.getParameter("bCode");
		// int bType = Integer.parseInt(request.getParameter("bType"));
		String bCode = "19"; // 코드랑 타입 넘겨받기!!!!!!!!!!!1
		int bType = 1;
		CartVO vo = new CartVO();
		vo.setbCode(bCode);
		vo.setbType(bType);
		vo.setMemberId("test1");
		
		int count = CartDAO.findProduct(vo);
		
		//총 합계 금액 변경해야함!!!!!!!
		if (count > 0) {
			CartDAO.deleteProduct(vo);
		}
		
		return "cart.jsp";
	}

}
