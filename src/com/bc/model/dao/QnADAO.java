package com.bc.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.BookVO;
import com.bc.model.vo.CommentVO;
import com.bc.model.vo.QnAVO;
import com.bc.mybatis.DBService;

public class QnADAO {
	
	public static List<QnAVO> getList(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<QnAVO> list = ss.selectList("selectall", map);
		ss.close();
		return list;
	}
	
	public static int insertQnA(Map<String, String> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("insert", map);
		ss.close();
		return result;
	}

	public static QnAVO getOne(int qNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		QnAVO vo = ss.selectOne("selectone", qNum);
		ss.close();
		return vo;
	}
	
	public static int deleteQnA(int qNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("delete", qNum);
		ss.close();
		return result;
	}
	
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("total");
		ss.close();
		return result;
	}

	public static int updateQnA(QnAVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("update", vo);
		ss.close();
		return result;
	}
	
	//댓글 DAO
	public static List<CommentVO> getComment(int qNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<CommentVO> list = ss.selectList("selectC", qNum);
		ss.close();
		return list;
	}

	public static int insertComment(CommentVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("insertC", vo);
		ss.close();
		return result;
	}
	
	public static int countComment(int qNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("countC", qNum);
		ss.close();
		return result;
	}

	public static int deleteComment(int cIdx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("deleteC", cIdx);
		ss.close();
		return result;
	}

	public static int updateComment(CommentVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("updateC", vo);
		ss.close();
		return result;
	}
	
	
}
