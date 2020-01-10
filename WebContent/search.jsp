<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>북스토어</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="csstemplate/search.css">
  <style>
	  *{
	  		font-family: 'Jeju Gothic', sans-serif;
	  	}
	  	.nav-item .nav-link{
	  		color: rgba(0, 0, 0, .5);
	  	}
	  	.nav-item .nav-link:hover {
	  		color: rgba(0, 0, 0, .7);
	  	}
	  	a:hover {
	  		text-decoration:none;
	  	}
	  	
  </style>
</head>
<body>
	<div class="container">
		<div class="row mt-5">
			<div class="col-2"></div>
			<div class="col">
			<div class="container">
				<form action="SearchList" method="post">
					 <div class="form-group mb-4">
			            <input id="exampleFormControlInput1" type="text" placeholder="도서명, 출판사, 저자 검색" class="form-control form-control-underlined" name="search">
			         </div>
			    </form>
		    </div>
		    <div class="container mt-3">
		        <h2>종이책</h2>
		    <div class="row">
		    		<c:if test="${not empty list }">
		    			<c:forEach var="vo" items="${list }">
		    				<div class="col text-center">
		    					<a href="#">
			    					<img src="bookimg/${vo.bImage }"><br>
			    					<p class="mt-2" style='color:black;'>${vo.bName }</p>
			    					<small class="mt-0" style='color:gray;'>${vo.writerName }</small>
		    					</a>
		    				</div>
		    			</c:forEach>
		    		</c:if>
		    		<c:if test="${empty list }">
		    			<p>검색 결과가 없습니다</p>
		    		</c:if>
		    </div>
		    	<hr class="my-5">
		    <h2>e북</h2>
		    <div class="row">
		    	<div class="col text-center">
		    		검색 결과가 없습니다.
		    	</div>
		    </div>
		    	<hr class="my-5">
		    <h2>오디오북</h2>
		    <div class="row">
		    	<div class="col text-center">
		    		검색 결과가 없습니다.
		    	</div>
		    </div>
				<hr class="my-5">
		    </div>
			</div>
			<div class="col-2">
				<i class="material-icons text-left" style="font-size:30px;">search</i>
			</div>
		</div>
	</div>
	<%@include file="include/bottom.jsp" %>
</body>
</html>