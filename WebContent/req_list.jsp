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
 
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<title>Insert title here</title>

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
				$(data).find("book").each(function(){
					tbody += "<br>";
					tbody += "<tr>";
					tbody += "<td>" + $(this).find("rContent").text() + "</td>";
					tbody += "<br>";
					tbody += "<br>";
					tbody += "<br>";
					tbody += "<td><img src='upload/" + $(this).find("upload").text() + "' width='50%' height='50%'></td>";
					tbody += "<td></td>";
					tbody += "<br>";
					tbody += "<br>";
					tbody += "<br>";
				});
				$("#tbody"+requestNum).html(tbody);
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("원리스트 소환 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
		reqComment(requestNum);
	}
	
	function commentInsert(requestNum) {
		let selector = "#content"+requestNum;
		
		const numUrl = "GetJXmlReqCommentWriteController";	
		$.ajax({
			url : numUrl,
			type : "post",
			dataType : "xml",
			data : {"memberId":"${sessionScope.id}", "content":$(selector).val(), "requestNum":requestNum, "password":"${sessionScope.password}"},
			success : function(data){
			
			reqComment(requestNum);
				
		},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 코멘트 입력처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	}
	
	 function commentUpdate(cIdx, requestNum){
		    var a ='';
		    
		    a += '<div class="input-group">';
		    a += '<input type="text" class="form-control" name="content_'+cIdx+'" value="'+ $(this).find("cComment").text()+'"/>';
		    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+cIdx+","+ requestNum +');">수정</button> </span>';
		    a += '</div>';
		    
		    $('.commentList'+cIdx).html(a);
		}
	 
	 function commentUpdateProc(cIdx, requestNum){
		 console.log($("#requestNum"));
		 console.log(requestNum);
		    var updateContent = $('[name=content_'+cIdx+']').val();
		    const numUrl = "GetXmlReqUpdateCommentController"	
		    $.ajax({
		        url : numUrl,
		        type : 'post',
		        data : {'content' : updateContent, 'cIdx' : cIdx},
		        success : function(data){
		        	
		           getXMLMembers(requestNum);
		           
		        },
				error : function(jqXHR, textStatus, errorThrown){
					alert("Ajax 코멘트 수정처리 실패 : \n"
						+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
						+ "textStatus : " + textStatus +"\n"
						+ "errorThrown : " + errorThrown);
				}
			});
		}
	function commentDelete(cIdx, requestNum) {
		console.log("cIdx"+cIdx);
		console.log("$(cIdx)"+$(cIdx));
		
		const numUrl = "GetXmlReqCommentDeleteController"	
		$.ajax({
			url : numUrl,
			type : "POST",
			dataType : "xml",
			data : {"cIdx":parseInt(cIdx)},
			success : function(data){
				
			//cIdx(parseInt($("#cIdx").text()));
			getXMLMembers(requestNum);
		},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	}
	
	function reqComment(requestNum){
	const numUrl = "getXmlRequestComment?requestNum=" + requestNum;
	$.ajax({
		url : numUrl,
		type : "get",
		dataType : "xml",
		success : function(data){
			
			var commentTbody = "";
				commentTbody += "<form id='rForm' method='POST'}> ";
				commentTbody += "<div class='container'>";
				commentTbody += "<div class='col-sm-8'>";
				commentTbody += "<div class='panel panel-white post panel-shadow'>";
					
				commentTbody += "<div class='post-footer'>";
				commentTbody += "<div class='input-group'>";
				commentTbody += "<input class='form-control' placeholder='Add a comment' type='text' name='content' id='content"+requestNum+"'>";
				commentTbody += "</div>";
				commentTbody += "<span class='input-group-addon'> <button type='button' onclick='commentInsert("+requestNum+")'>댓글달기</button> </span>";
				commentTbody += "<input type='hidden' name='requestNum' value="+requestNum+">";
				commentTbody += "<input type='hidden' name='memberId' value='${sessionScope.id}'>";
				commentTbody += "<input type='hidden' name='password' value='${sessionScope.password}'>";
				commentTbody += "</form> ";
				
			$(data).find("comment").each(function(){
				
				commentTbody += "<ul class='comments-list'>";
				commentTbody += "<li class='comment'><a class='pull-left' href='#'> <img class='avatar' src='http://bootdey.com/img/Content/user_1.jpg' alt='avatar'> </a>";
				commentTbody += "<div class='comment-body'>";
				commentTbody += "<div class='comment-heading'>";
				commentTbody += "<h4 class='user'>"+ $(this).find("cId").text() +"</h4>";
				commentTbody += "<h5 class='time'>5 minutes ago</h5>";
				commentTbody += "</div>";
				commentTbody += "<div class='commentList"+ $(this).find("cIdx").text()+"'> <p>"+ $(this).find("cComment").text() +"</p>";
				if("${sessionScope.id}" ==  $(this).find("cId").text() ) {
				commentTbody += "<span class='input-group-addon'> <button type='button' onclick='commentUpdate("+$(this).find("cIdx").text()+","+requestNum+")'>수정</button> ";
				commentTbody += "<button type='button' onclick='commentDelete("+ $(this).find("cIdx").text()+","+requestNum+")'>삭제</button> </span></div>";
				}
				commentTbody += "</div></li>";
				commentTbody += "</ul>";
				});
				commentTbody += "</div>";
				commentTbody += "</div>";
				commentTbody += "</div>";
				commentTbody += "</div>";
				
				
			$("#commentTbody"+requestNum).html(commentTbody);
	
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("댓글 소환 메서드 Ajax 처리 실패 : \n"
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
                            	<c:if test="${sessionScope.id != null}">
	                                <a href="ReqWriteController" class="table-link">
	                                    <span class="fa-stack">
	                                        <i class="fa fa-square fa-stack-2x"></i>
	                                        <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
	                                    </span>
	                                </a>
                                </c:if>
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
		                                    	<button onClick="getDataBtn(${vo.requestNum })" >보기</button>
		                                    	<br>
												<div id="tbody${vo.requestNum }"></div>
												<div id="commentTbody${vo.requestNum }"></div>
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
                        
                    
                    </div>
                </div>
                  <nav>
								<ul class="pagination">
								<%--[이전으로]에 대한 사용여부 처리 --%>
								<c:choose>
									<%--사용불가(disable) : 첫번째 블록인 경우 --%>
									<c:when test="${pvo.beginPage == 1}">
										<li class="disabled"><span aria-hidden="true">이전</span></li>
									</c:when>
									<c:otherwise>
										<li class="disabled"><a href="ReqListController?cPage=${pvo.beginPage - 1}" aria-label="Previous"><span aria-hidden="true">이전</span></a></li>
									</c:otherwise>
								</c:choose>
								
								<%-- 블록내에 표시할 페이지 표시(시작페이지~끝페이지) --%>
								<c:forEach var="k" begin="${pvo.beginPage }" end="${pvo.endPage }">
								<c:choose>
									<c:when test="${k == pvo.nowPage}">
										<li class="active">${k } <span class="sr-only">${k }</span></li>
									</c:when>
									<c:otherwise>
										<li class="disabled"><a href="ReqListController?cPage=${k}">${k } <span class="sr-only">${k }</span></a></li>
									</c:otherwise>
								</c:choose>
								</c:forEach>
								
								<%--[다음으로]에 대한 사용여부 처리 --%>
								<c:choose>
									<%--사용불가(disable) : 
										endPage가 전체페이지 수보다  크거나 같으면 --%>
									<c:when test="${pvo.endPage >= pvo.totalPage }">
										<li class="disabled"><span aria-hidden="true">다음</span></li>
									</c:when>
									<c:otherwise>
										<li class="disabled"><a href="ReqListController?cPage=${pvo.endPage + 1}" aria-label="Previous"><span aria-hidden="true">다음</span></a></li>
									</c:otherwise>
								</c:choose>
								</ul>	
                          	</nav>
            </div>
            
        </div>
        
    </div>
    
</div>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="include/bottom.jsp" %>
</body>
</html>