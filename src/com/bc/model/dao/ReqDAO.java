package com.bc.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.jsp.PageContext;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.GuestBookVO;
import com.bc.model.vo.QnAVO;
import com.bc.mybatis.DBService;

public class ReqDAO {
	
	public static List<GuestBookVO> getReqList(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("reqall", map);
		ss.close();
		return list;
	}
	
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("reqtotal");
		ss.close();
		return result;
	}
	//----------------------------------------------------------
	
	//방명록 전체 목록 조회
	public static List<GuestBookVO> getList() {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("reqall"); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		System.out.println(list.toString());
		return list;
	}
		
	//방명록 하나 조회
	public static GuestBookVO getOneList(int requestNum) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		GuestBookVO vo = ss.selectOne("reqone", requestNum); //전달하는 파라미터가 없을 때는 이름만
		//  쿼리문 소환 ( mapper아이디, 파라미터 값)
		System.out.println(vo.toString());
		ss.close();
		return vo;
		}
	
	//방명록 쓰기
	public static int getReqInsert(GuestBookVO vo) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		int result = ss.insert("reqInsertGuest", vo);
		ss.close();
		return result;
	}
	
	//방명록 (UpdateOKCommand 에서 뽑은 파라미터 값 vo에 저장했으니까..)
	public static int getReqUpdate(GuestBookVO vo) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		
		int result = ss.update("reqUpdate", vo);
		ss.close();
		return result;
	}
	
	public static int getReqDelete(int requestNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("reqDelete", requestNum);
		ss.close();
		
		return result;
	}
	
}
