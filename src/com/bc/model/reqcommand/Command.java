package com.bc.model.reqcommand;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
	//순수 자바 파일
public interface Command {
	//인터페이스 선언 해놓기
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

}
