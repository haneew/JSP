<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>


<%
	pageContext.setAttribute("test", "짱구");
	request.setAttribute("test", "루피");
	session.setAttribute("test", "코난");
	application.setAttribute("test", "페이커");
%>

<jsp:useBean id="pro" class="java.util.Properties" scope="session"></jsp:useBean>
<!-- java.util.Properties : 제네릭 타입을 생성하지 않아도 기본 생성자로 만들 수 있게 해줌 -->
<c:set var="test2" value="침착맨" scope="request"></c:set>

<h3>\${test } : ${test }</h3>
<h3>\${pageScope.test } : ${pageScope.test }</h3>
<h3>\${requestScope.test } : ${requestScope.test }</h3>
<h3>\${sessionScope.test } : ${sessionScope.test }</h3>
<h3>\${applicationScope.test } : ${applicationScope.test }</h3>

<!-- EL 태그에서 내장 객체를 찾을 영역을 지정하고 싶으면  영역 뒤에scope. 을 붙이고 객체 이름을 적는다 -->

</body>
</html>