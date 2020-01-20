<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A상세페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

<link href="csstemplate/bss.css" rel="stylesheet" type="text/css">
<link href="csstemplate/comment.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

<script>
	function update_go(frm) {
		if (${sessionScope.id ne vo.memberId}) {
			alert("수정 권한이 없습니다.");
		} else {
			frm.action = "QnAUpdateController?qNum=${vo.qNum}";
			frm.submit();
		}
	}
	
	function delete_go(frm) {
		
		if (${sessionScope.id ne vo.memberId}) {
			alert("삭제 권한이 없습니다.");
		} else {
		
			var isDelete = confirm("정말 삭제하시겠습니까?");
			
			if (isDelete) {
				frm.action = "QnADeleteController?qNum=${vo.qNum}";
				frm.submit();			
			} else {
				history.go(0);
			}
		}	
	}

	function sendComment(frm) {
		
		if (frm.content.value == "") {
			alert("댓글 내용을 입력해주세요");
			frm.content.focus();
			return;
		}
		frm.submit();
	}
	
	function updateComment(frm) {
		
		if (frm.content.value == "") {
			alert("댓글 내용을 입력해주세요");
			frm.content.focus();
			return;
		}
		
		var isUpdate = confirm("정말 수정하시겠습니까?");
		
		if (isUpdate) {
			frm.submit();
		} else {
			history.go(0);
		}
	}
	
	function deleteC() {
		var isDelete = confirm("정말 삭제하시겠습니까?");
		
		if (isDelete) {
			frm.submit();
		} else {
			history.go(0);
		}
	}
</script>
<style>
* {
	font-family: 'Jeju Gothic', sans-serif;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>

	function updateC(cIdx) {
		
		var result = "";
		
		result += "<form action=\"QnACommentUpdateController?cIdx="+cIdx+" method=\"post\">";
		result += "<div class=\"input-group\">";
		result += "<input class=\"form-control\" placeholder=\"Add a comment\" type=\"text\" name=\"content\">";
		result += "<span class=\"input-group-addon\">";
		result += "<input type=\"button\" value=\"수정\" onclick=\"updateComment(this.form)\">";
		result += "</a>";
		result += "</span> <input type=\"hidden\" name=\"qNum\" value=\"${vo.qNum }\">";
		result += "<input type=\"hidden\" name=\"memberId\" value=\"${sessionScope.id }\">";
		result += "<input type=\"hidden\" name=\"cIdx\" value="+ cIdx +">";
		result += "</div>";
		result += "</form>";
		
		$("#updateComment" + cIdx).html(result);
	};
	
</script>


</head>
<body>

	<%@ include file="include/top.jsp"%>

	<hr>
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-lg-12">
				<div class="main-box no-header clearfix">
					<div class="main-box-body clearfix">
						<div class="table-responsive">

							<div class="container">
								<div class="col-sm-13">
									<ul class="nav nav-tabs">
										<li class="nav-item"><a class="active nav-link"
											href="QnAListController">목록으로 이동</a></li>
									</ul>
									<div class="panel panel-white post panel-shadow">
										<div class="post-heading">
											<form method="post">
												<table class="text-center" width="100%">
													<tbody>
														<tr>
															<td>&nbsp;</td>
														</tr>
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
															<td>${vo.subject }
														</tr>
														<tr>
															<th>내용</th>
															<td>${vo.rContent }</td>
														</tr>
														<tr>
															<th>업로드파일</th>
															<c:choose>
																<c:when test="${vo.upload eq null }">
																	<td>
																		<p>업로드한 이미지가 없습니다.</p>
																	</td>
																</c:when>
																<c:otherwise>
																	<td><img src="upload/${vo.upload }" alt="업로드이미지"
																		width="800px"></td>
																</c:otherwise>
															</c:choose>
														</tr>
													</tbody>
													<tfoot>
														<tr>
															<th>&nbsp;</th>
														</tr>
														<tr>
															<th>&nbsp;</th>
															<td>
																<input type="button" class="btn btn-light" value="수 정" onclick="update_go(this.form)"> 
																<input type="button" class="btn btn-light" value="삭 제" onclick="delete_go(this.form)">
															</td>
														</tr>
													</tfoot>
												</table>
											</form>
											<br> <br>
										</div>


										<div class="post-footer">
											<form action="QnACommentWriteController" method="post">
												<div class="input-group">

													<input class="form-control" placeholder="Add a comment" type="text" name="content"> 
													<span class="input-group-addon"> 
														<input type="button" class="btn btn-light pull-right" value="입력" onclick="sendComment(this.form)">
													</span> <input type="hidden" name="qNum" value="${vo.qNum }">
													<input type="hidden" name="memberId" value="${sessionScope.id }">

												</div>
											</form>
											<ul class="comments-list">
												<c:choose>
													<c:when test="${empty clist }">
														<p>등록된 댓글이 없습니다.</p>
													</c:when>
													<c:otherwise>
														<c:forEach var="cvo" items="${clist }">
															<li class="comment">
																<a class="pull-left" href="#">
																	<img class="avatar" src="http://bootdey.com/img/Content/user_1.jpg" alt="avatar">
																</a>
																<div class="comment-heading">
																	<h4 class="user">${cvo.memberId}</h4>
																</div>
																<p id="updateComment${cvo.cIdx }">${cvo.content}</p>
															</li>
															
						                                   <c:choose>
						                                   	<c:when test="${sessionScope.id eq cvo.memberId }">
						                                   		<a href="#" class="table-link" onclick="updateC(${cvo.cIdx})">
					                                            	<span class="fa-stack">
					                                                	<i class="fa fa-square fa-stack-2x"></i>
					                                                	<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
					                                            	</span>
					                                        	</a>
					                                        <form action="QnACommentDeleteController" method="post" style="display:inline-block">	
					                                        	<a onclick="deleteC()" href="#" class="table-link danger">
						                                        	<span class="fa-stack">
						                                                <i class="fa fa-square fa-stack-2x"></i>
						                                                <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
						                                            </span>
						                                            <input type="hidden" name="cIdx" value="${cvo.cIdx }">
						                                            <input type="hidden" name="qNum" value="${cvo.qNum }">
					                                        	</a>
					                                        </form>	
						                                   	</c:when>
						                                   </c:choose>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</ul>
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

	<%@ include file="include/bottom.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>