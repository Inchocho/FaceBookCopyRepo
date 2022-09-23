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
						<td>${PostDto.getPostNo()},</td>
						<td>${PostDto.getPostTitle()}</td>							
						<td>${PostDto.getUserNickName()}</td>							
						<td>${PostDto.getPostCreateDate()}</td>
						<td>${PostDto.getCount()}</td>
					</tr>						
				</c:forEach>				
			</tbody>
		</table>
	</div>		
</body>
</html>