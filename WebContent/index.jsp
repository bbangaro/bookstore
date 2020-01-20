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
	<div class="container mb-3">
	  <div id="books" class="carousel slide" data-ride="carousel">
			  
			  <div class="carousel-inner">
			    <div class="carousel-item active text-center">
			      <img src="images/bnD_01.jpg">
			    </div>
			    <div class="carousel-item text-center">
			      <img src="images/bnE_05.jpg">
			    </div>
			    <div class="carousel-item text-center">
			      <img src="images/bnF_01.jpg">
			    </div>
			  </div>
			  
			  <a class="carousel-control-prev" href="#books" data-slide="prev">
			    <span class="carousel-control-prev-icon"></span>
			  </a>
			  <a class="carousel-control-next" href="#books" data-slide="next">
			    <span class="carousel-control-next-icon"></span>
			  </a>
		  </div>
		  <h2 class="mt-3">장르별 베스트 셀러</h2>
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
		  <hr>
		  <h2>종합베스트</h2>
		  <div class="container">
			<button id="getBo" type="button" class="btn btn-light" name="lcode" value="B1">소설</button>
		  	<button id="getBo2" type="button" class="btn btn-light" name="lcode2" value="B2">시/에세이</button>
		  	<button id="getBo3" type="button" class="btn btn-light" name="lcode3" value="B3">경제/경영</button>
		  	<button id="getBo4" type="button" class="btn btn-light" name="lcode4" value="B4">자기계발</button>
		  	<button id="getBo5" type="button" class="btn btn-light" name="lcode5" value="B5">인문</button>
		  </div>
		  <div class="container text-center my-2">
		  	<div class="row" id="con2">
		  		
		  	</div>
		  </div>
		  
		  
		  
		<%@ include file="include/bottom.jsp" %>
	</div>
	<div class="container-fluid" style="background-color: rgb(240, 240, 240);">
	<div class="container">
		<div class="row">
			<div class="col">
			</div>
			<div class="col-2 text-center text-muted" style="border-right: 1px solid lightgrey">이용약관</div>
			<div class="col-2 text-center text-muted" style="border-right: 1px solid lightgrey">개인정보 처리 방침</div>
			<div class="col-2 text-center text-muted" style="border-right: 1px solid lightgrey">고객센터</div>
			<div class="col-2 text-center text-muted">2019 &copy; Copyright</div>
			<div class="col ">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col">
			</div>
			<div class="col-2 text-center text-lightgrey" >
				<p class="blockquote-footer">본 약관은 한국어를 정본으로 합니다. 본 약관 또는 네이버 서비스와 관련된 여러분과 네이버와의 관계에는 대한민국의 법령이 적용됩니다. 그리고 본 약관 또는 네이버 서비스와 관련하여 여러분과 네이버 사이에 분쟁이 발생할 경우, 그 분쟁의 처리는 대한민국 '민사소송법'에서 정한 절차를 따릅니다.</p>
			</div>
			<div class="col-2 text-center" >
				<p class="blockquote-footer">개인정보보호법 등 국내의 개인정보 보호 법령을 철저히 준수합니다. 또한 OECD의 개인정보 보호 가이드라인 등 국제 기준을 준수하여 서비스를 제공합니다.</p>
			</div>
			<div class="col-2 text-center" >
				<p class="blockquote-footer">평일 10:00 ~ 18:00 | 점심시간 13:00 ~ 14:00
					<br>※ 빠른 상담을 위해서 문의 전에 필명을 확인해주세요.
					<br>('내 서재' 또는 '관리' 메뉴에서 확인)
				</p>
			</div>
			<div class="col-2 text-center">
				<p class="blockquote-footer">1조(BookStore)</p>
			</div>
			<div class="col ">
			</div>
		</div>
	</div>
	</div>
		<br><br><br><br><br><br>
		  
		  
	
	
	
	
	
	
	
<script>
	$(document).ready(function(){
		<%@ include file="include/ajax.jsp"%>
		$("#getGo").trigger("click");
		<%@ include file="include/ajax1.jsp" %>
		$("#getNo").trigger("click");
		<%@ include file="include/ajax2.jsp" %>
		$("#getBo").trigger("click");
	});
	

</script>
</body>
</html>