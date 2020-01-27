<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	
<link
	href="<c:url value="/resources/static/css/home/bootstrap.min.css"/>"
	rel="stylesheet">

</head>
<body>
	<jsp:include page="../common/navbar.jsp"></jsp:include>
	
	
		<a class="navbar-brand"
		onclick="history.back()"
		style="color: black; margin-left: 3px; margin-top: -18px"> <i
		class="glyphicon glyphicon-circle-arrow-left" style="font-size: 36px"></i>
	</a>
	
	<br>
	
	<div class="container">
		<table class="table table-hover table-bordered">
			<tr>
				<th colspan="4">
					<p style="text-align: center; font-size: 130%">${emp.name}
						${emp.surname}</p>
				</th>
			</tr>
			<tr>
				<th scope="col"><s:message code="proje_name"></s:message></th>
				<th scope="col"><s:message code="project_role"></s:message></th>
				<th scope="col"><s:message code="start_emp_for_project"></s:message></th>
				<th scope="col"><s:message code="end_emp_for_project"></s:message></th>

			</tr>

			<c:forEach var="empProjectRoles" items="${employeeProjectRoles}">
				<tr>
					<td><a
						href="${pageContext.request.contextPath}/empProjectRole/list/${empProjectRoles.project.id}">

							${empProjectRoles.project.name}</a></td>



					<td>${empProjectRoles.projectRole.name}</td>

					<td>${empProjectRoles.project.fromDate}</td>


					<c:if test="${empty empProjectRoles.project.toDate}">
						<td>on going</td>
					</c:if>
					<c:if test="${not empty empProjectRoles.project.toDate}">
						<td>${empProjectRoles.project.toDate}</td>
					</c:if>


				</tr>
			</c:forEach>

		</table>
	</div>

	<!-- ---------  -->

	<script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/project.js"/>"></script>
</body>
</html>