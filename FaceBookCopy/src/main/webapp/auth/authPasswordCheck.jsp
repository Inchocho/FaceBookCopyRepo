<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
a {
	text-decoration: none;
}

#noA {
	color: black;
}

#noBtn {
	border: none;
	border-radius: 6px;
}

#findBtn {
	background-color: #1877f2;
	border: none;
	border-radius: 6px;
	font-size: 15px;
	line-height: 36px;
	cursor: pointer;
	display: inline-block;
	text-decoration: none;
	white-space: nowrap;
	color: white;
}
#hiddenId{
visibility: hidden;
}
</style>
<meta charset="EUC-KR">
<title>비밀번호를 잊으셨나요? | 로그인할 수 없는 경우 |Facebook</title>
</head>
<body>
	<img src="/FaceBookCopy/img/Facebook2.PNG" alt="">
	<form action="/FaceBookCopy/auth/login" method="post">
		<input type="text" name="email" placeholder="이메일 또는 휴대폰 번호"
			autofocus="1" aria-label="이메일 또는 휴대폰 번호"> <input type="text"
			name="password" placeholder="비밀번호" autofocus="1" aria-label="비밀번호">
		<input type="submit" value="로그인"> <a
			href="./auth/find" target="blank">계정을
			잊으셨나요?</a>
	</form>

	<form action="/FaceBookCopy/auth/login" method="post">
		<input  id="hiddenId" type="text" value="${userDto.userPhoneOrEmail}" name="email">
		<p>비밀번호는 : <input type="text" value="${userDto.userPassword}" name="password"> 입니다
		<input type="submit" value="로그인">
		</p>
	</form>
	<jsp:include page="/footer.jsp" />
</body>

<script type="text/javascript">
	
</script>


</html>