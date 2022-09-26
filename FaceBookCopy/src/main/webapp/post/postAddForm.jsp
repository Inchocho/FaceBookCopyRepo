<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>게시글 작성</title>
<script type="text/javascript">
	function pageMoveListFnc(){
		var url = './list';
		location.href = url;		
	}
	
</script>

</head>
<body>
	<form action="./add" method="post">
		<input type='text' value='${sessionScope.user.userNo}' name='postNo'>
		<input type='text' value='' name='postTitle'>
		<input type='text' value='' name='postContent'>
		<input type='submit' value='글쓰기'>
		<input type='reset'  value='다시작성'>
		<input type='button' value='목록보기' onclick='pageMoveListFnc()'>
	</form>
	<input type='text' value='유저닉네임' readOnly name='userNickName'>
	<input type='text' value='이메일' name='emailOrPhone' readOnly>
	<input type='password' value='비밀번호' readOnly>
</body>
</html>