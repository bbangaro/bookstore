<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <style>
	 #floatMenu {
		position: absolute;
		top: 772px;
	}
 </style>
 <script>
	$(document).ready(function() {
	
		// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
		var floatPosition = parseInt($("#floatMenu").css('top'));
		// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );
	
		$(window).scroll(function() {
			// 현재 스크롤 위치를 가져온다.
			var scrollTop = $(window).scrollTop();
			var newPosition = scrollTop + floatPosition + "px";
	
			
			 $("#floatMenu").css('top', newPosition);
			 
	
	
		}).scroll();
	
	});
</script>  
    
   
			<nav class="navbar fixed-bottom navbar-light bg-light navbar-fixed-top" data-toggle="affix">
    			<div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
		            <ul class="navbar-nav">
		                <li class="nav-item">
		                    <a class="nav-link" href="#">공지사항</a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="#">후기게시판</a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="#">로그인</a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="#">책요청</a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="#">Q&A</a>
		                </li>
		            </ul>
   		 		</div>
			</nav>



    
