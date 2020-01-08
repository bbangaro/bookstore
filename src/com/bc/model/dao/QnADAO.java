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
	
	
}
