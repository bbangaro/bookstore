<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
	var IMP = window.IMP;
	IMP.init("imp74046777");

	// IMP.request_pay(param, callback) 호출
	IMP.request_pay({ // param
		pg : "inicis",
		pay_method : "card",
		merchant_uid : "${ovo.orderId}",
		name : "도서",
		amount : ${ovo.amount},
		buyer_email : "${ovo.buyerEmail}",
		buyer_name : "${ovo.buyerName}",
		buyer_tel : "${ovo.buyerPhone}",
		buyer_addr : "${ovo.recipientAddress}",
		buyer_postcode : "${ovo.recipientZipcode}"
	}, function(rsp) { // callback

		if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
			// jQuery로 HTTP 요청
			jQuery.ajax({
				url : "https://www.myservice.com/payments/complete", // 가맹점 서버
				method : "POST",
				headers : {
					"Content-Type" : "application/json"
				},
				data : {
					imp_uid : rsp.imp_uid,
					merchant_uid : rsp.merchant_uid
				}
			}).done(function(data) { // 응답 처리
		          switch(data.status) {
		            case "success":
		              // 결제 성공 시 로직
		              break;
		          }
		        });
		    	location.href = "PaySuccessController?oNum=${ovo.oNum}";
		} else {
			alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
	    	location.href = "PayFailController?oNum=${ovo.oNum}";
		}
	});
</script>
</head>
<body>
</body>
</html>