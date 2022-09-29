<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body {
	background: #fff;
	color: #1c1e21;
	direction: ltr;
	line-height: 1.34;
	margin: 0;
	padding: 0;
}

#mainDiv {
	background: #f0f2f5;
	min-width: 500px;
	height: 500px;
	
}

#leftDiv {
	margin: auto;
	padding: 20px 0;
	position: relative;
	width: 980px;
	height: 50px;
}

#imgDiv {
	border: 0;
}

#letterH2 {
	font-size: 28px;
	font-weight: normal;
	width: 500px;
	padding: 0 0 20px;
}

#loginBox {
	float: right;
}

#loginMainBox {
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
#mainDivBox{
 
  width: 1000px;
  margin: auto;
 
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

#lineClor {
	opacity: 0.7;
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
	width: 332px;
}

#paswwordFind {
	color: #1877f2;
	font-size: 14px;
	font-weight: 500;
}

#signUp {
	border: none;
	border-radius: 6px;
	font-size: 17px;
	line-height: 48px;
	padding: 0 16px;
	background-color: #42b72a;
	cursor: pointer;
	color: white;
}

#newPage {
	margin-top: 28px;
	border-top: none;
	color: #1c1e21;
	font-weight: bold;
}
</style>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/userAddForm.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/signUp/userAdd.js"></script>

<title>Facebook - 로그인 또는 가입</title>

</head>

<body>
<div id="mainDivBox">
	<div id="loginBox">
		<div id="loginMainBox">
			<!-- 로그인 모델 박스 시작 -->
			<div id="hideDiv" style="display: none; z-index: 30;">
			<jsp:include page="../user/userAddForm.jsp"></jsp:include>
			</div>

			<form action="<%=request.getContextPath()%>/auth/login" method="post">
				<div id="formTop">
					<input id="loginEmail" type="text" name="email"
						placeholder="이메일 또는 전화번호" onblur="this.placeholder='이메일 또는 전화번호'"><br>
					<input id="loginPassword" type="password" name="password"
						placeholder="비밀번호" onblur="this.placeholder='비밀번호'"><br>
					<input id="loginOk" type="submit" value="로그인">
				</div>
				<div>
					<!-- 비번찾기시작 -->
					<a id="paswwordFind" href="./auth/find">비밀번호를 잊으셨나요?</a>
				</div>
			
				<!-- 비번찾기 끝-->
				<div id="lineClor">
					<!-- 줄 -->
					<hr>
				</div>
				<!-- 줄 -->

				<!--회원가입 연결 div 시작-->
				<button id="signUp">새계정 만들기</button>


				<!--회원가입 연결 div 끝 -->

				<!--newPage 생성 끝 -->

			</form>

		</div>

		<div>
			<!--newPage 생성 시작 -->

			<p>
				유명인, 브랜드 또는 비즈니스를 위한<a id="newPage" href="#"> 페이지 만들기</a>.
			</p>
		</div>
	</div>

	<div id="mainDiv" class="mainDiv">
		<!-- 메인div시작 -->
	
		<div id="lefrDiv">
			<div id="imgDiv">
				<!-- 이미지 div시작 -->
				<img src="/FaceBookCopy/img/Facebook1.PNG" alt="페이스북">
			</div>
			<!-- 이미지 div끝-->

			<h2 id="letterH2">Facebook에서 전세계에 있는 친구, 가족, 지인들과 함께 이야기를 나눠보세요.</h2>
		</div>

		<!-- 로그인 모델 박스 끝 -->



	</div>
	<!-- 메인div끝 -->

</div>
	<jsp:include page="../footer.jsp" />
	<!-- 여기까지 묶어서 opca -->
</body>

</html>