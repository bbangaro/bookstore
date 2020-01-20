<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문완료</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="csstemplate/ordersuccess.css">

</head>
<body>
<%@ include file="include/top.jsp" %>
<div class="container">
	<div class="row text-center">
        <div class="col-sm-12 col-sm-offset-3">
        <br><br> <h2 style="color:#0fad00">주문완료</h2>
        <div class="swal2-icon swal2-success swal2-animate-success-icon" style="display: flex;">
		<div class="swal2-success-circular-line-left" style="background-color: rgb(255, 255, 255);"></div>
		   <span class="swal2-success-line-tip"></span>
		   <span class="swal2-success-line-long"></span>
		   <div class="swal2-success-ring"></div> 
		   <div class="swal2-success-fix" style="background-color: rgb(255, 255, 255);"></div>
		   <div class="swal2-success-circular-line-right" style="background-color: rgb(255, 255, 255);"></div>
		</div>
  
        <h3>${sessionScope.id } 님</h3>
        <p style="font-size:20px;color:#5C5C5C;">주문이 완료되었습니다. 이용해주셔서 감사합니다.</p>
        <a href="index.jsp" class="btn btn-success">     계속 쇼핑하기      </a>
    <br><br>
        </div>
	</div>
</div>
<%@ include file="include/bottom.jsp" %>
</body>
</html>