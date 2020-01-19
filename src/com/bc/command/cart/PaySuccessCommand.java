package com.bc.command.cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.CartDAO;

public class PaySuccessCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int oNum = Integer.parseInt(request.getParameter("oNum"));
		
		//1. order테이블의 state를 1로 업데이트(결제완료)
		CartDAO.updateState(oNum);
		
		//2. 주문 성공 페이지 리턴
		return "orderSuccess.jsp";
	}

}
