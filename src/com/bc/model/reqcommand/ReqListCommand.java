package com.bc.model.reqcommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqDAO;
import com.bc.model.vo.GuestBookVO;
import com.bc.page.vo.Paging;

public class ReqListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//페이지 처리를 위한 Paging 객체 생성해서 값 설정
		Paging p = new Paging();

		//1. 전체 게시물의 수를 구하기
		p.setTotalRecord(ReqDAO.getTotalCount()); 
		p.setTotalPage(); //전체 페이지 갯수 구하기
		
		System.out.println(">전체 게시글 수 : " + p.getTotalRecord());
		System.out.println(">전체 페이지 수 : " + p.getTotalPage());
		
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
		
		//-------------------------------------
		//현재페이지 기준으로 게시글 가져오기
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", p.getBegin());
		map.put("end", p.getEnd());

		
		
		//1. DB연결하고 전체 데이터 가져와서(DAO)
		List<GuestBookVO> List = ReqDAO.getReqList(map);
		
		//2. 응답페이지에 전달(request 객체에 속성값 저장) 
		request.setAttribute("list", List);
		request.setAttribute("pvo", p);
		
		//응답페이지(list.jsp) 저장하고 페이지 전환(포워딩)
		//request.getRequestDispatcher("list.jsp").forward(request, response);
		
		return "req_list.jsp";
	}
}
