package com.bc.model.dao;


import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.MemberVO;
import com.bc.mybatis.DBService;

public class TakDAO {
	
	//회원가입
	public static int insetMember(MemberVO membervo) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		int i = ss.insert("memberinsert", membervo);
		return i;
	}
	
	//로그인
	public static MemberVO logincheck(String member_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		MemberVO membervo = ss.selectOne("logincheck", member_id);
		return membervo;
	}
	
	//회원가입 중복 체크
	public static int checking_id(String member_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int count = ss.selectOne("checking_id",member_id);
		System.out.println(count);
		return count;
	}
}
