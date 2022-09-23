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
    right: 10px;
    top: 12px;
    z-index: 2;
}

body, button, input, label, select, td, textarea {
	font-family: Helvetica, Arial, sans-serif;
	font-size: 12px;
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
._d3{
    align-items: center;
    background-color: #fff;
    border-radius: 8px 8px 0 0;
    box-sizing: border-box;
    padding: 10px 16px;
    position: relative;
    width: 432px;
    z-index: 1;
}
#_d4_fd{
    color: #1c1e21;
    font-family: SFProDisplay-Bold, Helvetica, Arial, sans-serif;
    font-size: 32px;
    font-weight: bold; 
    line-height: 38px;
    margin-bottom: 0;
}
#_d4_sd{
    color: #606770;
    font-family: SFProText-Regular, Helvetica, Arial, sans-serif;
    font-size: 15px;
    line-height: 24px;
}
#_d4_2{
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
a{
	color: #385898;
    cursor: pointer;
    text-decoration: none;
}
a:hover {
	text-decoration:underline;
}
</style>

<script type="text/javascript">
	
</script>

</head>
<!--  -->
<body>
<div class="_d1">
	<div class="_d2" style="margin: 10px">
		<div class="_d3">
			<img alt="X"
				src="https://static.xx.fbcdn.net/rsrc.php/v3/yO/r/zgulV2zGm8t.png"
				id="closeBtnX">
			<div class="_d4"></div>
				<div id="_d4_fd">가입하기</div>
				<div id="_d4_sd">빠르고 쉽습니다.</div>
			<div class="_d4" id="_d4_2">가입정보입력
<!-- 				<div>오류거르는div</div> -->
				<form action="add" method="post">
					<div>fullName
						<div>lastname
							<div class="placeholder" aira-hidden="true">성(姓)</div>
							<input type="text" name="lastname" class="inputText">
						</div>
						<div>firstname
							<div class="placeholder" aira-hidden="true">이름(성은 제외)</div>
							<input type="text" name="fistname" class="inputText">
						</div>
					</div>
					<div>
<!-- 						<div></div> -->
						<div class="placeholder" aira-hidden="true">휴대폰 번호 또는 이메일</div>
						<input type="text" name="userId" class="inputText">
					</div>
					<div>
<!-- 	<div>placeholderInput/placeholderInputEmpty 인풋조건에따라 클래스를 바꿔주자</div> -->
						<div class="placeholder" aira-hidden="true">새 비밀번호</div>
						<input type="password" name="pwd" class="inputText">
					</div>
					<div>
						<div>생일	</div>
						<div>
							<span data-type="selectors">
								<span>
									<select aria-label="연도" title="연도" name="birth_Y">
<!-- 										<option value="2022~1900"> -->
									</select>
									<select aria-label="월" title="월" name="birth_M">
										
									</select>
									<select aria-label="일" title="일" name="birth_D"></select>
								</span>
							</span>
						</div>
					</div>
					<div>
						<div>성별</div>
						<span class="_d4_fo_sp" data-type="radio">
						<span>
						<label>여성</label>
						<input type="radio" name="sex" value="0">
						</span>
						<span>
						<label>남성</label>
						<input type="radio" name="sex" value="1">
						</span>
						<span>
						<label>개인지정</label>
						<input type="radio" name="sex" value="-1">
						</span>
						</span>
					</div>
					<!-- 이구역은 ._58mv css만 건드리기 -->
					<div class="_58mu" data-nocookies="1">
						<p class="_58mv">
						저희 서비스를 이용하는 사람이 회원님의 연락처 정보를 
						Facebook에 업로드했을 수도 있습니다.
						 <a href="https://ko-kr.facebook.com/help/637205020878504"
						  id="non-users-notice-link" target="_blank" rel="nofollow">
						  더 알아보기</a>.
					</p></div>
					<div class="_58mu" data-nocookies="1" id="u_2_u_2W">
						<p class="_58mv">가입하기 버튼을 클릭하면 Facebook의
						 <a href="https://ko-kr.facebook.com/legal/terms/update"
						  id="terms-link" target="_blank" rel="nofollow">약관</a>,
						  <a href="https://ko-kr.facebook.com/privacy/policy/?entry_point=data_policy_redirect&entry=0"
						   id="privacy-link" target="_blank" rel="nofollow">개인정보처리방침</a>
						   및 <a href="https://ko-kr.facebook.com/policies/cookies/"
						    id="cookie-use-link" target="_blank" rel="nofollow">쿠키 정책</a>
						   에 동의하게 됩니다. Facebook으로부터 SMS 알림을 받을 수 있으며 알림은 언제든지 옵트 아웃할 수 있습니다.
					</p></div>
					<!-- 여까지 -->
					<div>
					<button type="submit">가입하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>