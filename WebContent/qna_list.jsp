<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="csstemplate/bss.css" rel="stylesheet" type="text/css">


<script>
$(document).ready(function () {

    $('.btn-filter').on('click', function () {
      var $target = $(this).data('target');
      if ($target != '전체') {
        $('.table tr').css('display', 'none');
        $('.table tr[data-status="' + $target + '"]').fadeIn('slow');
      } else {
        $('.table tr').css('display', 'none').fadeIn('slow');
      }
    });

 });

function loginpleaz() {
	 alert("로그인이 필요한 서비스입니다.");
	 location.href = "login.jsp";
 }
 
 function goWrite() {
	 if (${empty sessionScope.id}) {
		 alert("로그인이 필요한 서비스입니다.");
		 location.href = "login.jsp";
	 } else {
		 location.href='QnAWriteController';
	 }
 }
</script>

<style>
	
	table tbody tr:hover { 
		background-color: #f0f0f0; 
		cursor: pointer;
	}
	
	.paging { list-style: none; }
	.paging li {
		float: left;
		margin-right: 8px;
	}
	.paging li a {
		text-decoration: none;
		display: block;
		padding: 3px 7px;
		border: 1px solid #00B3DC;
		font-weight: bold;
		color: black;
	}
	.paging .disable {
		border: 1px solid silver;
		padding: 3px 7px;
		color: silver;
	}
	.paging .now {
		border: 1px solid #ff4aa5;
		padding: 3px 7px;
		background-color: #ff4aa5;
	}
	.paging li a:hover {
		background-color: #00B3DC;
		color: white;
	}

</style>


</head>
<body>			
<%@ include file="include/top.jsp" %>


<hr>
<div class="container bootstrap snippet">
    <h2>Q&A 게시판</h2>
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                    	<div class="pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-light btn-filter" data-target="배송">배송</button>
								<button type="button" class="btn btn-light btn-filter" data-target="주문/취소">주문/취소</button>
								<button type="button" class="btn btn-light btn-filter" data-target="반품/교환">반품/교환</button>
								<button type="button" class="btn btn-light btn-filter " data-target="결제/결제수단">결제/결제수단</button>
								<button type="button" class="btn btn-light btn-filter" data-target="전체">전체</button>
							</div>
						</div>
                        <table class="table user-list">
                            <thead>
                                <tr>
                                <th><span>등록번호</span></th>
                                <th><span>이미지</span></th>
                                <th><span>아이디</span></th>
                                <th><span>제목</span></th>
                                <th><span>유형</span></th>
                                <th><span>등록일</span></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:choose>
                                <c:when test="${empty list }">
	                                <tr>
	                                	<td colspan="5">
	                                		<p>현재 등록된 게시글이 없습니다.</p>
	                                	</td>
	                                </tr>
	                            </c:when>   
	                            
	                            <c:otherwise>
	                            	<c:forEach var="vo" items="${list }">
	                                  <c:choose>
	                                  	<c:when test="${sessionScope.id eq null}">
	                                  		<tr data-status="${vo.category }" onclick="loginpleaz()">
	                                  	</c:when>
	                                  	<c:otherwise>
	                                  		<tr data-status="${vo.category }" onclick="javascript:location.href='QnAOneListController?qNum=${vo.qNum}'">
	                                  	</c:otherwise>
	                                  </c:choose>
	                                  		<td>
	                                  			${vo.qNum }
	                                  		</td>
	                                		<c:choose>
												<c:when test="${vo.upload eq null}">
													<td>
														<img src="images/png.png" alt="디폴트이미지" width="50px" height="50px">
													</td>
												</c:when>	
												<c:otherwise>                                		
			                                		<td>
			                                			<img src="upload/${vo.upload }" alt="업로드이미지" width="50px" height="50px">
			                                		</td>
		                                		</c:otherwise>
	                                		</c:choose>
	                                		
	                                		<td>
	                                			${vo.memberId }
	                                		</td>
	                                		<td class="subject">
	                                			${vo.subject }
	                                		</td>
	                                		<td>
	                                			${vo.category }
	                                		</td>
	                                		<td>
	                                			${vo.regdate }
	                                		</td>
	                                	</tr>
	                                  	
	                                </c:forEach>
	                            </c:otherwise>
	                            </c:choose>    
                                </tbody>
                                <tfoot>
                                	<tr>
                                		<td colspan="5">
											<ol class="paging">
											<c:choose>
												<c:when test="${pvo.beginPage == 1}">
													<li class="disable">이전으로</li>
												</c:when>
												<c:otherwise>
													<li>
														<a href="QnAListController?cPage=${pvo.beginPage - 1}">이전으로</a>
													</li>
												</c:otherwise>
											</c:choose>
											
											<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage }">
											<c:choose>
												<c:when test="${k == pvo.nowPage}">
													<li class="now">${k }</li>
												</c:when>
												<c:otherwise>
													<li>
														<a href="QnAListController?cPage=${k}">${k}</a>
													</li> 
												</c:otherwise>
											</c:choose>
											</c:forEach>
											
											<c:choose>
												<c:when test="${pvo.endPage >= pvo.totalPage }">
													<li class="disable">다음으로</li>
												</c:when>
												<c:otherwise>
													<li><a href="QnAListController?cPage=${pvo.endPage + 1}">다음으로</a></li>
												</c:otherwise>
											</c:choose>
											</ol>	
										</td>
                                		<td>
                                			<button type="button" class="btn btn-light pull-right" onclick="goWrite()">글쓰기</button>
                                		</td>
                                	</tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br><br><br><br><br>
<%@ include file="include/bottom.jsp" %>
</body>
</html>

	