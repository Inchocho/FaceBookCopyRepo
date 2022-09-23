<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

body{
	background-color: #f0f2f5;
}

a{
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}
ul{
 	list-style:none;
}

#failurebox{
	background-color: #ffebe8;
    border: 1px solid #dd3c10;
}

#underPart{
 background-color: #fff;
}

ul <li <a{
 color: #737373;
}

#loginMainBox{
	border: none;
	border-radius: 8px;
	background-color:  #fff;
}

#loginEmail{
	cursor:pointer;
	border: 1px solid #dddfe2;
	border-radius: 6px;
	background-color: #fff;
}

#loginPassword{
	cursor:pointer;
	border: 1px solid #dddfe2;
	border-radius: 6px;
	background-color: #fff;
}

#loginOk{
	cursor:pointer;
	background-color: #166fe5;;
	border: none solid #365899;;
	border-radius: 6px;
	color: #fff; 
	font-size: 17px;
}
#paswwordFind{
 color: #1877f2;
}

#newId{
	cursor:pointer;
	border: none solid #42b72a;
	background-color: #42b72a;
	border-radius: 6px;
	color: #fff;
	font-size: 17px;
}

#newPage{
 color: #1c1e21;
 font: bold;
}





</style>
<script type="text/javascript">
	
</script>
<title>Facebook - 로그인</title>

</head>

<body>

	<div><!--main div 시작-->
<header>

<div id="topPart"><!--1-1div시작 -->
		<img src="../img/Facebook1.PNG" alt="">
		<h2>Facebook에서 전세계에 있는 친구,가족,지인들과 함께 이야기를 나눠보세요</h2>
		<div id="failurebox"><!-- 로그인 실패 div 시작 -->
		<div>로그인 정보가 올바르지 않습니다</div>
		<div>사용자 이름 또는 비밀번호가 올바르지 않습니다</div>
		</div><!-- 로그인 실패 div 끝 -->
		<div id="loginMainBox"><!-- 로그인 모델 박스 시작 -->
			<form id="loginMainBox" action="./login" method="post">
				<input id="loginEmail" type="text" name="email" placeholder="이메일 또는 전화번호"
					onblur="this.placeholder='이메일 또는 전화번호'"><br> 
				<input id="loginPassword" type="password" name="password" placeholder="비밀번호"
					onblur="this.placeholder='비밀번호'"><br> 
				<input id="loginOk" type="submit" value="로그인">
			</form>


			<div>
				<a id="paswwordFind" href="#">비밀번호를 잊으셨나요?</a>
			</div>

			<form action="" method="get">
				<input id="newId" type="submit" value="새 계정 만들기">
			</form>
		</div><!-- 로그인 모델 박스 끝 -->
		<div><!--newPage 생성 시작 -->
			<p>유명인, 브랜드 또는 비즈니스를 위한<a id="newPage" href="#"> 페이지 만들기</a>.</p>
		</div><!--newPage 생성 끝 -->
	</div><!--1-1div끝 -->

</header>
		
		
		
<footer>
		<div id="underPart"><!--1-2div시작 -->
		<ul>
		<li><a href="#">한국어</a></li>
		<li><a href="#">English(US)</a></li>
		<li><a href="#">Tiếng Việt</a></li>
		<li><a href="#">Bahasa Indonesia</a></li>
		<li><a href="#">ภาษาไทย</a></li>
		<li><a href="#">Españo</a></li>
		<li><a href="#">中文(简体)</a></li>
		<li><a href="#">日本語</a></li>
		<li><a href="#">Português (Brasil)</a></li>
		<li><a href="#">Français (France)</a></li>
		<li><a href="#">Deutsch</a></li>
		<li><a href="#"><img src="../img/+.PNG" alt=""></a></li>
		<li><a href="#">가입하기</a></li>
		<li><a href="#">로그인</a></li>
		<li><a href="#">Messenger</a></li>
		<li><a href="#">Facebook Lite</a></li>
		<li><a href="#">Watch</a></li>
		<li><a href="#">장소</a></li>
		<li><a href="#">게임</a></li>
		<li><a href="#">Marketplace</a></li>
		<li><a href="#">Facebook  Pay</a></li>
		<li><a href="#">Oculus</a></li>
		<li><a href="#">Portal</a></li>
		<li><a href="#">Instagram</a></li>
		<li><a href="#">Bulletin</a></li>
		<li><a href="#">지역</a></li>
		<li><a href="#">기부 캠페인</a></li>
		<li><a href="#">서비스</a></li>
		<li><a href="#">투표 정보 센터</a></li>
		<li><a href="#">그룹</a></li>
		<li><a href="#">정보</a></li>
		<li><a href="#">광고 만들기</a></li>
		<li><a href="#">페이지 만들기</a></li>
		<li><a href="#">개발자</a></li>
		<li><a href="#">채용 정보</a></li>
		<li><a href="#">개인정보처리방침</a></li>
		<li><a href="#">쿠키</a></li>
		<li><a href="#">AdChoices</a></li>
		<li><a href="#">이용 약관</a></li>
		<li><a href="#">고객 센터</a></li>
		<li><a href="#">연락처 업로드 및 비사</a></li>
		
		</ul>
		</div><!--1-2div끝 -->
		
		<div>
			<span>Meta © 2022</span>
		</div>
</footer>
		
		
	</div><!--main div 끝-->

</body>

</html>