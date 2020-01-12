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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

<link href="csstemplate/bss.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<script>
	function update_go(frm) {
		frm.action = "QnAUpdateController?qNum=${vo.qNum}";
		frm.submit();
	}
	function delete_go(frm) {
		frm.action = "QnADeleteController?qNum=${vo.qNum}";
		frm.submit();
	}
</script>
<style>
	
	* { font-family: 'Jeju Gothic', sans-serif; }

	.panel-shadow {
	    box-shadow: rgba(0, 0, 0, 0.3) 7px 7px 7px;
	}
	.panel-white {
	  border: 1px solid #dddddd;
	}
	.panel-white  .panel-heading {
	  color: #333;
	  background-color: #fff;
	  border-color: #ddd;
	}
	.panel-white  .panel-footer {
	  background-color: #fff;
	  border-color: #ddd;
	}
	.post .post-footer {
	  border-top: 1px solid #ddd;
	  padding: 15px;
	}
	.post .post-footer .input-group-addon a {
	  color: #454545;
	}
	.post .post-footer .comments-list {
	  padding: 0;
	  margin-top: 20px;
	  list-style-type: none;
	}
	.post .post-footer .comments-list .comment {
	  display: block;
	  width: 100%;
	  margin: 20px 0;
	}
	.post .post-footer .comments-list .comment .avatar {
	  width: 35px;
	  height: 35px;
	}
	.post .post-footer .comments-list .comment .comment-heading {
	  display: block;
	  width: 100%;
	}
	.post .post-footer .comments-list .comment .comment-heading .user {
	  font-size: 14px;
	  font-weight: bold;
	  display: inline;
	  margin-top: 0;
	  margin-right: 10px;
	}
	.post .post-footer .comments-list .comment .comment-heading .time {
	  font-size: 12px;
	  color: #aaa;
	  margin-top: 0;
	  display: inline;
	}
	.post .post-footer .comments-list .comment .comment-body {
	  margin-left: 50px;
	}
	.post .post-footer .comments-list .comment > .comments-list {
	  margin-left: 50px;
	}

</style>
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

						<div class="container">
						    <div class="col-sm-13">
				                <ul class="nav nav-tabs">
							      <li class="nav-item">
									<a class="active nav-link" href="QnAListController">목록으로 이동</a>
							      </li>
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
														<td>${vo.subject }</tr>
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
															<td>
																<img src="upload/${vo.upload }" alt="업로드이미지" width="800px">
															</td>
														</c:otherwise>
														</c:choose>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<th>&nbsp;</th>
														<td>
															<input type="button" value="수 정"
																onclick="update_go(this.form)">
															<input type="button" value="삭 제"
																onclick="delete_go(this.form)">
														</td>
													</tr>
												</tfoot>
											</table>
										</form>	
										<br><br>
				            		</div> 
 
						        
						            <div class="post-footer">
						                <form action="QnACommentController" method="post">
						                	<div class="input-group"> 
						                    
							                    <input class="form-control" placeholder="Add a comment" type="text" name="content">
							                    <span class="input-group-addon">
							                        <a href="#"><i class="fa fa-edit"></i></a>  
							                    </span>
							                    
							                    <input type="hidden" name="qNum" value="${vo.qNum }">
							                   <!--  <input type="hidden" name="cPage" value="${cPage }">--> 
						                    
						                	</div>
						                </form>
						                <ul class="comments-list">
						                    <li class="comment">
						                        <a class="pull-left" href="#">
						                            <img class="avatar" src="http://bootdey.com/img/Content/user_1.jpg" alt="avatar">
						                        </a>
						                        <div class="comment-body">
						                        
						                        <c:choose>
													<c:when test="${empty clist }">
														<p>등록된 댓글이 없습니다.</p>
													</c:when>                        
						                        
						                        	<c:otherwise>
							                            <div class="comment-heading">
								                            <c:forEach var="cvo" items="${clist }">
								                                <h4 class="user">${cvo.memberId}</h4>
								                            </c:forEach>
							                            </div>
							                            <c:forEach var="cvo" items="${clist }">
							                           		<p>${cvo.content}</p>
							                            </c:forEach>
													</c:otherwise>
						                    	</c:choose>
						
						                        </div>
						                    </li>
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
				
<%@ include file="include/bottom.jsp" %>
<br><br><br><br><br>
</body>
</html>