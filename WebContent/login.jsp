<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>로그인 | 밀리의 서재</title>
<style type="text/css">

.cancel{
	margin-left: 95%;
	font-size: 2em;
}

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
	width: 100px;
	position: absolute;
	left: 50%;
	margin-left: -50px;
	top: 50%;
	margin-top: -50px;
	z-index: 1;
}

.facebook {
	width: 135.99px;
	height: 21.99px;
}
</style>

<style type="text/css">



.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	border: 1px solid #888;
	width: 80%; 
	z-index: 2;
	display:none;
}

input[type=text], input[type=password], input[type=number], input[type=email]
	{
	width: 100%;
	padding: 15px;
	display: inline-block;
	border: none;
	background: #f1f1f1;
	box-sizing: border-box;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
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
	<img src="images/왕문곰_pc-01.jpg" alt="책" class="web-mount">
	<section class="center">
		<div>
			<h1></h1>
			<section class="content-wrap">
				<div class="btn-area">
					<fb:login-button scope="public_profile,email"
						onlogin="checkLoginState();" class="facebook">페이스북 로그인
							</fb:login-button>
					<button class="facebook">
						<i class="fab fa-neos"></i> 네이버 로그인
					</button>
					<button class="facebook">
						<i class="fab fa-kaggle"></i> 카카오 로그인
					</button>
					<button class="facebook">
						<i class="fas fa-book"></i> 서재로 로그인
					</button>
					<button class="facebook" onclick="document.querySelector('.modal-content').style.display='block'; document.querySelector('.content-wrap').style.display='none'">
						<i class="fas fa-sign-in-alt"></i> 회원가입
					</button>
				</div>
			</section>
		</div>
	</section>


	<div>
		<form class="modal-content" action="">
			<h1>회원가입</h1>
			<p>아래양식을 작성해주세요</p>
			<hr>
			<label for="id"><b>아이디</b></label> <input type="text"
				placeholder="아이디"> <label for="psw"><b>이름</b></label> <input
				type="text" placeholder="이름"> <label for="psw"><b>암호</b></label>
			<input type="password" placeholder="암호"> <label for="psw"><b>암호확인</b></label>
			<input type="password" placeholder="암호확인"> <label for="email"><b>이메일</b></label>
			<input type="email" placeholder="이메일@"> <label for="zipcode"><b>우편번호</b></label>
			<input type="text" placeholder="우편번호"> <label for="addrds1"><b>집주소</b></label>
			<input type="text" placeholder="집주소"> <label for="addrds2"><b>집주소</b></label>
			<input type="text" placeholder="집상세주소"> <label for="phone"><b>핸드폰번호</b></label>
			<input type="number" placeholder="휴대전화번호">
			<button type="submit" class="signupbtn" >회원가입</button>
			<button type="reset" class="cancelbtn" onclick="document.querySelector('.modal-content').style.display='none'; document.querySelector('.content-wrap').style.display='block'">취소</button>
		</form>
	</div>

</body>

</html>