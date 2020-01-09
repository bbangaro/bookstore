package com.bc.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.jsp.PageContext;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.GuestBookVO;
import com.bc.mybatis.DBService;

public class NotDAO {
	
	
	public static List<GuestBookVO> getList(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("Nselectall", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	public static int getInsert(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		int result = ss.insert("Ninsert", map);
		ss.close();
		return result;
	}
	public static GuestBookVO getOne(int nNum) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		GuestBookVO vo = ss.selectOne("Nselectone",nNum);
		ss.close();
		return vo;
	}
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int totalCount = ss.selectOne("totalCount");
		ss.close();
		return totalCount;
	}
		
	
	
}
