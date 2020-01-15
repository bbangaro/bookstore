package com.bc.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.CartVO;
import com.bc.mybatis.DBService;

public class CartDAO {
	public static CartVO selectOne(CartVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		CartVO cvo = ss.selectOne("one", vo);
		ss.close();
		return cvo;
	}
}
