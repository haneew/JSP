<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section class="frame">
	<c:set var="list" value="${dao.selectList() }" />
	<div class="main">
		<c:forEach var="dto" items="${list }">
			<div class="item">
				<h3>
					<a href="${cpath }/view.jsp?idx=${dto.idx }">
					${dto.name }
					</a>
				</h3>
				<p>${dto.price }원</p>
			</div>
		</c:forEach>
	</div>
	
</section>


</body>
</html>