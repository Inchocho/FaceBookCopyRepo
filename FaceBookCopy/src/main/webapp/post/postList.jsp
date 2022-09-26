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

<script type="text/javascript">
	function pageMoveAddFnc(){
		var url = './add';
		location.href = url;		
	}
	
</script>

</head>
<body>

<div class="container" style="margin-top:300px; margin-left:200px";>
	전체게시글 : ${totalPost}	
		<a style="float:right; width:25%" href='../user/add'>회원가입</a>
		<span style="float:right;">||</span> 
		<a style="float:right;" href='../'>로그인</a>
      <table style="width:80%">        
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
			<c:forEach var="postDto" items="${postList}">
				<tr>				
					<td>${postDto.postNum}</td>
					<td><a href='./info?postNum=${postDto.postNum}'>${postDto.postTitle}</a></td>							
					<td>${postDto.userNickName}</td>							
					<td>${postDto.postCreateDate}</td>
					<td>${postDto.postCount}</td>
				</tr>						
			</c:forEach>
			<tr>
				
			</tr>	
        </tbody>        
      </table>
      <input type='button' value='글쓰기' onclick='pageMoveAddFnc()' style="float:right; margin-right:20%">
</div>
	

</body>
</html>