<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz1.jsp</title>
</head>
<body>


<h1>quiz1.jsp - 두 수의 덧셈 결과</h1>
<hr>


12

<%
	// primitive type에는 null을 대입할 수 없다
	// Integer.parseInt() 는 인자로 null을 받아서 처리할 수 없다(NumberFormatException)
	// request.getParameter(String name)의 반환형은 String이다
	// 변수를 선언했을때 출력했다면, 분기문에 상관없이 값이 할당되어 있어야 한다.
	String n1 = request.getParameter("n1");
	String n2 = request.getParameter("n2");
	String msg = "";  
	int num1, num2, answer = 0;
			
			
	if(n1 != null && n2 != null && "".equals(n1) == false && "".equals(n1) == false) {
// 		msg = String.format("%s + %s = %s",
// 					Integer.parseInt(n1),
// 					Integer.parseInt(n2),
// 					Integer.parseInt(n1) + Integer.parseInt(n2));
		
		num1 = Integer.parseInt(n1);
		num2 = Integer.parseInt(n2);
		answer = num1 + num2;
	}
%>	
	
<h3>HTML과 Java코드가 하나의 페이지에 작성되어 있고, 순서가 섞여도 항상 자바부터 수행된다.</h3>
<h3>Java코드는 웹 서버에서 실행되고, HTML코드는 클라이언트의 브라우저에서 실행된다.</h3>



<form>
	<input type="number" name="n1" placeholder="n1" min="0" max="99">
	+
	<input type="number" name="n2" placeholder="n2" min="0" max="99">
	<input type="submit" value="=">
	<%= answer %>
</form>

</body>
</html>