package com.bc.model.dao;

import java.util.List;
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
	
	//카트에서 제품 삭제
	public static int deleteProduct(CartVO vo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("deleteproduct", vo);
		ss.close();
		return result;
	}
	
	//제품 수량 변경
	public static int setCount(Map<String, Object> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("setcount", map);
		ss.close();
		return result;
	}
	
	//아이디별 카트 조회
	public static List<CartVO> getCart(String id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<CartVO> list = ss.selectList("cart", id);
		ss.close();
		return list;
	}
}
