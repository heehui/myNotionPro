<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
.sidebar ul li a {
	margin: 8px;
}

.sidebar ul {
	margin-left: -30px;
}

.sidebar li {
    margin: 0px -17px;
    padding: 3px 13px;
    width: 100%;
}

.sidebar .expand-menu {
	display: none;
}

.sidebar .expand-menu:checked ~ ul {
	display: block;
	height: auto;
}

.sidebar {
	float: left;
	width: 12%;
	top: 5%;
	padding: 10px;
	overflow: hidden;
	transition-duration: 800ms;
}



.sidebar.sidebar-name {
	display: block;
	height: 25px;
	padding: 8px;
	text-decoration: none;
}

.sidebar a:hover {
	color: #e8e7e4;
}

.sidebar ul li:hover, .sidebar.sidebar-name:hover {
	background-color: white;
	color: black;
	border-radius: 10px;	
}

.sidebar div {
	position: absolute;
	left: 12px;
	line-height: 1.5;
	font-size: 18px;
}

@media screen and (max-width:1023px) {
	.sidebar {
		width: 20%;
	}
}

@media screen and (max-width:560px) {
	.sidebar .expend-menu:not(:checked) ~ ul {
		display: none;
	}
}

.sidebar .active {
	display: flex;
	flex-direction: column;
	justify-content: center;
	width: 1.2%;
	height: auto;
	transition-duration: 1000ms;
	
	.sidebar-name {
		display: none;
	}
}

.sidebar .sidebar-name.fa-bars: hover {
	display: none;
}

.sidebar .sidebar-name.fa-angles-right: hover {
	display: none;
}

</style>
</head>
<body>
		<div class="sidebar" style="background-color: #FBFBFA;">
		<div class="sidebar-name"><i class="fa-solid fa-bars top-menu-btn" onclick="sideMenuBtnClick();" style="margin-right: 10px;"></i>
			<span>My Notion Page~</span></div>
			<input type="checkbox" class="expand-menu" name="expand-menu">
			<ul class="side-menu-btn main-btn">
				<li><i class="fa-solid fa-magnifying-glass"></i><a href="#">빠른 검색</a></li>
				<li><i class="fa-solid fa-gear"></i><a href="#">환경설정</a></li>
			</ul>
			<br>
			<ul class="side-menu-btn side-btn">
				<li><i class="fa-solid fa-caret-right"></i><a href="#page1.do" class="main-menu">서버 개발 기록정리</a></li>
				<li><i class="fa-solid fa-caret-right"></i><a href="#page1.do" class="main-menu">작업 목록</a></li>
				<li><i class="fa-solid fa-caret-right"></i><a href="#page1.do" class="main-menu">[스크랩]</a></li>
				<li><i class="fa-solid fa-caret-right"></i><a href="#page1.do" class="main-menu">[업무 기록]</a></li>
				<li><i class="fa-solid fa-caret-right"></i><a href="#page1.do" class="main-menu">[개인 공부 기록]</a></li>
			</ul>
		</div>
</body>
<script>
	let topMenuBtn = document.querySelector(".top-menu-btn");
	
	window.onload = function() {
		
		let element = document.querySelector(".side-menu-btn");
		//alert(element.innerText);
		
		element.addEventListener('click', sideMenu, false);
		 
	/* 	let element = document.querySelector(".side-menu-btn.main-btn");
		let btnName = element.children[0].innerText;
		let btnName2 = element.children[1].innerText;

		alert("첫번째 자식요소:" + btnName);
		alert("첫번째 자식요소:" + btnName2);
 */
		/* topMenuBtn.addEventListener("mouseover", function(event) {
 			topMenuBtn.classList.remove("fa-bars");
 			topMenuBtn.classList.add("fa-angles-right");
 		}, false); */
 		
 		/* let menuBars = document.querySelector(".fa-angles-right"); 
 		topMenuBtn.addEventListener("mouseout", function(event) {
 			topMenuBtn.classList.remove("fa-angles-right");
 			topMenuBtn.classList.add("fa-bars");
 		}, false); */
 		
	}
	
	function sideMenu(e) {
		if(e.target !== e.currentTarget) {
			let clickedItem = e.target.innerText;
			//alert("hello:" + clickedItem);
			
		}
	}
	
	function sideMenuBtnClick() {
		let sidebar = document.querySelector(".sidebar");
		let sideMenuBtn = document.querySelector(".side-menu-btn");
		let mainImageContent = document.querySelector(".content");
		let contentExplain = document.querySelector(".content.content-explain");
		let ul = document.querySelectorAll("ul");
		let sidebarNm = document.querySelector(".sidebar-name span");
	    
		if(sideMenuBtn.classList.contains("active")) {
			sidebar.style.width = "12%";
			sidebar.style.height = "70%";
			
			mainImageContent.classList.remove("active");
			contentExplain.classList.remove("active");
			sideMenuBtn.classList.remove("active");
			
			topMenuBtn.classList.remove("fa-bars");
			topMenuBtn.classList.remove("fa-angles-left");
			topMenuBtn.classList.add("fa-angles-right");
			
			mainImageContent.style.width = "86.5%";
			contentExplain.style.width = "86.5%";
			
			ul.forEach((urlItem) => {
				urlItem.style.display = "block";
			});
			
			sidebarNm.style.display = "inline";
			
			
		} else {
			sidebar.style.width = "1.2%";
			sidebar.style.height = "2.0%";
			
			mainImageContent.classList.add("active");
			contentExplain.classList.add("active");
			sideMenuBtn.classList.add("active");
			
			topMenuBtn.classList.remove("fa-bars");
			topMenuBtn.classList.remove("fa-angles-right");
			topMenuBtn.classList.add("fa-angles-left");
	
			mainImageContent.style.width = "100%";
			contentExplain.style.width = "100%";
				
			ul.forEach((urlItem) => {
				urlItem.style.display = "none";
			});
			
			sidebarNm.style.display = "none";
		}	
	}	
</script>
</html>
