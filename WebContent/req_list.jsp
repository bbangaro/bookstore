<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="csstemplate/bbs.css">
 -->
 <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<title>요청 게시판</title>

<link rel="stylesheet"href="${pageContext.request.contextPath}/css/req_list.css" />
<script src="${pageContext.request.contextPath}/js/req_list.js"></script>

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

</head>
<body>
<%@ include file="include/top.jsp" %>

<div class="container reqbook">
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                            	<c:if test="${sessionScope.id != null}">
	                                <a href="ReqWriteController" class="table-link">
	                                    <span class="fa-stack">
	                                        <i class="fa fa-square fa-stack-2x"></i>
	                                        <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
	                                    </span>
	                                </a>
                                </c:if>
                            <tr>
                                <th width="5%"><span>No</span></th> 
                                <th width="10%"><span>썸네일</span></th>
                                <th width="10%"><span>작성자</span></th>
                                <th><span>제목</span></th>
                                <th width="15%"><span>등록일</span></th>
                                <th><span>&nbsp;</span></th>
                            </tr>
                            </thead>
                            
                            <tbody>
                               	<c:if test="${not empty list}">
									<c:forEach var="vo" items="${list}">								
										<tr>
											<td><a id="requestNum">${vo.requestNum }</a></td>
		                                    <td>
		                                        <img src="upload/${vo.upload }" width="50px" height="50px">
		                                    </td>
		                                    <td><a>${vo.memberId }</a></td>
		                                  
		                                    <td>
		                                    <div>
		                               	    	<a class="listTitle" onClick="getDataBtn(${vo.requestNum })" >${vo.subject }</a>
		                                    	<br>
		                                    	<div id="listToggle${vo.requestNum }">
													<div id="tbody${vo.requestNum }"  style="display: none"></div>
													<div id="commentTbody${vo.requestNum }"  style="display: none"></div>
		                                    	</div>
		                                    </div>
<!-- 
-->
		                                    </td>
		                                  
		                                    <td>
		                                        <a>${vo.regdate }</a>
		                                    </td>
		                                     
	                               			<td style="width: 10%;">
	                               			
	                               			<c:if test="${sessionScope.id eq vo.memberId}">
		                                        <a href="ReqUpdateController?requestNum=${vo.requestNum }" class="table-link">
		                                            <span class="fa-stack">
		                                                <i class="fa fa-square fa-stack-2x"></i>
		                                                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
		                                            </span>
		                                        </a>
		                                        <a href="#" onclick="reqDelete(${vo.requestNum})" class="table-link danger">
		                                            <span class="fa-stack">
		                                                <i class="fa fa-square fa-stack-2x"></i>
		                                                <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
		                                            </span>
		                                        </a>
	                               			</c:if>
		                                        
		                                        
		                                    </td>
	                               		</tr>
										
									</c:forEach>
								</c:if>
								
								<c:if test="${empty list }">
									<td colspan="5">등록된 게시물이 없습니다</td>
								</c:if>
								
                            </tbody>
                            
                        </table>
                        
                    
                    </div>
                </div>
              
              <!-- 페이징 버튼 위치 -->
                  <nav class="listPage">
								<ul class="pagination justify-content-md-center">
								<%--[이전으로]에 대한 사용여부 처리 --%>
								<c:choose>
									<%--사용불가(disable) : 첫번째 블록인 경우 --%>
									<c:when test="${pvo.beginPage == 1}">
										<li class="page-item disabled">
										<a class="page-link">이전</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-link"><a href="ReqListController?cPage=${pvo.beginPage - 1}" aria-label="Previous">이전</a></li>
									</c:otherwise>
								</c:choose>
								
								<%-- 블록내에 표시할 페이지 표시(시작페이지~끝페이지) --%>
								<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage }">
								<c:choose>
									<c:when test="${k == pvo.nowPage}">
										<li class="page-item active">
											<a class="page-link">${k }</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-link disabled"><a href="ReqListController?cPage=${k}">${k }</a></li>
									</c:otherwise>
								</c:choose>
								</c:forEach>
								
								<%--[다음으로]에 대한 사용여부 처리 --%>
								<c:choose>
									<%--사용불가(disable) : 
										endPage가 전체페이지 수보다  크거나 같으면 --%>
									<c:when test="${pvo.endPage >= pvo.totalPage }">
										<li class="page-item disabled">
											<a class="page-link">다음</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-link"><a href="ReqListController?cPage=${pvo.endPage + 1}" aria-label="Previous">다음</a></li>
									</c:otherwise>
								</c:choose>
								</ul>	
                          	</nav>
              
            </div>
            
        </div>
        
    </div>
    
</div>

<%@ include file="include/bottom.jsp" %>
<script>
	var sessionId = "${sessionScope.id}";
	var sessionPwd = "${sessionScope.password}";
</script>
</body>
</html>