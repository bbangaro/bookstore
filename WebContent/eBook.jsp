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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">


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

		<div class="slider book">
			<div class="slide_viewer">
				<div class="slide_group">
				
					<div class="slide">
						<img src="images/${book.bImage }">
					</div>
			
					<audio id="bookAudio" src="ebook/result.mp3" hidden></audio>		
					
					<c:forEach var="list" items="${list}">
					
					
							
					<div class="slide">
						<button type="button" onclick="playEbook(${list.eNum}, '${list.eText}')" ><img src="images/playbutton.png"> </button>
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
				<span class="glyphicon glyphicon-chevron-left"  aria-hidden="true"></span>
      <g>
        <g>
          <path fill="#474544"
						d="M-10.5,22.118C-10.5,4.132,4.133-10.5,22.118-10.5S54.736,4.132,54.736,22.118
			c0,17.985-14.633,32.618-32.618,32.618S-10.5,40.103-10.5,22.118z M-8.288,22.118c0,16.766,13.639,30.406,30.406,30.406 c16.765,0,30.405-13.641,30.405-30.406c0-16.766-13.641-30.406-30.405-30.406C5.35-8.288-8.288,5.352-8.288,22.118z" />
          <path fill="#474544"
						d="M25.43,33.243L14.628,22.429c-0.433-0.432-0.433-1.132,0-1.564L25.43,10.051c0.432-0.432,1.132-0.432,1.563,0	c0.431,0.431,0.431,1.132,0,1.564L16.972,21.647l10.021,10.035c0.432,0.433,0.432,1.134,0,1.564	c-0.215,0.218-0.498,0.323-0.78,0.323C25.929,33.569,25.646,33.464,25.43,33.243z" />
        </g>
      </g>
    </svg>
			</div>
			<div class="next_btn" title="Next">
				<span class="glyphicon glyphicon-chevron-right"  aria-hidden="true"></span>
      <g>
        <g>
          <path fill="#474544"
						d="M22.118,54.736C4.132,54.736-10.5,40.103-10.5,22.118C-10.5,4.132,4.132-10.5,22.118-10.5	c17.985,0,32.618,14.632,32.618,32.618C54.736,40.103,40.103,54.736,22.118,54.736z M22.118-8.288	c-16.765,0-30.406,13.64-30.406,30.406c0,16.766,13.641,30.406,30.406,30.406c16.768,0,30.406-13.641,30.406-30.406 C52.524,5.352,38.885-8.288,22.118-8.288z" />
          <path fill="#474544"
						d="M18.022,33.569c 0.282,0-0.566-0.105-0.781-0.323c-0.432-0.431-0.432-1.132,0-1.564l10.022-10.035 			L17.241,11.615c 0.431-0.432-0.431-1.133,0-1.564c0.432-0.432,1.132-0.432,1.564,0l10.803,10.814c0.433,0.432,0.433,1.132,0,1.564 L18.805,33.243C18.59,33.464,18.306,33.569,18.022,33.569z" />
        </g>
      </g>
    </svg>
			</div>

		</div>
	</div>


<script>

</script>
</body>
</html>