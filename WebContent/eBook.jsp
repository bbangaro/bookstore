<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>eBook 페이지</title>
 <script src="https://code.jquery.com/jquery-3.4.1.min.js"> </script>
 
<script>
$(function(){
  
	
	
    
    
});	


</script>

<style>
.book, .book img, .book::after, .book::before {
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}
body, html {
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
.list-inline>li {
	display: inline-block;
	margin-left: 2em;
}
.list-inline>li:first-child {
	margin-left: 0;
}
.book {
	cursor: pointer;
	display: block;
	width: 500px;
	height: 770px;
	position: relative;
	background: white;
	z-index: 1;
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1), 0 9px 20px 0
		rgba(0, 0, 0, 0.25);
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
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.25), 0 9px 20px 0
		rgba(0, 0, 0, 0.45);
}
.book:hover img {
	-webkit-transform: rotateY(-25deg);
	transform: rotateY(-25deg);
	box-shadow: 1px 1px 5px 5px rgba(0, 0, 0, 0.2);
}
.book::after, .book::before {
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
<!-- -->
@import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);
@import url(https://fonts.googleapis.com/css?family=Lora);
[class*=" imghvr-"],
[class^="imghvr-"] {
  font-family: Montserrat, sans-serif;
  position: relative;
  display: inline-block;
  margin: 0;
  max-width: 100%;
  background-color: rgba(230, 230, 230, 0.7);
  color: #666;
  overflow: hidden;
  -moz-osx-font-smoothing: grayscale;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  -webkit-transform: translateZ(0);
  transform: translateZ(0);
}
[class*=" imghvr-"] img,
[class^="imghvr-"] img {
  vertical-align: top;
  max-width: 100%;
}
[class*=" imghvr-"] figcaption,
[class^="imghvr-"] figcaption {
  background-color: rgba(255, 255, 255, 0.9);
  padding: 20px;
  position: absolute;
  top: 15px;
  bottom: 15px;
  left: 15px;
  right: 15px;
  border: 1px solid rgba(0, 0, 0, 0.1);
}
[class*=" imghvr-"] h3,
[class*=" imghvr-"] p,
[class^="imghvr-"] h3,
[class^="imghvr-"] p {
  margin: 0;
  padding: 0;
}
[class*=" imghvr-"] h3,
[class^="imghvr-"] h3 {
  font-weight: 700;
  color: #333;
  margin-bottom: 2px;
}
[class*=" imghvr-"] p,
[class^="imghvr-"] p {
  font-family: Lora, sans-serif;
  font-size: 0.9em;
}
[class*=" imghvr-"] a,
[class^="imghvr-"] a {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 1;
}
[class*=" imghvr-"],
[class*=" imghvr-"] *,
[class*=" imghvr-"] :after,
[class*=" imghvr-"] :before,
[class*=" imghvr-"]:after,
[class*=" imghvr-"]:before,
[class^="imghvr-"],
[class^="imghvr-"] *,
[class^="imghvr-"] :after,
[class^="imghvr-"] :before,
[class^="imghvr-"]:after,
[class^="imghvr-"]:before {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
.imghvr-fade figcaption,
.imghvr-fade:hover img {
  opacity: 0;
}
.imghvr-fade:hover figcaption {
  opacity: 1;
}

[class*=" imghvr-scale-"]:before,
[class^="imghvr-scale-"]:before {
  background-color: inherit;
  top: 15px;
  bottom: 15px;
  left: 15px;
  right: 15px;
  position: absolute;
  content: "";
}
[class*=" imghvr-scale-"] figcaption,
[class^="imghvr-scale-"] figcaption {
  opacity: 0;
}
[class*=" imghvr-scale-"]:hover:before,
[class^="imghvr-scale-"]:hover:before {
  top: 15px;
  bottom: 15px;
  left: 15px;
  right: 15px;
  opacity: 0.9;
}
[class*=" imghvr-scale-"]:hover figcaption,
[class^="imghvr-scale-"]:hover figcaption {
  opacity: 1;
  -webkit-transition-delay: 0.25s;
  transition-delay: 0.25s;
}
.imghvr-scale-top-left:before {
  bottom: 100%;
  right: 100%;
}
.imghvr-scale-top-right:before {
  bottom: 100%;
  left: 100%;
}

[class*=" imghvr-fall-away-"],
[class^="imghvr-fall-away-"] {
  -webkit-perspective: 50em;
  perspective: 50em;
}
[class*=" imghvr-fall-away-"] img,
[class^="imghvr-fall-away-"] img {
  -webkit-transform-origin: 50% 50%;
  -ms-transform-origin: 50% 50%;
  transform-origin: 50% 50%;
  -webkit-transition: all 0.45s ease-in;
  transition: all 0.45s ease-in;
}



	
</style>




</head>
<body>

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

<!--  
        <div class="demo">
          <figure class="imghvr-scale-top-left"><img src="images/${book.bImage }" >
            <figcaption>
              <p><img src="ebookImages/63(1).jpg" ></p>
            </figcaption><a href="javascript:;"></a>
          </figure>
        </div>
        <div class="demo">
       
        <div class="demo">
          <figure class="imghvr-scale-top-right"><img src="ebookImages/63(1).jpg" alt="54">
            <figcaption>
               <p><img src="ebookImages/63(2).jpg" ></p>
            </figcaption><a href="javascript:;"></a>
          </figure>
        </div>

-->
</body>
</html>