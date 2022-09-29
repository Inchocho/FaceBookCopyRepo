<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

.noId {
	width: 500px;
	height: 100px;
	border: 1px solid red;
}
</style>

<meta charset="EUC-KR">
<title>비밀번호를 잊으셨나요? | 로그인할 수 없는 경우 |Facebook</title>
</head>

<body>
	<!-- <!-- <img src="/FaceBookCopy/img/Facebook2.PNG" alt=""> -->
	<form action="/FaceBookCopy/auth/login" method="post">
		<input type="text" name="email" placeholder="이메일 또는 휴대폰 번호"
			autofocus="1" aria-label="이메일 또는 휴대폰 번호"> <input type="text"
			name="password" placeholder="비밀번호" autofocus="1" aria-label="비밀번호">
		<input type="submit" value="로그인"> <a href="./auth/find"
			target="blank">계정을 잊으셨나요?</a>
	</form>


	<div id="hideDiv">
		<form action="./find" method="post">
			<h2>내 계정찾기</h2>
			<hr>

			<div id="noId"></div>

			<c:if test="${!empty findFail}">
				<div class="noId">${findFail}</div>
			</c:if>

			<div>계정을 검색하려면 이메일 주소 또는 휴대폰 번호를 입력하세요.</div>
			<input id="email" type="text" name="email"
				placeholder="이메일 또는 휴대폰 번호" autofocus="1" aria-label="이메일 또는 휴대폰 번호">
			<br> <a href="../auth/login">취소</a> <input id="submitBtn"
				type='submit' value='검색'>
		</form>
	</div>

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