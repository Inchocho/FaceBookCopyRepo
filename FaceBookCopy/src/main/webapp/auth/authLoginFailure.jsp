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

#failurebox {
	background-color: #ffebe8;
	border: 1px solid #dd3c10;
}

#underPart {
	background-color: #fff;
}

ul <li <a {
	color: #737373;
}

#loginMainBox {
	border-radius: 8px;
	box-shadow: 0 2px 4px rgb(0 0 0/ 10%), 0 8px 16px rgb(0 0 0/ 10%);
	margin: auto;
	padding: 0 0 14px 0;
	width: 396px;
	background: #fff;
}

#loginEmail {
	border-radius: 6px;
	font-size: 17px;
	padding: 14px 16px;
	width: 330px;
	margin-bottom: 8px;
}

#loginPassword {
	border-radius: 6px;
	font-size: 17px;
	padding: 14px 16px;
	width: 330px;
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
<title>Facebook에 로그인</title>

</head>

<body>

	<div>
		<!--main div 시작-->


		<div id="topPart">
			<!--1-1div시작 -->
			<img src="../img/Facebook1.PNG" alt="">
			<div id="loginMainBox">
				<!-- 로그인 모델 박스 시작 -->
				<div>Facebook에 로그인</div>
				<div id="failurebox">
					<!-- 로그인 실패 div 시작 -->
					<div>로그인 정보가 올바르지 않습니다</div>
					<div>사용자 이름 또는 비밀번호가 올바르지 않습니다</div>
				</div>
				<!-- 로그인 실패 div 끝 -->
				<form action="./login" method="post">
					<input id="loginEmail" type="text" name="email"
						placeholder="이메일 또는 전화번호" onblur="this.placeholder='이메일 또는 전화번호'"><br>
					<input id="loginPassword" type="password" name="password"
						placeholder="비밀번호" onblur="this.placeholder='비밀번호'"><br>
					<input id="loginOk" type="submit" value="로그인">
				</form>


				<div>
					<a id="paswwordFind" href="./auth/find">비밀번호를 잊으셨나요?</a>
				</div>


			</div>
			<!-- 로그인 모델 박스 끝 -->
		</div>
		<!--1-1div끝 -->


	</div>
	<!--main div 끝-->
	<jsp:include page="../footer.jsp" />
</body>

</html>