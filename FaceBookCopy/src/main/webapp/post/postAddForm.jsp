<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>게시글 작성</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/postAddForm.css">
<script type="text/javascript">
	function pageMoveListFnc(){
		var url = './list?page=' + ${page};
		location.href = url;				
	}
</script>

</head>
<body>
	<c:if test='${sessionScope.user.userNickName eq "관리자"}'>
		틀린 비밀번호: <input type='text' value='${wrongPassword}'>
	</c:if>
	<jsp:include page="../header.jsp"/>	
	<form id='addForm' action="./add?page=${page}" method="post">		
	<div id='test1'>
		<div id='tableContainer'>
			<div id='writeTitle'>
				글쓰기
			</div>					
			<table id='table1'>			
					<tr>
						<th class='firstC' colspan='3'>
							<a id='listAnc' href='./list?page=${page}'>글목록</a>
						</th>
					</tr>
					<tr>
						<td class='firstC'>
							이름
						</td>
						<td class='valueC'>
							<input id='userNick' type='text' value='${sessionScope.user.userNickName}' name='userNickName' readOnly>
						</td>
						<td></td>
					</tr>
					<tr>
						<td class='firstC'>
							제목
						</td>
						<td class='valueC'>
							<input id='title' type='text' value='${postDto.postTitle}' name='postTitle'>
						</td>
						<td></td>
					</tr>
					<tr>
						<td class='firstC'>
							이메일
						</td>
						<td class='valueC'>
							<input id='email' type='text' value='${sessionScope.user.userPhoneOrEmail}' name='userPhoneOrEmail' readonly>
						</td>
					</tr>
					<tr>
						<td class='firstC'>
							내용
						</td>
						<td class='valueC'>
							<textarea name="postContent" cols="100" rows="20">${postDto.postContent}</textarea>
						</td>					
						<td>
						</td>						
					</tr>
					<tr>
						<td class='firstC'>
							비밀번호
						</td>
						<td class='valueC'>
							<input id='password' type='password' value='' name='userPassword'>
						</td>
						<td>
						</td>
					</tr>
					<tr>
						<td id='btnTd' colspan='3' class='firstC'>
							<input type='submit' value='글쓰기' id='addSubmitBtn'>
							<input type='reset' value='다시작성'>
							<input type='button' value='목록보기' onclick='pageMoveListFnc()'>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>	
	<input type='text' value='${sessionScope.user.userNo}' name='postNo' readOnly hidden="true">
	</form>	
	<jsp:include page="../footer.jsp"/>
</body>
</html>