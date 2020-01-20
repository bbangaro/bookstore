<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	 
 	 $("#getBo").click(function(){
		var lcode = $('#getBo').val();
		$.ajax("getBook?lcode="+lcode, {
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
					tbody += "<div class='col'>";
					tbody += "<a href='detail/Page?bCode="+this.bcode+"'style='color:black;'>";
					tbody += "<img src='bookimg/" + this.image + "'width='85' height='127'/><br>";
					tbody += this.name;
					tbody += "<br>";
					tbody += "<small style='color:gray;'>" +this.writer +"</small>";
					tbody += "</a>";
					tbody += "</div>";
				});
				
				$("#con2").html(tbody);
				
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	 });

		
	
	$("#getBo2").click(function(){
		var lcode = $('#getBo2').val();
		$.ajax("getBook?lcode="+lcode, {
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
					tbody += "<div class='col'>";
					tbody += "<a href='detail/Page?bCode="+this.bcode+"'style='color:black;'>";
					tbody += "<img src='bookimg/" + this.image + "'width='85' height='127'/><br>";
					tbody += this.name;
					tbody += "<br>";
					tbody += "<small style='color:gray;'>" +this.writer +"</small>";
					tbody += "</a>";
					tbody += "</div>";
				});
				
				$("#con2").html(tbody);
				
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	});
	$("#getBo3").click(function(){
		var lcode = $('#getBo3').val();
		$.ajax("getBook?lcode="+lcode, {
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
					tbody += "<div class='col'>";
					tbody += "<a href='detail/Page?bCode="+this.bcode+"'style='color:black;'>";
					tbody += "<img src='bookimg/" + this.image + "'width='85' height='127'/><br>";
					tbody += this.name;
					tbody += "<br>";
					tbody += "<small style='color:gray;'>" +this.writer +"</small>";
					tbody += "</a>";
					tbody += "</div>";
				});
				
				$("#con2").html(tbody);
				
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	});
	$("#getBo4").click(function(){
		var lcode = $('#getBo4').val();
		$.ajax("getBook?lcode="+lcode, {
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
					tbody += "<div class='col'>";
					tbody += "<a href='detail/Page?bCode="+this.bcode+"'style='color:black;'>";
					tbody += "<img src='bookimg/" + this.image + "'width='85' height='127'/><br>";
					tbody += this.name;
					tbody += "<br>";
					tbody += "<small style='color:gray;'>" +this.writer +"</small>";
					tbody += "</a>";
					tbody += "</div>";
				});
				
				$("#con2").html(tbody);
				
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	});
	$("#getBo5").click(function(){
		var lcode = $('#getBo5').val();
		$.ajax("getBook?lcode="+lcode, {
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
					tbody += "<div class='col'>";
					tbody += "<a href='detail/Page?bCode="+this.bcode+"'style='color:black;'>";
					tbody += "<img src='bookimg/" + this.image + "'width='85' height='127'/><br>";
					tbody += this.name;
					tbody += "<br>";
					tbody += "<small style='color:gray;'>" +this.writer +"</small>";
					tbody += "</a>";
					tbody += "</div>";
				});
				
				$("#con2").html(tbody);
				
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	});