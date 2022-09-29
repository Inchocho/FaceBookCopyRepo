<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body {
	background-color: #f0f2f5;
	overflow-y: scroll;
	line-height: 1.34;
	font-size: 12px;
}

a {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}


</style>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/userAddForm.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/signUp/userAdd.js"></script>

<title>Facebook - 로그인 또는 가입</title>

</head>

<body>

	<div class="_li" id="u_0_1_5s">
		<div id="glogalContainer" class="uiContextualLayerParnt">
			<div class="fb_content clearFox" id="content" role="main">
				<div>
					<div class="_8esj _95k9 _8esf _8opv _8f3m _8ilg _8icx _8op_ _95ka">
						<div class="_8esk">
							<div class="_8ice">
								<img class="fb_logo _8ilh img" src="/FaceBookCopy/img/Facebook1.PNG" alt="Facebook">
							</div>
							<h2 class="_8eso">Facebook에서 전세계에 있는 친구, 가족, 지인들과 함께 이야기를 나눠보세요.
							</h2>
						</div>
						<div class="_8esn">
						<div class="_8iep _8icy _9ahz _9ah-">
						<div class="_6luv _52jv">
							<form class="_9vtf" action="./login" method="post">
								<div class="_61ux">
								<input id="loginEmail" type="text" name="email"
								placeholder="이메일 또는 전화번호" onblur="this.placeholder='이메일 또는 전화번호'">
								</div>
								<div class="_61ux">
									<div class="">
									<input id="loginPassword" type="password" name="password"
									placeholder="비밀번호" onblur="this.placeholder='비밀번호'"><br>
									<input id="loginOk" type="submit" value="로그인">
									</div>
								</div>
							</form>
						</div>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</div>
	
	
	
		<!-- 메인div시작 -->
		<div id="lefrDiv">
		<div id="imgDiv">
			<!-- 이미지 div시작 -->
			
		</div>
		<!-- 이미지 div끝-->

		
		</div>
		<div id="loginMainBox">
			<!-- 로그인 모델 박스 시작 -->

			
				<br>

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

	<div id="hideDiv" style="display: none; position:absolute; top:100px ; z-index: 30; width: 100%; background-color: transparent;">
		<div style="background-color: white;"></div>
		<jsp:include page="../user/userAddForm.jsp"></jsp:include>
	</div>
	
</body>

<script type="text/javascript">
	var singUpObj = document.getElementById("singUp")
	var hideDivObj = document.getElementById("hideDiv");
	var mainDivObj = document.getElementsByClassName("mainDiv");
	singUpObj.addEventListener('click', function(e) {
		e.preventDefault();
		hideDivObj.style.opacity = '1;';
		hideDivObj.style.display = 'table';
		mainDivObj[1].style.opacity = '0.5;';
	});
</script>
</html>