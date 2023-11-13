<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Ex03TestForIf.jsp<- index.jsp에 만들기
        For문과If문을 중첩해서 1~100까지의 수중 , 짝수의합 , 홀수의합을 출력
        홀수는 파랑색 , 짝수는 빨간색 글씨로 출력되게 만들기
        <p>홀수의합 : ?<p>
        <p>짝수의합 : ?<p>
        <p>총합 : ? <p>
      -->
      <%
      int oddSum = 0, evenSum = 0;
      for(int i=1; i<=100; i++){
    	  if(i%2==0){
    		  evenSum += i;
    	  } else {
    		  oddSum += i;
    	  }
      }
      %>
      <p style="color : blue;">홀수의 합 : <%=oddSum %></p>
      <p style="color : red;">짝수의 합 : <%=evenSum %></p>
      <p style="color : purple;">총합 : <%=oddSum+evenSum %></p>
</body>
</html>