<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="mart.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<jsp:useBean id="dao" class="mart.MartDAO" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
<style>
	.frame {
		width: 900px;
		margin: 0 auto;
		border: 1px dashed red;
		
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	a:hover {
		text-decoration: none;
	}
	header {
		align-items: center;
		text-align: center;
	}
	nav > ul {
		list-style: none;
		padding: 0;
	}
	nav > ul > il {
		flex: 1;
	}
</style>
</head>
<body>
 	<header class="frame">
 		<h1><a href="${cpath }">ITBANK MART</a></h1>
 		
		<nav>
			<ul>
				<li><a href="${cpath }/list.jsp">목록보기</a></li>			
				<li><a href="${cpath }/add.jsp">품목추가</a></li>
			</ul>
		</nav> 		
 	</header>
 	
 	
</body>
</html>