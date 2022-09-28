<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
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
<div class="container" style="width:1050px; height:550px">
	<div id="topMenu">
		<h1>가입 성공하셨습니다.</h1>
		<div>
		<input type="button" value="홈으로" onclick="location.href='<%=request.getContextPath()%>/index.jsp'">
		<input type="button" value="로그인" onclick="location.href='<%=request.getContextPath()%>/auth/login'">
		</div>
	</div>	
</div>
	<jsp:include page="../footer.jsp"/>	
</body>
</html>

