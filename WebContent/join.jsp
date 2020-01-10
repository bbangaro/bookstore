<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 다음 주소 api  -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<style>
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	border: 1px solid #888;
	width: 80%;
	z-index: 2;
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
</head>
<body>
<div class="modal">
		<form name="from_join" action="join" class="modal-content" method="post" >
			<h1>회원가입</h1>
			<p>아래양식을 작성해주세요</p>
			<hr>
			<label for="member_id"><b>아이디<input type="button" onclick="regCheckFunction()" value="중복체크"></b><span class="check_id"></span></label>
			 <input type="text" name="member_id" class="id" placeholder="영문 대소문자와 숫자 4~12자리" min="4" max="20"> 
			 
			 <label for="psw"><b>이름</b></label>
			<input type="text" name="username" placeholder="이름"> 
			
			<label for="psw"><b>암호</b></label> 
			<input type="password" name="password1" placeholder="영문 대소문자와 숫자 4~12자리"> 
			<label for="psw"><b>암호확인</b><span class="same"></span></label>
			 <input type="password" name="password2" onkeyup="isSame()" placeholder="영문 대소문자와 숫자 4~12자리"> 
			 <label for="email"><b>이메일</b></label> 
			 <input type="email" name="email" placeholder="이메일@  ex) email@gmail.com"> 
			 
			 <label for="zipcode"><b>우편번호<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"></b><br><br></label>
			<input type="text" id="sample6_postcode" readonly="readonly" name="zipcode" placeholder="우편번호" onclick="sample6_execDaumPostcode()">
			
			<label for="addrds1"><b>집주소</b></label> 
			<input type="text" id="sample6_address" readonly="readonly" name="address1" placeholder="주소" onclick="sample6_execDaumPostcode()"><br>
			
			<label for="addrds2"><b>상세주소</b></label> 
			<input type="text" id="sample6_detailAddress" name="address2" placeholder="상세주소">
		
			<label for="phone"><b>핸드폰번호</b></label> 
			<input type="number" name="mobilephone" placeholder="휴대전화번호">
			<button type="button"  class="signupbtn" onclick="check_login()">회원가입</button>
			<button type="reset" class="cancelbtn_id" >다시입력</button>
		</form>
	</div>
	
<script>
	/* 중복체크  */
	function regCheckFunction(){
		var id = $(".id").val();
		console.log(id);
		 $.ajax({
			url : "checking_id",
			type: 'POST',
			data : {id:id},
			success: function(result){
				if(result == 1){
					$(".check_id").html("이미 존재하는  아이디 입니다.");
				}else{
					$(".check_id").html("사용할수 있는 아이디 입니다.");	
				}
			}
			
		}) 
	}
		
	/* 비밀번호 일치확인 */
		function isSame(){
			var pw1 = document.from_join.password1.value;
			var pw2 = document.from_join.password2.value;
			var same = document.querySelector(".same");
			console.log(pw1);
			console.log(pw2);
			if(pw1 !==undefined && pw1 !== ""){
			if(pw1 == pw2){
				same.innerHTML="비밀번호가 일치합니다";
			}else{
				same.innerHTML="비밀번호가 다릅니다.";
			}
		}else
			same.innerHTML="";
	}
	
	/* 값 유효성 체크후 액션 */
	function check_login(){
		var member_id = document.from_join.member_id.value;
		var username = document.from_join.username.value;
		var password1 =  document.from_join.password1.value;
		var password2 =document.from_join.password2.value;
		var email = document.from_join.email.value;
		var	zipcode =document.from_join.zipcode.value;
		var	address1 = document.from_join.address1.value;
		var address2 = document.from_join.address2.value;
		var mobilephone = document.from_join.mobilephone.value;
		
		/* 아이디 유효성검사 */
		if(member_id !== undefined && member_id !== ""){
			var idRegExp = /^[a-zA-z0-9]{4,12}$/;
			if(!idRegExp.test(member_id)){
			alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
				member_id.value = "";
				document.from_join.member_id.focus();
				return false;
			}
		}else if(member_id == undefined || member_id == ""){
			alert("아이디를 입력해주세요");
			member_id.value = "";
			document.from_join.member_id.focus();
			return false;
		}
		//이름 유효성 검사 
		if(username !== undefined && username !== ""){
			 var nameRegExp = /^[가-힣]{2,4}$/;
			 if(!nameRegExp.test(username)){
				alert("이름이 올바르지 않습니다.");
				return false;
			 }
		}else if(username == undefined || username == "" ){
			alert("이름을 입력하세요");
				return false;
		}

		//비밀번호 유효성 검사 
		if((password1 !== undefined && member_id !== "") &&
				 (password2 !== undefined && member_id !== "")){
			 var password1RegExp = /^[a-zA-z0-9]{4,12}$/;
			if(!password1RegExp.test(password1)){
				alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
			  	form.password1.value = "";
	            form.password1.focus();
	            return false;
			}else if(password1 != password2) {
	            alert("두 비밀번호가 맞지 않습니다.");
	            form.password1.value = "";
	            form.password2.value = "";
	            form.password2.focus();
	            return false;
	        }
			
		}else if(password1 == undefined || member_id == "" ||
				 password2 == undefined || member_id == ""){
			alert("비밀번호를를 입력해주세요");
			return false;
		}
		
		/* 이메일 유효성검사  */
		 if(email == undefined || email == ""){
			alert("email입력해주세요");
			return false;
		}
		
		/* 우편번호 및 집주소  api 사용강제 */
		 if(zipcode == undefined || zipcode == ""){
			alert("우편번호 찾기로 우편번호를 입력해주세요");
			return false;
		}
		/* 상세 주소 유효성체크 */
		 if(address2 == undefined || address2 == ""){
			alert("배달 상세 주소를 입력해주세요");
			return false;
		}
		
		
	 if(mobilephone == undefined || mobilephone == ""){
			alert("휴대전화번호를 입력해주세요");
			  return false;
		}
	
		document.from_join.submit();
		
		
	
	}
	
	
	
			
	</script>
</body>
</html>