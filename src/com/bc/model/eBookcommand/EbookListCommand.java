package com.bc.model.eBookcommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqDAO;
import com.bc.model.dao.eBookDAO;
import com.bc.model.vo.BookVO;
import com.bc.model.vo.GuestBookVO;
import com.bc.page.vo.Paging;

public class EbookListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. DB연결하고 전체 데이터 가져와서(DAO)
		String bCode = request.getParameter("bCode");
		
		BookVO vo = eBookDAO.getOneImg(bCode);
		request.setAttribute("book", vo);
		

		
		List<BookVO> list = eBookDAO.getImgs(bCode);
		
		request.setAttribute("list", list);
		
		System.out.println("속지:"+ list);
		System.out.println("텍스트:"+ list.get(0).geteText());
		
		
		//2. 응답페이지에 전달(request 객체에 속성값 저장) 
		//request.setAttribute("list", List);
		
		
		
		int cnt = eBookDAO.getEbookCnt(bCode);
		
		//2. 응답페이지에 전달(request 객체에 속성값 저장) 
		request.setAttribute("Cnt", cnt);
		
		
		return "eBook.jsp";
	}
}
