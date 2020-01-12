package com.bc.model.command.qna;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.QnADAO;
import com.bc.model.vo.BookVO;
import com.bc.model.vo.QnAVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class QnAWriteOkCommand implements Command{

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
		
		QnAVO qvo = new QnAVO();
		BookVO bvo = new BookVO();
		
		qvo.setCategory(mr.getParameter("category"));
		qvo.setMemberId(mr.getParameter("memberId"));
		qvo.setSubject(mr.getParameter("subject"));
		qvo.setrContent(mr.getParameter("rContent"));
		qvo.setUpload(mr.getOriginalFileName("upload"));
		
		bvo.setbName("진주"); //수정필요!!!!!!!!!
		
		Map<String, String> map = new HashMap<>();
		map.put("memberId", qvo.getMemberId());
		map.put("subject", qvo.getSubject());
		map.put("category", qvo.getCategory());
		map.put("rContent", qvo.getrContent());
		map.put("upload", qvo.getUpload());
		map.put("bName", bvo.getbName());
		
		int result = QnADAO.insertQnA(map);
		System.out.println("map:" + map);
		return "QnAListController";
	}

}
