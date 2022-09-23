<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${postDto.postNo}번 게시글 상세정보</title>
<script type="text/javascript">
	function pageMoveListFnc(){
		var url = './list';
		location.href = url;		
	}

	function pageMoveUpdateFnc(){
		var url = './update?postNo=' + ${postDto.postNo};
		location.href = url;		
	}	
	
</script>
</head>
<body>	
	<div>
		<input type='text' value='${sessionScope.userDto.userNickName}' readonly>
		<input type='text' value='${postDto.postTitle}' name='title' readonly>
		<input type='text' value='${sessionScope.userDto.userPhoneOrEmail}' readonly>
		<input type='text' value='${postDto.postContent}' name='content' readonly>
		<input type='password' value='${sessionScope.userDto.userPassword}' readonly>
		<input type='submit' value='수정하기' onclick='pageMoveUpdateFnc()'>
		<input type='button' value='목록보기' onclick='pageMoveListFnc()'>
	</div>		
</body>
</html>