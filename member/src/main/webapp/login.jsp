<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<section>
	<form action="login-action.jsp" method="post">
		<p>
			<input type="text" name="userid" placeholder="ID" required autofocus>
			<input type="password" name="userpw" placeholder="Password" required>
			<input type="submit" value="로그인">
		</p>
	</form>


	<form action="logout.jsp"><button>로그아웃</button></form>


</section>
</body>
</html>