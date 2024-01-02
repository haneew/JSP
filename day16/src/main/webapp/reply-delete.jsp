<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>

${replyDAO.delete(param.idx) }
<c:redirect url="/view.jsp?idx=${param.board_idx }" />

<%--

	댓글을 삭제한다(삭제하기 위해서는 reply의 PK에 해당하는 idx값이 필요하다
	delete from reply where idx = ?
	
	삭제 프로세스가 끝나면, 게시글 보기 페이지로 이동 (이동하기 위해서 board의 idx가 필요하다
	redirect url ="view.jsp?idx=?"
	
	삭제할 댓글의 idx, 이동할 게시글의idx 2개가 필요하다

 --%>
</body>
</html>