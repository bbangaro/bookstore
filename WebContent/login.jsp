<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<title>로그인 | 서재</title>
<style type="text/css">

body{
    margin: 0;
    padding : 0;
    background:linear-gradient(rgba(207, 207, 255, 0.5), rgba(15, 15, 14, 0.5));
  
}

.title{
    width: 25%;
    position: absolute;
   height: 200px;
   left: 50%;
   top: 50%;
    transform: translate(-50%,-50%);
    font-size: 15px;
    text-align: center;
    word-wrap: break-word;
}

.content-wrap  {
    width: 35%;
   display: flex;
   flex-direction: column;
   position: absolute;
   height: 100px;
   left: 50%;
   top: 70%;
    transform: translate(-50%,-50%);
   z-index: 1;
    text-align: center;
}
</style>

<style type="text/css">
/* 모달창 시작 */
.modal-login{
  width: 35%;
  min-width: 200px;
  background: #ffffff;
  position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%,-50%);
  padding: 10px 40px;
  box-sizing: border-box;
  border-radius:8px ;
  text-align: center;
  box-shadow: 0 0 25px #bbbab4;
  display:none;
}

.modal-content h1{
  font-weight: 200px;
  color:rgb(13, 14, 14);
}

.txtb input{
  width: 100%;
  border: none;
  background: none;
  outline: none;
  font-size: 14px;
  margin-top: 3px;
}

.txtb{
  border:1px solid gray;
  margin: 5px 0;
  padding: 10px 18px;
  border-radius: 8px;
}


.loginfication{
   display: none;
}

.btn, .library, .memberJoin{
    border:none;
    margin: 5px 0;
    padding: 10px 18px;
    width: 50%;
   border-radius: 6px;
   cursor: pointer;
   background-color: #ffeb00;
}
.library, .memberJoin{
    width: 200px;
}
.btn:active{
    position: relative;
    top:5px
}

.icon a{
    display: inline-block;
    width: 50px;
    height:50%;
    background: #ffffff;
    margin: 5px;
    border-radius: 30%;
    box-shadow: 0 5px 15px -5px #00000070;
    overflow: hidden;
    position: relative;
    padding-top: 10px;
    transition: 0.2s innear;
}
.icon a i {
    padding: 70%;
    font-size: 26px;
}
.icon a:hover {
    transform: scale(1.3);
    font-size: 1.3rem;
}


/* 모달창 끝 */



/* 로그인 메인 */
.library:active, .memberJoin:active{
   font-size: 15px;
   position: relative;
   top: 5px;
   box-shadow: none;
}

</style>



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
    <div  class="title">
        <h1>언제 어디서나 <br>독서와 친해지리<i class="fas fa-book-open"></i></h1>
    </div>
    <div class="content-wrap">
            <div class="btn-area">
               <button class="library">
                  <i class="fas fa-book"></i>서재로 로그인
               </button>
               <button class="memberJoin">
                  <i class="fas fa-sign-in-alt"></i>회원가입
               </button>
                </div>
                <div class="icon">
                    <a href="#">
                        <i class="fab fa-facebook-f" style="color: rgb(18, 61, 204);"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-twitter" style="color: rgb(28, 147, 216);"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-google" style="color: rgba(255, 0, 0, 0.767);"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-instagram" style="color: rgb(216, 28, 207);"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-youtube" style="color: rgba(255, 0, 0, 0.767);"></i>
                    </a>
                </div>
                    <a id="custom-login-btn" href="https://kauth.kakao.com/oauth/authorize?client_id=88bd3e119450cef04c32225563be47fe&redirect_uri=http://192.168.0.14:8090/bookstore/kakaologin&response_type=code">
						<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300"/>
					</a>
      </div>

            
   
   
<div class="modal-login">
      <form  action="login" method="post">
            <h1>로그인</h1>
            <div class="txtb">
          <input type="text" name="memberId" placeholder="아이디">
            </div>
            <div class="txtb">
         <input type="password" name="password" placeholder="암호">
            </div>

            <label class="loginfication"> </label>
            <div class="txtb">
             <button type="submit"  class="signupbtn btn">로그인</button>
             <button type="reset"  class="cancelbtn_login btn">취소</button> 
            </div>
           </form>
    </div>



               
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
	
	<script type='text/javascript'>
	  //<![CDATA[
	    // 사용할 앱의 JavaScript 키를 설정해 주세요.
	    Kakao.init('0ae50d275a43a26ab1ebf0be1e8d1b02');
	    function loginWithKakao() {
	      // 로그인 창을 띄웁니다.
	      Kakao.Auth.login({
	        success: function(authObj) {
	          alert(JSON.stringify(authObj));
	        },
	        fail: function(err) {
	          alert(JSON.stringify(err));
	        }
	      });
	    };
	  //]]>
</script>
	
</body>

</html>