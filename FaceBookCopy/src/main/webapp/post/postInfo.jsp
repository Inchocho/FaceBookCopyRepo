<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
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
		var url = './update?postNum=' + ${postDto.postNum};
		location.href = url;		
	}	
	
	function pageMoveDeleteFnc(){
		var url = './delete?postNum=' + ${postDto.postNum};
		location.href = url;		
	}		
	
</script>
</head>
<body>	
	<div>
		<input type='text' value='${userDto.userName}' readonly>
		<input type='text' value='${postDto.postTitle}' name='postTitle' readonly>
		<input type='text' value='${userDto.userPhoneOrEmail}' readonly>
		<input type='text' value='${postDto.postContent}' name='postContent' readonly>
		<input type='password' value='${userDto.userPassword}' readonly>		
		<c:if test = '${sessionScope.user.userNo eq postDto.postNo}'>
		<input type='submit' id='submit' value='수정하기' onclick='pageMoveUpdateFnc()'>
		<input type='submit' id='submit' value='삭제하기' onclick='pageMoveDeleteFnc()'>
		</c:if>			
		<input type='button' value='목록보기' onclick='pageMoveListFnc()'>
	</div>
	
	유저 번호: ${sessionScope.user.userNo}
	유저 닉네임: ${sessionScope.user.userNickName}
	유저 비밀번호: ${sessionScope.user.userPassword}
</body>
</html>