<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${postDto.postNo}번 게시글 수정중</title>
<script type="text/javascript">
	function pageMoveListFnc(){
		var url = './list';
		location.href = url;		
	}
	
</script>
</head>
<body>
	<form action="update" method="post">
		<div>
			<input type='text' value='${userDto.userNo} 유저 고유번호' name='userNo'>
			<input type='text' value='${postDto.postNo}' name='postNo' style="display:none">
			<input type='text' value='${postDto.postNum}' name='postNum' style="display:none">
			<input type='text' value='${userDto.userName} 유저 이름' readonly>
			<input type='text' value='${postDto.postTitle}' name='postTitle'>
			<input type='text' value='${userDto.userPhoneOrEmail}' readonly>
			<input type='text' value='${postDto.postContent}' name='postContent'>
			<input type='password' value='${sessionScope.user.userPassword}' readonly>
			<input type='submit' value='저장하기'>
			<input type='button' value='목록보기' onclick='pageMoveListFnc()'>
		</div>		
	</form>
	
	유저 번호: ${sessionScope.user.userNo}
	유저 이름: ${sessionScope.user.userName}
	유저 비밀번호: ${sessionScope.user.userPassword}
</body>
</html>