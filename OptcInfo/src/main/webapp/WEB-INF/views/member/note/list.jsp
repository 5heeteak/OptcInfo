<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<main class="main">
		<section class="note-list">
			<h1 class="hidden">NOTE LIST</h1>
			<ul>
			<c:forEach var="note" items="${notes}">
				<li>
					<div><a href="list/${note.id}">${note.title}</a></div>
					<div>${note.content }</div>
					<div><span>${note.order}</span><span> ${note.regDate }</span></div>
				</li>
			</c:forEach> 
			</ul>
		</section>
	</main>
