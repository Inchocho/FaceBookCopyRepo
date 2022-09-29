window.onload = function() {
//birth항목 셀렉터 옵션추가
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
//birth항목 셀렉터 옵션추가 end
//<div>placeHolder를 inputText에 placeHolder로적용
var placeHolder = document.getElementsByClassName("placeholder");
var textInput = document.getElementsByClassName("inputText");

for (var i = 0; i < placeHolder.length; i++) {
	textInput[i].placeholder = placeHolder[i].textContent;
}
//
//userId 이메일정규식적용, id유효성검사
var userIdObj = document.getElementById("userId");
var hiddenIdObj = document.getElementById("hidId");

userIdObj.addEventListener('keyup', function(e) {
	var userIdck = document.getElementById("userIdck");
	var email_format = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

	if (email_format.test(userIdObj.value)) {
		userIdck.hidden = false;
		hiddenIdObj.value = "";
	} else {
		userIdck.hidden = true;
		hiddenIdObj.value = userIdObj.value;
	}
});
hiddenIdObj.addEventListener('keyup', function(e) {
	if(hiddenIdObj.value == userIdObj.value){
		hiddenIdObj.style.border = '1px solid #ccd0d5';	
	}else{
		hiddenIdObj.style.border = '1px solid red';
	}	
});


//
//가입버튼 유효성검사,
var signUpBtn = document.getElementById("signUpBtn");
var signAgree = false;
var inputSignUpObj = document.getElementById("_d4_2");
var agreeSignUpObj = document.getElementById("_d4_ag");
agreeSignUpObj.hidden = true; //동의항목 숨김
var radioSp = document.getElementsByClassName("_d4_fo_sp");
var radioObj = document.getElementsByName("sex");
var radiochk = false;
var selectorSel = document.getElementsByClassName("selectors");

function txtErCheck() {
	for (var i = 0; i < radioObj.length; i++) {//성별체크
		if (radioObj[i].checked) {
			radiochk = true;
			break;
		} else {
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
				textInput[i].style.border = '1px solid #ccd0d5';
			}
		}
		for (var i = 0; i < selectorSel.length; i++) {
			selectorSel[i].style.border = '1px solid red';
			if (selectorSel[0].value <= 2008) {
				selectorSel[i].style.border = '1px solid #ccd0d5';
			}
		}
		for (var i = 0; i < radioSp.length; i++) {
			radioSp[i].style.border = '1px solid red';
			if (radiochk) {
				radioSp[i].style.border = '1px solid #ccd0d5';
			}
		}
	} else if (!signAgree) {//동의항목 체크
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
	if (agreeRq.checked) {
		agreeck1.checked = true;
		agreeck2.checked = true;
		agreeck3.checked = false;
		agreeckall.checked = false;
	} else {
		agreeck1.checked = false;
		agreeck2.checked = false;
		agreeck3.checked = false;
		agreeckall.checked = false;
	}
});
agreeckall.addEventListener("click", function(e) {
	if (agreeckall.checked) {
		agreeck1.checked = true;
		agreeck2.checked = true;
		agreeck3.checked = true;
		agreeRq.checked = true;
	} else {
		agreeck1.checked = false;
		agreeck2.checked = false;
		agreeck3.checked = false;
		agreeRq.checked = false;
	}
});

agreeBtn.addEventListener('click', function(e) {
	if (!agreeck1.checked || !agreeck2.checked) {
		e.preventDefault();
		alert("필수항목을 선택해주세요");
	} else {

	}
});

var signUpObj = document.getElementById("signUp");
signUpObj.addEventListener('click', function (e) {
	e.preventDefault();
	var hideDivObj = document.getElementById("hideDiv");
	hideDivObj.style.display = 'block';
});
	
}

