<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	
<link
	href="<c:url value="/resources/static/css/home/bootstrap.min.css"/>"
	rel="stylesheet">

</head>

<body>
	<jsp:include page="../common/navbar.jsp"></jsp:include>
			<a class="navbar-brand" onclick="history.back()"
		style="color: black; margin-left: 3px; margin-top: -18px"> <i
		class="glyphicon glyphicon-circle-arrow-left" style="font-size: 36px"></i>
	</a>
	<br>
	<div class="container">

		<a href="javascript:getInsertForm('${employeeProjectRoleId}')"
			class="btn btn-primary"
			style="background-color: #4A696F; width: 72px"><s:message code="insert"></s:message></a> <br> <br>


		<table class="table table-hover table-bordered">

			<tr>
				<th colspan="6">
					<p style="text-align: center; font-size: 130%">${projectName}</p>
				</th>
			</tr>

			<tr>
				<th scope="col"><s:message code="name"></s:message></th>
				<th scope="col"><s:message code="surname"></s:message></th>
				<th scope="col"><s:message code="role"></s:message></th>
				<th scope="col"><s:message code="start_emp_for_project"></s:message></th>
				<th scope="col"><s:message code="end_emp_for_project"></s:message></th>
				<th></th>
			</tr>

			<c:forEach var="empProjectRole" items="${empProjectRoles}">
				<tr>
					<td>${empProjectRole.employee.name}</td>
					<td>${empProjectRole.employee.surname}</td>
					<td>${empProjectRole.projectRole.name}</td>
					<td>${empProjectRole.startTime}</td>


					<c:if test="${empty empProjectRole.endTime}">
						<td>on going</td>
					</c:if>
					<c:if test="${not empty empProjectRole.endTime}">
						<td>${empProjectRole.endTime}</td>
					</c:if>


					<td><a href="javascript:getEditForm('${empProjectRole.id}')"
						class="btn btn-primary color"
						style="background-color: #4A696F;width: 80px">
						<s:message code="edit"></s:message>
						</a> <a
						href="javascript:getDeleteForm('${empProjectRole.id}')"
						class="btn btn-danger" style="width: 65px"><s:message code="delete"></s:message></a></td>

				</tr>
			</c:forEach>

		</table>
		<br> <br> <br> <br> <br>
	</div>


	<!-- Modal delete-->

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content"></div>
		</div>
	</div>

	<script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/project.js"/>"></script>


</body>
</html>