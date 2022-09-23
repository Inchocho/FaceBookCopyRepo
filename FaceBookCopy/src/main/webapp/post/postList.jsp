<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<div>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성</th>
					<th>조회</th>
				</tr>
			</thead>
			<tbody>			
				<c:forEach var="PostDto" items="${postList}">
					<tr>				
						<td>${PostDto.postNo},</td>
						<td>${PostDto.postTitle}</td>							
						<td>${PostDto.userNickName}</td>							
						<td>${PostDto.postCreateDate}</td>
						<td>${PostDto.postCount}</td>
					</tr>						
				</c:forEach>				
			</tbody>
		</table>
	</div>		
</body>
</html>