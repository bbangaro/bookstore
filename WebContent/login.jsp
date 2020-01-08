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
	display: none;
}

.modal-login{

	background-color: #fefefe;
	margin: 5% auto 15% auto;
	border: 1px solid #888;
	width: 80%;
	z-index: 2;
	display: none;
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

.cancelbtn_id, .cancelbtn_login, .signupbtn {
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
					<button class="library">
						<i class="fas fa-book"></i> 서재로 로그인
					</button>
					<button class="memberJoin">
						<i class="fas fa-sign-in-alt"></i> 회원가입
					</button>
				</div>
			</section>
		</div>
	</section>

	<div class="modal">
		<form class="modal-content" action="join" method="post">
			<h1>회원가입</h1>
			<p>아래양식을 작성해주세요</p>
			<hr>
			<label for="member_id"><b>아이디</b></label>
			 <input type="text"name="member_id" placeholder="아이디"> 
			 
			 <label for="psw"><b>이름</b></label>
			<input type="text" name="username" placeholder="이름"> 
			
			<label for="psw"><b>암호</b></label> 
			<input type="password" name="password" placeholder="암호"> 
			<label for="psw"><b>암호확인</b></label>
			 <input type="password" name="id" placeholder="암호확인"> 
			 
			 <label for="email"><b>이메일</b></label> 
			 <input type="email" name="email" placeholder="이메일@"> 
			 
			 <label for="zipcode"><b>우편번호</b><br><input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br></label>
			
			<input type="text" id="sample6_postcode" name="zipcode" placeholder="우편번호">
			
			<label for="addrds1"><b>집주소</b></label> 
			<input type="text" id="sample6_address" name="address1" placeholder="주소"><br>
			
			<label for="addrds2"><b>상세주소</b></label> 
			<input type="text" id="sample6_detailAddress" name="address2" placeholder="상세주소">
		
			
			<label for="phone"><b>핸드폰번호</b></label> 
			<input type="number" name="mobilephone" placeholder="휴대전화번호">
			<button type="submit"  class="signupbtn">회원가입</button>
			<button type="reset" class="cancelbtn_id">취소</button>
		</form>
	</div>
	
	<div class="modal">
		<form class="modal-login" action="login" method="post">
			<label for="member_id"><b>아이디</b></label>
			 <input type="text"name="member_id" placeholder="아이디">
			 <label for="psw"><b>암호</b></label> 
			<input type="password" name="password" placeholder="암호">
			<button type="submit"  class="signupbtn">로그인</button>
			<button type="reset"  class="cancelbtn_login">취소</button> 
		</form>
	</div>




<!-- 다음 주소 api  -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                } 

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<!-- 모달창 관련  -->
	<script>
		<!-- 회원가입창  -->
		let modalContent = document.querySelector('.modal-content');
		<!-- 로그인/회원가입란   -->
		let contentWrap = document.querySelector('.content-wrap');
		let memberJoin = document.querySelector('.memberJoin');
		let cancelbtnId = document.querySelector('.cancelbtn_id');
		let modalLogin = document.querySelector('.modal-login');
		let library = document.querySelector('.library');
		let cancelbtnLogin =  document.querySelector('.cancelbtn_login');
		
		memberJoin.onclick = function(){
			contentWrap.style.display='none';
			modalContent.style.display="block";
		}
		cancelbtnId.onclick = function(){
			contentWrap.style.display='block';
			modalContent.style.display="none";
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