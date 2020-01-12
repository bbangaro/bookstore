package com.bc.model.reqcommand;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.ReqDAO;
import com.bc.model.vo.GuestBookVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class ReqUpdateOKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//pwd를 비교하기 위한 파라미터 값 뽑아내기
		//게시글을 끌고오기 위한 idx 파라미터 값 뽑아내기
		
		//String pwd = request.getParameter("pwd");
		MultipartRequest mr = null;
		String path = request.getRealPath("/upload");
		try {
			mr = new MultipartRequest(
					request, //요청객체
					path, //실제 파일을 저장하기 위한 경로
					10 * 1024 * 1024, //업로드 파일의 최대용량(byte 단위)
					"UTF-8", //인코딩타입
					new DefaultFileRenamePolicy() //파일이름중복시 새로운이름 사용
					);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		int requestNum = Integer.parseInt(mr.getParameter("requestNum"));

		//수정할  때 게시글 내용을 그대로 가져오기 위해서 idx로 상세정보 화면 가져오기
		GuestBookVO vo = new GuestBookVO();
		
		/*
		//집어 넣기 위한 조건문
		if (!pwd.equals(vo.getPwd())) {
			System.out.println("비밀번호 다름");
			
			return "UpdateController?idx=" + idx ;
			
		} else {
		}
		*/	
			//값을 받아서 update문 실행하기 위해서 상세정보 화면에서 사용중인 파라미터 값 뽑아서 vo타입에 집어넣기
			vo.setSubject(mr.getParameter("subject"));
			vo.setrContent(mr.getParameter("rContent"));
			vo.setUpload(mr.getParameter("upload"));
			vo.setRequestNum(requestNum);
			
			int result = ReqDAO.getReqUpdate(vo);
		
		System.out.println(vo.toString());
		
		//int result = DAO.getInsert(vo);
		
		return "ReqListController";
		
	}

}
