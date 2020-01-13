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


<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script>
	
	function getDataBtn(requestNum) { 
			getXMLMembers(requestNum);
	};	

	
	function getXMLMembers(requestNum){
	const numUrl = "getXmlRequest?requestNum=" + requestNum;
		$.ajax({
			url : numUrl,
			type : "get",
			dataType : "xml",
			//data : "name=" + name +&age=27", //서버로 전달할 데이터 작성
			//data : $('#inputForm').serialize(), //form 데이터 파라미터 전달
			success : function(data){
				
				var tbody = "";
				//전달받은 xml 데이터 처리
				// <member>태그들이 찾아짐 .fine("태그명")
				// 태그 안에 있는 텍스트 값 찾기 .text()
				// 태그방식이니까 돔 객체 사용하듯
				$(data).find("member").each(function(){
					tbody += "<br>";
					tbody += "<tr>";
					tbody += "<td>" + $(this).find("rContent").text() + "</td>";
					tbody += "<br>";
					tbody += "<br>";
					tbody += "<br>";
					tbody += "<td><img src='upload/" + $(this).find("upload").text() + "' width='50%' height='50%'></td>";
					tbody += "<td></td>";
					tbody += "<br>";
					tbody += "<div class='container'>";
					tbody += "<div class='col-sm-8'>";
					tbody += "<div class='panel panel-white post panel-shadow'>";
					tbody += "<c:if test='${not empty list}'>";
					tbody += "<c:forEach var='vo' items='${list}'>";
					tbody += "<div class='post-footer'>";
					tbody += "<div class='input-group'>";
					tbody += "<input class='form-control' placeholder='Add a comment' type='text'>";
					tbody += "<span class='input-group-addon'> <a href='#'><i class='fa fa-edit'></i></a></span>";
					tbody += "</div>";
					tbody += "<ul class='comments-list'>";
					tbody += "<li class='comment'><a class='pull-left' href='#'> <img class='avatar' src='http://bootdey.com/img/Content/user_1.jpg' alt='avatar'> </a>";
					tbody += "<div class='comment-body'>";
					tbody += "<div class='comment-heading'>";
					tbody += "<h4 class='user'>"+ $(this).find("memberId").text() +"</h4>";
					tbody += "<h5 class='time'>5 minutes ago</h5>";
					tbody += "</div>";
					tbody += "<p>"+ $(this).find("content").text() +"</p>";
					tbody += "</div></li>";
					tbody += "</ul>";
					tbody += "</c:forEach>";
					tbody += "</c:if>";
					tbody += "<c:if test='${empty list }'>";
					tbody += "<h4 class='user'>데이터가 없습니다t^^t</h4>";
					tbody += "</c:if>";
					tbody += "</div>";
					tbody += "</div>";
					tbody += "</div>";
					tbody += "</div>";
					
					
						
						
					tbody += "<td> ${sessionScope.id }</td>";
					tbody += "<td>" + $(this).find("content").text() + "</td>";
					tbody += "</tr>";
				});
				
				$("#tbody"+requestNum).html(tbody);
	
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	}
	
	function reqDelete(requestNum) {
		if(confirm("글을 삭제하시겠습니까?") == true){
			location.href="ReqDeleteOKController?requestNum=" + requestNum; 
		}
			
	};
	
	console.log(${sessionScope.user.memberId});
	console.log(${sessionScope.user.password});	
	
	
</script>

<style>
body{
    background:#eee;    
}
.main-box.no-header {
    padding-top: 20px;
}
.main-box {
    background: #FFFFFF;
    -webkit-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -moz-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -o-box-shadow: 1px 1px 2px 0 #CCCCCC;
    -ms-box-shadow: 1px 1px 2px 0 #CCCCCC;
    box-shadow: 1px 1px 2px 0 #CCCCCC;
    margin-bottom: 16px;
    -webikt-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
}
.table a.table-link.danger {
    color: #e74c3c;
}
.label {
    border-radius: 3px;
    font-size: 0.875em;
    font-weight: 600;
}
.user-list tbody td .user-subhead {
    font-size: 0.875em;
    font-style: italic;
}
.user-list tbody td .user-link {
    display: block;
    font-size: 1.25em;
    padding-top: 3px;
    margin-left: 60px;
}
a {
    color: #3498db;
    outline: none!important;
}
.user-list tbody td>img {
    position: relative;
    max-width: 50px;
    float: left;
    margin-right: 15px;
}

.table thead tr th {
    text-transform: uppercase;
    font-size: 0.875em;
}
.table thead tr th {
    border-bottom: 2px solid #e7ebee;
}
.table tbody tr td:first-child {
    font-size: 1.125em;
    font-weight: 300;
}
.table tbody tr td {
    font-size: 0.875em;
    vertical-align: middle;
    border-top: 1px solid #e7ebee;
    padding: 12px 8px;
}

.table tfoot {
    border-bottom: 2px solid #e7ebee;
    font-size: 1.125em;
    font-weight: 300;
    font-size: 0.875em;
    vertical-align: middle;
    border-top: 1px solid #e7ebee;
    padding: 12px 8px;
}
<%--코멘트 스타일--%>
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

.post .post-heading {
	height: 95px;
	padding: 20px 15px;
}

.post .post-heading .avatar {
	width: 60px;
	height: 60px;
	display: block;
	margin-right: 15px;
}

.post .post-heading .meta .title {
	margin-bottom: 0;
}

.post .post-heading .meta .title a {
	color: black;
}

.post .post-heading .meta .title a:hover {
	color: #aaaaaa;
}

.post .post-heading .meta .time {
	margin-top: 8px;
	color: #999;
}

.post .post-image .image {
	width: 100%;
	height: auto;
}

.post .post-description {
	padding: 15px;
}

.post .post-description p {
	font-size: 14px;
}

.post .post-description .stats {
	margin-top: 20px;
}

.post .post-description .stats .stat-item {
	display: inline-block;
	margin-right: 15px;
}

.post .post-description .stats .stat-item .icon {
	margin-right: 8px;
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

.post .post-footer .comments-list .comment>.comments-list {
	margin-left: 50px;
}

</style>

</head>
<body>
		<%@ include file="include/top.jsp" %>

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<div class="container bootstrap snippet">
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                                <a href="ReqWriteController" class="table-link">
                                    <span class="fa-stack">
                                        <i class="fa fa-square fa-stack-2x"></i>
                                        <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            <tr>
                                <th><span>No</span></th> 
                                <th><span>썸네일</span></th>
                                <th><span>작성자</span></th>
                                <th><span>제목</span></th>
                                <th><span>등록일</span></th>
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
		                                    	<a >${vo.subject }</a>
		                                    	<button onClick="getDataBtn(${vo.requestNum })" >눌렁</button>
		                                    	<br>
												<div id="tbody${vo.requestNum }"></div>
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
									<td colspan="5">데이터가 없습니다t^^t</td>
								</c:if>
								
                            </tbody>
                            
                        </table>
                           <tfoot>
                                	<tr>
                                		<td colspan="4">
											<ol class="paging">
											<%--[이전으로]에 대한 사용여부 처리 --%>
											<c:choose>
												<%--사용불가(disable) : 첫번째 블록인 경우 --%>
												<c:when test="${pvo.beginPage == 1}">
													<li class="disable">이전으로</li>
												</c:when>
												<c:otherwise>
													<li>
														<a href="ReqListController?cPage=${pvo.beginPage - 1}">이전으로</a>
													</li>
												</c:otherwise>
											</c:choose>
											
											<%-- 블록내에 표시할 페이지 표시(시작페이지~끝페이지) --%>
											<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage }">
											<c:choose>
												<c:when test="${k == pvo.nowPage}">
													<li class="now">${k }</li>
												</c:when>
												<c:otherwise>
													<li>
														<a href="ReqListController?cPage=${k}">${k}</a>
													</li> 
												</c:otherwise>
											</c:choose>
											</c:forEach>
											
											<%--[다음으로]에 대한 사용여부 처리 --%>
											<c:choose>
												<%--사용불가(disable) : 
													endPage가 전체페이지 수보다  크거나 같으면 --%>
												<c:when test="${pvo.endPage >= pvo.totalPage }">
													<li class="disable">다음으로</li>
												</c:when>
												<c:otherwise>
													<li><a href="ReqListController?cPage=${pvo.endPage + 1}">다음으로</a></li>
												</c:otherwise>
											</c:choose>
											</ol>	
										</td>
                                	</tr>
                            </tfoot>		
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="include/bottom.jsp" %>
</body>
</html>