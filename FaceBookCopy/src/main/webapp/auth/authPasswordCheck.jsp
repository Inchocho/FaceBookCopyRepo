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

.formCl {
	background-color: #e9ebee;
	width: 2000px;
	height:
}

#formId {
	align-items: center;
	background-color: #fff;
	border: none;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgb(0 0 0/ 10%), 0 8px 16px rgb(0 0 0/ 10%);
	box-sizing: border-box;
	margin: 40px 0 0;
	padding: 20px 0 28px;
	width: 396px;
}

#hiddenId {
	visibility: hidden;
}

#formDiv {
	float: right;
}

.emailCl {
	border-radius: 6px;
	font-size: 17px;
	padding: 14px 16px;
	width: 130px;
	margin-bottom: 8px;
	border-color: gray;
}

.pswCl {
	border-radius: 6px;
	font-size: 17px;
	padding: 14px 16px;
	width: 130px;
	margin-bottom: 8px;
	border-color: gray;
}

#loginOk {
	background-color: #156cdc;
	border-color: #156cdc;
	color: white;
	border: none;
	border-radius: 6px;
	font-size: 20px;
	line-height: 48px;
	padding: 0 16px;
	margin-top: 10px;
	width: 80px;
}

#formCl {
	background-color: #e9ebee;
	padding: 80px 0;
	text-align: center;
	width: 510x;
	padding-left: 750px;
}

#formId {
	align-items: center;
	background-color: #fff;
	border: none;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgb(0 0 0/ 10%), 0 8px 16px rgb(0 0 0/ 10%);
	box-sizing: border-box;
	margin: 40px 0 0;
	padding: 20px 0 28px;
	width: 510px;
}
</style>
<meta charset="EUC-KR">
<title>비밀번호를 잊으셨나요? | 로그인할 수 없는 경우 |Facebook</title>
</head>
<body>
	<img src="/FaceBookCopy/img/Facebook2.PNG" alt="">
	<div id="formDiv">
		<form action="/FaceBookCopy/auth/login" method="post">
			<input class="emailCl" type="text" name="email"
				placeholder="이메일 또는 휴대폰 번호" autofocus="1" aria-label="이메일 또는 휴대폰 번호">
			<input class="pswCl" type="text" name="password" placeholder="비밀번호"
				autofocus="1" aria-label="비밀번호"> <input id="loginOk"
				type="submit" value="로그인"> <a href="./auth/find"
				target="blank">계정을 잊으셨나요?</a>
		</form>
	</div>
	<div id="formCl">
		<form id="formId" action="/FaceBookCopy/auth/login" method="post">
			<input id="hiddenId" type="text" value="${userDto.userPhoneOrEmail}"
				name="email">
			<p>
				비밀번호는 : <input type="text" value="${userDto.userPassword}"
					name="password"> 입니다 <input id="loginOk" type="submit" value="로그인">
			</p>
		</form>
	</div>

	<jsp:include page="/footer.jsp" />
</body>

<script type="text/javascript">
	
</script>


</html>