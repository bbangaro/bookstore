package com.bc.model.dao;

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
	public static int insertCart(CartVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("addproduct", vo);
		ss.close();
		return result;
	}
	
	//cart에 제품이 있는지 확인
	public CartVO findProduct(CartVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		CartVO cvo = ss.selectOne("one", vo);
		ss.close();
		return cvo;
	}
	
}
