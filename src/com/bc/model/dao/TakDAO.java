package com.bc.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.BookVO;
import com.bc.model.vo.CommentVO;
import com.bc.model.vo.MemberVO;
import com.bc.model.vo.ReviewVO;
import com.bc.model.vo.starRatingVO;
import com.bc.mybatis.DBService;

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
		System.out.println(bCode);
		BookVO bookvo = ss.selectOne("detailPage", bCode);
		System.out.println(bookvo);
		return bookvo;
	}

	public static List<ReviewVO> detailPageReview(Map detailPageReview_) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<ReviewVO> reviewvo = ss.selectList("detailPageReview", detailPageReview_);
		System.out.println(reviewvo);
		return reviewvo;
	}

	public static int inersertReviewvo(ReviewVO reviewvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int i = ss.insert("insertReview", reviewvo);
		System.out.println(i);
		return i;
	}

	public static ReviewVO checkForm(String reviewNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ReviewVO reviewvo = ss.selectOne("checkForm", reviewNum);
		return reviewvo;
	}

	public static int updateReviewvo(ReviewVO reviewvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int i = ss.update("updateReview", reviewvo);
		System.out.println(i);
		return i;
	}

	public static int deleteReviewvo(String reviewNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int i = ss.delete("deleteReview", reviewNum);
		System.out.println(i);
		return i;
	}

	public static int detailPageReviewselect() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int i = ss.selectOne("detailPageReviewselect");
		return i;
	}

	public static List<starRatingVO> starRating(String bCode) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<starRatingVO> list = ss.selectList("starRating",bCode);
		return list;
	}

	public static int starInsert(starRatingVO starratinvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int  list = ss.insert("insertStarRting",starratinvo);
		return list;
	}


}