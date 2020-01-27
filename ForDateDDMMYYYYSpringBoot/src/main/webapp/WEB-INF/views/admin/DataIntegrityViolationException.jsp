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

<link
	href="<c:url value="/resources/static/css/home/bootstrap.min.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/static/css/home/panel.css"/>"
	rel="stylesheet" />


</head>
<body style="background-color: #EEEEEE;">



	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="container">


		<div class="alert alert-danger"
			style="width: 500px; height: 150px; text-align: center; margin-left: 300px; margin-right: 150px;">
			<strong>Error!</strong>
			
			<p><s:message code="email"></s:message>,
			<s:message code="fincode"></s:message>,
			<s:message code="idCardsNumber"></s:message>,
			SSN </p>
			<p> <s:message code="exeption2"></s:message></p>
			
			 <a
				href="${pageContext.request.contextPath}/admin/list/">

				<button class="button button4">
					<s:message code="go_back"></s:message>
				</button>
			</a>
			 


		</div>
	</div>

	<!-- ---------  -->

	<script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/admin-panel.js"/>"></script>
</body>
<style>
.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 8px 16px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px; italic;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

.button4 {
	background-color: white;
	color: black;
	border: 2px solid #e7e7e7;
}

.button4:hover {
	background-color: #e7e7e7;
}

.button5 {
	background-color: white;
	color: black;
	border: 2px solid #555555;
}

.button5:hover {
	background-color: #555555;
	color: white;
}
</style>
</html>