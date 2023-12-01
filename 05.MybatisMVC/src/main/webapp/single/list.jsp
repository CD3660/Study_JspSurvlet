<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<%@ include file="/include/header.jsp"%>

<section class="page-section">
	<div class="container">
		<div style="text-align: right">
			<a class="btn btn-primary col-2" onclick="insertSg();">    사원 추가    </a>
		</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">사번</th>
					<th scope="col">이름</th>
					<th scope="col">성</th>
					<th scope="col">이메일</th>
					<th scope="col">전화번호</th>
					<th scope="col">입사일</th>
					<th scope="col">월급</th>
					<th scope="col">부서명</th>
					<th scope="col">수정</th>
					<th scope="col">삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
						<tr>
							<td colspan="10" class="text-center">데이터가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list }" var="vo" varStatus="i">
							<tr>
								<th scope="row">${vo.employee_id}</th>
								<td>${vo.first_name }</td>
								<td>${vo.last_name }</td>
								<td>${vo.email }</td>
								<td>${vo.phone_number }</td>
								<td>${vo.hire_date.substring(0,10) }</td>
								<td><fmt:formatNumber type="currency">${vo.salary*1000 }</fmt:formatNumber><input type="hidden" name="salary" value="${vo.salary }" ></td>
								<td>${vo.department_name }</td>
								<td><a class="btn btn-secondary"
									onclick="updateSg(${vo.employee_id}, ${i.index+1});">수정</a></td>
								<td><a class="btn btn-danger"
									onclick="deleteSg(${vo.employee_id});">삭제</a></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>


		<!-- insert Modal -->
		<div class="modal fade" id="insertModal" tabindex="-1"
			aria-labelledby="insertModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="insertModalLabel">사원 추가</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<form action="insert.sg" method="post">
						<div class="modal-body">
							<div class="mb-3">
								<label for="first_name" class="form-label">이름</label> <input
									type="text" class="form-control mb-2" id="first_name"
									name="first_name" placeholder="이름"> <input type="text"
									class="form-control" id="last_name" name="last_name"
									placeholder="성">

							</div>
							<div class="mb-3">
								<label for="email" class="form-label">이메일</label> <input
									type="text" class="form-control" id="email" name="email">
							</div>
							<div class="mb-3">
								<label for="phone_number" class="form-label">전화번호</label> <input
									type="text" class="form-control" id="phone_number"
									name="phone_number">
							</div>
							<div class="mb-3">
								<label for="hire_date" class="form-label">입사일</label> <input
									type="date" class="form-control" id="hire_date"
									name="hire_date">
							</div>
							<div class="mb-3">
								<label for="salary" class="form-label">월급($)</label> <input
									type="text" class="form-control" id="salary" name="salary">
							</div>
							<div class="mb-3">
								<label for="department_id" class="form-label">부서명</label> <select
									class="form-select" id="department_name" name="department_id">
									<c:forEach items="${dList }" var="vo">
										<option value="${vo.department_id }">${vo.department_name }</option>
									</c:forEach>
								</select>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<input type="submit" class="btn btn-primary" value="추가" />
						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- update Modal -->
		<div class="modal fade" id="updateModal" tabindex="-1"
			aria-labelledby="updateModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="updateModalLabel">사원 정보 수정</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<form action="update.sg" method="post">
						<div class="modal-body">
							<input type="hidden" id="employee_id" name="employee_id">
							<div class="mb-3">
								<label for="first_name" class="form-label">이름</label> <input
									type="text" class="form-control mb-2" id="first_name"
									name="first_name" placeholder="이름"> <input type="text"
									class="form-control" id="last_name" name="last_name"
									placeholder="성">

							</div>
							<div class="mb-3">
								<label for="email" class="form-label">이메일</label> <input
									type="text" class="form-control" id="email" name="email">
							</div>
							<div class="mb-3">
								<label for="phone_number" class="form-label">전화번호</label> <input
									type="text" class="form-control" id="phone_number"
									name="phone_number">
							</div>
							<div class="mb-3">
								<label for="hire_date" class="form-label">입사일</label> <input
									type="date" class="form-control" id="hire_date"
									name="hire_date">
							</div>
							<div class="mb-3">
								<label for="salary" class="form-label">월급($)</label> <input
									type="number" class="form-control" id="salary" name="salary">
							</div>
							<div class="mb-3">
								<label for="department_id" class="form-label">부서명</label> <select
									class="form-select" id="department_id" name="department_id">
									<c:forEach items="${dList }" var="vo">
										<option value="${vo.department_id }">${vo.department_name }</option>
									</c:forEach>
								</select>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<input type="submit" class="btn btn-primary" value="수정" />
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- delete Modal -->
		<div class="modal fade" id="deleteModal" tabindex="-1"
			aria-labelledby="deleteModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="deleteModalLabel">사원 삭제</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">정말 삭제하시겠습니까?</div>
					<form action="delete.sg" method="post">
						<input type="hidden" name="employee_id" />
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<input type="submit" class="btn btn-danger" value="삭제" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
	function insertSg() {
		$('#insertModal').modal('show');
	}
	function deleteSg(employee_id){
		$('#deleteModal input[name=employee_id]').val(employee_id);
		$('#deleteModal').modal('show');
	}
	function updateSg(employee_id, idx){
		$('#updateModal input[name=employee_id]').val(employee_id);
		$('#updateModal input[name=first_name]').val($('table tr:eq('+idx+') td:eq(0)').text());
		$('#updateModal input[name=last_name]').val($('table tr:eq('+idx+') td:eq(1)').text());
		$('#updateModal input[name=email]').val($('table tr:eq('+idx+') td:eq(2)').text());
		$('#updateModal input[name=phone_number]').val($('table tr:eq('+idx+') td:eq(3)').text());
		$('#updateModal input[name=hire_date]').val($('table tr:eq('+idx+') td:eq(4)').text());
		$('#updateModal input[name=salary]').val($('table tr:eq('+idx+') td:eq(5) input[name=salary]').val());
		$('#updateModal input[name=department_name]').val($('table tr:eq('+idx+') td:eq(6)').text());
		$('#updateModal').modal('show');
	}
</script>

<%@ include file="/include/footer.jsp"%>

</html>