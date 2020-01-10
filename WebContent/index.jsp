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
  	/*
    .active{
		background: #f7ff00;  /* fallback for old browsers */
		background: -webkit-linear-gradient(to right, #db36a4, #f7ff00);  /* Chrome 10-25, Safari 5.1-6 */
		background: linear-gradient(to right, #db36a4, #f7ff00); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  	}
  	*/
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
		  <div class="container">
		  <form>
		  	<button id="getGo" type="button" class="btn btn-dark" onclick="frm_go(this.form)">인문</button>
		  </form>
		  	<button type="button" class="btn btn-dark" id="getDataBtn">역사</button>
		  	<button type="button" class="btn btn-dark">소설</button>
		  	<button type="button" class="btn btn-dark">기타</button>
		  	<button type="button" class="btn btn-dark">등등</button>
		  	<button type="button" class="btn btn-dark">Light</button>
		  </div>
		  <div class="container" id="con"></div>
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
<script>
$(function(){
	$("#getGo").click(function(){
		$.ajax("getBook", {
			type : "get",
			dataType : "json",
			success : function(data){
				
				var tbody = "";
				//데이터를 HTML 태그에 삽입
				var alist = data.list;//JSON 객체의 속성명("list")의 값 추출
				//                배열의 인덱스값, 현재 처리하는 객체 데이터
				$.each(alist, function(index, member){
					//this 객체 : 배열에 저장된 객체 중 지금 처리되는 객체
					//자바스크립트 객체 속성 사용방식 2가지
					//1. 객체.속성명
					//2. 객체["속성명"]
					tbody += "<tr>";
					tbody += "<td>" + this.name + "</td>";
					tbody += "<td>" + this.image + "</td>";
					tbody += "</tr>";
				});
				
				$("#con").html(tbody);
				
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	});
});

</script>
</body>
</html>