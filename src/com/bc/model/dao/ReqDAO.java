package com.bc.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.jsp.PageContext;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.GuestBookVO;
import com.bc.mybatis.suna.DBService;

public class ReqDAO {
	
	//방명록 전체 목록 조회
	public static List<GuestBookVO> getList() {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("all"); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	
	//방명록 하나 조회
	public static GuestBookVO getOneList(int idx) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		GuestBookVO vo = ss.selectOne("one", idx); //전달하는 파라미터가 없을 때는 이름만
						//  쿼리문 소환 ( mapper아이디, 파라미터 값)
		ss.close();
		return vo;
	}
		
	
	
}
