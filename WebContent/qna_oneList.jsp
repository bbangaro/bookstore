<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 수정 및 삭제</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

<link href="csstemplate/bss.css" rel="stylesheet" type="text/css">

<script>
	function update_go(frm) {
		frm.action = "QnAUpdateController";
		frm.submit();
	}
	function delete_go(frm) {
		frm.action = "QnADeleteController";
		frm.submit();
	}
</script>
</head>
<body>

<%@ include file="include/top.jsp" %>

<hr>
<div class="container bootstrap snippet">
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">

						<p><a href="QnAListController">[목록으로 이동]</a></p>
						
						<form method="post">
							<table border>
								<tbody>
									<tr>
										<th>카테고리</th>
										<td>${vo.category }</td>
									</tr>
									<tr>
										<th>작성자</th>
										<td>${vo.memberId }</td>
									</tr>
									<tr>
										<th>제목</th>
										<td>${vo.subject }</tr>
									<tr>
										<td colspan="2">${vo.rContent }</td>
									</tr>
									<tr>
										<th>업로드파일</th>
										<td>
											<img src="upload/${vo.upload }" alt="업로드이미지">
										</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="2">
											<input type="button" value="수 정"
												onclick="update_go(this.form)">
											<input type="button" value="삭 제"
												onclick="delete_go(this.form)">
										</td>
									</tr>
								</tfoot>
							</table>
						</form>	
	            	</div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="include/bottom.jsp" %>

</body>
</html>