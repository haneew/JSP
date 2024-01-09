<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>    

<main>
	<c:if test="${pageContext.request.method == 'GET' }">
		<form method="POST">
			<p><input type="text" name="userid" placeholder="ID" required autofocus></p>
			<p><input type="password" name="userpw" placeholder="Password" required></p>
			<p><input type="text" name="username" placeholder="Name" required></p>
			<p><input type="email" name="email" placeholder="foo@bar.com" required></p>
			<p>
				<label><input type="radio" name="gender" value="남성" required>남성</label>
				<label><input type="radio" name="gender" value="여성" required>여성</label>
			</p>
			<p><input type="submit" value="가입하기"></p>
		</form>
	</c:if>
</main>

<c:if test="${pageContext.request.method == 'POST' }">
	<jsp:useBean id="dto" class="member.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="row" value="${memberDAO.insert(dto) }" />
	<script>
		const row = '${row}'
		alert(row != 0 ? '가입성공' : '가입실패')
		location.href = '${cpath}'
	</script>
</c:if> 


</body>
</html>