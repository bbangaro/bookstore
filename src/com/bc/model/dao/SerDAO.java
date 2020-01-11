package com.bc.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.GuestBookVO;
import com.bc.mybatis.DBService;

public class SerDAO {
	public static List<GuestBookVO> getList(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("searchList", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
}
