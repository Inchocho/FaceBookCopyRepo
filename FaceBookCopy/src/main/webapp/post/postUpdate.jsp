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
			<input type='text' value='${sessionScope.userDto.userNickName}' readonly>
			<input type='text' value='${postDto.postTitle}' name='title'>
			<input type='text' value='${sessionScope.userDto.userPhoneOrEmail}' readonly>
			<input type='text' value='${postDto.postContent}' name='content'>
			<input type='password' value='${sessionScope.userDto.userPassword}' readonly>
			<input type='submit' value='저장하기'>
			<input type='button' value='목록보기' onclick='pageMoveListFnc()'>
		</div>		
	</form>
</body>
</html>