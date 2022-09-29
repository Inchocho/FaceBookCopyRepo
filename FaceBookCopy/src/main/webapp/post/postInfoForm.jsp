<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${postDto.postNum}번 게시글 상세정보</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/postInfoForm.css">
<script type="text/javascript">
	function pageMoveListFnc(){
		var url = './list?page=' + ${page};
		location.href = url;		
	}

	function pageMoveUpdateFnc(){
		var url = './update?postNum=' + ${postDto.postNum} + '&page=' + ${page};
		location.href = url;		
	}	
	
	function pageMoveDeleteFnc(){
		var url = './delete?postNum=' + ${postDto.postNum} + '&page=' + ${page};
		location.href = url;		
	}		

</script>


</head>
<body>	
	<jsp:include page="../header.jsp"/>			
	<div id='test1'>
		<div id='tableContainer'>
			<div id='writeTitle'>
				${postDto.postNum}번 게시글
			</div>					
			<table id='table1'>			
					<tr>
						<th class='firstC' colspan='3'>
							<a id='listAnc' href='./list?page=${page}'>글목록</a>
						</th>
					</tr>
					<tr>
						<td class='firstC'>
							닉네임
						</td>
						<td class='valueC'>
							<input id='userNick' type='text' value='${userDto.userName}' name='userNickName' readOnly>
						</td>
						<td></td>
					</tr>
					<tr>
						<td class='firstC'>
							제목
						</td>
						<td class='valueC'>
							<input id='title' type='text' value='${postDto.postTitle}' name='postTitle' readonly>
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
							<textarea name="postContent" cols="100" rows="20" readonly>${postDto.postContent}</textarea>
						</td>					
						<td>
						</td>						
					</tr>
					<tr>
						<td class='firstC'>
							비밀번호
						</td>
						<td class='valueC'>
							<input id='password' type='password' value='${sessionScope.user.userPassword}' name='userPassword' readOnly>
						</td>
						<td>
						</td>
					</tr>
					<tr>
						<td id='btnTd' colspan='3' class='firstC'>
							<input type='button' value='목록보기' onclick='pageMoveListFnc()'>
						</td>
					</tr>
					<tr>
						<c:if test = '${sessionScope.user.userNo eq postDto.postNo}'>						
						<td colspan=3 id='submitBtn'>
							<input type='submit' id='submit' value='수정하기' onclick='pageMoveUpdateFnc()'>
							<input type='submit' id='deleteSubmit' value='삭제하기' onclick='pageMoveDeleteFnc()'>
						</td>						
						</c:if>						
					</tr>
				</tbody>
			</table>
		</div>
	</div>		

	<jsp:include page="../footer.jsp"/>	
	
</body>
</html>