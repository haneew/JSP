<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>    

<jsp:useBean id="dto" class="member.MemberDTO" />
<jsp:setProperty property="*" name="dto"/>
<c:set var="dto" value="${memberDAO.insert(dto) }" />
<c:if test="${row != 0 }">
	<c:redirect url="/login-form.jsp" />
</c:if>
<script>
	alert('회원가입실패')
	history.back
</script>

</body>
</html>