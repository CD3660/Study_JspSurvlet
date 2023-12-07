<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%@ include file="/include/header.jsp" %>
	<% 
		pageContext.setAttribute("pagectx", "PAGECONTEXT"); 
		request.setAttribute("jsprequest", "JSPREQUEST");
		session.setAttribute("jspsession", "JSPSESSION");
		application.setAttribute("jspapp", "JSPAPP");
	%>
	<h1>스코프</h1>
	<%-- <p><%= request.getAttribute("request") %></p>
	<p><%= session.getAttribute("session") %></p> --%>
	<p>${request}</p>
	<p>${session}</p>
	<p>${pagectx}</p>
	<p>${jsprequest}</p>
	<p>${jspsession}</p>
	<p>${jspapp}</p>
	<a href="scope/test.jsp">이동</a>
	
<%@ include file="/include/footer.jsp" %>
</html>