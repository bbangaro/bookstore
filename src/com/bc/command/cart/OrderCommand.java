package com.bc.command.cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.CartDAO;
import com.bc.model.vo.CartVO;
import com.bc.model.vo.MemberVO;

public class OrderCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		String memberId = (String) session.getAttribute("id");
		
		List<CartVO> list = CartDAO.getCart(memberId);
		MemberVO mvo = CartDAO.getInfo(memberId);
		
		request.setAttribute("list", list);
		request.setAttribute("mvo", mvo);
		
		return "order.jsp";
	}

}
