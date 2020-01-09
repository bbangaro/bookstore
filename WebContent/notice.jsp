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
                                <th><span>작성번호</span></th>
                                <th><span>유형</span></th>
                                <th><span>제목</span></th>
                                <th><span>날짜</span></th>
                                <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                             <c:if test="${not empty list}">
										<c:forEach var="vo" items="${list}">								
										<tr>
											<td>${vo.nNum }</td>
		                                    <td>
		                                    </td>
		                                    <td><a href="Nview?nNum=${vo.nNum }">${vo.subject }</a></td>
		                                    <td>
		                                        ${vo.wDate }
		                                    </td>
		                      
	                               		</tr>
										
										</c:forEach>
										</c:if>
										<c:if test="${empty list }">
											<td colspan="5">데이터가 없습니다t^^t</td>
										</c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center">
	    <ul class="pagination">
		    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item active"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item"><a class="page-link" href="#">Next</a></li>
	    </ul>
    </div>
    <div class="text-right">
	    <form action="Notice" method="post">
	      <input type="submit" class="btn btn-light text-right" value="글 쓰기">
	    </form>
    </div>
</div>
<%@ include file="include/bottom.jsp" %>
</body>
</html>