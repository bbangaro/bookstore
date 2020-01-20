package com.bc.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.BookVO;
import com.bc.model.vo.GuestBookVO;
import com.bc.mybatis.DBService;

public class NotDAO {
	
	
	public static List<GuestBookVO> getList(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("Nselectall", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	public static int getInsert(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		int result = ss.insert("Ninsert", map);
		ss.close();
		return result;
	}
	public static GuestBookVO getOne(int nNum) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		GuestBookVO vo = ss.selectOne("Nselectone",nNum);
		ss.close();
		return vo;
	}
	public static GuestBookVO getOnepr(int nNum) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		GuestBookVO vo = ss.selectOne("Nselectpr",nNum);
		ss.close();
		return vo;
	}
	public static GuestBookVO getOnene(int nNum) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		GuestBookVO vo = ss.selectOne("Nselectne",nNum);
		ss.close();
		return vo;
	}
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int totalCount = ss.selectOne("totalCount");
		ss.close();
		return totalCount;
	}
	public static List<BookVO> getBList(String lcode) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> list = ss.selectList("Nall", lcode);
		ss.close();
		return list;
	}	
	public static int getUpdate(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		int result = ss.update("Nupdate", map);
		ss.close();
		return result;
	}
	public static List<BookVO> get1list(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> list = ss.selectList("1list", map);
		ss.close();
		return list;
	}
	public static List<BookVO> get2list(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> list = ss.selectList("2list", map);
		ss.close();
		return list;
	}
	public static List<BookVO> get3list(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> list = ss.selectList("3list", map);
		ss.close();
		return list;
	}
	public static List<BookVO> get4list(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> list = ss.selectList("4list", map);
		ss.close();
		return list;
	}
	public static List<BookVO> get5list(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> list = ss.selectList("5list", map);
		ss.close();
		return list;
	}
	//책 더보기
	public static List<BookVO> getMlist1(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> mlist1 = ss.selectList("mlist1", map);
		ss.close();
		return mlist1;
	}
	public static List<BookVO> getMlist2(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> mlist1 = ss.selectList("mlist2", map);
		ss.close();
		return mlist1;
	}
	public static List<BookVO> getMlist3(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> mlist1 = ss.selectList("mlist3", map);
		ss.close();
		return mlist1;
	}
	public static List<BookVO> getMlist4(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> mlist1 = ss.selectList("mlist4", map);
		ss.close();
		return mlist1;
	}
	public static List<BookVO> getMlist5(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> mlist1 = ss.selectList("mlist5", map);
		ss.close();
		return mlist1;
	}
	public static List<BookVO> getAllbook(Map<String, String> map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<BookVO> list = ss.selectList("allList", map);
		ss.close();
		return list;
	}
	public static int getDelete(Map<String, Integer> map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		int result = ss.update("Ndelete",map);
		ss.close();
		return result;
	}
	
	
}
