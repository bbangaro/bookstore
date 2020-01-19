<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문서</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<style>
	.form-card {
	    width: 100%;
	    float: left;
	    display: inline-block;
	}
</style>
<script>
	function sendData(frm) {
		for (var i = 0; i < frm.elements.length; i++) {
			if (frm.elements[i].value == "") {
				alert(frm.getElementsByTagName("label")[i].innerHTML + "(을)를 입력하세요");
				frm.elements[i].focus();
				return;
			}
		}
		frm.submit();
	}
	
	$(function(){
		$("#equal").change(function(){
			if($("#eqaul:checked")){
				$("#rname").val($("#oname").val());
				$("#rphone").val($("#ophone").val());
				$("#rzipcode").val($("#ozipcode").val());
				$("#raddress").val($("#oaddress").val());
			}
		});
	});
</script>
</head>
<body>

<%@ include file="include/top.jsp" %>

	<div class="container">
		<legend>
			<h2>주문서</h2>
		</legend>
		<table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 45%">상품</th>
					<th style="width: 25%">가격</th>
					<th style="width: 10%">수량</th>
					<th style="width: 20%" class="text-center">합계</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="total" value="0" />
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
										<div class="col-sm-2 hidden-xs">
											<img src="bookimg/${cvo.bCode }.jpg" alt="..."
												class="img-responsive" />
										</div>
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
								<td data-th="Price">${cvo.price }원<br>(할인가 :
									${cvo.salePrice }원)
								</td>
								<td data-th="Quantity"><input type="number"
									class="form-control text-center" value="${cvo.productsCount }"
									name="quantity" id="quantity${cvo.bCode }" min="0" max="10" readonly>
								</td>
								<td data-th="Subtotal" class="text-center">${cvo.salePrice * cvo.productsCount }원</td>
								<c:set var="total"
									value="${total + cvo.salePrice * cvo.productsCount }" />
								<td class="actions" data-th=""></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
			<tfoot>
				<tr class="visible-xs">
					<td class="text-center"><strong>총금액 <c:out
								value="${total }원" /></strong></td>
				</tr>
				<tr>
					<td colspan="3" class="hidden-xs"></td>
					<td class="hidden-xs text-center"><strong>총금액 <c:out
								value="${total }원" /></strong></td>
				</tr>
			</tfoot>
		</table>
	</div>

	<form method="post" action="PayController">
		<div class="container">
			<legend>주문자 정보</legend>
			<div class="row">
				<div class="form-card">
					<div class='form-group'>
						<div class='col-xs-12 form-group'>
							<label class="control-label locked" for="oname-input-field">이름</label>
							<input id="oname" name="oname" class="form-control" type="text"
								required="" value="${mvo.userName }" readonly>
						</div>
					</div>
					<div class='form-group'>
						<div class='col-xs-12 form-group'>
							<label class="control-label locked" for="ophone-input-field">전화번호</label>
							<input id="ophone" name="ophone" type="text"
								placeholder="01xxxxxxxxxx" class="form-control locked"
								required="" value="${mvo.mobilePhone }" readonly>
						</div>
					</div>
					<div class='form-group'>
						<div class='col-xs-12 form-group'>
							<label class="control-label locked" for="ozipcode-input-field">우편번호</label>
							<input id="ozipcode" name="ozipcode" type="text"
								placeholder="xxxxx" class="form-control locked" required=""
								value="${mvo.zipcode }" readonly>
						</div>
					</div>
					<div class="form-group locked">
						<div class='col-xs-12 form-group'>
							<label class="control-label locked" for="oemail-input-field">Email</label>
							<input id="oemail" name="oemail" type="text"
								placeholder="email@email.com" class="form-control locked"
								required="" value="${mvo.email }" readonly>
						</div>
					</div>
					<div class="form-group locked">
						<div class='col-xs-12 form-group'>
							<label class="control-label locked" for="oaddress-input-field">주소</label>
							<textarea name="oaddress" id="oaddress" cols="0" rows="3"
								class="form-control locked" readonly>${mvo.address1} ${mvo.address2}</textarea>
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<legend>
				수령인 정보 
				<span class="pull-right">
					<input type="checkbox" id="equal" value="equal">주문자와 정보가 일치합니다.
				</span>
			</legend>
			
			<div class="row">
				<div class="form-card">
					<div class='form-group'>
						<div class='col-xs-12 form-group'>
							<label class="control-label locked" for="rname-input-field">이름</label>
							<input id="rname" name="rname" class="form-control" type="text"
								required="">
						</div>
					</div>
					<div class='form-group'>
						<div class='col-xs-12 form-group'>
							<label class="control-label locked" for="rphone-input-field">전화번호</label>
							<input id="rphone" name="rphone" type="text"
								placeholder="01xxxxxxxxxx" class="form-control locked"
								required="">
						</div>
					</div>
					<div class='form-group'>
						<div class='col-xs-12 form-group'>
							<label class="control-label locked" for="rzipcode-input-field">우편번호</label>
							<input id="rzipcode" name="rzipcode" type="text"
								placeholder="xxxxx" class="form-control locked" required="">
						</div>
					</div>
					<div class="form-group locked">
						<div class='col-xs-12 form-group'>
							<label class="control-label locked" for="raddress-input-field">주소</label>
							<textarea name="raddress" id="raddress" cols="0" rows="3"
								class="form-control locked"></textarea>
						</div>
					</div>
					<div class='form-group'>
						<div class='col-xs-12 form-group'>
							<label class="control-label locked" for="msg-input-field">배송메세지</label>
							<input id="msg" name="msg" type="text"
								class="form-control locked" required="" value="없음">
						</div>
					</div>
				</div>
			</div>
			<br> <input type="hidden" value="${total }" name="total">
			<button class="btn btn-light pull-right" onclick="sendData(this.form)">결제하기</button>
		</div>
	</form>
	<%@ include file="include/bottom.jsp" %>

</body>
</html>