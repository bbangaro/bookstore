<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
  <style>
  	*{
  		font-family: 'Jeju Gothic', sans-serif;
  	}
  </style>
</head>
<body>
	<%@ include file="include/top.jsp" %>
	<div class="container">
		<c:if test="${not empty vo}">
			<h2 class="mt-2">&nbsp;&nbsp;공지</h2>
		<div class="card">
		  <div class="card-header">${vo.subject }</div>
		  <div class="card-body">${vo.content }</div>
		  <div class="card-footer" style="background-color: white;"><small>${vo.wDate }</small></div>
		</div>		
		</c:if>
	</div>
	<div class="container"></div>
	<%@ include file="include/bottom.jsp" %>
</body>
</html>