<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>로그인 | 서재</title>
<style type="text/css">
.center {
	text-align: center;
}
.web-mount {
	text-align: center;
	position: fixed;
	z-index: -1;
	width: 100%;
	height: 100%;
}

#wrap {
	text-align: center;
	border: 1px solid red;
}
.content-wrap {
	display: flex;
	flex-direction: column;
	position: absolute;
	border: 1px solid red;
	height: 100px;
	width: 200px;
	position: absolute;
	left: 50%;
	margin-left: -100px;
	top: 50%;
	margin-top: -50px;
	z-index: 1;
}
</style>

<style type="text/css">
.modal-login{
	height: 100px;
	width: 300px;
	position: absolute;
	left: 50%;
	top: 30%;
	margin-top: -50px;
	margin-left: -150px;
	background-color: #fefefe;
	border: 1px solid #888;
	display: none;
	z-index: 1;
}

input[type=text], input[type=password], input[type=number], input[type=email], label
	{
	width: 100%;
	padding: 13px;
	display: inline-block;
	border: none;
	background: #f1f1f1;
	box-sizing: border-box;
}

.loginfication{
	display: none;
}

.cancelbtn_id, .cancelbtn_login, .signupbtn {
	float: left;
	width: 50%;
}

.library, .memberJoin{
	cursor: pointer;
	background-color: #5dca88;
	box-shadow: 0px 5px #279C56;
	border-radius: 3px;
	color: #fff;
	font-size: 15px;
	margin-top: 10px;
	height:30px;
	width: 100%;
}

.library:active, .memberJoin:active{
	font-size: 15px;
	position: relative;
	top: 5px;
	box-shadow: none;
}

</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
 <script>
	//페이스북 로그인  api
	window.fbAsyncInit = function() {
		FB.init({
			appId : '588503168615847',
			cookie : true,
			xfbml : true,
			version : 'v5.0'
		});

		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});
	};

	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) {
			return;
		}
		js = d.createElement(s);
		js.id = id;
		js.src = "https://connect.facebook.net/en_US/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

	function statusChangeCallback(response) {
		if (response.status === 'connected') {
			console.log("로그인성공");
		} else {
			console.log("로그인실패");
		}
	}
	function checkLoginState() {
		FB.getLoginStatus(function(response) {
			statusChangeCallback(response);
		});
	}
</script>

</head>
<body>

	<c:choose>
		<c:when test="${!empty requestScope.loginFiledId}">
				<script>
				window.addEventListener("load",function(){
						var contentWrap = document.querySelector('.content-wrap');
						var modalLogin = document.querySelector('.modal-login');
						var loginfication = document.querySelector('.loginfication');
						var elementNode = document.createElement('b');
						const elementNodes = elementNode.innerHTML = "${requestScope.loginFiledId}";
						contentWrap.style.display="none";
						modalLogin.style.display="block";
						loginfication.append(elementNodes);
						loginfication.style.display="block";
				});
				</script>
		</c:when>
		<c:when test="${!empty requestScope.loginFiledPassword }">
				<script>
				window.addEventListener("load",function(){
					var contentWrap = document.querySelector('.content-wrap');
					var modalLogin = document.querySelector('.modal-login');
					var loginfication = document.querySelector('.loginfication');
					var elementNode = document.createElement('b');
					const elementNodes = elementNode.innerHTML = "${requestScope.loginFiledPassword}";
					contentWrap.style.display="none";
					modalLogin.style.display="block";
					loginfication.append(elementNodes);
					loginfication.style.display="block";
				});
				
				</script>
		</c:when>
	</c:choose>
		
		
					
	
	<img src="images/왕문곰_pc-01.jpg" alt="책" class="web-mount">
	<section class="center">
		<div>
			<h1></h1>
			<section class="content-wrap">
				<div class="btn-area">
				<fb:login-button scope="public_profile,email"
						onlogin="checkLoginState();" class="facebook">페이스북 로그인
							</fb:login-button> 
					<button class="naver">
						<i class="fab fa-neos"></i>네이버 로그인
					</button>
					<button class="kakao">
						<i class="fab fa-kaggle"></i>카카오 로그인
					</button>
					<button class="library">
						<i class="fas fa-book"></i>서재로 로그인
					</button>
					<button class="memberJoin">
						<i class="fas fa-sign-in-alt"></i>회원가입페이지로
					</button>
				</div>
			</section>
		</div>
	</section>
	
	

		<form class="modal-login" action="login" method="post">
			<label for="member_id"><b>아이디</b></label>
			 <input type="text" name="member_id" placeholder="아이디">
			 <label for="psw"><b>암호</b></label> 
			<input type="password" name="password" placeholder="암호">
			<label class="loginfication"> </label>
			<button type="submit"  class="signupbtn">로그인</button>
			<button type="reset"  class="cancelbtn_login">취소</button> 
		</form>




					
<!-- 로그인 모달창 관련  -->
	<script>	
			<!-- 로그인/회원가입란   -->
		let contentWrap = document.querySelector('.content-wrap');
		let memberJoin = document.querySelector('.memberJoin');
		let modalLogin = document.querySelector('.modal-login');
		let library = document.querySelector('.library');
		let cancelbtnLogin =  document.querySelector('.cancelbtn_login');
		
	
		
		memberJoin.onclick = function(){
			location.href='join.jsp';
		}
	
		
		library.onclick = function(){
			contentWrap.style.display="none";
			modalLogin.style.display="block";
		}
		cancelbtnLogin.onclick = function(){
			modalLogin.style.display="none";
			contentWrap.style.display='block';
		}
				
		
		
		
	</script>

</body>

</html>