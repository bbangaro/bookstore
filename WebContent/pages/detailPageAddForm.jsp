<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1{
		font-size: 50px;
		font-family:  sans-serif;
		text-align: center;
		}
	form{
		widht: 600px;
		padding: 12px 20px;
		margin : auto;
		border:1px solid #ccc;
		dorder-radius:4px;
		box-sizing:border-box;
		font-size: 25px;
	}
	
	form input, textarea{
	outline: none;
	transition: 0.5s;

	}
	
	form textarea{
		
	}
	
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

	function readURL(input){
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$(".preview").attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}	
	

</script>
</head>
<body>
	<div>
		<h1>리뷰 작성</h1>
	</div>
	<c:if test="${empty reviewvo }">
 	<form name ="reviewForm" method="post"  action="/bookstore/detail/insertForm" enctype="multipart/form-data">
		<div>
		<label>제목</label>
		</div>
		<input type="text" name="subject" placeholder="제목(10자리 이하)" maxlength="10">
	
		<div>
		<label>내용</label>
		</div>
		
		<textarea name="rContent"  style="width:100%; height: 300px; resize: none; "></textarea>
		<div>
		<label>포토 리뷰</label>
		</div>
	    <input type="file" name="myFile" onchange="readURL(this);" ><br>
	    <img class="preview" src = "#" width ="150" height ="150"/>
	    <input type="hidden" name="reviewNum" value="${sessionScope.reviewNum }">
  	<input type="submit">
	</form> 
	
	
	</c:if>
	<c:if test="${not empty reviewvo }">
	<form name ="changeForm" method="post"  action="" enctype="multipart/form-data" >
		<div>
		<label>제목</label>
		</div>
		<input type="text" name="subject" placeholder="제목(10자리 이하)" value="${reviewvo.subject }" maxlength="10">
		<div>
		<label>내용</label>
		</div>
		<textarea name="rContent"  style="width:100%; height:300px; resize: none; ">${reviewvo.rContent }</textarea>
		<div>
		<label>포토 리뷰</label>
		</div>
	    <input type="file" name="myFile" onchange="readURL(this);" ><br>
	    <img class="preview" src="../upload/${reviewvo.upload}" width =200 height =200/>
	    <input type="hidden" name="reviewNum" value="${sessionScope.reviewNum  }">
	 
  	<div>
  		<button type="submit" name="update" formaction="/bookstore/detail/updateForm">수정하기</button>
  		<button type="submit" onclick="return confirm('정말 삭제 하시겠어요?');" formaction="/bookstore/detail/deleteForm">삭제하기</button>
  		<button type="submit" name="update"  formaction="/bookstore/pages/detailPageAddForm.jsp">답글쓰기</button>
  	</div>
  	 
	</form>
	</c:if>

</body>
</html>