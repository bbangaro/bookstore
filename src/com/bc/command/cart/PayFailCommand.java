package com.bc.command.cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.CartDAO;

public class PayFailCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int oNum = Integer.parseInt(request.getParameter("oNum"));
		
		int result = CartDAO.updateCancel(oNum);
		
		return "index.jsp";
	}

}
