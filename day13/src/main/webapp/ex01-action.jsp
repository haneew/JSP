<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01-action.jsp</title>
</head>
<body>


<%

	// GET은 주소창을 통해서 전달하기 때문에 인코딩을 별도로 설정하지 않아도 글자깨짐 현상이 없다
	// POST는 주소창을 통하지 않아서, 별도의 인코딩 형식을 지정해야 글자를 정상적으로 받을 수 있다
	// 파라미터는 request객체에 담겨서 넘어오기 때문에, request의 인코딩 규칙을 지정한 후 파라미터를 꺼낸다
	request.setCharacterEncoding("UTF-8"); // 인코딩은 스크립틀릿 맨위에서 실행되야 한다. POST가 나오기 전

	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	
	String encoding = request.getCharacterEncoding(); 
	
%>

<h3>userid : <%=userid %></h3>
<h3>userpw : <%=userpw %></h3>
<h3>encoding : <%=encoding %></h3>


<table border="1" cellpadding="10" cellspacing="0">
	<thead>
		<tr>
			<th>request method</th>
			<th>parameter</th>
			<th>SQL</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>GET</th>
			<th>-</th>
			<th>select * from ...</th>
		</tr>
		<tr>
			<th>GET</th>
			<th>queryString</th>
			<th>
				select * from ... where id = {quertString}<br>
				delete ... from where id = {queryString}<br>
			</th>
		</tr>
		<tr>
			<th>POST</th>
			<th>form-data</th>
			<th>
				insert into ... values ({form-data})<br>
				update ... set column = {form-data}<br>
			</th>
		</tr>
	</tbody>
</table>
</body>
</html>