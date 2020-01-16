package com.bc.model.command.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.QnADAO;
import com.bc.model.vo.QnAVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class QnAUpdateOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String path = request.getRealPath("/upload");
		
		MultipartRequest mr = new MultipartRequest(
				request, 
				path, 
				10 * 1024 * 1024, 
				"UTF-8", 
				new DefaultFileRenamePolicy() 
				);
		
		QnAVO vo = new QnAVO();
		
		vo.setqNum(Integer.parseInt(request.getParameter("qNum")));
		vo.setSubject(mr.getParameter("subject"));
		vo.setCategory(mr.getParameter("category"));
		vo.setrContent(mr.getParameter("rContent"));
		vo.setUpload(mr.getOriginalFileName("upload"));
		
		System.out.println("vo :" + vo);
		
		int result = QnADAO.updateQnA(vo);
		System.out.println("result : " + result);
		return "QnAOneListController?qNum=" + vo.getqNum();
	}

}
