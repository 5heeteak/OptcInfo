<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="ctx" value="${pageContext.request.contextPath }" />
<main class="main">
	<section>
		<h1 class="hidden">회원가입 폼</h1>
		<form  method="post">
			<fieldset>
				<legend>회원정보</legend>
				<table>
					<tr>
						<th>아이디  </th>
						<td><input type="text" name="id" placeholder="6~12자 이내의 영문 또는 숫자만 입력해"  /></td>
					</tr>
					<tr>
						<th>비밀번호 </th>
						<td><input type="password" name="pwd" placeholder="비밀번호를 입력해"   /></td>
					</tr>
					<tr>
						<th>이름  </th>
						<td><input type="text" name="name"  /></td>
					</tr>
					<tr>
					<tr>
						<th>사진  </th>
						<td><input type="file" name="file" /></td>
					</tr>
						<td colspan="2">
							<input type="submit" value="가입" />
						</td>
					</tr>
				</table>
			</fieldset>
		</form>
	</section>
</main>
