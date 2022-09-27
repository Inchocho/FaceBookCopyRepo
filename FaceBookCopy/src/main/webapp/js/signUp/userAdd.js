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

	if (email_format.test(userIdObj.value)) {
		userIdck.hidden = false;
	} else {
		userIdck.hidden = true;
		userIdck.value = '(phone)' + userIdObj.value;
	}
});

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
	} else if (!signAgree) {
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
		event.preventDefault();
		alert("필수항목을 선택해주세요");
	} else {

	}
});
}
