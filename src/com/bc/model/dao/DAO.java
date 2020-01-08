package com.bc.model.dao;

import org.apache.ibatis.session.SqlSession;


import com.bc.model.vo.MemberVO;
import com.bc.mybatis.DBService;

public class DAO {
		
	//동적검색
	public static void insetMember(MemberVO membervo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int count = ss.insert("memberinsert", membervo);
		System.out.println(count);
		ss.close();
		
	}
}




















