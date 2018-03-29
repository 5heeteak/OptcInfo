<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}/member/note"/>

	<main class="main">
		<section class="note-list">
			<h1 class="hidden">NOTE LIST</h1>
			<ul>
				<li>
					<div>${note.title}</a></div>
					<div>${note.content }</div>
					<div><span>${note.order}</span></div>
					<div><span> ${note.regDate }</span></div>
				</li>
			</ul>
			<div>
			<button><a href="${ctx}/list/${note.id}/edit">수정</a></button>
			<button><a href="${ctx}/list">목록</a></button>
			</div>
		</section>
	</main>