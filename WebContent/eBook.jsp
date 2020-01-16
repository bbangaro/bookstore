<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<style>
.book, .book img, .book::after,
.book::before {
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
}

body,
html {
  width: 100%;
  height: 100%;
  display: table;
  text-align: center;
}

body {
  background: #fde3a7;
}

ul {
  display: table-cell;
  vertical-align: middle;
}

.list-inline {
  padding-left: 0;
  list-style: none;
}
.list-inline > li {
  display: inline-block;
  margin-left: 2em;
}
.list-inline > li:first-child {
  margin-left: 0;
}

.book {
  cursor: pointer;
  display: block;
  width: 600px;
  height: 880px;
  position: relative;
  background: white;
  z-index: 1;
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1), 0 9px 20px 0 rgba(0, 0, 0, 0.25);
  overflow: hidden;
  transition: box-shadow .3s linear;
}

.book img {
  width: inherit;
  height: inherit;
  -webkit-transform-origin: 0 50%;
          transform-origin: 0 50%;
  -webkit-transform: rotateY(0);
          transform: rotateY(0);
  transition: all .45s ease;
}

.book:hover {
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.25), 0 9px 20px 0 rgba(0, 0, 0, 0.45);
}
.book:hover img {
  -webkit-transform: rotateY(-25deg);
          transform: rotateY(-25deg);
  box-shadow: 1px 1px 5px 5px rgba(0, 0, 0, 0.2);
}

.book::after,
.book::before {
  content: '';
  display: block;
  width: inherit;
  height: inherit;
  position: absolute;
  z-index: -1;
  top: 0;
  background: white;
  border: 1px solid #d9d9d9;
}

.book::before {
  left: -3px;
}

.book::after {
  left: -6px;
}


</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script>
	
</script>


</head>
<body>

	<ul class='list-inline'>
	  <li class='book'>
	    <img src='http://37signals.com/images/remote/remote_front.png' />
	  </li>
	</ul>
	
</body>
</html>