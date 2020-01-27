<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">


<link
	href="<c:url value="/resources/static/css/home/bootstrap.min.css"/>"
	rel="stylesheet">

<link
	href="<c:url value="/resources/static/css/department/department_table.css"/>"
	rel="stylesheet" />

</head>
<body>

	<jsp:include page="../common/navbar.jsp"></jsp:include>
	
		<a class="navbar-brand" onclick="history.back()"
		style="color: black; margin-left: 3px; margin-top: -18px"> <i
		class="glyphicon glyphicon-circle-arrow-left" style="font-size: 36px"></i>
	</a>

	<br>

	<div class="container">

		<c:if test="${not empty exp}">
			<h4 style="color: red;">
				<s:message code="projects_deleted"></s:message>
			</h4>
		</c:if>


		<a href="javascript:getInsertFormm()" class="btn btn-primary color"
			style="background-color: #4A696F"><s:message code="insert"></s:message></a>
		<br> <br>

		<table class="table table-hover table-bordered">
			<tr>
				<th scope="col"><s:message code="project_name"></s:message></th>
				<th scope="col"><s:message code="Project_start_time"></s:message></th>
				<th scope="col"><s:message code="Project_end_time"></s:message></th>
				<th scope="col"></th>
			</tr>

			<c:forEach var="project" items="${projects}">
				<tr>
					<td>${project.name}</td>
					<td>${project.fromDate}</td>
					<c:if test="${empty project.toDate}">
						<td>on going</td>
					</c:if>
					<c:if test="${not empty project.toDate}">
						<td>${project.toDate}</td>
					</c:if>
					<td><a href="javascript:geteditform('${project.id}')"
						class="btn btn-primary color" style="background-color: #4A696F">
							<s:message code="edit"></s:message>
					</a> <a href="javascript:getDeleteForm('${project.id}')"
						class="btn btn-danger"><s:message code="delete"></s:message></a></td>
				</tr>
			</c:forEach>

		</table>
	</div>

	<!-- Modal update-->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content"></div>
		</div>
	</div>

	<!-- ---------  -->

	<script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/identification.js"/>"></script>
</body>
</html>