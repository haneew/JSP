<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<section>
		<div class="sb">
			<form action="list.jsp">
				<p>
					<input type="search" name="search" placeholder="검색어를 입력하세요"
						autofocus value="${param.search }">
					<input type="submit" value="검색">
				</p>
			</form>
		</div>
	<table>
		<thead>
			<tr>
				<td>ID</td>
				<td>Password</td>
				<td>이름</td>
				<td>성별</td>
				<td>Email</td>
			</tr>
		</thead>
		<tbody>
			<c:set var="list" value="${dao.selectAll(param.search) }" />
			<c:forEach var="dto" items="${list }">
				<tr>
					<td>${dto.userid }</td>				
					<td>${dto.userpw }</td>				
					<td>${dto.username }</td>				
					<td>${dto.gender }</td>				
					<td>${dto.email }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</section>


</body>
</html>