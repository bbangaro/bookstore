<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>북스토어</title>
</head>
<body>
	<div class="container my-5">
		<div class="row">
			<div class="col-4 text-right">
				<a href="#"><img src="images/5.jpg"></a>
			</div>
			<div class="col-4 mt-3">
				<form class="form-block">
				    <div class="input-group">
				      <input type="text" class="form-control" placeholder="검색">
				      <div class="input-group-prepend">
				      	<input type="submit" class="input-group-text" value="검색">
				      </div>
				    </div>    
		 		</form>
	 		</div>
	 		<div class="col-4"></div>
		</div>
	</div>
	<nav class="navbar navbar-expand-sm bg-info navbar-dark">
	  <ul class="navbar-nav">
	    <li class="nav-item">
	      <a class="nav-link" href="#">Active</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#">Link</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="#">Link</a>
	    </li>
	  </ul>
	  <ul class="navbar-nav ml-auto">
	  	<li class="nav-item">
	      <a class="nav-link" href="#">로그인</a>
	    </li>
	  	<li class="nav-item">
	      <a class="nav-link" href="#">회원가입</a>
	    </li>
	  </ul>
	</nav>
<div class="container">
	<div class="row">
		<div class="col-8">
			<div class="jumbotron"><h1>배너</h1></div>
		</div>
		<div class="col p-0">
			<div class="card bg-secondary text-white">
	   			<div class="card-body">
	   				베스트셀러<br><hr>
	   				1.<br><hr>
	   				2.<br><hr>
	   				3.<br><hr>
	   				4.<br><hr>
	   				5.<br><hr>
	   				6.<br><hr>
	   			</div>
			</div>
		</div>
	</div>
</div>

<div class="container">
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link text-dark" href="#">인문</a>
    </li>
    <li class="nav-item text-dark">
      <a class="nav-link" href="#">소설</a>
    </li>
    <li class="nav-item text-dark">
      <a class="nav-link" href="#">경제</a>
    </li>
    <li class="nav-item text-dark">
      <a class="nav-link" href="#">역사</a>
    </li>
  </ul>
</div>

<div class="container">
<div id="demo" class="carousel slide" data-ride="carousel">

  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div class="jumbotron"><h1>1</h1></div>
    </div>
    <div class="carousel-item">
      <div class="jumbotron"><h1>2</h1></div>
    </div>
    <div class="carousel-item">
      <div class="jumbotron"><h1>3</h1></div>
    </div>
  </div>
  
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br>


<div class="jumbotron">
	<div class="container">
		<div class="row">
			<div class="col-sm-3"><h1>1구역</h1></div>
			<div class="col-sm-3"><h1>2구역</h1></div>
			<div class="col-sm-3"><h1>3구역</h1></div>
			<div class="col-sm-3"><h1>4구역</h1></div>
		</div>
	</div>
</div>

</body>
</html>