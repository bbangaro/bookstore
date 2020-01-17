<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
  	.bg-light {
  		background-color:rgba(255, 255, 255, 0.5) !important;
	}
	a:hover{
		text-decoration: none;
	}
	 .navbar-light .navbar-nav .nav-link:hover {
	 	color: rgba(0, 0, 0, .7);
	 }
	.navbar-light .navbar-nav .nav-link:focus {
		color: #8B008B;
		border-bottom: 2px solid #8B008B;
	 }
	 .btn-light.focus, .btn-light:focus {
	  color: white;
	  background: #f7ff00;  /* fallback for old browsers */
	  background: -webkit-linear-gradient(to right, #db36a4, #f7ff00);  /* Chrome 10-25, Safari 5.1-6 */
	  background: linear-gradient(to right, #db36a4, #f7ff00); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	  border-color: white;
	  box-shadow: none;
	}
  </style>
<title>북스토어</title>
</head>
<body>

	<%@ include file="include/top.jsp" %>
	<div class="container" >
	  <div id="books" class="carousel slide" data-ride="carousel">
			  <ul class="carousel-indicators">
			    <li data-target="#books" data-slide-to="0" class="active"></li>
			    <li data-target="#books" data-slide-to="1"></li>
			    <li data-target="#books" data-slide-to="2"></li>
			  </ul>
			  
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="images/00.jpg" width="1100px" height="300px">
			    </div>
			    <div class="carousel-item">
			      <div class="jumbotron"><h1>이달의 베스트셀러2</h1></div>
			    </div>
			    <div class="carousel-item">
			      <div class="jumbotron"><h1>이달의 베스트셀러3</h1></div>
			    </div>
			  </div>
			  
			  <a class="carousel-control-prev" href="#books" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#books" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
		  </div>
		  <h2>장르별 베스트 셀러</h2>
		  <div class="container">
			<button id="getGo" type="button" class="btn btn-light" name="lcode" value="K1">소설</button>
		  	<button id="getGo2" type="button" class="btn btn-light" name="lcode2" value="K2">시/에세이</button>
		  	<button id="getGo3" type="button" class="btn btn-light" name="lcode3" value="K3">경제/경영</button>
		  	<button id="getGo4" type="button" class="btn btn-light" name="lcode4" value="K4">자기계발</button>
		  	<button id="getGo5" type="button" class="btn btn-light" name="lcode5" value="K5">인문</button>
		  </div>
		  <div class="container text-center my-2">
		  	<div class="row" id="con">
		  	</div>
		  </div>
		  <hr>
	
	<!-- 	  
		  <h2>오늘의 리딩북</h2>
		  <div id="reding" class="carousel slide" data-ride="carousel">
			  <ul class="carousel-indicators">
			    <li data-target="#reding" data-slide-to="0" class="active"></li>
			    <li data-target="#reding" data-slide-to="1"></li>
			    <li data-target="#reding" data-slide-to="2"></li>
			  </ul>
			  
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <div class="jumbotron"><a href="#"><img src="images/63.jpg" width="400px" height="300px"></a></div>
			    </div>
			    <div class="carousel-item">
			      <div class="jumbotron"><a href="#"><img src="images/64.jpg" width="400px" height="300px"></a></div>
			    </div>
			    <div class="carousel-item">
			      <div class="jumbotron"><a href="#"><img src="images/65.jpg" width="400px" height="300px"></a></div>
			    </div>
			  </div>
			  
			  <a class="carousel-control-prev" href="#reding" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#reding" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
		  </div>
	 -->
		  <h2>최신 신작 업데이트</h2>
		  <div class="container">
			<button id="getNo" type="button" class="btn btn-light" name="lcode" value="N1">소설</button>
		  	<button id="getNo2" type="button" class="btn btn-light" name="lcode2" value="N2">시/에세이</button>
		  	<button id="getNo3" type="button" class="btn btn-light" name="lcode3" value="N3">경제/경영</button>
		  	<button id="getNo4" type="button" class="btn btn-light" name="lcode4" value="N4">자기계발</button>
		  	<button id="getNo5" type="button" class="btn btn-light" name="lcode5" value="N5">인문</button>
		  </div>
		  
		  <div class="container text-center my-2">
		  	<div class="row" id="con1">
		  		
		  	</div>
		  </div>
		  
		  <h2>종합베스트</h2>
		  <ul class="nav nav-pills">
			  <li class="nav-item">
			    <a class="nav-link active" href="#">인문</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">소설</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">경제</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">에세이</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">과학</a>
			  </li>
		  </ul>
		  <div class="jumbotron"></div>
		<%@ include file="include/bottom.jsp" %>
	</div>
<script>
	$(document).ready(function(){
		<%@ include file="include/ajax.jsp"%>
		$("#getGo").trigger("click");
		<%@ include file="include/ajax1.jsp" %>
		$("#getNo").trigger("click");
	});
	

</script>
</body>
</html>