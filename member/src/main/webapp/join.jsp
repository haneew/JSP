<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<section>
<form action="join-action.jsp" method="post">
	<p><input type="text" name="userid" placeholder="아이디" required></p>
	<p><input type="password" name="userpw"  placeholder="비밀번호" required></p>
	<p><input type="text" name="username"  placeholder="이름" required></p>
	<p>
		<label><input type="radio" name="gender" value="남성">남성</label>
		<label><input type="radio" name="gender" value="여성">여성</label>
	</p>
	<p><input type="text" name="email"  placeholder="이메일"></p>
	<p><input type="submit" value="가입하기">
	
</form>
</section>


</body>
</html>