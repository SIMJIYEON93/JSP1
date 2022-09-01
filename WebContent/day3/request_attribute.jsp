<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3[5]-request 객체의 애트리뷰트</title>
</head>
<body>
<!-- request 객체의 애트리뷰트를 이용하여
 현재 B.jsp 파일에서 다른 A.jsp 파일로 데이터를 전달합니다. 
 그리고 이때, A.jsp 파일로 이동하는 명령은 pageContext.forward("A.jsp")로 합니다.
 -->
 <%
 MyUser vo = new MyUser("사나",23,"서울");
 int value1=23;
 String value2="Hellow";
 

 request.setAttribute("attr1", vo);
 request.setAttribute("attr2", value1); 
 request.setAttribute("attr3", value2);
 
 pageContext.forward("request_result.jsp");
 
 %>
</body>
</html>