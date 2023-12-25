<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dto" class="bugs.BugsDTO" />
<jsp:setProperty property="*" name="dto"/>
<jsp:useBean id="dao" class="bugs.BugsDAO" />
<c:set var="row" value="${dao.update(dto) }" />

<c:redirect url="view.jsp?id=${param.id }" />


</body>
</html>