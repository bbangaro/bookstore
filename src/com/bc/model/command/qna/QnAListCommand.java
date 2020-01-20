package com.bc.model.command.qna;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.QnADAO;
import com.bc.model.vo.CommentVO;
import com.bc.model.vo.QnAVO;
import com.bc.page.vo.Paging;

public class QnAListCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		
		Paging p = new Paging();

		p.setTotalRecord(QnADAO.getTotalCount()); 
		p.setTotalPage();  

		String cPage = request.getParameter("cPage");
		if (cPage != null) {  
			p.setNowPage(Integer.parseInt(cPage));
		}
		
		p.setEnd(p.getNowPage() * p.getNumPerPage());
		p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
		
		int nowPage = p.getNowPage();
		int beginPage = (nowPage - 1) / p.getPagePerBlock() * p.getPagePerBlock() + 1;
		p.setBeginPage(beginPage);
		p.setEndPage(p.getBeginPage() + p.getPagePerBlock() - 1);
		
		if (p.getEndPage() > p.getTotalPage()) {
			p.setEndPage(p.getTotalPage());
		}
		
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", p.getBegin());
		map.put("end", p.getEnd());
		
		List<QnAVO> list = QnADAO.getList(map);
		
		
		request.setAttribute("list", list);
		request.setAttribute("pvo", p);
		System.out.println("list : " + list);
		System.out.println("세션아이디:" + session.getAttribute("id"));
	
		//댓글 개수 표시
//		int qNum;
//		int comment = QnADAO.countComment(qNum);
//		request.setAttribute("comment", comment);
		
		return "qna_list.jsp";
	}
}
