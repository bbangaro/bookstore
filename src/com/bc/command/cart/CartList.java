package com.bc.command.cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.CartDAO;
import com.bc.model.vo.CartVO;

public class CartList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//세션에서 아이디 받아오기~~~
		String id = "test1";
		
		List<CartVO> list = CartDAO.getCart(id);
		
		request.setAttribute("list", list);
		System.out.println("list:" + list);

		for (CartVO cvo : list) {
			cvo.getbCode();
		}
		
		return "cart.jsp";
	}
	
}
