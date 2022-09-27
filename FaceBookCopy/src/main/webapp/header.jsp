<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	

<div style="background-color: white; height: 300px; padding: 5px; width: 1050px;
	margin-top: 10px;">
	<div style="height:60px">
		<h1 style='color:#0040FF; background-color:white; text-align:center; height:100%; border:2px solid #0040FF'>FaceBookCopy Project Team 
		<span style="float:right"><a href="<%=request.getContextPath()%>/auth/logout"><img alt="로그아웃" src="<%=request.getContextPath()%>/img/headerImg3.png" width="40px" height="100%"></a></span></h1>
	</div>
	<div style='width:100%;'>
	<h2 style='color:white; background-color:white; text-align:center;'>
	<span><a href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/img/footerImg1.png" alt="페북로고"
	width="20%" height="200"></img></a></span>
	<span><img src="<%=request.getContextPath()%>/img/footerImg2.png" alt="페이스북"
	width="75%" height="200"><img/></span>
	<br>
	</h2>

	</div>
</div>
