<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	border: 1px black solid;
	border-collapse:collapse;
}


body { 
  font-size: 140%; 
}

h2 {
  text-align: center;
  padding: 20px 0;
}


</style>
</head>
<body>
<h2>Responsive Table with DataTables</h2>

<div class="container">
	전체게시글 : ${totalPost}	
		<a style="float:right;" href='../user/add'>회원가입</a>
		<span style="float:right;">||</span> 
		<a style="float:right;" href='../auth/login'>로그인</a>
      <table style="width:100%">        
        <thead style="background-color:skyblue; text-align:left;">
          <tr>
            <th style="width:10%">번호</th>
            <th style="width:30%">제목</th>
            <th style="width:20%">글쓴이</th>
            <th style="width:20%">작성일</th>
            <th style="width:10%">조회</th>
          </tr>
        </thead>
        <tbody>
			<c:forEach var="PostDto" items="${postList}">
				<tr>				
					<td>${PostDto.postNum}</td>
					<td><a href='./info?postNo=${PostDto.postNo}'>${PostDto.postTitle}</a></td>							
					<td>${PostDto.userNickName}</td>							
					<td>${PostDto.postCreateDate}</td>
					<td>${PostDto.postCount}</td>
				</tr>						
			</c:forEach>
			<tr>
				
			</tr>	
        </tbody>        
      </table>
      <c:if test="${startPage > pageCount}">
      	<a href = "./list?pageNum=${startPage - pageBlock}"></a>
      </c:if>      
</div>

</body>
</html>