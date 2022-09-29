<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${postDto.postNo}번 게시글 수정중</title>
<script type="text/javascript">
	function pageMoveListFnc(){
		var url = './list?page=' + ${page};
		location.href = url;		
	}
	
</script>
<style type="text/css">
	#updateForm{
		width: 1050px;
		height: 550px;
		background-color: #A9F5F2;		
	}
	
	#table1{
		background-color: #A9F5F2;
		width: 800px;
		height: 90%;	
		margin-left: 10%;
		border: solid black 1px;
		border-collapse: collapse;
	}
	
	.valueC{
		border: solid black 1px;
		border-collapse: collapse;
	}

	.firstC{
		color: black;
		background-color: #04B4AE;
		width: 20%;
		text-align: center;
		border: solid black 1px;
		border-collapse: collapse;		
	}
	
	#listAnc{
		float: right;
	}
	
	#userNick{
		width: 20%;
	}
	
	#title, #email{
		width: 80%;
	}
	
	#password{
		width: 15%;
	}
	
	
	#btnTd{
		text-align: center;
	}
	
	#tableContainer{
		padding-top: 25px;
	}
	
	#writeTitle{
		padding-left: 45%;
		font-size: 20px;
		font-weight: bold;		
	}
	
</style>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<form id='updateForm' action="update?page=${page}" method="post">		
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
							<textarea name="postContent" cols="100" rows="20">
								${postDto.postContent}
							</textarea>
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
							<input type='submit' value='수정하기'>
							<input type='reset' value='다시작성'>
							<input type='button' value='목록보기' onclick='pageMoveListFnc()'>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>	
	<input type='text' value='${postDto.postNum}' name='postNum' style="display:none">
	<input type='text' value='${sessionScope.user.userNo}' name='postNo' readOnly hidden="true">
	</form>		
	
	<c:if test='${sessionScope.user.userNickName eq "관리자"}'>
		틀린 비밀번호: <input type='text' value='${wrongPassword}'>
		유저 번호: ${sessionScope.user.userNo}
		유저 이름: ${sessionScope.user.userName}
		유저 닉네임: ${sessionScope.user.userNickName}
		유저 비밀번호: ${sessionScope.user.userPassword}
	</c:if>

	<jsp:include page="../footer.jsp"/>	
</body>
</html>