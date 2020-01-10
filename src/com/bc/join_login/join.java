package com.bc.join_login;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.TakDAO;
import com.bc.model.vo.MemberVO;

@WebServlet("/join")
public class join extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//시간 출력
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy/MM/dd");
		Calendar time = Calendar.getInstance(); 
		String format_time1 = format1.format(time.getTime());
		
		MemberVO membervo = new MemberVO();
		membervo.setMemberId(request.getParameter("member_id"));
		membervo.setUserName(request.getParameter("username"));
		membervo.setPassword(request.getParameter("password1"));
		membervo.setEmail(request.getParameter("email"));
		membervo.setZipcode(request.getParameter("zipcode"));
		membervo.setAddress1(request.getParameter("address1"));
		membervo.setAddress2(request.getParameter("address2"));
		membervo.setMobilePhone(request.getParameter("mobilephone"));
		membervo.setRegdate(format_time1);
		membervo.setuStatus(1);
		
		System.out.println(membervo);
		
		int result = TakDAO.insetMember(membervo);
		System.out.println(result);
		if(result == 1 ) {
			request.getSession().setAttribute("message","회원가입에 성공했습니다.");
			response.sendRedirect("join.jsp");
		}else {
			request.getSession().setAttribute("message","회원가입에 실패하였습니다.");
			response.sendRedirect("join.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}

