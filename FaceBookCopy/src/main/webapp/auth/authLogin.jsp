<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body {
	background-color: #f0f2f5;
}

a {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

ul {
	list-style: none;
}

#footerUl <li <a {
	color: #8a8d91;
	font-size: 12px;
}

#underPart {
	background-color: #fff;
}

#firstLetter {
	font-family: SFProDisplay-Regular, Helvetica, Arial, sans-serif;
	font-size: 28px;
	font-weight: normal;
	line-height: 32px;
	width: 500px;
}

#loginMainBox {
	border: none;
	border-radius: 8px;
	background-color: #fff;
}

#loginEmail {
	cursor: pointer;
	border: 1px solid #dddfe2;
	border-radius: 6px;
	background-color: #fff;
}

#loginPassword {
	cursor: pointer;
	border: 1px solid #dddfe2;
	border-radius: 6px;
	background-color: #fff;
}

#loginOk {
	cursor: pointer;
	background-color: #166fe5;;
	border: none solid #365899;;
	border-radius: 6px;
	color: #fff;
	font-size: 17px;
}

#paswwordFind {
	color: #1877f2;
}

#newId {
	cursor: pointer;
	border: none solid #42b72a;
	background-color: #42b72a;
	border-radius: 6px;
	color: #fff;
	font-size: 17px;
}

#newPage {
	color: #1c1e21;
	font: bold;
}
</style>
<script type="text/javascript">
	
</script>
<title>Facebook - 로그인 또는 가입</title>

</head>

<body>

	<div>
		<!--main div 시작-->


			<div id="topPart">
				<!--1-1div시작 -->
				<img src="/FaceBookCopy/img/Facebook1.PNG" alt="페이스북">
				<h2 id="firstLetter">Facebook에서 전세계에 있는 친구,가족,지인들과 함께 이야기를
					나눠보세요</h2>

				<div id="loginMainBox">
					<!-- 로그인 모델 박스 시작 -->
					<form id="loginMainBox" action="./login" method="post">
						<input id="loginEmail" type="text" name="email"
							placeholder="이메일 또는 전화번호" onblur="this.placeholder='이메일 또는 전화번호'"><br>
						<input id="loginPassword" type="password" name="password"
							placeholder="비밀번호" onblur="this.placeholder='비밀번호'"><br>
						<input id="loginOk" type="submit" value="로그인">
					</form>


					<div>
						<a id="paswwordFind" href="./auth/find">비밀번호를 잊으셨나요?</a>
					</div>

					<form action="" method="get">
						<input id="newId" type="submit" value="새 계정 만들기">
					</form>
				</div>
				<!-- 로그인 모델 박스 끝 -->
				<div>
					<!--newPage 생성 시작 -->
					<p>
						유명인, 브랜드 또는 비즈니스를 위한<a id="newPage" href="#"> 페이지 만들기</a>.
					</p>
				</div>
				<!--newPage 생성 끝 -->
		
			</div>
			<!--1-1div끝 -->


<jsp:include page="../footer.jsp" />
</body>

</html>