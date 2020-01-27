<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link href="<c:url value="/resources/static/css/home/panel.css"/>"
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

		<a href="javascript:getInsertAP()" class="btn btn-primary color"
			style="background-color: #4A696F"><s:message code="insert"></s:message></a>
		<br> <br>



		<table class="table table-hover table-bordered">
			<tr>
				<th scope="col"><s:message code="full_name"></s:message></th>
				<th scope="col"><s:message code="username"></s:message></th>
				<th scope="col"><s:message code="email"></s:message></th>
				<th scope="col"><s:message code="phone"></s:message></th>
				<th scope="col"><s:message code="role"></s:message></th>
				<th scope="col"></th>
			</tr>
			<c:forEach var="userForm" items="${userForm}">
				<tr>
					<td>${userForm.fullname}</td>
					<td>${userForm.username}</td>
					<td>${userForm.email}</td>
					<td>${userForm.phone}</td>
					<td><c:forEach var="r" items="${userForm.roles}">
					      ${r.name}
					  </c:forEach></td>
					<%-- <td>${userForm.roles.name}</td> --%>

					<td><a href="javascript:geteditAP('${userForm.id}')"
						class="btn btn-primary color" style="background-color: #4A696F"><s:message
								code="edit"></s:message></a> 
								
								<a
						href="javascript:getDeleteAP('${userForm.id}')"
						class="btn btn-danger"><s:message code="delete"></s:message></a>
						
						
				 <a href="javascript:getChangePasswordAP('${userForm.id}')"
				class="btn btn-primary" style="background-color: #F4D03F; border-color: #BBB63F"><s:message
				code="change_password"></s:message></a></td>
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

	<script src="<c:url value="/resources/static/js/admin-panel.js"/>"></script>
</body>
</html>