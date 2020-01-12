package com.bc.model.reqcommand;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqDAO;
import com.bc.model.vo.GuestBookVO;

public class ReqUpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//1. DB연결하고 전체 데이터 가져와서(DAO)
		int requestNum = Integer.parseInt(request.getParameter("requestNum"));

		//쿼리문 소환
		//파라미터 값 하나만 가지고 오는거니까 list로 받을 필요 없음 
		GuestBookVO vo = ReqDAO.getOneList(requestNum);
		/*
		  idx(글번호)로 조회 한 글을 vo객체로 가져와서 jsp로 념거서 view파일 작동하게...


		 */


		// JSP에서 사용할 수 있도록세션에 guestbookVO으로 저장
		request.setAttribute("vo", vo);

		return "req_update.jsp";
	}
}
