package com.bc.detailPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.TakDAO;
import com.bc.model.vo.BookVO;
import com.bc.model.vo.ReviewVO;
import com.bc.model.vo.starRatingVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/detail/*")
public class detailPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String image_repo = "/images";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nextPage = null;
		String action = request.getPathInfo();
		System.out.println(action);
		if (action == null || action.contentEquals("/Page")) {
			
			String bCode = request.getParameter("bCode");
	
			String pageNum = request.getParameter("pageNum");
			System.out.println(pageNum);
			System.out.println(bCode);
			
			if(pageNum == null) {
				pageNum = "1";
			}
			
			
		
			
			
			BookVO bookvo = TakDAO.detailPage(bCode);
			Map<String, String> detailPageReview_ = new HashMap<>();
			
			
			detailPageReview_.put("bCode", bCode);
			detailPageReview_.put("pageNum", pageNum);
			
			 int lastPage = TakDAO.detailPageReviewselect() ;
			 
			 List<starRatingVO> starList = TakDAO.starRating(bCode);
			 List<ReviewVO> reviewvo = TakDAO.detailPageReview(detailPageReview_);
			 
			 System.out.println("starList"+starList);
			 
			 System.out.println(lastPage);
			 
			request.setAttribute("starList",starList);
			request.setAttribute("lastPage",  lastPage);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("bookvo", bookvo);
			request.setAttribute("reviewvo", reviewvo);
			
			nextPage = "/pages/detailPage.jsp";

		} else if (action.contentEquals("/AddForm")) {
			nextPage = "/pages/detailPageAddForm.jsp";
			
		}else if(action.contentEquals("/session")) {
			
			HttpSession session = request.getSession();
			session.setAttribute("reviewNum", "0");
			nextPage = "/pages/detailPageAddForm.jsp";
			
		}else if (action.contentEquals("/insertForm")) {
			ServletContext sc = this.getServletContext();
			String path = sc.getRealPath("/upload");
			System.out.println(path);

			MultipartRequest mr = new MultipartRequest(request, path, 10 * 1024 * 1024, "UTF-8",
					new DefaultFileRenamePolicy());
			HttpSession session = request.getSession();

			String subject = mr.getParameter("subject");
			String rContent = mr.getParameter("rContent");
			String myFile = mr.getFilesystemName("myFile");
			String parentno = mr.getParameter("reviewNum");
			String id = (String) session.getAttribute("id");
			String bCode = (String) session.getAttribute("b_Code");

			System.out.println(parentno);
			System.out.println(bCode);
			System.out.println(id);
			System.out.println(rContent);
			System.out.println(subject);
			System.out.println(myFile);
			
			
			System.out.println("성공;;");
			ReviewVO reviewvo = new ReviewVO();
			reviewvo.setParentno(parentno);
			reviewvo.setUpload(myFile);
			reviewvo.setbCode(bCode);
			reviewvo.setMemberId(id);
			reviewvo.setSubject(subject);
			reviewvo.setrContent(rContent);
			
			System.out.println(reviewvo.getUpload());
			System.out.println(reviewvo.getParentno());

			int i = TakDAO.inersertReviewvo(reviewvo);

			PrintWriter pw = response.getWriter();
			pw.print("<script>location.href='/bookstore/detail/Page?bCode="
					+bCode+"&#tagre'; </script>");

		} else if (action.contentEquals("/CheckForm")) {
			String reviewNum = request.getParameter("reviewNum");
			System.out.println(reviewNum);
			ReviewVO reviewvo = new ReviewVO();

			reviewvo = TakDAO.checkForm(reviewNum);
			System.out.println(reviewvo.getParentno());
			request.setAttribute("reviewvo", reviewvo);
			HttpSession session = request.getSession();
			session.setAttribute("reviewNum", reviewvo.getReviewNum());

			nextPage = "/pages/detailPageAddForm.jsp";

		} else if (action.contentEquals("/updateForm")) {
			ServletContext sc = this.getServletContext();
			String path = sc.getRealPath("/upload");
			System.out.println(path);

			MultipartRequest mr = new MultipartRequest(request, path, 10 * 1024 * 1024, "UTF-8",
					new DefaultFileRenamePolicy());
			HttpSession session = request.getSession();

			String subject = mr.getParameter("subject");
			String rContent = mr.getParameter("rContent");
			String myFile = mr.getFilesystemName("myFile");
			String reviewNum = mr.getParameter("reviewNum");
			String id = (String) session.getAttribute("id");
			String bCode = (String) session.getAttribute("b_Code");

			System.out.println(reviewNum);
			System.out.println(bCode);
			System.out.println(id);
			System.out.println(rContent);
			System.out.println(subject);
			System.out.println(myFile);

			ReviewVO reviewvo = new ReviewVO();

			reviewvo.setReviewNum(reviewNum);
			reviewvo.setUpload(myFile);
			reviewvo.setbCode(bCode);
			reviewvo.setMemberId(id);
			reviewvo.setSubject(subject);
			reviewvo.setrContent(rContent);
			int i = TakDAO.updateReviewvo(reviewvo);
			PrintWriter pw = response.getWriter();
			pw.print("<script>location.href='/bookstore/detail/Page?bCode="
					+bCode+"&#tagre'; </script>");
		} else if (action.contentEquals("/deleteForm")) {
			HttpSession session = request.getSession();
			String reviewNum =(String) session.getAttribute("reviewNum"); 
			String bCode = (String) session.getAttribute("b_Code");
			System.out.println(reviewNum);
			System.out.println("bCode: " + bCode);
			TakDAO.deleteReviewvo(reviewNum);
			PrintWriter pw = response.getWriter();
			pw.print("<script>location.href='/bookstore/detail/Page?bCode="
					+bCode+"&#tagre'; </script>");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getParameter("utf-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
