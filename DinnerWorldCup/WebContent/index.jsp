<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DinnerWorldCup</title>
<link rel="stylesheet" href="css/style.css">
<script>

/* window.onload = function(){
	limg.addEventListener('click', function(){
		alert('왼쪽이미지 클릭');
	});
	rimg.addEventListener('click', function(){
		alert('오른쪽이미지 클릭');
	});
}; */
	
function imgClick(n){
		if(n == 1){
			alert("왼쪽 이미지 클릭");
		} else if(n == 2) {
			alert("오른쪽 이미지 클릭");
		}
}
	
</script>
</head>
<body>

	<div id="game" class="box">
	    <h2 id="round_title" style="">DinnerWorldCup</h2>
		<div class="frame"><img onclick="imgClick(1)" id="left_image" src="img/samgyeobsal.jpg"><div id="left_name" class="name">냉삼</div></div>
		<div class="frame"><img onclick="imgClick(2)" id="right_image" src="img/tteokbokki.jpg"><div id="right_name" class="name">떡볶이</div></div>
		<div class="vs"><img id="vs" src="img/vs.png"></div>
	</div>

</body>
</html>