<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<c:set var="dto" value="${dao.selectOne(param.idx) }" />

<section>
	<h3>내용 수정</h3>
	<form action="modify-action.jsp">
		<input type="hidden" name="idx" value="${dto.idx }">
		<p><input type="text" name="name" placeholder="상품이름" value="${dto.name }" required></p>
		<p><input type="number" name="price" placeholder="상품가격" value="${dto.price }" required></p>
		<p><input type="submit"></p>
	</form>

</section>


</body>
</html>