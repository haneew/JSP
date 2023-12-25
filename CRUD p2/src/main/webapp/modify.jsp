<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>

<jsp:useBean id="dao" class="bugs.BugsDAO" />
<c:set var="dto" value="${dao.selectOne(param.id) }" />

<form action="modify-action.jsp">

	<input type="hidden" name="id" value="${dto.id }">
	<p>아티스트 : <input type="text" name="artist_name" value="${dto.artist_name }"></p>
	<p>앨범명 : <input type="text" name="album_name" value="${dto.album_name }"></p>
	<p>곡 이름 : <input type="text" name="name" value="${dto.name }"></p>
	<p>장르 : <input type="text" name="genre" value="${dto.genre }"></p>
	<p>플레이타임 : <input type="number" name="playTime" value="${dto.playTime }"></p>
	<p>
		<label><input type="radio" name="isTitle" value="1"${dto.isTitle == 1 ? 'check' : '' }>타이틀</label>
		<label><input type="radio" name="isTitle" value="0"${dto.isTitle == 0 ? 'check' : '' }>수록곡</label>
	</p>
	<p>
		<span>가사</span>
		<textarea rows="10" cols="80">${dto.lyrics }</textarea>
	</p>
	<p><input type="submit" value="수정하기"></p>
</form>

</body>
</html>