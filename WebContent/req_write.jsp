<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="csstemplate/bbs.css">

<title>입력화면</title>

<style>

body {
    margin-top:20px;
    background:#f8f8f8
}

</style>
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
                <li class="nav-item"><a class="active nav-link">Write</a></li>
              </ul>
              <div class="tab-content pt-3">
                <div class="tab-pane active">
                  <form class="form" method="post" enctype="multipart/form-data" action="ReqWriteOkController">
                    <div class="row">
                      <div class="col">
                        <div class="row">
                          <div class="col">
                            <div class="form-group">
                              <label>작성자</label>
                              <input class="form-control" type="text" name="memberId" value="${sessionScope.id}">
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
                              <textarea class="form-control" name="rContent" rows="5" placeholder="요청 할 책의 정보를 입력해주세요"></textarea>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-12 col-sm-6 mb-3">
                        <div class="mb-2"><b>파일 업로드</b></div>
						  <p>파일 : <input type="file" name="upload"></p>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col d-flex justify-content-end">
                        <input class="btn btn-primary" type="submit" value="save">
                         &nbsp;
						<input class="btn btn-primary" type="reset" value="cancle">
                      </div>
                    </div>
                    <input type="hidden" name="password" value="${sessionScope.password}">
                    <br><br><br><br><br><br>
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