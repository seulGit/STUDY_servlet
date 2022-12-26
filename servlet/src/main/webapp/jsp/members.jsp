<%@page import="hello.servlet.domain.member.Member"%>
<%@page import="java.util.List"%>
<%@page import="hello.servlet.domain.member.MemberRepository"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
MemberRepository memberRepository = MemberRepository.getInstance();
List<Member> members = memberRepository.findAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title</title>
</head>
<body>
	<a href="/index.html">∏ﬁ¿Œ</a>
	<table>
		<thead>
			<th>id</th>
			<th>username</th>
			<th>age</th>
		</thead>
		<tbody>
			<%
			for (Member member : members) {
				out.write(" <tr>");
				out.write(" <td>" + member.getId() + "</td>");
				out.write(" <td>" + member.getUsernmae() + "</td>");
				out.write(" <td>" + member.getAge() + "</td>");
				out.write(" </tr>");
			}
			%>
		</tbody>
	</table>
</body>
</html>