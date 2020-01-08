<%@page import="java.util.List"%>
<%@page import="com.bc.model.vo.GuestBookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="csstemplate/bbs.css">
<style>
	*{
  		font-family: 'Jeju Gothic', sans-serif;
  	}
</style>

<title>공지사항</title>
</head>
<body>

		<%@ include file="include/top.jsp" %>
<br>
<div class="container bootstrap snippet">
	<h1 class="text-center">공지</h1>
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                                <tr>
                                <th><span>작성자</span></th>
                                <th><span>작성일</span></th>
                                <th><span>유형</span></th>
                                <th><span>제목</span></th>
                                <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    	<c:if test="${not empty list}">
										<c:forEach var="vo" items="${list}">								
										<tr>
											<td>${vo.nNum }</td>
		                                    <td>
		                                    	${vo.subject }
		                                    </td>
		                                    <td>${vo.content }</td>
		                                    <td>
		                                        ${vo.wDate }
		                                    </td>
		                      
	                               		</tr>
										
										</c:forEach>
										</c:if>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form action="Notice" method="post">
      <input type="submit" class="btn btn-light text-right" value="글 쓰기">
    </form>
</div>

<%@ include file="include/bottom.jsp" %>
</body>
</html>