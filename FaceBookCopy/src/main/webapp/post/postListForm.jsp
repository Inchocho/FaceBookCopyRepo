<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${sessionScope.user.userNickName}님 환영합니다 게시판 목록</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/postListForm.css">
<script type="text/javascript">	
	function pageMoveAddFnc(){
		var url = './add?page=' + ${page};		
		location.href = url;		
	}
	
</script>

</head>
<body>
<jsp:include page="../header.jsp"/>
<div id="containerDiv">
	<div id='listDiv'>
	전체게시글 : ${totalPost}	
		<a class='rightFloat' href='../user/add'>회원가입</a>
		<span class='rightFloat'>||</span>
		<c:choose> 
			<c:when test='${sessionScope.user.userNo eq null}'>
				<a class='rightFloat' href='../'>로그인</a>
			</c:when>
			<c:when test='${sessionScope.user.userNo ne null}'>
				<a class='rightFloat' href='../'>로그아웃</a>
			</c:when>
		</c:choose>
      <table id='listTab' style="width:100%">        
        <thead>
          <tr class='borderTr'>
            <th id='th1' style="width:10%">번호</th>
            <th id='th2' style="width:30%">제목</th>
            <th id='th3' style="width:20%">글쓴이</th>
            <th id='th4' style="width:20%">작성일</th>
            <th id='th5' style="width:10%">조회</th>
          </tr>
        </thead>
        <tbody>
			<c:forEach var="postDto" items="${postList}" begin="${(page-1)*10}" end="${page*10-1}">
				<tr class='borderTr'>				
					<td>${postDto.postNum}</td>
					<td id='moveInfo'><a href='./info?postNum=${postDto.postNum}&page=${page}'>${postDto.postTitle}</a></td>							
					<td>${postDto.userNickName}</td>							
					<td>${postDto.postCreateDate}</td>
					<td>${postDto.postCount}</td>
				</tr>						
			</c:forEach>
			<tr>
				
			</tr>	
        </tbody>        
      </table>
      <input id='writeBtn' type='button' value='글쓰기' onclick='pageMoveAddFnc()'>
	      <div id='pageDiv'>
		    	<c:if test="${page > 1}">
					<input type="button" value="<이전" 
						onclick="location.href='./list?page=${page-1}'">
				</c:if>
				
				<c:forEach begin="1" end="${postList.size()/10+0.9}" var="i">
					<c:if test="${page eq i}">
						<input id='cBtn' type="button" value="${i}"
							onclick="location.href='./list?page=${i}'"
							>
					</c:if>
					<c:if test="${page ne i}">
						<input type="button" value="${i}"
							onclick="location.href='./list?page=${i}'">
					</c:if>
				</c:forEach>
				
				<c:if test="${page < postList.size()/10}">
					<input type="button" value="다음>"
						onclick="location.href='./list?page=${page+1}'">
				</c:if>
		</div>      
	</div>
</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>