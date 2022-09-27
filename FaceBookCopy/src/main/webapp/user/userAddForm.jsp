<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<style type="text/css">
#closeBtnX {
	width: 24px;
	aspect-ratio: auto 24/24;
	height: 24px;
	position: absolute;
	right: 24px;
	top: 12px;
	z-index: 2;
}

a {
	color: #385898;
	cursor: pointer;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

body, button, input, label, select, td, textarea {
	font-family: Helvetica, Arial, sans-serif;
	font-size: 12px;
}

label {
	vertical-align: middle;
}

input, select, ._d4_fo_sp {
	background-color: #fff;
	border: 1px solid #ccd0d5;
	box-sizing: border-box;
	display: inline-block;
	flex: 1 0 auto;
	font-weight: normal;
	height: 36px;
	margin: 8px 6px 6px;
	padding: 0;
	position: relative;
	width: auto;
}

._d1 {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
	width: 100%;
}

._d2 {
	display: inline-block;
	margin: 20px;
	position: relative;
	text-align: left;
}

._d3 {
	align-items: center;
	background-color: #fff;
	border-radius: 8px 8px 0 0;
	box-sizing: border-box;
	padding: 10px 16px;
	position: relative;
	width: 432px;
	z-index: 1;
}

#_d4_fd {
	color: #1c1e21;
	font-family: SFProDisplay-Bold, Helvetica, Arial, sans-serif;
	font-size: 32px;
	font-weight: bold;
	line-height: 38px;
	margin-bottom: 0;
}

#_d4_sd {
	color: #606770;
	font-family: SFProText-Regular, Helvetica, Arial, sans-serif;
	font-size: 15px;
	line-height: 24px;
}

._d4 {
	background-color: #fff;
	border-radius: 0 0 8px 8px;
	border-top: 1px solid #dadde1;
	box-sizing: border-box;
	padding: 16px;
	position: relative;
	width: 432px;
	border: 1px solid black;
	font-family: inherit;
}
.signUp_header{
    align-items: center;
    background-color: #fff;
    border-radius: 8px 8px 0 0;
    box-sizing: border-box;
    padding: 10px 16px;
    position: relative;
    width: 432px;
    z-index: 1;
}
.labelgen{
inline-block;
box-sizing: border-box;
padding: 0 28px 0 10px;
width: 100%;
}
#radio_wrap{
    display: flex;
    flex-wrap: wrap;
    margin: -8px -6px -6px;
    width: 411px;
}
</style>


<script type="text/javascript">
	window.onload = function() {

		var birthYObj = document.getElementById("bir_year");
		var birthMObj = document.getElementById("bir_month");
		var birthDObj = document.getElementById("bir_day");

		var htmlStr = "";
		for (var i = 0; i <= 122; i++) {
			htmlStr += "<option value=\"" + (2022 - i) + "\">" + (2022 - i)
					+ "</option>";
		}
		birthYObj.innerHTML = htmlStr;

		htmlStr = "";
		for (var i = 0; i < 12; i++) {
			htmlStr += "<option value=\"" + (1 + i) + "\">" + (1 + i) + "월"
					+ "</option>";
		}
		birthMObj.innerHTML = htmlStr;

		htmlStr = "";
		for (var i = 0; i < 31; i++) {
			htmlStr += "<option value=\"" + (1 + i) + "\">" + (1 + i)
					+ "</option>";
		}
		birthDObj.innerHTML = htmlStr;

		var placeHolder = document.getElementsByClassName("placeholder");
		var textInput = document.getElementsByClassName("inputText");
		var selectorSel = document.getElementsByClassName("selectors");
		var radioSp = document.getElementsByClassName("_d4_fo_sp");
		var radioObj = document.getElementsByName("sex");
		var radiochk = false;

		for (var i = 0; i < placeHolder.length; i++) {
			textInput[i].placeholder = placeHolder[i].textContent;
		}
		
		var userIdObj = document.getElementById("userId");
		userIdObj.addEventListener('keyup', function(e) {
			var userIdck = document.getElementById("userIdck");
			var email_format = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/; 
			
			if(email_format.test(userIdObj.value)){
				userIdck.hidden = false;
			}else{
				userIdck.hidden = true;
				userIdck.value = '(phone)'+ userIdObj.value;
			}
		},);
		
		var signUpBtn = document.getElementById("signUpBtn");
		var signAgree = false;
		var inputSignUpObj = document.getElementById("_d4_2");
		var agreeSignUpObj = document.getElementById("_d4_ag");
		agreeSignUpObj.hidden = true;
		function txtErCheck() {
			for (var i = 0; i < radioObj.length; i++) {
				if (radioObj[i].checked) {
					radiochk = true;
					break;
				}else{
					radiochk = false;
				}
			}
			
			if (textInput[0].value == '' || textInput[1].value == ''
					|| textInput[2].value == '' || textInput[3].value == ''
					|| selectorSel[0].value > 2008 || !radiochk) {
				event.preventDefault();
				for (var i = 0; i < textInput.length; i++) {
					textInput[i].style.border = '1px solid red';
					if (textInput[i].value != '') {
						textInput[i].style.border = '1px solid gray';
					}
				}
				for (var i = 0; i < selectorSel.length; i++) {
					selectorSel[i].style.border = '1px solid red';
					if (selectorSel[0].value <= 2008) {
						selectorSel[i].style.border = '1px solid gray';
					}
				}
				for (var i = 0; i < radioSp.length; i++) {
					radioSp[i].style.border = '1px solid red';
					if (radiochk) {
						radioSp[i].style.border = '1px solid gray';
					}
				}
			}else if(!signAgree){
				inputSignUpObj.hidden = true;
				agreeSignUpObj.hidden = false;
			}
			
		}
		
		signUpBtn.addEventListener('click', txtErCheck);
		
		var agreeBtn = document.getElementById("agreeBtn");
		var agreeck1 = document.getElementById("ck1");
		var agreeck2 = document.getElementById("ck2");
		var agreeck3 = document.getElementById("ck3");
		var agreeckall = document.getElementById("allCk");
		var agreeRq = document.getElementById("Required");
		
		agreeRq.addEventListener("click", function(e) {
			if(agreeRq.checked){
				agreeck1.checked = true;
				agreeck2.checked = true;
				agreeck3.checked = false;
				agreeckall.checked = false;
			}else{
				agreeck1.checked = false;
				agreeck2.checked = false;
				agreeck3.checked = false;
				agreeckall.checked = false;
			}
		},);
		agreeckall.addEventListener("click", function(e) {
			if(agreeckall.checked){
				agreeck1.checked = true;
				agreeck2.checked = true;
				agreeck3.checked = true;
				agreeRq.checked = true;
			}else{
				agreeck1.checked = false;
				agreeck2.checked = false;
				agreeck3.checked = false;
				agreeRq.checked = false;
			}			
		},);
		
		agreeBtn.addEventListener('click', function(e) {
			if(!agreeck1.checked || !agreeck2.checked){
				event.preventDefault();
				alert("필수항목을 선택해주세요");
			}else{
				
			}
		}, );
		
		
	}
</script>
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