<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script>
	function setCount() {
		location.href = "SetCountController";
	}
	
	function deleteProduct() {
		location.href = "DeleteProductController";
	}
</script>

</head>

<body>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<%@ include file="include/top.jsp" %>

<div class="container">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">상품</th>
							<th style="width:10%">가격</th>
							<th style="width:8%">수량</th>
							<th style="width:22%" class="text-center">합계</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
					<c:set var="total" value="0"/>
					<c:choose>
					<c:when test="${empty list }">
						<tr>
							<td>장바구니가 비어있습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="cvo" items="${list }">
							<tr>
								<td data-th="Product">
									<div class="row">
										<div class="col-sm-2 hidden-xs"><img src="bookimg/${cvo.bCode }.jpg" alt="..." class="img-responsive"/></div>
										<div class="col-sm-10">
											<h4 class="nomargin">${cvo.bName }</h4>
											
											<c:if test="${cvo.bType == 1 }">
												<p>[일반도서]</p>
											</c:if>
											<c:if test="${cvo.bType == 2 }">
												<p>[e북]</p>
											</c:if>
											<c:if test="${cvo.bType == 3 }">
												<p>[오디오북]</p>
											</c:if>
											
										</div>
									</div>
								</td>
								<td data-th="Price">${cvo.price }원<br>(${cvo.salePrice }원)</td>
								<td data-th="Quantity">
									<input type="number" class="form-control text-center" value="${cvo.productsCount }" name="quantity">
								</td>
								<td data-th="Subtotal" class="text-center">${cvo.salePrice * cvo.productsCount }원</td>
								<c:set var="total" value="${total + cvo.salePrice * cvo.productsCount }"/>
								<td class="actions" data-th="">
									<button class="btn btn-info btn-sm" onclick="setCount()"><i class="fa fa-refresh"></i></button>
									<button class="btn btn-danger btn-sm" onclick="deleteProduct()"><i class="fa fa-trash-o"></i></button>								
								</td>
							</tr>
						</c:forEach>	
					</c:otherwise>
					</c:choose>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total 1.99</strong></td>
						</tr>
						<tr>
							<td><a href="javascript:history.back()" class="btn btn-warning"><i class="fa fa-angle-left"></i> 쇼핑 계속하기</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>총금액 <c:out value="${total }원"/></strong></td>
							<td><a href="https://www.paypal.com/webapps/hermes?token=5EY097812P7754247&useraction=commit&mfid=1546377013907_cf1dec6830d7" class="btn btn-success btn-block">결제하기 <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
				</table>
</div>

<%@ include file="include/bottom.jsp" %>


	
</body>
</html>