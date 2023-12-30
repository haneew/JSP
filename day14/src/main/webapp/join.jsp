<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
 <h3>회원가입 (join.jsp)</h3>
 
 <form action="join-action.jsp" method="post">
 	<p><input type="text" name="userid" placeholder="ID"></p>
 	<p><input type="password" name="userpw" placeholder="password"></p>
 	<p><input type="text" name="username" placeholder="Name"></p>
 	<p><input type="email" name="email" placeholder="Email"></p>
 	<p>
 		<label><input type="radio" name="gender" value="남성" >남성</label>
 		<label><input type="radio" name="gender" value="여성" >여성</label>
 	</p>
 	<p><input type="submit" value="가입" ></p>
 </form>
</section>
</body>
</html>