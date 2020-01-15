package com.bc.command.cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.CartDAO;
import com.bc.model.vo.CartVO;

public class AddProduct implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bCode = request.getParameter("bCode");
		int bType = Integer.parseInt(request.getParameter("bType"));
		
		CartVO vo = new CartVO();
		vo.setbCode(bCode);
		vo.setbType(bType);
		
		CartDAO.insertCart(vo);
		
		return "cart.jsp";
	}
	
}
