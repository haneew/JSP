<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="header.jsp" %>

<section>
	<h3>정보수정</h3>
	
	<c:set var="dto" value="${dao.selectOne(param.userid) }" />
	
	<form action="modify-action.jsp" method="post">
 	<p><input type="text" name="${dto.userid }" placeholder="ID" required readonly></p>
 	<p><input type="password" name="${dto.userpw }" placeholder="password" required autofocus></p>
 	<p><input type="text" name="${dto.username }" placeholder="Name" required></p>
 	<p><input type="email" name="${useremail }" placeholder="Email" required></p>
 	<p>
 		<label><input type="radio" name="gender" value="남성" ${dto.gender == '남성' ? 'checked' : '' }>남성</label>
 		<label><input type="radio" name="gender" value="여성" ${dto.gender == '여성' ? 'checked' : '' }>여성</label>
 	</p>
 	<p><input type="submit" value="정보수정" ></p>
 </form>

</section>
</body>
</html>