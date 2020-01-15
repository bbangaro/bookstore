<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<p>${bCode }</p>
	
	<form name ="reviewForm" method="post"  action="/bookstore/detail/insertForm" enctype="multipart/form-data">
		<div>
		<label>제목</label>
		<input type="text" name="subject" placeholder="제목(20자리 이하)" maxlength="10">
		</div>
		<br>
		<br>
		<div>
		<label>내용</label>
		<textarea name="rContent" rows="" cols="50"></textarea>
		</div>
	    <input type="file" name="myFile" onchange="readURL(this);" ><br>
	    <img class="preview" src = "#" width =200 height =200/>
  	<input type="submit">
	</form>
</body>
</html>