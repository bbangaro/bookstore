package com.bc.model.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.BookVO;
import com.bc.model.vo.MemberVO;
import com.bc.model.vo.ReviewVO;
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
	//책 상세페이지 조회 
		public static BookVO detailPage(String book_code) {
			SqlSession ss = DBService.getFactory().openSession(true);
			BookVO bookvo = ss.selectOne("detailPage",book_code);
			System.out.println(bookvo);
			return bookvo;
		}
	//해당 책 리뷰 조회 
		public static List<ReviewVO> detailPageReview(String b_code) {
			SqlSession ss = DBService.getFactory().openSession(true);
			List<ReviewVO> reviewvo = ss.selectList("detailPageReview",b_code);
			System.out.println(reviewvo);
			return reviewvo;
		}
		
}
