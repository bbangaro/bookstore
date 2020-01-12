package com.bc.model.reqcommand;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.mybatis.GuestbookVO;


public class ReqUpdateOKCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//pwd를 비교하기 위한 파라미터 값 뽑아내기
		//게시글을 끌고오기 위한 idx 파라미터 값 뽑아내기
		String pwd = request.getParameter("pwd");
		int idx = Integer.parseInt(request.getParameter("idx"));

		//수정할  때 게시글 내용을 그대로 가져오기 위해서 idx로 상세정보 화면 가져오기
		Map<String, Object> map = new HashMap<>();
		GuestbookVO vo = DAO.getOneList(idx);
		
		//집어 넣기 위한 조건문
		if (!pwd.equals(vo.getPwd())) {
			System.out.println("비밀번호 다름");
			
			return "UpdateController?idx=" + idx ;
			
		} else {
			//값을 받아서 update문 실행하기 위해서 상세정보 화면에서 사용중인 파라미터 값 뽑아서 vo타입에 집어넣기
			vo.setName(request.getParameter("name"));
			vo.setSubject(request.getParameter("subject"));
			vo.setEmail(request.getParameter("email"));
			vo.setPwd(request.getParameter("pwd"));
			vo.setContent(request.getParameter("content"));
			
			map.put("idx", idx);
			map.put("vo", vo);
			
			int result = DAO.getUpdate(map);
		}
		
		System.out.println(vo.toString());
		
		//int result = DAO.getInsert(vo);
		
		return "ListController";
		
	}

}
