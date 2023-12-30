<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="dto" class="member.MemberDTO" />
<jsp:setProperty property="*" name="dto" />

<jsp:useBean id="dao" class="member.MemberDAO" />
<c:set var="row" value="${dao.insert(dto) }" />

<c:redirect url ="list.jsp" />
</body>
</html>