package com.bc.notcommand;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.NotDAO;
import com.bc.model.vo.GuestBookVO;

public class NotViewCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int nNum = Integer.parseInt(request.getParameter("nNum"));
		
		GuestBookVO vo = NotDAO.getOne(nNum);
		GuestBookVO vo1 = NotDAO.getOnene(nNum);
		GuestBookVO vo2 = NotDAO.getOnepr(nNum);
		
		String[] ar = vo.getUpload().split(",");
		for(int i = 0; i < ar.length; i++) {
			
			System.out.println(ar[i]);
		}
		request.setAttribute("up",ar);
		System.out.println("upload : " + request.getAttribute("up"));
		request.setAttribute("vo", vo);
		request.setAttribute("vo1", vo1);
		request.setAttribute("vo2", vo2);
		return "nview.jsp";
	}
	
	
}
