package com.bc.notcommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.NotDAO;
import com.bc.model.vo.GuestBookVO;
import com.bc.model.vo.Paging;

public class NotListCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//페이지 처리를 위한 Paging 객체 생성해서 값 설정
		Paging p = new Paging();

		//1. 전체 게시물의 수를 구하기
		p.setTotalRecord(NotDAO.getTotalCount()); 
		p.setTotalPage(); //전체 페이지 갯수 구하기
		
		
		//2. 현재 페이지 구하기(default : 1)
		String cPage = request.getParameter("cPage");
		if (cPage != null) {//넘겨받은 페이지 값이 있으면
			p.setNowPage(Integer.parseInt(cPage));
		}
		
		//3. 현재페이지의 시작번호(begin)와 끝번호(end) 구하기
		p.setEnd(p.getNowPage() * p.getNumPerPage());
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
		
		System.out.println("-------------");
		System.out.println(">>현재 페이지 : " + p.getNowPage());
		System.out.println(">>시작번호(begin) : " + p.getBegin());
		System.out.println(">>끝번호(end) : " + p.getEnd());
		
		//------- 블록(block) 계산하기 ----------
		//4. 블록의 시작페이지, 끝페이지 구하기(현재페이지 번호 사용)
		int nowPage = p.getNowPage();
		int beginPage = (nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
		p.setBeginPage(beginPage);
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);
		
		//4-1 끝페이지(endPage)가 전체 페이지 수(totalPage) 보다 크면
		if (p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}
		
		
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", p.getBegin());
		map.put("end", p.getEnd());
		List<GuestBookVO> list = NotDAO.getList(map);
		request.setAttribute("list", list);
		request.setAttribute("pvo", p);
		
		
		return "notice.jsp";
	}
	
	
	
}
