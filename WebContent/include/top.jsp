<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

 

	<div class="container text-center mt-3">
		<a href="index.jsp">
			<img src="images/main2.jpg" onerror="this.src='../images/main2.jpg'" width="150">
		</a>
	</div>
	
	  <br>
	  <div class="container sticky-top">
		<nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-center">
			<ul class="navbar-nav ml-auto">
			    <li class="nav-item ml-5 mr-3 ${ko }">
			      <a class="nav-link " href="/bookstore/Kbook?hCode=K&ko=active">국내</a>
			    </li>
			    <li class="nav-item mr-3 ${no }">
			      <a class="nav-link" href="/bookstore/nbook?hCode=N&no=active">신간</a>
			    </li>
			    <li class="nav-item mr-3 ${bo }">
			      <a class="nav-link" href="/bookstore/bbook?hCode=B&bo=active">베스트셀러</a>
			    </li>
			    <li class="nav-item mr-3 ${oo }">
			      <a class="nav-link" href="/bookstore/obook?hCode=O&oo=active">외국</a>
			    </li>
	     	</ul>
	     	<ul class="navbar-nav ml-auto">
			    <li class="nav-item">
			    	<a class="nav-link " href="/bookstore/Search?def=first"><i class="material-icons" style="font-size:24px;">search</i></a>
			    </li>
			</ul>
		</nav>
	  </div>
