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
	public static List<GuestBookVO> getCom(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("searchcom", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	public static List<GuestBookVO> getWri(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("searchwri", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	public static List<GuestBookVO> getBna(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("searchbna", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	public static List<GuestBookVO> geteList(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("searchelist", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	public static List<GuestBookVO> geteCom(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("searcheCom", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	public static List<GuestBookVO> geteWri(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("searcheWri", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	public static List<GuestBookVO> geteBna(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("searcheBna", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
	public static List<GuestBookVO> getoList(Map map) {
		SqlSession ss =  DBService.getFactory().openSession(true);
		List<GuestBookVO> list = ss.selectList("searcholist", map); //전달하는 파라미터가 없을 때는 이름만
		ss.close();
		return list;
	}
}
