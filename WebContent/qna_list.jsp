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

<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">

<link href="csstemplate/bss.css" rel="stylesheet" type="text/css">

</head>
<body>			
<%@ include file="include/top.jsp" %>


<hr>
<div class="container bootstrap snippet">
    <div class="row">
    <h2>Q&A 게시판</h2>
        <div class="col-lg-12">
            <div class="main-box no-header clearfix">
                <div class="main-box-body clearfix">
                    <div class="table-responsive">
                    	
                    	<div class="pull-right">
							<div class="btn-group">
								버튼 수정
								<button type="button" class="btn btn-success btn-filter" data-target="delivery">배송</button>
								<button type="button" class="btn btn-warning btn-filter" data-target="order">주문/취소</button>
								<button type="button" class="btn btn-danger btn-filter" data-target="return">반품/교환</button>
								<button type="button" class="btn btn-info btn-filter" data-target="payment">결제/결제수단</button>
								<button type="button" class="btn btn-default btn-filter" data-target="all">전체</button>
							</div>
						</div>
                    
                        <table class="table user-list">
                            <thead>
                                <tr>
                                <th><span>이미지</span></th>
                                <th><span>아이디</span></th>
                                <th class="text-center"><span>제목</span></th>
                                <th><span>유형</span></th>
                                <th>등록일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <img src="images/5.jpg" alt="">
                                    </td>
                                    <td>
                                        <span class="label label-default">hello123</span>
                                    </td>
                                    <td class="text-center">
                                        <a href="#">1일에 주문했는데 배송 언제 오나요??</a>
                                    </td>
                                    <td>
                                    	배송
                                    </td>
                                    <td>2013/08/12</td>
                                </tr>
                                <c:forEach var="vo" items="${list }">
                                	<tr>
                                		<td>
                                			${vo.upload }
                                		</td>
                                		<td>
                                			${vo.memberId }
                                		</td>
                                		<td class="text-center">
                                			<a href="#">${vo.subject }</a>
                                		</td>
                                		<td>
                                			${vo.category }
                                		</td>
                                		<td>
                                			${vo.regdate }
                                		</td>
                                	</tr>
                                </c:forEach>
                                
                                
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

	