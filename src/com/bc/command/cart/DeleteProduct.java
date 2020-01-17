package com.bc.command.cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.CartDAO;
import com.bc.model.vo.CartVO;

public class DeleteProduct implements Command {

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
		
		int count = CartDAO.findProduct(vo);
		
		if (count > 0) {
			CartDAO.deleteProduct(vo);
		}
		
		return "CartListController";
	}

}
