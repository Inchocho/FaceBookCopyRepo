<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/userAddForm.css">
<title>회원가입</title>

<style type="text/css">
</style>


<script type="text/javascript" src="../js/signUp/userAdd.js"></script>
</head>
<!--  -->
<body>
<div class="_d1">
<div class="_d2" style="margin: 10px">
	<div class="_d3" id="_d3">
		
		<jsp:include page="/signUpHeader.jsp"></jsp:include>
		
		
			<!-- 				<div>오류거르는div</div> -->
			<form action="add" method="post">
			<div class="_d4" id="_d4_ag">
				<div>
					<input id="ck1" type="checkbox">항목1(필수)
					<input id="ck2" type="checkbox">항목2(필수)
					<input id="ck3" type="checkbox">항목3(선택)
					<input id="allCk" type="checkbox">전체선택
					<input id="Required" type="checkbox">필수선택
				</div>
				<div>
					<button type="submit" id="agreeBtn">약관동의</button>
				</div>
			</div>
			<div class="_d4" id="_d4_2">
			가입정보입력
				<div class="_d_fullname">
					fullName
					<div>
						lastname
						<div class="placeholder" hidden="true">성(姓)</div>
						<input type="text" name="lastname" class="inputText"
							placeholder="성(姓)">
					</div>
					<div>
						firstname
						<div class="placeholder" hidden="true">이름(성은 제외)</div>
						<input type="text" name="fistname" class="inputText">
					</div>
				</div>
				<div>
					<!-- 						<div></div> -->
					<div class="placeholder" hidden="true">휴대폰 번호 또는 이메일</div>
					<input type="text" name="userId" class="inputText" id="userId">
					<div hidden="true" id="userIdck">
					<input type="text" name="userIdck" placeholder="이메일 재입력"></div>
				</div>
				<div>
					<!-- 	<div>placeholderInput/placeholderInputEmpty 인풋조건에따라 클래스를 바꿔주자</div> -->
					<div class="placeholder" hidden="true">새 비밀번호</div>
					<input type="password" name="pwd" class="inputText">
				</div>
				<div>
					<div>생일</div>
					<div>
						<span data-type="selectors"> <span> <select
								aria-label="연도" title="연도" name="birth_Y" id="bir_year"
								class="selectors">
									<!-- 										<option value="2022~1900"> -->
							</select> <select aria-label="월" title="월" name="birth_M" id="bir_month"
								class="selectors">
							</select> <select aria-label="일" title="일" name="birth_D" id="bir_day"
								class="selectors">
							</select>
						</span>
						</span>
					</div>
				</div>
				<div>
					<div>성별</div>
					<span id="radio_wrap" data-type="radio">
						<span class="_d4_fo_sp">
						  <label class="labelgen" for="rad_1">여성</label>
						  <input type="radio" name="sex" value="0" id="rad_1">
						</span>
						<span class="_d4_fo_sp">
						 <label class="labelgen" for="rad_2">남성</label>
						 <input	type="radio" name="sex" value="1" id="rad_2">
						</span>
						<span class="_d4_fo_sp">
						 <label class="labelgen" for="rad_3">개인지정</label>
						 <input	type="radio" name="sex" value="-1" id="rad_3">
						</span>
					</span>
				</div>
				<!-- 이구역은 ._58mv css만 건드리기 -->
				<div class="_58mu" data-nocookies="1">
					<p class="_58mv">
						저희 서비스를 이용하는 사람이 회원님의 연락처 정보를 Facebook에 업로드했을 수도 있습니다. <a
							href="https://ko-kr.facebook.com/help/637205020878504"
							id="non-users-notice-link" target="_blank" rel="nofollow">
							더 알아보기</a>.
					</p>
				</div>
				<div class="_58mu" data-nocookies="1" id="u_2_u_2W">
					<p class="_58mv">
						가입하기 버튼을 클릭하면 Facebook의 <a
							href="https://ko-kr.facebook.com/legal/terms/update"
							id="terms-link" target="_blank" rel="nofollow">약관</a>, <a
							href="https://ko-kr.facebook.com/privacy/policy/?entry_point=data_policy_redirect&entry=0"
							id="privacy-link" target="_blank" rel="nofollow">개인정보처리방침</a> 및
						<a href="https://ko-kr.facebook.com/policies/cookies/"
							id="cookie-use-link" target="_blank" rel="nofollow">쿠키 정책</a> 에
						동의하게 됩니다. Facebook으로부터 SMS 알림을 받을 수 있으며 알림은 언제든지 옵트 아웃할 수 있습니다.
					</p>
				</div>
				<!-- 여까지 -->
				<div>
					<button type="button" id="signUpBtn">가입하기</button>
				</div>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>