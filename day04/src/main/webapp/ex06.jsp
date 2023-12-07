<%@page import="ex06.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06.jsp</title>
</head>
<body>


<h1>ex06 대문 페이지</h1>
<hr>

<%
	MemberDTO login = (MemberDTO) session.getAttribute("login");	// 세션(사용자만 이용할 수 있는)의 로그인 속성값을 멤버DTO로 다운캐스팅한다.
	String welcome = String.format("안녕~ %s !!", login == null ? "친구" : login.getName());	//  로그인이 되었다면 "친구"를 문자열 welcome에 담는다. 
																							// 그게 아니라면 getName에 담아서 새로운 이름을 지정한다.
%>

<div>
	<img src="<%=login == null ? "image/default.png" : login.getImgPath() %>" height="200">	 <%-- 로그인에 따른 이미지 소스 설정 --%>
	<h3><%=welcome %></h3>			<%-- 웰컴 문구 출력 --%>
</div>

<a href="ex06-form.jsp"><button>로그인</button></a>		<%-- 로그인 버튼을 누르면 ex06-form.jsp로 넘겨 실행한다 --%>

</body>
</html>