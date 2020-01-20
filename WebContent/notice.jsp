<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/jejugothic.css">
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="csstemplate/bbs.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
	*{
  		font-family: 'Jeju Gothic', sans-serif;
  	}
</style>

<title>공지사항</title>
</head>
<body>

		<%@ include file="include/top.jsp" %>
<br>
<div class="container bootstrap snippet">
	<h1 class="text-center">공지</h1>
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                                <tr>
                                <th><span>작성번호</span></th>
                                <th><span></span></th>
                                <th><span>제목</span></th>
                                <th><span>날짜</span></th>
                                <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                             <c:if test="${not empty list }">
										<c:forEach var="vo" items="${list}">								
										<tr>
											<td>${vo.nNum }</td>
		                                    <td>
		                                    </td>
		                                    <td><a href="Nview?nNum=${vo.nNum }">${vo.subject }</a></td>
		                                    <td>
		                                        ${vo.wDate }
		                                    </td>
		                                    <c:if test="${id eq 'admin' }">
			                      				<td style="width: 10%;">
			                                        <a href="NoticeUpdate?nNum=${vo.nNum }&subject=${vo.subject }&content=${vo.content}" class="table-link">
			                                            <span class="fa-stack">
			                                                <i class="fa fa-square fa-stack-2x"></i>
			                                                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
			                                            </span>
			                                        </a>
			                                        <a href="NoticeDelete?nNum=${vo.nNum }" class="table-link danger">
			                                            <span class="fa-stack">
			                                                <i class="fa fa-square fa-stack-2x"></i>
			                                                <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
			                                            </span>
			                                        </a>
			                                    </td>
		                                    </c:if>
	                               		</tr>
										
										</c:forEach>
										</c:if>
										<c:if test="${empty list }">
											<td colspan="5">데이터가 없습니다t^^t</td>
										</c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center">
	    
    </div>
    <c:if test="${id eq 'admin' }">
	    <div class="text-right">
		    <form action="Notice" method="post">
		      <input type="submit" class="btn btn-light text-right" value="글 쓰기">
		    </form>
	    </div>
   </c:if>
    <ul class="pagination">
				<%--[이전으로]에 대한 사용여부 처리 --%>
				<c:choose>
					<%--사용불가(disable) : 첫번째 블록인 경우 --%>
					<c:when test="${pvo.beginPage == 1}">
						<li class="page-item disabled"><a class="page-link" href="#">이전으로</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="NotListController?cPage=${pvo.beginPage - 1}">이전으로</a>
						</li>
					</c:otherwise>
				</c:choose>
				
				<%-- 블록내에 표시할 페이지 표시(시작페이지~끝페이지) --%>
				<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage }">
				<c:choose>
					<c:when test="${k == pvo.nowPage}">
						<li class="page-item active"><a class="page-link" href="#">${k }</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="NotListController?cPage=${k}">${k}</a>
						</li> 
					</c:otherwise>
				</c:choose>
				</c:forEach>
				
				<%--[다음으로]에 대한 사용여부 처리 --%>
				<c:choose>
					<%--사용불가(disable) : 
						endPage가 전체페이지 수보다  크거나 같으면 --%>
					<c:when test="${pvo.endPage >= pvo.totalPage }">
						<li class="page-item disabled"><a class="page-link" href="#">다음으로</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="NotListController?cPage=${pvo.endPage + 1}">다음으로</a></li>
					</c:otherwise>
				</c:choose>
	</ul>
</div>
<br><br><br><br>
<%@ include file="include/bottom.jsp" %>
</body>
</html>