<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	font-size: 12px;
}

a {
	text-decoration: none;
}

#noA {
	color: black;
}

#noBtn {
	border: none;
	border-radius: 6px;
	font-size: 15px;
	line-height: 36px;
	cursor: pointer;
	display: inline-block;
	text-decoration: none;
	white-space: nowrap;
	color: white;
	padding: 0 16px;
	margin-top: 10px;
	width: 80px;
	cursor: pointer;
	color: black;
	background-color: #e9ebee;
	font-weight: bold;
}

#submitBtn {
	background-color: #1877f2;
	border: none;
	border-radius: 6px;
	font-size: 15px;
	line-height: 36px;
	cursor: pointer;
	display: inline-block;
	text-decoration: none;
	white-space: nowrap;
	color: white;
	padding: 0 16px;
	margin-top: 10px;
	width: 80px;
	cursor: pointer;
}

#findBtn {
	background-color: #1877f2;
	border: none;
	border-radius: 6px;
	font-size: 15px;
	line-height: 36px;
	cursor: pointer;
	display: inline-block;
	text-decoration: none;
	white-space: nowrap;
	color: white;
}

#findForm {
	align-items: center;
	background-color: #fff;
	border: none;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgb(0 0 0/ 10%), 0 8px 16px rgb(0 0 0/ 10%);
	box-sizing: border-box;
	margin: 40px 0 0;
	padding: 20px 0 28px;
	width: 510px;
}

.fromCl {
	background-color: #e9ebee;
	padding: 80px 0;
	text-align: center;
	padding-left: 750px;
}

.emailCl {
	border-radius: 6px;
	font-size: 17px;
	padding: 14px 16px;
	width: 130px;
	margin-bottom: 8px;
	border-color: gray;
}

.pswCl {
	border-radius: 6px;
	font-size: 17px;
	padding: 14px 16px;
	width: 130px;
	margin-bottom: 8px;
	border-color: gray;
}

#formDiv {
	float: right;
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
	width: 80px;
}

#email {
	border-radius: 6px;
	font-size: 17px;
	padding: 14px 16px;
	width: 330px;
	margin-bottom: 8px;
}

#findDiv {
	font-size: 18px;
}
</style>

<meta charset="EUC-KR">
<title>��й�ȣ�� �����̳���? | �α����� �� ���� ��� |Facebook</title>
</head>

<body>
	<img src="/FaceBookCopy/img/Facebook2.PNG" alt="">
	<div id="formDiv">
		<form action="/FaceBookCopy/auth/login" method="post">
			<input class="emailCl" type="text" name="email"
				placeholder="�̸��� �Ǵ� �޴��� ��ȣ" autofocus="1" aria-label="�̸��� �Ǵ� �޴��� ��ȣ">
			<input class="pswCl" type="text" name="password" placeholder="��й�ȣ"
				autofocus="1" aria-label="��й�ȣ"> <input id="loginOk"
				type="submit" value="�α���"> <a href="./auth/find"
				target="blank">������ �����̳���?</a>
		</form>
	</div>

	<div id="hideDiv" class="fromCl">
		<form id="findForm" action="./find" method="post">
			<h2>�� ����ã��</h2>
			<hr>

			<c:if test="${!empty findFail}">
				<div class="noId">${findFail}</div>
			</c:if>
		<div id="noId"></div> 
			<div id="findDiv">������ �˻��Ϸ��� �̸��� �ּ� �Ǵ� �޴��� ��ȣ�� �Է��ϼ���.</div>
			<input id="email" type="text" name="email"
				placeholder="�̸��� �Ǵ� �޴��� ��ȣ" autofocus="1" aria-label="�̸��� �Ǵ� �޴��� ��ȣ">
			<hr>
			<br> <a id="noBtn" href="../auth/login">���</a> <input
				id="submitBtn"type='submit' value='�˻�'>
		</form>
	</div>
	<jsp:include page="../footer.jsp" />

</body>


<script type="text/javascript">
	var submitObj = document.getElementById("submitBtn");

	submitObj.addEventListener('click', function(e) {

		var email = document.getElementById("email");
		var noIdObj = document.getElementById("noId");

		if (email.value.length == 0) {
			e.preventDefault();

			var htmlStr = "�ʵ带 �ϳ� �̻� �Է��ϼ���<br>";
			htmlStr += "ȸ������ ������ �˻��� �� �ֵ��� ��� �� ���� �ʵ带 �Է��ϼ���";

			noIdObj.innerHTML = htmlStr;
		}
		noidObj.className = "noId";

	});
</script>
</html>