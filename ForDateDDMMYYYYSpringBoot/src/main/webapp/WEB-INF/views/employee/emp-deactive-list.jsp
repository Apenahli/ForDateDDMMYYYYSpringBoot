<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<link href="<c:url value="/resources/static/css/home/button_style.css"/>" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
	
<link href="<c:url value="/resources/static/css/home/deactive_table_style.css"/>"
	rel="stylesheet">
</head>

<style>

table.dataTable thead th, table.dataTable thead th {
	padding-left: 3px 3px;
	border: 0px solid #FFFFF;
	margin-left: 2px;
}
table.dataTable {
scrollX:% 100;
}
table.dataTable tbody th,
table.dataTable tbody td {
    white-space: nowrap;
    scrollX:% 100;
}
table.dataTable thead th, table.dataTable thead td {
    padding: 10px 18px;
     border-bottom: 1px solid #FFFF; 
}

.table>thead>tr>th {
    vertical-align: bottom;
    border-bottom: 0px solid #FFFFF;
}

.dataTables_wrapper.no-footer .dataTables_scrollBody {
	border: 0px solid black;
	margin-left: 2px;
	margin-right: 20px;
}

th {
  border-top: 1px solid #dddddd;
  border-bottom: 1px solid #dddddd;
  border-right: 1px solid #dddddd;
  border-left: 5px;
}
 
</style>
<body>


		<jsp:include page="../common/navbar.jsp"></jsp:include>

	<p style="float: right; margin-right: 195px; margin-top:-9px;">Search:</p>
	
	<div style="margin:0.2%;">
	<table id="customers" class=" nowrap " style="width: 100%;margin-left:-2.5px;" >
		<thead>
			<tr>
				<th style="font-size: 14px; text-align: center; background-color:white;"><s:message
						code="name"></s:message></th>
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="surname"></s:message></th>
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="birthday"></s:message></th>
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="salary"></s:message></th>
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="gender"></s:message></th>
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="number"></s:message></th>
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="email"></s:message></th>
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="legal_address"></s:message></th>
				
				<th style="font-size: 14px; text-align: center;"><s:message
						code="actual_address"></s:message>
				</th>
				
				<th style="font-size: 14px; text-align: center;"><s:message
						code="father_name"></s:message></th>
						
					<th style="font-size: 14px; text-align: center;">
					İşə başlama tarixi</th>
					
					<th style="font-size: 14px; text-align: center;">
					İşdən çıxma tarixi</th>
				
				
				<th style="font-size: 14px; text-align: center;"><s:message
						code="department"></s:message></th>
				<th style="font-size: 14px; text-align: center;"><s:message
						code="position"></s:message></th>

				<th style="font-size: 14px; text-align: center;"> <s:message code="fincode"></s:message></th>
			<!-- 	<th style="font-size: 14px; text-align: center;">Ise</th> -->
				<th style="font-size: 14px; text-align: center;"><s:message code="idCardsNumber"></s:message></th>
				<th style="font-size: 14px; text-align: center;">SSN</th>


				<th style="font-size: 14px; text-align: center;">Action</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="employee" items="${employees}">
				<tr>
					<td>${employee.name}</td>
					<td>${employee.surname}</td>
					<td>${employee.dateOfBirth}</td>
					<td>${employee.salary}</td>
					<td>${employee.gender}</td>
					<td>${employee.number}</td>
					<td>${employee.email}</td>
					<td>${employee.address}</td>
					<td>${employee.actualAddress}</td>
					<td>${employee.fatherName}</td>
					
					<td>${employee.startTime}</td>
					<td>${employee.endTime}</td>						
					
					<td>${employee.department.name}</td>
					<td>${employee.position}</td>
					<td>${employee.fincode}</td>
					<td>${employee.idCardsNumber}</td>
					<td>${employee.socialSecurityNumber}</td>

					<td><a
						href="${pageContext.request.contextPath}/cv/review/${employee.id}">Cv</a>
						/ <a
						href="${pageContext.request.contextPath}/empProjectRole/empProjectList/${employee.id}">
							<s:message code="project"></s:message>
					</a></td>
				</tr>
			

			</c:forEach>

		</tbody>
	</table>
</div>

	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#customers').DataTable({
				"scrollX" : true,
				"bInfo" : false,
				"bAutoWidth" : false,
				"bLengthChange" : false,
				"pageLength" : 5,
				"ordering" : true,
				"bPaginate" : true,
				"bFilter" : true

			});

		});
	</script>

</body>
</html>