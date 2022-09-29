<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/userAddForm.css">
<title>회원가입</title>

<style type="text/css">
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/signUp/userAdd.js"></script>
</head>
<!--  -->
<body>
<div class="_d1">
<div class="_d2">
	<div class="_d3" id="_d3">
		<jsp:include page="/signUpHeader.jsp"></jsp:include>
			<form action="user/add" method="post">

			<div class="_d4" id="_d4_2">
				<div class="_d_fullname">
					<div id="lastname_d">
						<div class="placeholder" hidden="true">성(姓)</div>
						<input type="text" name="lastname" class="inputText" id="lname_input">
					</div>
					<div id="firstname_d">
						<div class="placeholder" hidden="true">이름(성은 제외)</div>
						<input type="text" name="fistname" class="inputText" id="fname_input">
					</div>
				</div>
				<div>
					<!-- 						<div></div> -->
					<div class="placeholder" hidden="true">휴대폰 번호 또는 이메일</div>
					<input type="text" name="userId" class="inputText" id="userId">
					<div hidden="true" id="userIdck">
					<input type="text" name="userIdck" placeholder="이메일 재입력" id="hidId"></div>
				</div>
				<div>
					<!-- 	<div>placeholderInput/placeholderInputEmpty 인풋조건에따라 클래스를 바꿔주자</div> -->
					<div class="placeholder" hidden="true">새 비밀번호</div>
					<input type="password" name="pwd" class="inputText">
				</div>
				<div id="birth_wrap_d">
					<div>생일</div>
					<div>
						<span data-type="selectors" id="birth_wrap">
						 <span>
						 	<select aria-label="연도" title="연도" name="birth_Y" id="bir_year"
								class="selectors"></select>
							<select aria-label="월" title="월" name="birth_M" id="bir_month"
								class="selectors"></select>
							<select aria-label="일" title="일" name="birth_D" id="bir_day"
								class="selectors"></select>
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
						<span hidden="true">
						 <input type="text" name="genderSel" id="genderSel">
						</span>
					</span>
				</div>
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
				<div class="signBtn_d">
					<button type="button" id="signUpBtn" class="signUpBtn">가입하기</button>
				</div>
			</div>
			  <div class="_d4" id="_d4_ag">
				<div>
				 <div class="_agree_sel_div">
				 		Facebook의 이름이 Meta로 변경됩니다. 저희는 2022년 1월 4일에 새 이름을 반영하여 이용 약관, 데이터 정책 및 쿠키 정책을 개정했습니다. 이름이 바뀌더라도 Facebook 앱을 포함한 모든 동일한 제품이 Meta에서 지속적으로 제공됩니다. 기존의 데이터 정책 및 서비스 약관은 효력을 유지하며, 이번 이름 변경으로 인해 저희의 기존 데이터 사용 및 공유 방식이 변경되지는 않습니다. Meta와 Meta의 메타버스 비전을 자세히 알아보세요.
						데이터 정책
						이 정책에서는 Facebook, Instagram, Messenger 및 Meta Platforms, Inc.가 제공하는 기타 제품 및 기능을 지원하기 위해 저희가 처리하는 정보를 설명합니다. (Meta 제품 또는 제품). 추가적인 도구 및 정보는 Facebook 설정 및 Instagram 설정에서 확인할 수 있습니다.
						I. 저희가 수집하는 정보의 유형
						Meta 제품을 제공하기 위해 저희는 회원님에 대한 정보를 처리해야 합니다. 수집하는 정보의 유형은 회원님이 저희 제품을 이용하는 방법에 따라 다릅니다. Facebook 설정 및 Instagram 설정에 접속하여 저희가 수집한 정보에 액세스하고 이를 삭제하는 방법에 대해 알아보실 수 있습니다.
						회원님 및 다른 사람의 활동 및 제공하는 정보.
										 
				 </div>
				 <div>				 	
					<input id="ck1" type="checkbox">
					<label>동의항목 1 (필수)</label>
				 </div>
				 <div class="_agree_sel_div">
				 	항목2 내용 ~~~~~~~~~~~~~<br>
				 	<img alt="df" src="<%=request.getContextPath()%>/img/successSignUp.jpg" style="width: 130px; vertical-align: top;">
				 </div>
				 <div>
					<input id="ck2" type="checkbox">
					<label>동의항목 2 (필수)</label>
				 </div>
				 <div class="_agree_sel_div">
				 	항목3 by조윤성<br>
				 	<img alt="fa" src="<%=request.getContextPath()%>/img/successSignUp3.png" style="width: 130px">
				 </div>
				 <div>
					<input id="ck3" type="checkbox">
					<label>동의항목 3 (선택)</label>
				 </div>
				 <div style="text-align: right;">
				 <span id="checkbox_wrap" data-type="checkbox">
					<span class="_sp_ckbox">
						<label class="labelgen" for="allCk">전체선택</label>
						<input id="allCk" type="checkbox" >
					</span>
					<span class="_sp_ckbox">
						<label class="labelgen" for="Required">필수선택</label>
						<input id="Required" type="checkbox">
					</span>
				 </span>
				 </div>
				</div>
				<div class="signBtn_d">
					<button type="submit" id="agreeBtn" class="signUpBtn">가입하기</button>
				</div>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>