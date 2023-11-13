<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트</title>
</head>
<body>
	<h1>JSP 스크립트(선언, 표현)</h1>
	<%! String strVar = "CD"; %><!-- 전역변수 선언하기 -->
	<% String strLv = "지역변수"; %><!-- 지역변수 선언하기 -->
	
	<%=strVar %><!-- 출력을 위한 태그 -->
	<h1>HTML 태그 strVar</h1>
	<h2>HTML 태그 <%=strLv %></h2>
	<%! int sVal = 0; %><!-- static 전역변수 -->
	<% int lVal = 0; %><!-- 지역변수 -->
	
	<h3>sVal <%=sVal++ %></h3><!-- 캐시 메모리에 저장되어 언제 삭제될지 모른기에 자주 사용하지 않는다. -->
	<h3>lVal <%=lVal++ %></h3>
	<!-- String 배열을 만들고 배열 내부에 각각의 문자열 J, S, P, T, A, G을 따로 담는다. -->
	<!-- 표현문 태그를 이용해서 p 태그로 내부에 있는 내용을 출력해보기. -->
	<% String[] strArr = {"J", "S", "P", "T", "A", "G"}; %>
	<p><%=strArr[0] + strArr[1]+ strArr[2]+ strArr[3]+ strArr[4]+ strArr[5] %></p>
</body>
</html>