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
	<form action="add" method="post">
		<input type='text' value='${sessionScope.userDto.userName}' readOnly name='name'>
		<input type='text' value='' name='title'>
		<input type='text' value='${sessionScope.userDto.userPhoneOrEmail}' name='emailOrPhone' readOnly>
		<input type='text' value='' name='content'>
		<input type='password' value='${sessionScope.userDto.userPassword}' readOnly>
		<input type='submit' value='글쓰기'>
		<input type='reset'  value='다시작성'>
		<input type='button' value='목록보기' onclick='pageMoveListFnc()'>
	</form>
</body>
</html>