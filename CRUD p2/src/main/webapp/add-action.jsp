<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    <%@ page import="bugs.BugsDTO" %>
    

<jsp:useBean id="dto" class="bugs.BugsDTO" />
<jsp:setProperty property="*" name="dto" />
<jsp:useBean id="dao" class="bugs.BugsDAO" />
<c:set var="row" value="${dao.insert(dto }" />
<c:redirect url="index.jsp" />
</body>
</html>