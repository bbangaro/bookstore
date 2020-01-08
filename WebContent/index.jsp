<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  	.nav-item .active{
		background: #f7ff00;  /* fallback for old browsers */
		background: -webkit-linear-gradient(to right, #db36a4, #f7ff00);  /* Chrome 10-25, Safari 5.1-6 */
		background: linear-gradient(to right, #db36a4, #f7ff00); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
		
  	}
  	.nav-item .active:hover {
  		color:white;
  	}
  	.bg-light {
  		background-color:rgba(255, 255, 255, 0.5) !important;
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
			      <div class="jumbotron"><h1>이달의 베스트셀러</h1></div>
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
		  <ul class="nav nav-pills">
			  <li class="nav-item mr-3">
			    <a class="nav-link active" href="#">인문</a>
			  </li>
			  <li class="nav-item mr-3">
			    <a class="nav-link" href="#">소설</a>
			  </li>
			  <li class="nav-item mr-3">
			    <a class="nav-link" href="#">경제</a>
			  </li>
			  <li class="nav-item mr-3">
			    <a class="nav-link" href="#">에세이</a>
			  </li>
			  <li class="nav-item mr-3">
			    <a class="nav-link" href="#">과학</a>
			  </li>
		  </ul>
		  <div class="jumbotron"></div>
		  <hr>
		  <h2>오늘의 리딩북</h2>
		  <div id="reding" class="carousel slide" data-ride="carousel">
			  <ul class="carousel-indicators">
			    <li data-target="#reding" data-slide-to="0" class="active"></li>
			    <li data-target="#reding" data-slide-to="1"></li>
			    <li data-target="#reding" data-slide-to="2"></li>
			  </ul>
			  
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <div class="jumbotron"><h1>e북</h1></div>
			    </div>
			    <div class="carousel-item">
			      <div class="jumbotron"><h1>오디오북</h1></div>
			    </div>
			    <div class="carousel-item">
			      <div class="jumbotron"><h1>남는곳</h1></div>
			    </div>
			  </div>
			  
			  <a class="carousel-control-prev" href="#reding" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#reding" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
		  </div>
		  <h2>최신 신작 업데이트</h2>
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
		  
		  <div class="jumbotron">
			<p><i class="fas fa-bars"></i>1월 신작</p><br><hr>
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

</body>
</html>