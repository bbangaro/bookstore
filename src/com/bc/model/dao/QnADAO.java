package com.bc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.QnAVO;
import com.bc.mybatis.DBService;

public class QnADAO {
	
	public static List<QnAVO> getList() {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<QnAVO> list = ss.selectList("selectall");
		ss.close();
		return list;
	}
	
	public static int insertQnA(int qNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("insert", qNum);
		ss.close();
		return result;
	}

	public static QnAVO getOne(int qNum) {
		SqlSession ss = DBService.getFactory().openSession(true);
		QnAVO vo = ss.selectOne("selectone", qNum);
		ss.close();
		return vo;
	}
}
