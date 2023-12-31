<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp</title>
<style>
	#root {
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-color: #f5f6f7;
		padding: 10px;
	}
	.flex {
		display: flex;
		height: 100%;
	}
	.left {
		width: 200px;
		height: 100%;
	}
	.right {
		border-left: 1px solid grey; 
	}
	.right img {
		height: 300px;
	}

</style>
</head>
<body>



<div id="root">
	<h1>리다이렉트를 활용하여 새로 요청하기</h1>
	<hr>
	<div class="flex">
		<div class="left">
			<form>
			 <select name="name">
			 	<option>짱구</option>
			 	<option>철수</option>
			 	<option>맹구</option>
			 	<option>유리</option>
			 	<option>훈이</option>
			 </select>
			 <button>확인</button>
			</form>
		</div>
		<div class="right">
			<%
				String name = request.getParameter("name"); 				// 파라미터로 요청받은 name의 값이 문자열 name이다.
			
				if(name != null) {											// 만약 name 이 null이 아니면 
					name = URLEncoder.encode(name, "UTF-8");				// 이름을 UTF-8로 인코더를 하고	
					response.sendRedirect("ex05-show.jsp?name=" + name); 	// 답변을 ex05-show.jsp의 name을 돌려준다.
				}
			%>
		</div>
	</div>
</div>


</body>
</html>