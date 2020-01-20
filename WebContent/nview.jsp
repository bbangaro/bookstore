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
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
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
		  <div class="card-body">
		  	<c:if test="${not empty vo.upload }">
		  		<div class="container text-center">
		  		<c:if test="${not empty up }">
		  		<c:forEach var="vo" items="${up }">
		  			<img src="bookimg/${vo }">
		  	 	</c:forEach>
		  		</c:if>
		  		</div>
		  	</c:if>
		  	${vo.content }
		  </div>
		  <div class="card-footer" style="background-color: white;"><small>${vo.wDate }</small></div>
		  <c:if test="${not empty vo1 }">
		  	<div class="card-footer" style="background-color: white;"><small>다음 글 : <a href="Nview?nNum=${vo1.nNum }" style="color:black;">${vo1.subject }</a></small></div>
		  </c:if>
		  <c:if test="${not empty vo2 }">
		  	<div class="card-footer" style="background-color: white;"><small>이전 글 : <a href="Nview?nNum=${vo2.nNum }" style="color:black;">${vo2.subject }</a></small></div>
		  </c:if>
		</div>		
		</c:if>
	</div>
	<c:if test="${id eq 'admin' }">
	<div class="container text-center mt-3">
	<a href="NoticeUpdate?nNum=${vo.nNum }&subject=${vo.subject }&content=${vo.content}">
		<button type="button" class="btn btn-light">수정</button>
	</a>
	<a href="NoticeDelete?nNum=${vo.nNum }">
		<button type="button" class="btn btn-light">삭제</button>
	</a>
	</div>
	</c:if>
	<%@ include file="include/bottom.jsp" %>
	
	
</body>
</html>