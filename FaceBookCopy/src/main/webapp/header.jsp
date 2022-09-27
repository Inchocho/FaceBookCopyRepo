<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   	
<html>
<head>
<meta charset="utf-8" />
<title>The Overflowing Church</title>
<style>
#topMenu {
	height: 30px;
	width: 1500px;
}

#topMenu ul li {
	list-style: none;
	color: white;
	background-color: #2d2d2d;
	float: left;
	line-height: 30px;
	vertical-align: middle;
	text-align: center;
}

#topMenu .menuLink {
	text-decoration: none;
	color: white;
	display: block;
	width: 300px;
	font-size: 12px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}

#topMenu .menuLink:hover {
	color: red;
	background-color: #4d4d4d;
}
</style>
<script>
	function listFnc() {
		var url = './post/list';
		location.href = url;
	}

	function userAddFnc() {
		var url = './post/list';
		location.href = url;
	}

	function listFnc() {
		var url = './post/list';
		location.href = url;
	}
</script>
</head>
<body>
	<nav id="topMenu">
		<ul>
			<li><a class="menuLink" href="./post/list?page=1">게시판 목록</a></li>
			<c:if test='${sessionScope.user.userNo ne null}'>
				<li><a class="menuLink" href="./auth/logout">로그아웃</a></li>
			</c:if>
		</ul>
	</nav>
	
	<p>유저이메일: ${sessionScope.user.userPhoneOrEmail}
	<p>유저닉네임: ${sessionScope.user.userNickName}
	<p>유저비밀번호: ${sessionScope.user.userPassword}
	<p>유저번호: ${sessionScope.user.userNo}
</body>
</html>