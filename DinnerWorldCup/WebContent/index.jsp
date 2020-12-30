<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DinnerWorldCup</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">
<script>
	
const image_labels = [
	"김치찌개",				// 1.jpg
	"부대찌개",
	"소곱창",
	"냉장고파먹기",
	"편털",				   // 5.jpg
	"파스타",
	"짜장면",
	"짬뽕",
	"치킨",
	"햄버거",				//10.webp
	"초밥",
	"돈부리(덮밥)",
	"쌀국수",
	"삼겹살",
	"볶음밥",				//15.jpg
	"라면+김밥"
]

const image_base_path = "img/Food/"

const image_paths = [
	image_base_path + "1.jpg",
	image_base_path + "2.webp",
	image_base_path + "3.jpg",
	image_base_path + "4.webp",
	image_base_path + "5.jpg",
	image_base_path + "6.webp",
	image_base_path + "7.jpg",
	image_base_path + "8.jpg",
	image_base_path + "9.jpg",
	image_base_path + "10.webp",
	image_base_path + "11.jpg",
	image_base_path + "12.jpg",
	image_base_path + "13.webp",
	image_base_path + "14.jpg",
	image_base_path + "15.jpg",
	image_base_path + "16.webp"
]

function imgClick(divDom){

	//DOM selector를 위해 class를 추가
	divDom.classList.add("selected");

	changeImage( parseInt(Math.random() * image_paths.length ));

	divDom.classList.remove("selected");
}


/**
 * 	TODO LIST
 *  1. 같은 이미지 load 되지 않도록 하기(좌<->우 이미지 다르게)
 *  2. 선택된 이미지 history 기록 및 이미 골랐던 이미지는 다시 나오지 않게 하기 (16강->8강 ... 와 같이 2배수로 합격 되도록)
 *  3. 이후 선택된 이미지들 history 콘솔에 로그 찍기 (이긴순서대로 label만 출력 e.g] 떢볶이, 짜장면, 탕수육, 짜장면 -> 짜장면이 최종우승임)
 * 
*/

function changeImage(index){
	var names = image_labels[index];
	var src = image_paths[index];
	// 선택된 DOM 객체 값 변경해줌
	// JS의 get~~ 류 함수는 항상 array로 반환하므로 첫번째 index  인 [0] 객체를 지정해주도록
	var selectedDOM = document.getElementsByClassName('selected')[0];
	selectedDOM.getElementsByClassName('image')[0].src = src;
	selectedDOM.getElementsByClassName('label')[0].innerHTML = names;

}

</script>
</head>
<body>
	<header><jsp:include page="header.jsp"/></header>
	<div class="container contents-wrap">
		<div id="game" class="box">

			<!-- left frame -->
			<div class="frame" onclick="imgClick(this)"> 
				<img id="left_image" class="image" src="img/samgyeobsal.jpg">
				<div id="left_name" class="label">삼겹살</div>
			</div>

			<!-- right frame -->
			<div class="frame" onclick="imgClick(this)"> 
				<img id="right_image" class="image" src="img/tteokbokki.jpg">
				<div id="right_name" class="label">떡볶이</div>
			</div>

			<div class="vs"><img id="vs" src="img/vs.png"></div>
		</div>
	</div>
	<footer><jsp:include page="footer.jsp"/></footer>
	
</body>

</html>