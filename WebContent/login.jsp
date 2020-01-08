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
}
.facebook {
	display: block;
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
	<img src="images/왕문곰_pc-01.jpg" alt="책" class="web-mount">\
	<section class="center">
		<div>
			<h1></h1>
			<section class="content-wrap">
				<div class="btn-area">
					<fb:login-button scope="public_profile,email"
						onlogin="checkLoginState();" class="facebook">페이스북으로 로그인
							</fb:login-button>
					<button type="button" class="facebook">
						<i class="fab fa-neos"></i> 네이버로등록
					</button>
					<button type="button" class="facebook">
						<i class="fab fa-kaggle"></i> 카카오로등록
					</button>
					<button type="button" class="facebook">
						<i class="fab fa-kaggle"></i> 서재로 로그인하기
					</button>
				</div>
				<div class="text-area">
					<a href="/v3/join">회원이 아니신가요? 회원가입</a>
				</div>
			</section>
		</div>
	</section>

</body>

</html>