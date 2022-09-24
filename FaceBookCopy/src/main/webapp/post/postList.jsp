<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body { 
  font-size: 140%; 
}

h2 {
  text-align: center;
  padding: 20px 0;
}

table caption {
  padding: .5em 0;
}

table.dataTable th,
table.dataTable td {
  white-space: nowrap;
}

.p {
  text-align: center;
  padding-top: 140px;
  font-size: 14px;
}
</style>
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