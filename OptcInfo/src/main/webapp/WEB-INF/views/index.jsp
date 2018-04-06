<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>OPTCINFO</title>	
<meta  name="viewport"  content="width=device-width, initial-scale=1,minimum-scale=1, user-scalable=1">
<link href="resources/css/style.css" type="text/css" rel="stylesheet">
<link href="resources/css/header.css" type="text/css" rel="stylesheet">
</head>
<body>
	<header class="header">
		<h1>NOTE NOTE</h1>
		<nav class="main-menu">
			<h1 class="hidden">메인메뉴</h1>
			<ul>
				<li><a><img src="resources/img/icon/ic_dehaze_black_24dp_1x.png"></a></li>
				<li><a href=""><img src="resources/img/icon/ic_search_black_24dp_1x.png"></a></li>
				<!-- <li><a href=""><img src=""></a></li> -->
			</ul>
		</nav>
		</header>
		<nav class="menu hidden">
			<ul class="main-menu-btn">
				<c:forEach begin="0" end="4">
				<li class="menu-btn">
					<img src="resources/img/icon/menu.png"/>
					
				</li>
				</c:forEach>
			</ul>
			
		</nav>
		
		<input type="button" class="bts" value="버튼"/>
		<nav class="sub-menu hidden">
			<ul>
				<c:forEach begin="0" end="3">
					<li><img src="resources/img/icon/submenu.png" /></li>
				</c:forEach>
			</ul>
		</nav>
		
</body>
</html>

<script>

window.addEventListener("load",function(evnet){
	
	var mainMenu = document.querySelector(".main-menu>ul li");
	var menu = document.querySelector(".menu");
	var menuBtn = document.querySelector(".menu-btn>img");
	var subMenu = document.querySelector(".sub-menu");
	var buttons = document.querySelector(".bts");
	var cnt = 0;
	var cnt1 = 0;
	
	mainMenu.onclick = function(e)
	{	
		cnt = cnt + 1;
		if(cnt % 2 == 1)
		{
			menu.classList.remove("hidden");
			
			
			
		}
		else
			menu.classList.add("hidden");
	};
	
	
	
});

</script>