<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body { 
  font-size: 140%; 
}

h2 {
  text-align: center;
  padding: 20px 0;
}

table caption {
  padding: .5em 0;
}

table.dataTable th,
table.dataTable td {
  white-space: nowrap;
}

.p {
  text-align: center;
  padding-top: 140px;
  font-size: 14px;
}
</style>
</head>
<<<<<<< HEAD
<body>	
	<div>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성</th>
					<th>조회</th>
				</tr>
			</thead>
			<tbody>			
				<c:forEach var="PostDto" items="${postList}">
					<tr>				
						<td>${PostDto.postNo},</td>
						<td>${PostDto.postTitle}</td>							
						<td>${PostDto.userNickName}</td>							
						<td>${PostDto.postCreateDate}</td>
						<td>${PostDto.postCount}</td>
						
					</tr>						
				</c:forEach>				
			</tbody>
		</table>
	</div>		
=======
<body>
<h2>Responsive Table with DataTables</h2>

<div class="container">
  <div class="row">
    <div class="col-xs-12">
      <table summary="This table shows how to create responsive tables using Datatables' extended functionality" class="table table-bordered table-hover dt-responsive">
        <caption class="text-center">An example of a responsive table based on <a href="https://datatables.net/extensions/responsive/" target="_blank">DataTables</a>:</caption>
        <thead>
          <tr>
            <th>Country</th>
            <th>Languages</th>
            <th>Population</th>
            <th>Median Age</th>
            <th>Area (Km²)</th>
          </tr>
        </thead>
        <tbody>
			<c:forEach var="PostDto" items="${postList}">
				<tr>				
					<td>${PostDto.postNum},</td>
					<td><a href='./info?postNo=${PostDto.postNo}'>${PostDto.postTitle}</a></td>							
					<td>${PostDto.userNickName}</td>							
					<td>${PostDto.postCreateDate}</td>
					<td>${PostDto.postCount}</td>
				</tr>						
			</c:forEach>	
        </tbody>
        <tfoot>
          <tr>
            <td colspan="5" class="text-center">Data retrieved from <a href="http://www.infoplease.com/ipa/A0855611.html" target="_blank">infoplease</a> and <a href="http://www.worldometers.info/world-population/population-by-country/" target="_blank">worldometers</a>.</td>
          </tr>
        </tfoot>
      </table>
    </div>
  </div>
</div>

<p class="p">Demo by George Martsoukos. <a href="http://www.sitepoint.com/responsive-data-tables-comprehensive-list-solutions" target="_blank">See article</a>.</p>
>>>>>>> refs/remotes/origin/master
</body>
</html>