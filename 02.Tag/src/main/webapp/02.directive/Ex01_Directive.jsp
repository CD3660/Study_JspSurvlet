<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>디렉티브 태그(Directive Tag) : @</h1>
	<h4>ContentType : 어떤 형태로 페이지를 출력할 것인지 결정 : 웹에서는 변경이 거의 없다.</h4>
	<h5>contentType="application/json; charset=UTF-8" Json 형태로 응답한다.</h5>
	<h4>PageEncoding : 문자 인코딩(각 나라별 언어마다 인코딩 방식이 다르다. 한글UTF=8)</h4>
	
	<h4>import : 자바 Date클래스 <%= new Date() %></h4>
	<h5>java.util.Date라는 클래스를 사용하기 위해 기능을 추가한다.(자동완성을 써야 자동 임포트 처리된다.)</h5>
	
	<% int ran = new Random().nextInt(100)+1; 
	String oddEven = "";
	if(ran%2==0){
		oddEven = "짝수";
	} else {
		oddEven = "홀수";
	} %>
	<h4>Random (1~100) : <%= ran %></h4>
	<h4><%= ran %> : <%= oddEven %></h4>
	
	
</body>
</html>