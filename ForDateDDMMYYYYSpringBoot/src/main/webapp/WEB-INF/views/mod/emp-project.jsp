<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'>

<link rel='stylesheet'
	href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>


<link href="<c:url value="/resources/static/css/home/sidebar.css"/>"
	rel="stylesheet">

</head>


<body translate="no" style="background-color: #EEEEEE;margin-left: 2%;margin-right: 2%">
	<jsp:include page="../common/navbar2.jsp"></jsp:include>




	<div class="container-fluid p-0">

		<div class="row" id="body-row">



	
	<jsp:include page="../common/sidebar.jsp"></jsp:include>
	




					<div class="col">
						<br> <br> <br>
						<br>
						<div class="box">

							<div class="  box-body table-responsive no-padding">
								<br>
								
								<h6 style="margin-left:22px;"><s:message code="project"></s:message></h6>
								<br>
								
								<table class="table table-hover table-bordered">
									<tbody>
										<tr>
											<th scope="col"><s:message code="proje_name"></s:message></th>
											<th scope="col"><s:message code="project_role"></s:message></th>
											<th scope="col"><s:message code="start_emp_for_project"></s:message></th>
											<th scope="col"><s:message code="end_emp_for_project"></s:message></th>

										</tr>
										<c:forEach var="empProjectRoles"
											items="${employeeProjectRoles}">
											<tr>
												<td>${empProjectRoles.project.name}</td>

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
								<br>	<br>	<br>
							</div>
						</div>
					</div>




				</div>
			</div>
</body>




<!--   collapsi action -->
<script src='https://code.jquery.com/jquery-3.2.1.slim.min.js'></script>

<script
	src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'></script>


<script id="rendered-js"
	src="<c:url value="/resources/static/js/sidebar.js"/>"></script>



</html>

