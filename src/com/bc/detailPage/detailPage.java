package com.bc.detailPage;

import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

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
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/detail/*")
public class detailPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static String image_repo = "/images";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextPage = null;
		String action = request.getPathInfo();
		
		if(action == null || action.contentEquals("/Page")){
			String bCode = request.getParameter("bCode");
			System.out.println(bCode);
			BookVO bookvo =	TakDAO.detailPage(bCode);
			List<ReviewVO> reviewvo = TakDAO.detailPageReview(bCode);
			 request.setAttribute("bookvo", bookvo);
			 request.setAttribute("reviewvo", reviewvo);
			 nextPage = "/pages/detailPage.jsp";
			 System.out.println(action);
			
	}else if(action.contentEquals("/AddForm")) {
			nextPage = "/pages/detailPageAddForm.jsp";
		}else if (action.contentEquals("/insertForm")) {
			ServletContext sc = this.getServletContext();
			String path = sc.getRealPath("/upload");
			System.out.println(path);
			
			MultipartRequest mr = new MultipartRequest(request, path,10*1024*1024,
					"UTF-8",new DefaultFileRenamePolicy());
			HttpSession session = request.getSession();
			
			
			String subject =mr.getParameter("subject");
			String rContent =mr.getParameter("rContent");
			String myFile = mr.getFilesystemName("myFile");
			String id = (String) session.getAttribute("id");
			String bCode = (String)session.getAttribute("b_Code");
			
			System.out.println(bCode);
			System.out.println(id);
			System.out.println(rContent);
			System.out.println(subject);
			System.out.println(myFile);
			
			ReviewVO reviewvo = new ReviewVO();
			reviewvo.setUpload(myFile);
			reviewvo.setbCode(bCode);
			reviewvo.setMemberId(id);
			reviewvo.setSubject(subject);
			reviewvo.setrContent(rContent);
			
			int i = TakDAO.inersertReviewvo(reviewvo);
			
			 nextPage = "/detail/Page?bCode="+Integer.parseInt(bCode);
	}
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
