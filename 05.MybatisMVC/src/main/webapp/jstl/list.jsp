<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<%@ include file="/include/header.jsp"%>

<section class="page-section">
	<div class="container">
		<h3>jstl 연습</h3>
		<p>jsp 개발을 좀 더 편하고 단순화 하기 위한 태그 library(Jsp Standard Tag Library)</p>
		<p>Spring Boot(HTML) 타임리프, Spring Legacy, (JSP) jstl</p>
		<h4>CORE (jstl/core)</h4>
		<p>디렉티브 태그를 이용하여 사용할 태그를 prefix(식별자, 구분자)를 주고 선언(c, fmt, fn)</p>
		<c:set var="num1" value="100" />
		<p>EL 문법 : ${num1 } 자바코드 사용 x</p>
		<c:set var="num2" value="200" />
		<p>num1 + num2 : ${num1+num2 }, HTML ${num1 }+${num2 }</p>

		<c:if test="${num1 == 100 }">
			<p>num1은 100입니다.</p>
		</c:if>
		<c:choose>
			<c:when test="${num1 == 101 }">
				<p>num1은 100입니다.</p>
			</c:when>
			<c:otherwise>
				<p>num1은 101이 아닙니다.</p>
			</c:otherwise>
		</c:choose>
		<c:forEach var="i" begin="2" end="9">
			<c:if test="${i%2 == 1 }">
				<p>
					<c:forEach var="j" begin="1" end="9">
						${i } x ${j } = ${i * j } &nbsp;&nbsp;&nbsp;&nbsp;
					</c:forEach>
				</p>
			</c:if>
		</c:forEach>
		<br /> <br />
		<c:forEach var="i" begin="3" end="9" step="2">
			<p>
				<c:forEach var="j" begin="1" end="9">
					${i } x ${j } = ${i * j } &nbsp;&nbsp;&nbsp;&nbsp;
				</c:forEach>
			</p>
		</c:forEach>

		<h4>포맷 태그</h4>
		<p>데이터의 형태를 바꿈(통화표시, 날짜 등등) 오류가 많이 난다.</p>
		<c:set var="date" value="<%= new Date() %>"/>
		<p>현재 시간을 담고 있는 변수 그냥 출력 (EL):${date }</p>
		<p>오늘의 날짜 FMT 태그로 표현(연월일): <fmt:formatDate value="${date }" type="date"/> </p>
		<p>오늘의 날짜 FMT 태그로 표현(시분초): <fmt:formatDate value="${date }" type="time"/> </p>
		<p>오늘의 날짜 FMT 태그로 표현(연월일시분초): <fmt:formatDate value="${date }" type="both"/> </p>
		<p>오늘의 날짜 FMT 태그로 표현(패턴): <fmt:formatDate value="${date }" type="date" pattern="yyyy년 MM월 dd일(E) hh mm ss"/> </p>
		
		<c:set var="number" value="123456789" />
		<p>${number } </p>
		<p>fmt이용 그루핑 사용: <fmt:formatNumber value="${number }" groupingUsed="true"/> </p>
		<p>fmt이용 그루핑 사용x: <fmt:formatNumber value="${number }" groupingUsed="false"/> </p>
		<p>fmt이용 패턴: <fmt:formatNumber value="${number }" pattern="#,##0"/> </p>
		<p>fmt이용 패턴: <fmt:formatNumber value="${number }" pattern="#,##0원"/> </p>
		<p>fmt이용 금액1: <fmt:formatNumber value="${number }" type="currency"/> </p>
		<p>fmt이용 금액2: <fmt:formatNumber value="${number }" type="currency" currencySymbol="$"/> </p>
		<p>fmt이용 퍼센트: <fmt:formatNumber value="0.123" type="percent"/> </p>
		
		<h4>펑션 태그</h4>
		<c:set var="str" value="    Hello Jsp Servlet         " />
		<p>EL출력 : ${str } 자동 트림 처리</p>
		<p>대문자로 바꾸기 : ${fn:toUpperCase(str) }</p>
		<p>소문자로 바꾸기 : ${fn:toLowerCase(str) }</p>
		<p>문자열의 길이 : ${fn:length(str) }</p>
		<p>공백 제거 : ${fn:trim(str) }</p>
		<p>공백 제거 후 문자열의 길이 : ${fn:length(fn:trim(str)) }</p>
		<p>문자열 교체 : ${fn:replace(str, "Jsp", "Web") }</p>
		
		
	</div>
</section>


<%@ include file="/include/footer.jsp"%>

</html>