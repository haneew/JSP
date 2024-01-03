<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="memberDAO" value="${MemberDAO.getInstance() }" />
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
</head>
<body>
	
<header>
	<h1 style="text-align: center; "><a href="${cpath }">C R U D</a></h1>
	<div style="text-align: center;">현재 접속자 : ${login.userid }</div>
	<nav >
		<ul style="display: flex; list-style: none; justify-content: space-around;">
			<li><a href="${cpath }/login-form.jsp">로그인</a></li>
			<li><a href="${cpath }/logout.jsp">로그아웃</a></li>
			<li><a href="${cpath }/join-form.jsp">회원가입</a></li>
			<li><a href="${cpath }/withdraw.jsp">회원탈퇴</a></li>
			<li><a href="${cpath }/board.jsp">게시판</a></li>
		</ul>
	</nav>
</header>

</body>
</html>