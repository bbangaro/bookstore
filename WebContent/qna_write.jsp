<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

<link href="csstemplate/bss.css" rel="stylesheet" type="text/css">

<title>Q&A 작성</title>
<style>
	* { font-family: 'Jeju Gothic', sans-serif; }
</style>
<script>
	function sendData() {
		for (var i = 0; i < document.forms[0].elements.length; i++) {
			if (document.forms[0].elements[i].value == "") {
				if (i == 4)	continue;
				alert(document.forms[0].getElementsByTagName("label")[i].innerHTML + "(을)를 입력하세요");
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


<div class="container">
 <div class="row flex-lg-nowrap">
  <div class="col">
    <div class="row">
      <div class="col mb-3">
        <div class="card">
          <div class="card-body">
            <div class="e-profile">
              <div class="row">
                <div class="col-12 col-sm-auto mb-3">
                </div>
              </div>
              <ul class="nav nav-tabs">
                <li class="nav-item"><a class="active nav-link">게시글 쓰기</a></li>
              </ul>
              <div class="tab-content pt-3">
                <div class="tab-pane active">
                  <form class="form" method="post" enctype="multipart/form-data" action="QnAWriteOkController">
                    <div class="row">
                      <div class="col">
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>카테고리</label>
                              <select class="form-control" name="category">
									<option value="배송">배송</option>
									<option value="주문/취소">주문/취소</option>
									<option value="반품/교환">반품/교환</option>
									<option value="결제/결제수단">결제/결제수단</option>
							  </select>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>작성자</label>
                              <input class="form-control" type="text" name="memberId" placeholder="작성자" value="${sessionScope.id }" readonly>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>제목</label>
                              <input class="form-control" type="text" name="subject" placeholder="제목">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col mb-3">
                            <div class="form-group">
                              <label>내용</label>
                              <textarea class="form-control" name="rContent" rows="5" placeholder="내용"></textarea>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-12 col-sm-6 mb-3">
                        <div class="mb-2"><b>첨부파일</b></div>
						  <p>파일 : <input type="file" name="upload"></p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col d-flex justify-content-end">
                        <input type="button" class="btn btn-light pull-right" value="입력" onclick="sendData()"> 
						&nbsp;
						<input type="reset" class="btn btn-light pull-right" value="취소">
                      </div>
                    </div>
                    <br><br><br>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 </div>
</div>

<%@ include file="include/bottom.jsp" %>

</body>
</html>