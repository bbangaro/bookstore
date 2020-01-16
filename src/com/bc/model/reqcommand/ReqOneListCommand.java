package com.bc.model.reqcommand;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqCommentDAO;
import com.bc.model.dao.ReqDAO;
import com.bc.model.vo.CommentVO;
import com.bc.model.vo.GuestBookVO;

public class ReqOneListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. DB연결하고 전체 데이터 가져와서(DAO)
		int requestNum = Integer.parseInt(request.getParameter("requestNum"));

		//쿼리문 소환
		//파라미터 값 하나만 가지고 오는거니까 list로 받을 필요 없음 
		GuestBookVO vo = ReqDAO.getOneList(requestNum);
		List<CommentVO> commentList = ReqCommentDAO.getReqCommentList(requestNum);
		if(commentList != null) {
			vo.setCommentList(commentList);
		}
		
		
		// JSP에서 사용할 수 있도록세션에 guestbookVO으로 저장
		request.setAttribute("guestBookVO", vo);
		
		return "req_oneList.jsp";
	}
}
