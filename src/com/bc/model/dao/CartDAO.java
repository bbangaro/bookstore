package com.bc.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.CartVO;
import com.bc.mybatis.DBService;

public class CartDAO {
	public static CartVO selectOne(CartVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		CartVO cvo = ss.selectOne("one", vo);
		ss.close();
		return cvo;
	}
	
	//cart에 추가
	public static int insertCart(Map<String, Object> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("addproduct", map);
		ss.close();
		return result;
	}
	
	//cart에 제품이 있는지 확인
	public static int findProduct(CartVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.selectOne("find", vo);
		ss.close();
		return result;
	}
	
	//cart의 제품 수량 업데이트
	public static int updateCount(Map<String, Object> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("updatecount", map);
		ss.close();
		return result;
	}
	
}
