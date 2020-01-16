package com.bc.model.eBookcommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqDAO;
import com.bc.model.vo.BookVO;
import com.bc.model.vo.GuestBookVO;
import com.bc.page.vo.Paging;

public class EbookListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. DB연결하고 전체 데이터 가져와서(DAO)
		//BookVO vo = BookVO;
		
		//2. 응답페이지에 전달(request 객체에 속성값 저장) 
		//request.setAttribute("list", List);
		//request.setAttribute("pvo", p);
		
		//응답페이지(list.jsp) 저장하고 페이지 전환(포워딩)
		//request.getRequestDispatcher("list.jsp").forward(request, response);
		
		return "eBook.jsp";
	}
}
