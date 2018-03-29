<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
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
	<!-- header -->
	
	<tiles:insertAttribute name="header" />
	
	<!-- main -->
	
	<tiles:insertAttribute name="main" />
	
	<!-- footer -->
	
	<tiles:insertAttribute name="footer" />
	
</body>
</html>