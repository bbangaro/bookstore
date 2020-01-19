package com.bc.command.cart;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.CartDAO;
import com.bc.model.vo.CartVO;
import com.bc.model.vo.OrdersVO;

public class PayCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Map<String, Object> map = new HashMap<String, Object>();
		HttpSession session = request.getSession(true);
		
		List<CartVO> list = CartDAO.getCart((String)session.getAttribute("id"));
		
		map.put("memberId", session.getAttribute("id"));
		map.put("oname", request.getParameter("oname"));
		map.put("ozipcode", request.getParameter("ozipcode"));
		map.put("oaddress", request.getParameter("oaddress"));
		map.put("ophone", request.getParameter("ophone"));
		map.put("oemail", request.getParameter("oemail"));
		map.put("rname", request.getParameter("rname"));
		map.put("rzipcode", request.getParameter("rzipcode"));
		map.put("raddress", request.getParameter("raddress"));
		map.put("rphone", request.getParameter("rphone"));
		map.put("msg", request.getParameter("msg"));
		map.put("total", request.getParameter("total"));
		
		System.out.println("map:" + map);
		
		request.setAttribute("map", map);
		
		CartDAO.insertOrder(map);
		
		OrdersVO ovo = CartDAO.selectOrder((String)session.getAttribute("id"));
		System.out.println("ovo:"+ovo);
		request.setAttribute("ovo", ovo);
		
		return "pay.jsp";
	}

}
