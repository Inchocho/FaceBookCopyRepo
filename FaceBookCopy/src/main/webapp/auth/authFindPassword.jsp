<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
a {
	text-decoration: none;
}

#noA {
	color: black;
}

#noBtn {
	border: none;
	border-radius: 6px;
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

.noId {
	width: 500px;
	height: 100px;
	border: 1px solid red;
}
</style>

<meta charset="EUC-KR">
<title>��й�ȣ�� �����̳���? | �α����� �� ���� ��� |Facebook</title>
</head>

<body>
	<!-- <!-- <img src="/FaceBookCopy/img/Facebook2.PNG" alt=""> -->
	<form action="/FaceBookCopy/auth/login" method="post">
		<input type="text" name="email" placeholder="�̸��� �Ǵ� �޴��� ��ȣ"
			autofocus="1" aria-label="�̸��� �Ǵ� �޴��� ��ȣ"> <input type="text"
			name="password" placeholder="��й�ȣ" autofocus="1" aria-label="��й�ȣ">
		<input type="submit" value="�α���"> <a href="./auth/find"
			target="blank">������ �����̳���?</a>
	</form>


	<div id="hideDiv">
		<form action="./find" method="post">
			<h2>�� ����ã��</h2>
			<hr>

			<div id="noId"></div>

			<c:if test="${!empty findFail}">
				<div class="noId">${findFail}</div>
			</c:if>

			<div>������ �˻��Ϸ��� �̸��� �ּ� �Ǵ� �޴��� ��ȣ�� �Է��ϼ���.</div>
			<input id="email" type="text" name="email"
				placeholder="�̸��� �Ǵ� �޴��� ��ȣ" autofocus="1" aria-label="�̸��� �Ǵ� �޴��� ��ȣ">
			<br> <a href="../auth/login">���</a> <input id="submitBtn"
				type='submit' value='�˻�'>
		</form>
	</div>

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