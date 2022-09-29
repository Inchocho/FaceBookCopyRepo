<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	font-size: 12px;
}

a {
	text-decoration: none;
}

#noA {
	color: black;
}

#noBtn {
	border: none;
	border-radius: 6px;
	font-size: 15px;
	line-height: 36px;
	cursor: pointer;
	display: inline-block;
	text-decoration: none;
	white-space: nowrap;
	color: white;
	padding: 0 16px;
	margin-top: 10px;
	width: 80px;
	cursor: pointer;
	color: black;
	background-color: #e9ebee;
	font-weight: bold;
}

#submitBtn {
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
	padding: 0 16px;
	margin-top: 10px;
	width: 80px;
	cursor: pointer;
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

#findForm {
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

.fromCl {
	background-color: #e9ebee;
	padding: 80px 0;
	text-align: center;
	padding-left: 750px;
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

#formDiv {
	float: right;
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

#email {
	border-radius: 6px;
	font-size: 17px;
	padding: 14px 16px;
	width: 330px;
	margin-bottom: 8px;
}

#findDiv {
	font-size: 18px;
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

	<div id="hideDiv" class="fromCl">
		<form id="findForm" action="./find" method="post">
			<h2>내 계정찾기</h2>
			<hr>

			<c:if test="${!empty findFail}">
				<div class="noId">${findFail}</div>
			</c:if>
		<div id="noId"></div> 
			<div id="findDiv">계정을 검색하려면 이메일 주소 또는 휴대폰 번호를 입력하세요.</div>
			<input id="email" type="text" name="email"
				placeholder="이메일 또는 휴대폰 번호" autofocus="1" aria-label="이메일 또는 휴대폰 번호">
			<hr>
			<br> <a id="noBtn" href="../auth/login">취소</a> <input
				id="submitBtn"type='submit' value='검색'>
		</form>
	</div>
	<jsp:include page="../footer.jsp" />

</body>


<script type="text/javascript">
	var submitObj = document.getElementById("submitBtn");

	submitObj.addEventListener('click', function(e) {

		var email = document.getElementById("email");
		var noIdObj = document.getElementById("noId");

		if (email.value.length == 0) {
			e.preventDefault();

			var htmlStr = "필드를 하나 이상 입력하세요<br>";
			htmlStr += "회원님의 계정을 검색할 수 있도록 적어도 한 개의 필드를 입력하세요";

			noIdObj.innerHTML = htmlStr;
		}
		noidObj.className = "noId";

	});
</script>
</html>