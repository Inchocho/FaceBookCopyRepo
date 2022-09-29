<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style type="text/css">
#imgDiv {
	background-color: #e9ebee;
}
</style>
<title>로그아웃 확인창</title>
</head>
<body>
	<div id="imgDiv">
		<img src="/FaceBookCopy/img/Facebook1.PNG" alt="페이스북">
	</div>
	<div>
		<p>로그아웃을 하시겠습니까?</p>
		<a class="menuLink" href="../index.jsp">취소</a> <a class="menuLink"
			href="../auth/logout">로그아웃</a>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>