package com.bc.model.reqcommand;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.dao.ReqDAO;
import com.bc.model.dao.TakDAO;
import com.bc.model.vo.GuestBookVO;
import com.bc.model.vo.MemberVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class ReqWriteOKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//vo객체 생성 후 폼에서 받고 있는 파라미터를 뽑아주고
		//DAO 쿼리문 호출
		
		GuestBookVO vo = new GuestBookVO();
		System.out.println(vo.toString());
		
		//-------------------------
		MultipartRequest mr = null;
		String path = request.getRealPath("/upload");
		System.out.println("사진 경로 path : " + path);
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
		
		/* MultipartRequest 주요메소드
		getParameter(문자열) : 파라미터값 추출
		getOriginalFileName(문자열) : 업로드시 사용한 원본파일명
		getFilesystemName(문자열) : 업로드시 저장된 파일명(실제 물리적으로)
		getContentType(문자열) : 업로드된 파일의 타입(형식)
		*/
		vo.setMemberId(mr.getParameter("memberId"));
		
		vo.setSubject(mr.getParameter("subject"));
		vo.setrContent(mr.getParameter("rContent"));
		vo.setPassword(mr.getParameter("password"));
		
		//File file = mr.getFile("upload");
		//vo.setUpload(mr.getParameter("file"));
		
		String regip = request.getRemoteAddr();
		
		String upload = mr.getOriginalFileName("upload");
		if("".equals(upload) || upload == null) {
			vo.setUpload("default.gif");
		}
		else {
			vo.setUpload( mr.getOriginalFileName("upload"));
		}
		System.out.println("업로드 파일 명 : " + vo.getUpload());
//		vo.setMemberId(request.getParameter("memberId"));
//		vo.setSubject(request.getParameter("subject"));
//		vo.setrContent(request.getParameter("rContent"));
//		vo.setUpload(request.getParameter("upload"));
//		vo.setPassword(request.getParameter("password"));
		
		
		//--------------------------
		System.out.println(vo);
		
		
		int result = ReqDAO.getReqInsert(vo);
		
		// id에 대한 사용자 정보를 꺼내서 세션스코프에 등록 (현재는 id, password만 가져옴)
		// 로그인에서 세션 구현 완료 되면 난 없애버리기 ~ 
		
//		HttpSession session = request.getSession();
//		MemberVO memberVo = TakDAO.logincheck(mr.getParameter("memberId"));
//		System.out.println("회원정보 : " + memberVo.toString());
//		session.setAttribute("user", memberVo);

		
		return "ReqListController";
		
	}


}

