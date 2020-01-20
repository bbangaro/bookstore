<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>eBook 페이지</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<!-- 이북 css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ebook.css" />
<!-- 이북 스크립트  -->
<script src="${pageContext.request.contextPath}/js/ebook.js"></script>

<!-- 부투스트랩꺼 쓰려면 이거 있어야 함 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">


</head>
<body>
	<%-- 
<div class="row">
	<ul class='list-inline'>
		<li class='book'>
	   		<img src="images/${book.bImage }" width="800px" height="1200px"/>
		</li>
		<c:forEach var="list" items="${list}">
			<li class='book'>
				<img src="ebookImages/${list.eImage }" width="800px" height="1200px"/>
			</li>
		</c:forEach>
	</ul>
</div>
 --%>
	<!-- 이걸루ㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜㅜ  -->
	<!-- div row는 한줄 무적권 차지하게 해줌 -->

	<div class="row">
		<a href="index.jsp"> <img src="images/goToHome.png">
		</a>
	</div>
	<div class="row">

		<div class="slider book">
			<div class="slide_viewer">
				<div class="slide_group">

					<div class="slide">
						<img src="images/${book.bImage }">
					</div>

					<audio id="bookAudio" src="ebook/result.mp3" hidden></audio>

					<c:forEach var="list" items="${list}">


						<div class="slide">
							<button class="playEbook" type="button" onclick="playEbook(${list.eNum}, '${list.eText}')">
								<img src="images/playbutton.png">
							</button>
							<img src="ebookImages/${list.eImage }" />
						</div>


					</c:forEach>



				</div>
			</div>
		</div>
		<!-- End // .slider -->

		<div class="slide_buttons"></div>

		<div class="directional_nav">
			<div class="previous_btn" title="Previous">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			</div>
			<div class="next_btn" title="Next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				
			</div>

		</div>
	</div>


	<script>

</script>
</body>
</html>