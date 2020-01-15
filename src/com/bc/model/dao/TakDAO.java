package com.bc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.BookVO;
import com.bc.model.vo.MemberVO;
import com.bc.model.vo.ReviewVO;
import com.bc.mybatis.DBService;
import com.sun.net.httpserver.Authenticator.Result;

public class TakDAO {

	public static int insetMember(MemberVO membervo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int i = ss.insert("memberinsert", membervo);
		return i;
	}

	public static MemberVO logincheck(String memberId) {
		SqlSession ss = DBService.getFactory().openSession(true);
		MemberVO membervo = ss.selectOne("logincheck", memberId);
		return membervo;
	}

	public static int checking_id(String memberId) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int count = ss.selectOne("checking_id", memberId);
		System.out.println(count);
		return count;
	}

	public static BookVO detailPage(String bCode) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BookVO bookvo = ss.selectOne("detailPage", bCode);
		System.out.println(bookvo);
		return bookvo;
	}

	public static List<ReviewVO> detailPageReview(String bCode) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<ReviewVO> reviewvo = ss.selectList("detailPageReview", bCode);
		System.out.println(reviewvo);
		return reviewvo;
	}

	public static int inersertReviewvo(ReviewVO reviewvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int i = ss.insert("insertReview", reviewvo);
		System.out.println(i);
		return i;
	}

}
