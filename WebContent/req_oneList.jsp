<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.bc.mybatis.DBService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

<title>상세화면</title>
<link rel="stylesheet"href="${pageContext.request.contextPath}/css/req_oneList.css" />
</head>
<body>
<%@ include file="include/top.jsp" %>

<div id="container">
	<h2>방명록 : 상세화면</h2>
	<hr>
	<p><a href="ReqListController">[목록으로 이동]</a></p>
	
	<form method="post">
	<table>
		<tbody>
			<tr>
				<th>작성자</th>
				<td>${guestBookVO.getMemberId() } </td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${guestBookVO.getSubject() }</tr>
			<tr>
				<td colspan="2">${guestBookVO.getrContent() }</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="button" value="수 정"
						onclick="update_go(this.form)">
					<input type="button" value="삭 제"
						onclick="delete_go(this.form)">
				</td>
			</tr>
		</tfoot>
	</table>
	
	</form>	
</div>

<%@ include file="include/bottom.jsp" %>
</body>
</html>




