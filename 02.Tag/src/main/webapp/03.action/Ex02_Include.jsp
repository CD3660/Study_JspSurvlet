<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/include/header.jsp">
		<jsp:param value="CD" name="name"/>
	</jsp:include>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>