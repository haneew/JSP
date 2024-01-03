<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>    

<c:if test="${pageContext.request.method == 'GET' }">	
	<h3>회원탈퇴</h3>
	<h5>비밀번호를 재입력을 하세요</h5>
	<form method="POST">
		<p><input type="text" name="userid" placeholder="ID" required autofocus></p>
		<p><input type="password" name="userpw" placeholder="Password" required ></p>
		<p><input type="submit" value="회원탈퇴">
	</form>
</c:if>

<c:if test="${pageContext.request.method == 'POST' }">
	<jsp:useBean id="dto" class="member.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="row" value="${memberDAO.withdraw(dto) }"/>
	
	<c:if test="${row != 0 }">
	<c:redirect url="/logout.jsp" />
	</c:if>
	<script>
		alert('회원가입실패')
		history.back
	</script>
</c:if>

</body>
</html>