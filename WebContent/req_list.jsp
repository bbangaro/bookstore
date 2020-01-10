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
	$(function(){
		$("#getDataBtn").click(function(){
			getXMLMembers();
		});
	});
	
	
	function getXMLMembers(){
	const numUrl = "getXmlRequest?requestNum=" + $("#requestNum").text();
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
					tbody += "<td>" + $(this).find("content").text() + "</td>";
					tbody += "<td><img src='images/" + $(this).find("upload").text() + ".jpg'></td>";
					tbody += "</tr>";
				});
				
				$("#tbody").html(tbody);
	
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax 처리 실패 : \n"
					+ "jqXHR.readyState : " + jqXHR.readyState +"\n"
					+ "textStatus : " + textStatus +"\n"
					+ "errorThrown : " + errorThrown);
			}
		});
	}
</script>

<style>
body{
    background:white;    
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
a {
    color: #3498db;
    outline: none!important;
}
.user-list tbody td>img {
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



</style>

</head>
<body>
		<%@ include file="include/top.jsp" %>


<div class="container bootstrap snippet">
    <div class="row">
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                        <table class="table user-list">
                            <thead>
                                <a href="ReqWriteController?requestNum=${guestBookVO.getRequestNum }" class="table-link">
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
		                                        <img src="images/${vo.upload }.jpg" width="50px" height="50px">
		                                    </td>
		                                    <td><a>${vo.memberId }</a></td>
		                                    <td>
		                                    	<a href="ReqOneListController?requestNum=${vo.requestNum }">${vo.subject }</a>
		                                    	<button id="getDataBtn">눌렁</button>
		                                    	<br>
												<div id="tbody"></div>
		                                    </td>
		                                    <td>
		                                        <a>${vo.regdate }</a>
		                                    </td>
		                                     
	                               			<td style="width: 10%;">
		                                        <a href="#" class="table-link">
		                                            <span class="fa-stack">
		                                                <i class="fa fa-square fa-stack-2x"></i>
		                                                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
		                                            </span>
		                                        </a>
		                                        <a href="#" class="table-link danger">
		                                            <span class="fa-stack">
		                                                <i class="fa fa-square fa-stack-2x"></i>
		                                                <i class="fa fa-trash-o fa-stack-1x fa-inverse"></i>
		                                            </span>
		                                        </a>
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
            </div>
        </div>
    </div>
</div>

<%@ include file="include/bottom.jsp" %>
</body>
</html>