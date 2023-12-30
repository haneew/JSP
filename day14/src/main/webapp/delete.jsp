<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="row" value="${dao.delete(param.userid) }" />
${row }

<c:if test="${row != 0 }">
	<c:redirect url="list.jsp" />
</c:if>

<script>
	alert('삭제를 실패했습니다.')
	history.back
</script>
</body>
</html>