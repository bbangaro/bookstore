package com.bc.model.dao;


import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.MemberVO;
import com.bc.mybatis.DBService;

public class TakDAO {
	
	public static int insetMember(MemberVO membervo) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		int i = ss.insert("memberinsert", membervo);
		return i;
	}
	
	
}
