<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="dao" value="${MemberDAO.getInstance() }" />
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
<style>
body {
	background-color: #eee;
	margin: 0;
	padding: 0;
}
header, section {
	background-color: white;
	margin: 0 auto;
	width: 1100px;
	padding: 20px;
	box-sizing: border-box;
}
header {
	position: fixed;
	top: 0;
	left: 50%;
	transform: translate(-50%, 0);
	height: 100px;
	z-index: 5;
}
section {
	position: absolute;
	top: 100px;
	left: 50%;
	transform: translate(-50%, 0)
}
h1, h3 {
	margin: 0;
}
thead {
	background-color: #dadada;
}
table {
	border: 2px solid black;
	border-collapse: collapse;
	width: 100%;
	font-size: 13px;
}
.sb {
	display: flex;
	justify-content: space-between;
	align-items: center;
}
</style>
</head>
<body>

<header>
	<h1><a href="list.jsp">Member</a></h1>
	
</header>

</body>
</html>