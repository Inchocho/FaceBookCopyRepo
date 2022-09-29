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

#firstLetter {
	font-size: 28px;
	font-weight: normal;
	line-height: 32px;
	width: 500px;
	padding: 0 0 20px;
}

#loginMainBox {
	border: none;
	border-radius: 8px;
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgb(0 0 0/ 10%), 0 8px 16px rgb(0 0 0/ 10%);
	box-sizing: border-box;
	margin: 40px 0 0;
	padding: 20px 0 28px;
	width: 396px;
}

#loginEmail {
	cursor: pointer;
	border: 1px solid #dddfe2;
	border-radius: 6px;
	background-color: #fff;
	width: 30px;
	font-size: 17px;
	padding: 14px 16px;
	width: 330px;
}

#loginPassword {
	cursor: pointer;
	border: 1px solid #dddfe2;
	border-radius: 6px;
	background-color: #fff;
	font-size: 17px;
	padding: 14px 16px;
	width: 330px;
}

#loginOk {
	cursor: pointer;
	background-color: #166fe5;;
	border: none solid #365899;;
	border-color: #365899;
	border-radius: 6px;
	color: #fff;
	font-size: 17px;
	width: 60px;
	font-size: 17px;
	padding: 14px 16px;
	width: 360px;
}

#paswwordFind {
	color: #1877f2;
}

#singUp {
	line-height: 48px;
	padding: 0 16px;
	cursor: pointer;
	border: none solid #42b72a;
	background-color: #42b72a;
	border-radius: 6px;
	color: #fff;
	font-size: 17px;
	font-weight: bold;
	position: relative;
	height: 120px;
	width: 150px;
	box-sizing: border-box;
}

#newPage {
	color: #1c1e21;
	font-weight: bold;
}
</style>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/userAddForm.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/signUp/userAdd.js"></script>

<title>Facebook - 로그인 또는 가입</title>

</head>

<body>

	<div id="mainDiv">
		<!-- 메인div시작 -->
		<div>
			<!-- 이미지 div시작 -->
			<img src="/FaceBookCopy/img/Facebook1.PNG" alt="페이스북">
		</div>
		<!-- 이미지 div끝-->

		<h2 id="firstLetter">Facebook에서 전세계에 있는 친구,가족,지인들과 함께 이야기를 나눠보세요</h2>

		<div id="loginMainBox">
			<!-- 로그인 모델 박스 시작 -->

			<form id="loginMainBox" action="./login" method="post">
				<input id="loginEmail" type="text" name="email"
					placeholder="이메일 또는 전화번호" onblur="this.placeholder='이메일 또는 전화번호'"><br>
				<input id="loginPassword" type="password" name="password"
					placeholder="비밀번호" onblur="this.placeholder='비밀번호'"><br>
				<input id="loginOk" type="submit" value="로그인">
				<div>
					<!-- 비번찾기시작 -->
					<a id="paswwordFind" href="./auth/find">비밀번호를 잊으셨나요?</a>
				</div>
				<!-- 비번찾기 끝-->
				<div>
					<!-- 줄 -->
					<hr>
				</div>
				<!-- 줄 -->

				<!--회원가입 연결 div 시작-->
				<div id="hideDiv" style="display:none;  z-index: 1;">
					<jsp:include page="../user/userAddForm.jsp"></jsp:include>

				</div>
				<button id="singUp">새계정 만들기</button>


				<!--회원가입 연결 div 끝 -->

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
	<!-- 메인div끝 -->

	<jsp:include page="../footer.jsp" />
</body>

<script type="text/javascript">
	var singUpObj = document.getElementById("singUp")
	var hideDivObj = document.getElementById("hideDiv");
	singUpObj.addEventListener('click', function(e) {

		hideDivObj.style.display = 'block';

	});

</script>
</html>