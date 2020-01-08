package com.bc.model.dao;

import org.apache.ibatis.session.SqlSession;


import com.bc.model.vo.MemberVO;
import com.bc.mybatis.suna.DBService;

public class DAO {
		
	//동적검색
	public static void insetMember(MemberVO membervo) {
		System.out.println("1");
		SqlSession ss = DBService.getFactory().openSession(true);
		System.out.println("2");
		int count = ss.insert("memberinsert", membervo);
		System.out.println("3");
		System.out.println(count);
		ss.close();
		
	}
}




















