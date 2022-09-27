<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신의 페이스북</title>
<style>
#topMenu {
	height: 30px;
	width: 1050px;
}

#topMenu ul li {
	list-style: none;
	color: white;
	background-color: #2d2d2d;
	float: left;
	line-height: 50px;
	vertical-align: middle;
	text-align: center;
}

#topMenu .menuLink {
	text-decoration: none;
	color: white;
	display: block;
	width: 450px;
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
	<jsp:include page="header.jsp"/>
<div class="container" style="width:1050px; height:550px">
	<nav id="topMenu">
		<ul>
			<li><a class="menuLink" href="./post/list?page=1">게시판 목록</a></li>
			<c:if test='${sessionScope.user.userNo ne null}'>
				<li><a class="menuLink" href="./auth/logout">로그아웃</a></li>
			</c:if>
		</ul>
	</nav>	
</div>
	<jsp:include page="footer.jsp"/>	
</body>
</html>

