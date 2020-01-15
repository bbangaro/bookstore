<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 다음 주소 api  -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<style>
  body{
    margin: 0;
    padding : 0;
    background:linear-gradient(rgba(207, 207, 255, 0.5), rgba(15, 15, 14, 0.5)), url(images/Library_img.jpg);
    background-color: rgba(31, 16, 16, 0.7);
  }

.modal-content {
  width: 85%;
  max-width: 600px;
  background: #ffffff;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  padding: 10px 40px;
  box-sizing: border-box;
  border-radius:8px ;
  text-align: center;
  box-shadow: 0 0 25px #bbbab4;

}


.modal-content h1{
  font-weight: 200px;
  color:rgb(13, 14, 14);
}

.txtb{
  border:1px solid gray;
  margin: 5px 0;
  padding: 10px 18px;
  border-radius: 8px;
}

.txtb label{
  display: block;
  text-align: left;
  color: #333333;
  font-size: 12px;
}

.txtb input{
  width: 100%;
  border: none;
  background: none;
  outline: none;
  font-size: 14px;
  margin-top: 3px;
  border-bottom: rgb(216, 215, 218) 1px solid;
}
.btn{
  border:none;
   margin: 5px;
   padding :8px;
   width: 150px;
   border-radius: 6px;
   cursor: pointer;
   background-color: #ffeb60

}
.btn:active, .btn_ch:active{
    position: relative;
    top:5px
}

.btn_ch{
  margin-left: 5px;
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

   <c:choose>
      <c:when test="${not empty sessionScope.message }">
               <script> alert("${sessionScope.message }");</script>
      </c:when>
   </c:choose>


<div class="modal-content">
      <form name="form_join" action="join" method="post"  class="form-content">
         <h1>회원가입</h1>
         <p>아래양식을 작성해주세요</p>
      <hr>
      <div class="txtb">
         <label for="memberId"><b>아이디</b><button type="button" class="check_id_count btn_ch" name="checkCount" onclick="regCheckFunction()" value="0">중복체크</button><span class="check_id"></span></label>
          <input type="text" name="memberId" class="id" placeholder="영문 대소문자와 숫자 4~12자리" min="4" max="20"> 
      </div>
       <div class="txtb">
          <label for="psw"><b>이름</b></label>
         <input type="text" name="username" placeholder="이름"> 
    </div>
      <div class="txtb">
         <label for="psw"><b>암호</b></label> 
         <input type="password" name="password1" placeholder="영문 대소문자와 숫자 4~12자리"> 
    </div>
      <div class="txtb">
      <label for="psw"><b>암호확인</b><span class="same"></span></label>
          <input type="password" name="password2" onkeyup="isSame()" placeholder="영문 대소문자와 숫자 4~12자리"> 
      </div>
       <div class="txtb">
       <label for="email"><b>이메일</b></label> 
          <input type="email" name="email" placeholder="이메일@  ex) email@gmail.com"> 
      </div>
       <div class="txtb">
          <label for="zipcode"><b>우편번호<button type="button" class="btn_ch" onclick="sample6_execDaumPostcode()">우편번호 찾기</button><br><br></label>
         <input type="text" id="sample6_postcode" readonly="readonly" name="zipcode" placeholder="우편번호" onclick="sample6_execDaumPostcode()">
    </div>
      <div class="txtb">
         <label for="addrds1"><b>집주소</b></label> 
         <input type="text" id="sample6_address" readonly="readonly" name="address1" placeholder="주소" onclick="sample6_execDaumPostcode()"><br>
    </div>
      <div class="txtb">
         <label for="addrds2"><b>상세주소</b></label> 
         <input type="text" id="sample6_detailAddress" name="address2" placeholder="상세주소">
    </div>
      <div class="txtb">
         <label for="phone"><b>핸드폰번호</b></label> 
         <input type="number" name="mobilephone" placeholder="휴대전화번호(-없이 번호만입력)">
    </div>
      <div class="txtb">
      <button type="button"  class="signupbtn btn" onclick="check_login()">회원가입</button>
         <button type="reset" class="cancelbtn_id btn" >다시입력</button>
    </div>
    </form>
   </div>
   
  
<script>
   /* 중복체크  */
   function regCheckFunction(){
      var id = $(".id").val();
      var idRegExp = /^[a-zA-z0-9]{4,12}$/;
      if(idRegExp.test(id)){
       $.ajax({
         url : "checking_id",
         type: 'POST',
         data : {id:id},
         success: function(result){
            if(result == 1){
               $(".check_id").html("이미 존재하는  아이디 입니다.");
               $(".check_id_count").val(0);
            }else{
               $(".check_id").html("사용할수 있는 아이디 입니다.");   
               $(".check_id_count").val(1);
            }
         }
   
         
      }) 
   }else{ 
      $(".check_id").html("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
      document.from_join.memberId.focus();
   }
}
      
   /* 비밀번호 일치확인 */
      function isSame(){
         var pw1 = document.from_join.password1.value;
         var pw2 = document.from_join.password2.value;
         var same = document.querySelector(".same");
   
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
      
      
      var memberId = document.form_join.memberId.value;
      var username = document.form_join.username.value;
      var password1 =  document.form_join.password1.value;
      var password2 =document.form_join.password2.value;
      var email = document.form_join.email.value;
      var   zipcode =document.form_join.zipcode.value;
      var   address1 = document.form_join.address1.value;
      var address2 = document.form_join.address2.value;
      var mobilephone = document.form_join.mobilephone.value;
      var checkCount = document.form_join.checkCount.value;
   
      /* 아이디 유효성검사 */
      if(memberId !== undefined && memberId !== ""){
         var idRegExp = /^[a-zA-Z0-9]{4,12}$/;
         if(!idRegExp.test(memberId)){
         
         alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
         memberId.value = "";
            document.from_join.memberId.focus();
            return false;
         }
      }else if(memberId == undefined || memberId == ""){
         alert("아이디를 입력해주세요");
         member_id.value = "";
         document.from_join.memberId.focus();
         return false;
      }
      
      /* 중복체크 여부  */
      if(checkCount == 0){
         alert("중복체크를 해주세요");
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
      if((password1 !== undefined && memberId !== "") &&
             (password2 !== undefined && memberId !== "")){
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
         
      }else if(password1 == undefined || memberId == "" ||
             password2 == undefined || memberId == ""){
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
         alert("휴대전화번호를 확인해주세요");
         return false;
      }
   
      document.form_join.submit();
      
   
   }
   
   
   
         
  </script>
  
  
</body>
</html>