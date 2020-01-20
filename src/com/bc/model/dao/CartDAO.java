package com.bc.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.CartVO;
import com.bc.model.vo.MemberVO;
import com.bc.model.vo.OrdersVO;
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
	
	//아이디로 배송정보 조회
	public static MemberVO getInfo(String id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		MemberVO vo = ss.selectOne("memberinfo", id);
		ss.close();
		return vo;
	}
	
	//order테이블에 데이터 입력
	public static int insertOrder(Map<String, Object> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("order", map);
		ss.close();
		return result;
	}
	
	//아이디로 order정보 조회
	public static OrdersVO selectOrder(String id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		OrdersVO ovo = ss.selectOne("oselect", id);
		ss.close();
		return ovo;
	}

	public static int updateState(int oNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("oupdate", oNum);
		ss.close();
		return result;
	}

	public static int updateCancel(int oNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("cupdate", oNum);
		ss.close();
		return result;
	}
	
	//바로결제 제품 카트에 추가
	public static int insertDirectPay(Map<String, Object> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("paydirect", map);
		ss.close();
		return result;
	}

	public static List<CartVO> getDirectCart(String id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<CartVO> list = ss.selectList("directcart", id);
		ss.close();
		return list;
	}

	
}
