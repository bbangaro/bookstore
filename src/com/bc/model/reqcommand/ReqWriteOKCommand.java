package com.bc.model.reqcommand;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqDAO;
import com.bc.model.vo.GuestBookVO;


public class ReqWriteOKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//vo객체 생성 후 폼에서 받고 있는 파라미터를 뽑아주고
		//DAO 쿼리문 호출
		
		GuestBookVO vo = new GuestBookVO();
		vo.setMemberId(request.getParameter("memberId"));
		vo.setSubject(request.getParameter("subject"));
		vo.setrContent(request.getParameter("rContent"));
		vo.setUpload(request.getParameter("upload"));
		vo.setPassword(request.getParameter("password"));
		
		System.out.println(vo.toString());
		
		
		
		int result = ReqDAO.getReqInsert(vo);
		
		return "ReqListController";
		
	}

}

