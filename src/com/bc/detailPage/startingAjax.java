package com.bc.detailPage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.TakDAO;
import com.bc.model.vo.starRatingVO;

@WebServlet("/startingAjax")
public class startingAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public startingAjax() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getParameter("utf-8");
		response.setContentType("text/html; charset=utf-8");

		HttpSession session = request.getSession();
		String bCode = (String) session.getAttribute("b_Code");

		String star = request.getParameter("star");
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		System.out.println("bCode" + bCode);
		System.out.println("star" + star);
		System.out.println("title" + title);
		System.out.println("content" + content);

		starRatingVO starratinvo = new starRatingVO();

		starratinvo.setbCode(bCode);
		starratinvo.setStar(star);
		starratinvo.setTitle(title);
		starratinvo.setContent(content);

		System.out.println(starratinvo);

		int i = TakDAO.starInsert(starratinvo);
		PrintWriter pw = response.getWriter();

		pw.print("<tr>" + "<td>" + star + "</td>" + "<td>" + title + "</td>" + "<td>" + content + "</td>" + "</tr>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
