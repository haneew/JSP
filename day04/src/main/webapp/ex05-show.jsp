<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05-show.jsp</title>
</head>
<body>


<h1>리다이렉트 결과</h1>
<hr>

<p><img src="image/짱구/<%=request.getParameter("name") + ".png" %>" height="300"></p> <!-- 요청받은 파라미터 name 값의 이미지 소스 -->

<a href="ex05.jsp"><button>돌아가기</button></a>		<!-- 돌아가기 버튼에 ex05.jsp 파일로 돌아가도록.. 즉, 초기페이지로 넘어가도록 한다. -->
</body>
</html>