<%@page import="util.MySQLConnetionUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3 [1] -db test</title>
</head>
<body>
<h4>MySQL 연결 테스트</h4>
<hr>
db연결은?
<%
	Connection connection = MySQLConnetionUtil.connect();
	out.print(connection);
	out.print("<br>");
	if(connection == null) out.print("연결 실패 하였습니다.");
	else out.print("연결 성공 하였습니다.");
%> <%--"C"onnection 이면 클래스 (앞이 대문자) --%>
</body>
</html>
