<%@page import="day1.MyUser"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
<!-- html 파일과 jsp 파일의 다른점 (위에 1,2줄)
JSP파일 에서 page 지시자 : java 프로그래밍 -> 웹애플리케이션 서버(WAS) -> 서버가 컴파일->html 문서로 응답

index.html -> 웹서버-> "서버에 배포되어 있는 존재하는 파일"들을 요청에 대해 바로 응답

요청  html://localhost:8082/jsp/파일명(경로)  -> 웹서버->WAS ->DB서버
                               응답                                                     <-      <-   <-   
-->


<!-- 이 소스파일에 자바 코드를 작성할 수 있다. ->스크립트릿(코드조각) -->
<% 
String message = "hello? 그동안 잘 있었니 자바야";
LocalDate now =  LocalDate.now();  //import->ctrl_spacabar , java.lang 패키지 아닌 클래스 임포트
%>

<h4>I am JSP</h4>
<ul>

<li><%= now%></li>  <!-- 자바코드의 변수값(표현식-변수,수식..등의 결과값이 있는 것) 출력해보기 -->
<li><%= message%></li> <!-- 바로 ${message} 기호 사용할 예정입니다. -->
</ul>

<%
String[] names ={"박세리","김연경","허재","안정환"};
for(int i=0;i<names.length;i++){
%>
<li><%= i+1 %>:<%= names[i] %></li>
<%-- <li><%= names[i]+(i+1) %></li> 
-> 주석 할 범위 설정+ "ctrl+shift+/" -> 주석처리--%>

<%
} 
MyUser my = new MyUser();
my.setAge(23);
my.setName("사나");
my.setLocation("서울");
out.print(my);  //처음하는 코딩입니다.
%>

</body>
</html>