package com.bc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.BookVO;
import com.bc.mybatis.DBService;

public class eBookDAO {
	
	
	public static BookVO getOneImg(String bCode) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		BookVO vo = ss.selectOne("eBookImg", bCode); //전달하는 파라미터가 없을 때는 이름만
		//  쿼리문 소환 ( mapper아이디, 파라미터 값)
		ss.close();
		return vo;
	}
	
	public static List<BookVO> getImgs(String bCode) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> list = ss.selectList("eBookImgs", bCode); //전달하는 파라미터가 없을 때는 이름만
		System.out.println("dao에서 테스트 중"+bCode);
		System.out.println("dao에서 테스트 중"+list);
		ss.close();
		return list;
	}
	
	public static int getEbookCnt(String bCode) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("eBookCnt", bCode);
		ss.close();
		return result;
	}
	
	
	/*
	public static List<CommentVO> getReqCommentList(int requestNum) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<CommentVO> list = ss.selectList("reqCommentAll", requestNum); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	
		
	//방명록 쓰기
	public static int getReqCommentInsert(CommentVO vo) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		int result = ss.insert("reqCommentInsert", vo);
		ss.close();
		return result;
	}
	
	//방명록 (UpdateOKCommand 에서 뽑은 파라미터 값 vo에 저장했으니까..)
	public static int getreqCommentUpdate(CommentVO vo) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		
		int result = ss.update("reqCommentUpdate", vo);
		ss.close();
		return result;
	}
	
	public static int getreqCommentDelete(int cIdx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("reqCommentDelete", cIdx);
		ss.close();
		
		return result;
	}
	*/
}
