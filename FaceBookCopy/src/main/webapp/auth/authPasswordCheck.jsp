<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
#hiddenId{
visibility: hidden;
}
</style>
<meta charset="EUC-KR">
<title>��й�ȣ�� �����̳���? | �α����� �� ���� ��� |Facebook</title>
</head>
<body>
	<img src="/FaceBookCopy/img/Facebook2.PNG" alt="">
	<form action="/FaceBookCopy/auth/login" method="post">
		<input type="text" name="email" placeholder="�̸��� �Ǵ� �޴��� ��ȣ"
			autofocus="1" aria-label="�̸��� �Ǵ� �޴��� ��ȣ"> <input type="text"
			name="password" placeholder="��й�ȣ" autofocus="1" aria-label="��й�ȣ">
		<input type="submit" value="�α���"> <a
			href="./auth/find" target="blank">������
			�����̳���?</a>
	</form>

	<form action="/FaceBookCopy/auth/login" method="post">
		<input  id="hiddenId" type="text" value="${userDto.userPhoneOrEmail}" name="email">
		<p>��й�ȣ�� : <input type="text" value="${userDto.userPassword}" name="password"> �Դϴ�
		<input type="submit" value="�α���">
		</p>
	</form>
	<jsp:include page="/footer.jsp" />
</body>

<script type="text/javascript">
	
</script>


</html>