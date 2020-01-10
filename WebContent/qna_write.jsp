<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 작성</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

<link href="csstemplate/bss.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
	function sendData() {
		for (var i = 0; i < document.forms[0].elements.length; i++) {
			if (document.forms[0].elements[i].value == "") {
				if (i == 3)	continue;
				alert(document.forms[0].elements[i].name + "를 입력하세요");
				document.forms[0].elements[i].focus();
				return;
			}
		}
		document.forms[0].submit();
	}
</script>
</head>
<body>
<%@ include file="include/top.jsp" %>



<hr>
<div class="container bootstrap snippet">
    <div class="row">
        <div class="col-lg-12">
			<form action="QnAWriteOkController" method="post" enctype="multipart/form-data">
				<table width="1000">
					<tbody>
						<tr>
							<th>카테고리</th>
							<td>
								<select name="category">
									<option value="delivery">배송</option>
									<option value="order">주문/취소</option>
									<option value="return">반품/교환</option>
									<option value="payment">결제/결제수단</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td align="left"><input type="text" name="memberId"></td>
						</tr>
						<tr>
							<th>제목</th>
							<td align="left"><input type="text" name="subject"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td align="left"><textarea rows="10" cols="60" name="rcontent"></textarea>
							</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td align="left"><input type="file" name="upload"></td>
						</tr>
						<tr>
							<td colspan="2">
							<input type="button" value="입력" onclick="sendData()" /> 
							<input type="reset" value="취소" />
							</td>
						</tr>
		            </tbody>
				</table>
			</form>

        </div>
    </div>
</div>


<%@ include file="include/bottom.jsp" %>
</body>
</html>