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
	
	
	public static List<GuestBookVO> getList() {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("Nselectall"); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	
	
		
	
	
}
