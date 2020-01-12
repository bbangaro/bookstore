package com.bc.model.reqcommand;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqDAO;
import com.bc.model.vo.GuestBookVO;

public class ReqDeleteOKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		int requestNum = Integer.parseInt(request.getParameter("requestNum"));
		
		//idx값 가져오기
		int result = ReqDAO.getReqDelete(requestNum);
		
		System.out.println("삭제.." + result);
		
		return "ReqListController";
	
	}
}
