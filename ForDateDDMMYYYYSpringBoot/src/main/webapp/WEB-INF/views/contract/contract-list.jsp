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
<link
	href="<c:url value="/resources/static/css/home/button_style.css"/>"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">

<link href="<c:url value="/resources/static/css/home/table_style.css"/>"
	rel="stylesheet">

<!-- for bithday bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<style>

table {
	counter-reset: rowNumber;
}

table tr {
	counter-increment: rowNumber;
}

table tr td:first-child::before {
	content: counter(rowNumber);
	min-width: 1em;
	margin-right: 0.5em;
}
</style>

<body>


	<jsp:include page="../common/navbar.jsp"></jsp:include>



	<p style="float: left; margin-left: 8px; margin-top: -14px;">
		<a href="${pageContext.request.contextPath}/contract/createExcel"
			class="btn btn-default btn-sm"
			style="background-color: #2ECC71; color: white;"> <span
			class="glyphicon glyphicon-download-alt"></span> Download excel
		</a>
		<!-- #F5EEF8 -->
	</p>
	<!--        --------Contract--------             -->


<div class="container"> 


	<div style="margin: 0.2%;">
		<table class="nowrap table table-hover table-bordered"
			style="width: 100%; margin-left: -2.5px;">
			<thead>


			<tr>
					<th colspan="6">
						<p style="text-align: center; font-size: 130%">Müqavilənin
							bitməsi</p>
					</th>
				</tr> 



				<tr>

					<th
						style="font-size: 14px; text-align: center; background-color: white;">#</th>
					<th
						style="font-size: 14px; text-align: center; background-color: white;">Iscinin
						id nomresi</th>
					<th style="font-size: 14px; text-align: center;">A.S.A</th>

					<th
						style="font-size: 14px; text-align: center; background-color: white;">
						İşə qəbul tarixi</th>

					<th style="font-size: 14px; text-align: center;">Vəzifə</th>

					<th style="font-size: 14px; text-align: center;">Müqavilənin
						bitmə tarixi<br>Sınaq müddəti tarixi
					</th>

				</tr>


			</thead>
			<tbody>
				<c:forEach var="contract" items="${contracts}">

					<tr>

						<td scope="row"></td>
						<td>${contract.employee.specialIdNumber}</td>
						<td>   ${contract.employee.surname} ${contract.employee.name} ${contract.employee.fatherName} </td>

						<td>  ${contract.startTime}</td>

						<td>  ${contract.employee.position}</td>

						<td>  ${contract.endTime}</td>

					</tr>

				</c:forEach>

			</tbody>
			
						<tr>
					<th colspan="6">
						<p style="text-align: center; font-size: 130%">
							Yeni işçinin SINAQ MÜDDƏTİ:</p>
					</th>
				</tr> 
						<tbody>
				<c:forEach var="probation" items="${probations}">

					<tr>

						<td scope="row"></td>
						<td>${probation.employee.specialIdNumber}</td>
						<td>   ${probation.employee.surname} ${probation.employee.name} ${probation.employee.fatherName} </td>

						<td>  ${probation.startTime}</td>

						<td>  ${probation.employee.position}</td>

						<td>  ${probation.probation}</td>

					</tr>

				</c:forEach>

			</tbody>
		</table>

<br><br><br>

	</div>
	</div>

	<!-- ---------  -->
	<!-- Modal update-->
	<!-- ---------  -->

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document" style="width: 610px;">
			<!-- modal-lg -->
			<div class="modal-content"></div>
		</div>
	</div>





	<script src="<c:url value="/resources/static/js/modal.js"/>"></script>

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
				"pageLength" : 10,
				"ordering" : true,
				"bPaginate" : true,
				"bFilter" : true

			});
		});
	</script>



</body>
</html>

