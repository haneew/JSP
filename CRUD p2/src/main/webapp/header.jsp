<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="bugs.*"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="cpath" value="${pageContext.request.contextPath }" />
    <c:set var="dao" value="${BugsDAO.getInstance() }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
 body{
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
 header{
 	position: fixed;
 	top: 0;
 	left: 50%;
 	transform: translate(-50%, 0);
 }
 h1, h3 {
 margin: 0;
 }
 
table{
	border: 2px soild black;
	border-collapse: collapse;
	width: 100%;
	font-size: 13px;
}
tr {
	border-bottom: 1px solid grey;
}
th, td {
	padding: 10px;
}
thead {
	background-color: #dadada;
}
tbody>tr:hover {
	background-color: eee;
	color: black;
	cursor: pointer;
}
.sb {
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.view {
	display: flex;
	background-color: #0000ff33;
}
.view > div {
	padding: 10px;
}



</style>
</head>
<body>

<header>
	<h1><a href="${cpath }">CRUD</a></h1>
</header>

</body>
</html>