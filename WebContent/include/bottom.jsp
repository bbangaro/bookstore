<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br>
<br>
<br>
<br>
<br>
<br>
<nav class="navbar fixed-bottom navbar-expand-sm navbar-light bg-light justify-content-center">
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="/bookstore/NotListController">공지사항</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="#">후기게시판</a></li>
		<li class="nav-item"><a class="nav-link" href="/bookstore/ReqListController">책요청</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="/bookstore/QnAListController">Q&A</a>
		</li>
		<c:if test="${empty sessionScope.id}">
			<li class="nav-item"><a class="nav-link" href="/bookstore/login.jsp">로그인</a>
			</li>
		</c:if>
		<c:if test="${not empty sessionScope.id}">
			<li class="nav-item"><a class="nav-link" href="/bookstore/logout">${ sessionScope.id}님<br>로그아웃
			</a>  </li>
			<li class="nav-item"><a class="nav-link" href="/bookstore/CartListController">장바구니</a></li>
		</c:if>
	</ul>
</nav>



