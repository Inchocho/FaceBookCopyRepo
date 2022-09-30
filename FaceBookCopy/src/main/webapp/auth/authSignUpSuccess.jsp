<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신의 페이스북</title>
<style>
</style>
	

<script>
	
</script>

</head>
<body>	
	<jsp:include page="../header.jsp"/>
	<div class="container" style="width: 1050px; height: 550px">
		<div id="topMenu"  style="text-align: center;">
			<h1>가입 성공하셨습니다.</h1>
			<img alt="축하이미지" src="../img/successSignUp.jpg" align="middle"
				width="300px">
			<div>
				<input type="button" value="홈으로" style="color:#0040FF; background-color:white; text-align:center; border:2px solid #0040FF;"
					onclick="location.href='<%=request.getContextPath()%>/index.jsp'">
				<input type="button" value="로그인" style="color:#0040FF; background-color:white; text-align:center; border:2px solid #0040FF;" 
				onclick="location.href='<%=request.getContextPath()%>'">
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>

