<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="header.jsp" %>


<section>
	<div class="sb">
		<form action="index.jsp">
			<p>
				<input type="search" name="search" placeholder="검색어를 입력하세요" autofocus value="${param.search }">
				<input type="submit" value="검색">
			</p>
		</form>
		<div>
			<a href="add.jsp"><button>추가</button></a>
		</div>
	</div>
	
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>ARTIST_NAME</th>
				<th>ALBUM_NAME</th>
				<th>NAME</th>
				<th>PLAYTIME</th>
				<th>기능</th>
			</tr>
		</thead>
		<tbody>
			<jsp:useBean id="dao" class="bugs.BugsDAO" />
			<c:set var="list" value="${dao.selectAll(param.search) }"  />
			<c:forEach var="dto" items="${listw }" >
				<tr bgcolor="${dto.isTitle == 1 ? 'lightpink' : 'white' } }">
					<td>${dto.id }</td>
					<td><img src="artist_img/${dto.artist_img }" height="50">${dto.artist_name }</td>
					<td><img src="album_img/${dto.album_img }" height="50">${dto.album_name }</td>
					<td><a href="">${dto.name }</a></td>
					<td>${dto.playTime }</td>
					<td>
						<a href="view.jsp?id=${dto.id }"><button>상세보기</button></a>
						<a href="modify.jsp?id=${dto.id }"><button>조회</button></a>
						<button class="deleteBtn" itemId="${dto.id }">삭제</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</section>
<script>
	const url = 'delete.jsp?id='
    const deleteBtnList = document.querySelectorAll('.deleteBtn')
    for(let i = 0;  i < deleteBtnList.length; i++){
    	const btn = deleteBtnList[i]
    	btn.onclick = function(event){
    		const id = event.target.getAttribute('itemId')
    		const flag = confirm(id+' : 정말 삭제하시겠습니까')
    		if(flag){
    			location.href = url + id
    		}
    	}
    }
</script>
</body>
</html>