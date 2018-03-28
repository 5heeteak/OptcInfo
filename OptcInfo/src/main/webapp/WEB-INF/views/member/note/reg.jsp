<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>노트 등록 폼</title>
</head>
<body>
		<main>
			<section>
				<h1>노트 등록 폼</h1>
				<form method="post" enctype="multipart/form-data">
					<table>
						<tr>
							<th>제목</th>
						</tr>
						
						<tr>
							<td><input type="text" value="" name="title"/></td>
						</tr>
						
						<tr>
							<th>파일 등록</th>
						</tr>
						
						<tr>
							<td><input type="file"name="file"/></td>
						</tr>
						
						<tr>
							<th>내용</th>
						</tr>
						
						<tr>
							<td>
								<textarea rows="10" cols="40" name="content"></textarea>
							</td>
						</tr>
					</table>
					<div>
						<input type="submit" value="등록" />
					</div>
				</form>
			</section>
		</main>
</body>
</html>

<script>
window.addEventListener("load",function(event){

	var submitBtn = document.querySelector("input[type='submit']");
	var title = document.querySelector("input[name='title']");

	submitBtn.onclick = function(e){
		
		var request = new XMLHttpRequest();
		request.onload = function(evt){
			//title.value = request.responseText;
			alert(request.responseText);
		}

		request.open("GET","filess");
		request.send();
		
		//e.preventDefault();
	};

});
</script>
