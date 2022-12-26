<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title</title>
</head>
<body>
	<a href="/index.html">����</a>
	<table>
		<thead>
			<th>id</th>
			<th>userName</th>
			<th>age</th>
		</thead>
		<tbody>
		<c:forEach var="item" items="${members}">
			<tr>
				<td>${item.id }</td>
				<td>${item.username }</td>
				<td>${item.age }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>