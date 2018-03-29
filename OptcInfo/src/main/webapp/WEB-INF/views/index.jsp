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
		<nav class="menu hidden">
			<ul>
				<li><a href=""><img src="resources/img/icon/test.png"/></a></li>
				<li><a href=""><img src="resources/img/icon/test.png"/></a></li>
				<li><a href=""><img src="resources/img/icon/test.png"/></a></li>
				<li><a href=""><img src="resources/img/icon/test.png"/></a></li>
				<li><a href=""><img src="resources/img/icon/test.png"/></a></li>
			</ul>
		</nav>
</body>
</html>

<script>

window.addEventListener("load",function(evnet){
	
	var mainMenu = document.querySelector(".main-menu>ul li");
	var menu = document.querySelector(".menu");
	var cnt = 0;
	
	mainMenu.onclick = function(e)
	{	
		cnt = cnt + 1;
		if(cnt % 2 == 1)
			menu.classList.remove("hidden");
		else
			menu.classList.add("hidden");
	};
});

</script>