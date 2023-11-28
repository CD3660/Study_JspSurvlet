<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<%@ include file="/include/header.jsp"%>

<section class="page-section">
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">사번</th>
					<th scope="col">이름</th>
					<th scope="col">이메일</th>
					<th scope="col">입사일</th>
					<th scope="col">급여</th>
					<th scope="col">부서명</th>
					<th scope="col">업무명</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
						<tr>
							<td colspan="7" class="text-center">데이터가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list }" var="vo">
							<tr>
								<th scope="row">${vo.employee_id}</th>
								<td>${vo.name }</td>
								<td>${vo.email }</td>
								<td>${vo.hire }</td>
								<td>${vo.salary }</td>
								<td>${vo.department_name }</td>
								<td>${vo.job_title }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</section>

<%@ include file="/include/footer.jsp"%>

</html>