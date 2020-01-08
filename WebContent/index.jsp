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

<title>북스토어</title>
</head>
<body>
<<<<<<< HEAD
	<div id="start">움직여라</div>

=======
	<%@ include file="include/top.jsp" %>
>>>>>>> 531dc4c9f8d6a32095a6d33d1fa8500051ec9168
	
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
<<<<<<< HEAD

=======
>>>>>>> 531dc4c9f8d6a32095a6d33d1fa8500051ec9168

	
</body>
</html>