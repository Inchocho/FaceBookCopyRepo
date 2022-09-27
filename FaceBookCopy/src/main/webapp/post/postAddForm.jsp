<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>게시글 작성</title>
<script type="text/javascript">
	function pageMoveListFnc(){
		var url = './list?page=' + ${page};
		location.href = url;				
	}
	
</script>

</head>
<body>
	<jsp:include page="../header.jsp"/>	
	<form action="./add?page=${page}" method="post">
		유저 번호:  <input type='text' value='${sessionScope.user.userNo}' name='postNo' readOnly>
		유저 닉네임: <input type='text' value='${sessionScope.user.userNickName}' name='userNickName' readOnly>
		유저 이메일: <input type='text' value='${sessionScope.user.userPhoneOrEmail}' name='userPhoneOrEmail' readOnly>
		유저 비밀번호: <input type='password' value='비밀번호' readOnly>		
		제목: <input type='text' value='' name='postTitle'>
		내용: <input type='text' value='' name='postContent'>
		<input type='submit' value='글쓰기'>
		<input type='reset'  value='다시작성'>
		<input type='button' value='목록보기' onclick='pageMoveListFnc()'>
		페이지 번호: ${page}
	</form>		
	<jsp:include page="../footer.jsp"/>
</body>
</html>