package com.bc.notcontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.NotDAO;
import com.bc.model.vo.BookVO;


@WebServlet("/getBook")
public class GetBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//DB데이터 조회(전체)
		String lcode =  request.getParameter("lcode");
		List<BookVO> list = NotDAO.getBList(lcode);
		System.out.println(list);
		//JSON 형태의 문자열 작성
		/*
		 {"list" : [
		 	{
		 		"idx" : "idx값", "name" : "name값", "age" : "age값", "addr" : "addr값", 
		 		"regdate" : "regdate값"
		 	}
		 ]} 
		 */
		String result = "{\"list\" : [";
		for(BookVO vo : list) {
			result += "{";
			result += "\"name\" : \"" + vo.getbName() + "\",";
			result += "\"bcode\" : \"" + vo.getbCode() + "\",";
			result += "\"writer\" : \"" + vo.getWriterName() + "\",";
			result += "\"image\" : \"" + vo.getbImage() + "\"";
			result += "},";
		}
		result = result.substring(0, result.length() - 1);
		result += "]}";
		out.println(result);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
