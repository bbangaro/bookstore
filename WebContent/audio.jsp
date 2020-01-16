<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.playButton {
	background:linear-gradient(to bottom, #ffec64 5%, #f0b352 100%);
	background-color:#ffec64;
	border-radius:12px;
	display:inline-block;
	cursor:pointer;
	color:#333333;
	font-family:Arial;
	font-size:13px;
	font-weight:bold;
	padding:8px 18px;
	text-decoration:none;
	text-shadow:1px 0px 0px #ffee66;
}
.pauseButton:hover {
	background:linear-gradient(to bottom, #f0b352 5%, #ffec64 100%);
	background-color:#f0b352;
}
.pauseButton:active {
	position:relative;
	top:1px;
}

.pauseButton {
	background:linear-gradient(to bottom, #c5d6d2 5%, #b8baba 100%);
	background-color:#c5d6d2;
	border-radius:13px;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:13px;
	font-weight:bold;
	padding:8px 18px;
	text-decoration:none;
	text-shadow:1px 0px 0px #000000;
}
.pauseButton:hover {
	background:linear-gradient(to bottom, #b8baba 5%, #c5d6d2 100%);
	background-color:#b8baba;
}
.pauseButtonn:active {
	position:relative;
	top:1px;
}

</style>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>

	var audio = new Audio('mp3/작은별.mp3');
	
	function play () {
		audio.play();
	}

	function pause () {
		audio.pause();
	}
</script>
</head>

<body>

	<audio id="bookAudio" src="mp3/작은별.mp3"> </audio>

	<button id="play" onclick="play()" class="playButton"> play</button>
	<button id="pause" onclick="pause()" class="pauseButton"> stop</button>

</body>

</html>
