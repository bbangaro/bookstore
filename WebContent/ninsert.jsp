<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="csstemplate/bbs.css">
  <style>
  	*{
  		font-family: 'Jeju Gothic', sans-serif;
  	}
  </style>
</head>
<body>

	<%@ include file="include/top.jsp" %>
	
	<div class="container mt-2">
	  <form action="notinsert">
	    <div class="row">
	      <div class="col">
	        <input type="text" class="form-control" placeholder="제목">
	      </div>
	    </div>
	    <div class="row mt-2">
	    	<div class="col">
	    		<input type="text" class="form-control" placeholder="작성자">
	    	</div>
	    	<div class="col">
	        <input type="text" class="form-control" placeholder="유형">
	      </div>
	    </div>
	    <div class="row mt-2">
		    <div class="col">
		    	<h2>공지사항</h2>
		    	<textarea class="form-control" rows="15"></textarea>
		    </div>
	    </div>
	    <button type="submit" class="btn btn-light text-right mt-2">글쓰기</button>
	  </form>
	</div>
	
	<%@ include file="include/bottom.jsp" %>
	
</body>
</html>