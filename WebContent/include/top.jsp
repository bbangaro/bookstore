<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
$(window).scroll(function(event){
if(jQuery(window).scrollTop() > jQuery(".banner").offset().top) {
jQuery("#chase").css("position", "fixed");
}
else if((jQuery(window).scrollTop() < jQuery(".banner").offset().top)) {
jQuery("#chase").css("position", "static");
}
});
</script>



<div class="container">
	<div class="container text-center">
		<a href="#">
			<img src="images/5.jpg">
		</a>
	</div>
	
	  <br>
	  <div class="banner nav justify-content-center">
		<div id="chase" style="top:0px;">
			<ul class="nav justify-content-center">
			    <li class="nav-item">
			      <a class="nav-link" href="index.jsp">Link</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="list.jsp">Link</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="#">Link</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="#">Link</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="#">Link</a>
			    </li>
	 		</ul>
		</div>
	  </div>
	  	
</div>