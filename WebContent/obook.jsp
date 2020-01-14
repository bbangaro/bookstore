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
	.fadeonload {
   	 opacity:0;
	}
	
	.navbar-light .navbar-nav .active>.nav-link{
		color: #8B008B;
		border-bottom: 2px solid #8B008B;
	 }
  </style>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="include/top.jsp" %>
	
	<div class="container text-center">
		<div class="fadeonload">
			<img src="bookimg/0.jpg">
		</div>
		<div class="card mt-3">
		    <div class="card-header text-left">외국 도서</div>
			    <div class="card-body">
			    	<div class="row">
			    		<div class="col text-left">
			    			<h3>소설</h3>
			    		</div>
			    		<div class="col text-right">
			    			<a href="Allbook?hCode=${hCode }&lCode=${hCode }1"><button type="button" class="btn">>> 소설 전체 보기</button></a>
			    		</div>
			    	</div>
				    <div class="row text-center">
				    	<c:if test="${not empty list1 }">
				    	<c:forEach var="vo" items="${list1 }">
				    	<div class="col-3">
				    		<img src="bookimg/${vo.bImage }" class="img-thumbnail" width="150">
				    			<p class="p-0 mb-0">${vo.bName }</p>
				    		<small>${vo.writerName }</small>
				    	</div>
					    </c:forEach>	
					    </c:if>
				    </div>
				    <hr>
			    	<div class="row">
			    		<div class="col text-left">
			    			<h3>시/에세이</h3>
			    		</div>
			    		<div class="col text-right">
			    			<a href="Allbook?hCode=${hCode }&lCode=${hCode }2"><button type="button" class="btn">>> 시/에세이 전체 보기</button></a>
			    		</div>
			    	</div>
				    <div class="row">
				    	<c:if test="${not empty list2 }">
				    	<c:forEach var="vo" items="${list2 }">
				    	<div class="col-3">
				    		<img src="bookimg/${vo.bImage }" class="img-thumbnail" width="150">
				    			<p class="p-0 mb-0">${vo.bName }</p>
				    		<small>${vo.writerName }</small>
				    	</div>
					    </c:forEach>	
					    </c:if>
				    </div>
				    <hr>
			    	<div class="row">
			    		<div class="col text-left">
			    			<h3>경제/경영</h3>
			    		</div>
			    		<div class="col text-right">
			    			<a href="Allbook?hCode=${hCode }&lCode=${hCode }3"><button type="button" class="btn">>> 경제/경영 전체 보기</button></a>
			    		</div>
			    	</div>
				    <div class="row">
				    <c:if test="${not empty list3 }">
				    	<c:forEach var="vo" items="${list3 }">
				    	<div class="col-3">
				    		<img src="bookimg/${vo.bImage }" class="img-thumbnail" width="150">
				    			<p class="p-0 mb-0">${vo.bName }</p>
				    		<small>${vo.writerName }</small>
				    	</div>
					    </c:forEach>	
					    </c:if>
				    </div>
				    <hr>
			    	<div class="row">
			    		<div class="col text-left">
			    			<h3>자기계발</h3>
			    		</div>
			    		<div class="col text-right">
			    			<a href="Allbook?hCode=${hCode }&lCode=${hCode }4"><button type="button" class="btn">>> 자기계발 전체 보기</button></a>
			    		</div>
			    	</div>
				    <div class="row">
				    	<c:if test="${not empty list4 }">
				    	<c:forEach var="vo" items="${list4 }">
				    	<div class="col-3">
				    		<img src="bookimg/${vo.bImage }" class="img-thumbnail" width="150">
				    			<p class="p-0 mb-0">${vo.bName }</p>
				    		<small>${vo.writerName }</small>
				    	</div>
					    </c:forEach>	
					    </c:if>
				    </div>
				    <hr>
			    	<div class="row">
			    		<div class="col text-left">
			    			<h3>인문</h3>
			    		</div>
			    		<div class="col text-right">
			    			<a href="Allbook?hCode=${hCode }&lCode=${hCode }5"><button type="button" class="btn">>> 인문 전체 보기</button></a>
			    		</div>
			    	</div>
				    <div class="row">
				    	<c:if test="${not empty list5 }">
				    	<c:forEach var="vo" items="${list5 }">
				    	<div class="col-3">
				    		<img src="bookimg/${vo.bImage }" class="img-thumbnail" width="150">
				    			<p class="p-0 mb-0">${vo.bName }</p>
				    		<small>${vo.writerName }</small>
				    	</div>
					    </c:forEach>	
					    </c:if>
				    </div>		
				    
				    <div id="head"></div>
						<div id="mcon" class="row">
						</div>
					<div id="head2"></div>			
						<div id="mcon2" class="row">
						</div>
					<div id="head3"></div>
						<div id="mcon3" class="row">
						</div>
					<div id="head4"></div>	
						<div id="mcon4" class="row">
						</div>
					<div id="head5"></div>	
						<div id="mcon5" class="row">
						</div>
				</div> 
		    <div class="card-footer"><button id="More" type="button" class="btn">더보기</button></div>
		</div>
	</div>
	
	
	
	
	
	
	<%@ include file="include/bottom.jsp" %>
	
	<script>
	$(document).ready(function() {
	    $('.fadeonload').each( function(i){
	        $(this).animate({'opacity':'1','margin-left':'0px'},1000);
	    });
	    $('.fadeonload1').each( function(i){
	        $(this).animate({'opacity':'1','margin-left':'0px'},1025);
	    }); 
	    $('.fadeonload2').each( function(i){
	        $(this).animate({'opacity':'1','margin-left':'0px'},1025);
	    }); 
	});
	
	$("#More").click(function(){
		$.ajax("morebook?hCode=K", {
			type : "get",
			dataType : "json",
			success : function(data){
				
				var number = 0;
				var tbody = "";
				var head = "";
				//데이터를 HTML 태그에 삽입
				var alist = data.list;//JSON 객체의 속성명("list")의 값 추출
				//                배열의 인덱스값, 현재 처리하는 객체 데이터
				$.each(alist, function(index, member){
					//this 객체 : 배열에 저장된 객체 중 지금 처리되는 객체
					//자바스크립트 객체 속성 사용방식 2가지
					//1. 객체.속성명
					//2. 객체["속성명"]
					if(number == 0){
						head += "<hr>";
						head += "<div class='row'>";
						head += "<div class='col text-left'>";
						head += "<h3>"+this.lname+"</h3>";
						head += "</div>";
						head += "<div class='col text-right'>";
						head += "<a href='#'><button type='button' class='btn'>>> "+this.lname+"전체 보기</button></a>";
						head += "</div>";
						head += "</div>";
					}
					tbody += "<div class='col-3'>";
					tbody += "<img src='bookimg/" + this.image + "' class='img-thumbnail' width='150'/><br>";
					tbody += "<p class='p-0 mb-0'>"+this.name+"</p>";
					tbody += "<small style='color:gray;'>" +this.writer +"</small>";
					tbody += "</div>";
					number++;
				});
				
				$("#mcon").html(tbody);
				$("#head").html(head);
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
		$.ajax("morebook2?hCode=K", {
			type : "get",
			dataType : "json",
			success : function(data){
				
				var number = 0;
				var tbody = "";
				var head = "";
				//데이터를 HTML 태그에 삽입
				var alist = data.list;//JSON 객체의 속성명("list")의 값 추출
				//                배열의 인덱스값, 현재 처리하는 객체 데이터
				$.each(alist, function(index, member){
					//this 객체 : 배열에 저장된 객체 중 지금 처리되는 객체
					//자바스크립트 객체 속성 사용방식 2가지
					//1. 객체.속성명
					//2. 객체["속성명"]
					if(number == 0){
						head += "<hr>";
						head += "<div class='row'>";
						head += "<div class='col text-left'>";
						head += "<h3>"+this.lname+"</h3>";
						head += "</div>";
						head += "<div class='col text-right'>";
						head += "<a href='#'><button type='button' class='btn'>>> "+this.lname+"전체 보기</button></a>";
						head += "</div>";
						head += "</div>";
					}
					tbody += "<div class='col-3'>";
					tbody += "<img src='bookimg/" + this.image + "' class='img-thumbnail' width='150'/><br>";
					tbody += "<p class='p-0 mb-0'>"+this.name+"</p>";
					tbody += "<small style='color:gray;'>" +this.writer +"</small>";
					tbody += "</div>";
					number++;
				});
				$("#mcon2").html(tbody);
				$("#head2").html(head);
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
		$.ajax("morebook3?hCode=K", {
			type : "get",
			dataType : "json",
			success : function(data){
				
				var number = 0;
				var tbody = "";
				var head = "";
				//데이터를 HTML 태그에 삽입
				var alist = data.list;//JSON 객체의 속성명("list")의 값 추출
				//                배열의 인덱스값, 현재 처리하는 객체 데이터
				$.each(alist, function(index, member){
					//this 객체 : 배열에 저장된 객체 중 지금 처리되는 객체
					//자바스크립트 객체 속성 사용방식 2가지
					//1. 객체.속성명
					//2. 객체["속성명"]
					if(number == 0){
						head += "<hr>";
						head += "<div class='row'>";
						head += "<div class='col text-left'>";
						head += "<h3>"+this.lname+"</h3>";
						head += "</div>";
						head += "<div class='col text-right'>";
						head += "<a href='#'><button type='button' class='btn'>>> "+this.lname+"전체 보기</button></a>";
						head += "</div>";
						head += "</div>";
					}
					tbody += "<div class='col-3'>";
					tbody += "<img src='bookimg/" + this.image + "' class='img-thumbnail' width='150'/><br>";
					tbody += "<p class='p-0 mb-0'>"+this.name+"</p>";
					tbody += "<small style='color:gray;'>" +this.writer +"</small>";
					tbody += "</div>";
					number++;
				});
				$("#head3").html(head);
				$("#mcon3").html(tbody);
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
		$.ajax("morebook4?hCode=K", {
			type : "get",
			dataType : "json",
			success : function(data){
				
				var number = 0;
				var tbody = "";
				var head = "";
				//데이터를 HTML 태그에 삽입
				var alist = data.list;//JSON 객체의 속성명("list")의 값 추출
				//                배열의 인덱스값, 현재 처리하는 객체 데이터
				$.each(alist, function(index, member){
					//this 객체 : 배열에 저장된 객체 중 지금 처리되는 객체
					//자바스크립트 객체 속성 사용방식 2가지
					//1. 객체.속성명
					//2. 객체["속성명"]
					if(number == 0){
						head += "<hr>";
						head += "<div class='row'>";
						head += "<div class='col text-left'>";
						head += "<h3>"+this.lname+"</h3>";
						head += "</div>";
						head += "<div class='col text-right'>";
						head += "<a href='#'><button type='button' class='btn'>>> "+this.lname+"전체 보기</button></a>";
						head += "</div>";
						head += "</div>";
					}
					tbody += "<div class='col-3'>";
					tbody += "<img src='bookimg/" + this.image + "' class='img-thumbnail' width='150'/><br>";
					tbody += "<p class='p-0 mb-0'>"+this.name+"</p>";
					tbody += "<small style='color:gray;'>" +this.writer +"</small>";
					tbody += "</div>";
					number++;
				});
				$("#mcon4").html(tbody);
				$("#head4").html(head);
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
		$.ajax("morebook5?hCode=K", {
			type : "get",
			dataType : "json",
			success : function(data){
				
				var number = 0;
				var tbody = "";
				var head = "";
				//데이터를 HTML 태그에 삽입
				var alist = data.list;//JSON 객체의 속성명("list")의 값 추출
				//                배열의 인덱스값, 현재 처리하는 객체 데이터
				$.each(alist, function(index, member){
					//this 객체 : 배열에 저장된 객체 중 지금 처리되는 객체
					//자바스크립트 객체 속성 사용방식 2가지
					//1. 객체.속성명
					//2. 객체["속성명"]
					if(number == 0){
						head += "<hr>";
						head += "<div class='row'>";
						head += "<div class='col text-left'>";
						head += "<h3>"+this.lname+"</h3>";
						head += "</div>";
						head += "<div class='col text-right'>";
						head += "<a href='#'><button type='button' class='btn'>>> "+this.lname+"전체 보기</button></a>";
						head += "</div>";
						head += "</div>";
					}
					tbody += "<div class='col-3'>";
					tbody += "<img src='bookimg/" + this.image + "' class='img-thumbnail' width='150'/><br>";
					tbody += "<p class='p-0 mb-0'>"+this.name+"</p>";
					tbody += "<small style='color:gray;'>" +this.writer +"</small>";
					tbody += "</div>";
					number++;
				});
				$("#mcon5").html(tbody);
				$("#head5").html(head);
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	 });
	</script>
</body>
</html>