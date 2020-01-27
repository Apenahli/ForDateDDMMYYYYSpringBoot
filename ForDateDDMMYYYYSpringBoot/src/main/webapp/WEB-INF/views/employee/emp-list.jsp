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

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<%--   <script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js"/>"></script> --%>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<link href="<c:url value="/resources/static/css/home/button_style.css"/>" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
	
<link href="<c:url value="/resources/static/css/home/table_style.css"/>"
	rel="stylesheet">
	
	<!-- for bithday bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>



<body>


		<jsp:include page="../common/navbar.jsp"></jsp:include>

	<p style="float: right; margin-right: 195px; margin-top:-9px;">Search:</p>
	
	
		<p style="float: left; margin-left: 8px; margin-top: -14px;">
		<a href="${pageContext.request.contextPath}/admin/createExcel"
			class="btn btn-default btn-sm" style="background-color:#2ECC71;color:white;"> <span
			class="glyphicon glyphicon-download-alt"></span> Download excel
		</a><!-- #F5EEF8 -->
	    </p>
	<!--        --------Contract--------             -->
	
	<c:if test="${ empty contractTime}">
		<p style="float: left; margin-left: 8px; margin-top: -14px;">
			<a href="#" class="btn btn-default btn-sm" style="background-color:#2ECC71;color:white;">   <span
				class="glyphicon glyphicon-calendar"></span> Contract time  <!-- #FF6544 -->
			</a>
		</p>
	</c:if>
	
	
	<c:if test="${not empty contractTime}">
		<p style="float: left; margin-left: 8px; margin-top: -14px;">
			<a href="javascript:contract()" class="btn btn-default btn-sm" style="background-color:#CC2E2E;color:white;" id="titleTable">   <span
				class="glyphicon glyphicon-calendar"></span> Contract time  <!-- #FF6544 -->
			</a>
		</p>
	</c:if>
	
<!--        --------Birthday--------             -->

<c:if test="${empty birthdayEmp}">
<p style="float: left; margin-left: 8px; margin-top: -14px;">
			<a href="#" class="btn btn-default btn-sm" style="background-color:#2ECC71;color:white;">
				<span class="glyphicon glyphicon-gift"></span> Birthday
			</a>
		</p>
	</c:if>
	
	<c:if test="${not empty birthdayEmp}">
		<p style="float: left; margin-left: 8px; margin-top: -14px;">
			<a href="javascript:getBirthday()" class="btn btn-default btn-sm" style="background-color: #CC2E2E;color:white;"  id="titleTable2">
				<span class="glyphicon glyphicon-gift"></span> Birthday
			</a>
		</p>
	</c:if>
	
	<!--        --------Sinaq muddeti--------             -->
		
		<c:if test="${ empty probation}">
		<p style="float: left; margin-left: 8px; margin-top: -14px;">
			<a href="#" class="btn btn-default btn-sm" style="background-color:#2ECC71; color:white;">   <span
				class="glyphicon glyphicon-calendar"></span> Sinaq müdəti  <!-- #FF6544 -->
			</a>
		</p>
	</c:if>
	
	
	<c:if test="${not empty probation}">
		<p style="float: left; margin-left: 8px; margin-top: -14px;">
			<a href="javascript:probation()" class="btn btn-default btn-sm" style="background-color:#CC2E2E;color:white;" id="titleTable3">   <span
				class="glyphicon glyphicon-calendar"></span> Sınaq müdəti  <!-- #FF6544 -->
			</a>
		</p>
	</c:if>	
		
		

		<!--        -------- --------             -->
		
		
		
		
	<div style="margin:0.2%;">
	<table id="customers" class="nowrap" style="width: 100%;margin-left:-2.5px;" >
		<thead>
			<tr>
			
			<th style="font-size: 14px; text-align: center; background-color:white;">#</th>
						
					<th style="font-size: 14px; text-align: center;"><s:message
						code="surname"></s:message></th>	
		
						
				<th style="font-size: 14px; text-align: center; background-color:white;"><s:message
						code="name"></s:message></th>
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="father_name"></s:message></th>
			
				<th style="font-size: 14px; text-align: center;">
				Special Id </th>			
				
				
						<th style="font-size: 14px; text-align: center;">
				Muqavile/T </th>			
				
						<th style="font-size: 14px; text-align: center;"><s:message
						code="department"></s:message></th>		
						
							<th style="font-size: 14px; text-align: center;">
							Sovbe</th>						
						
							<th style="font-size: 14px; text-align: center;">
				<s:message code="position"></s:message></th>
				
				
					<th style="font-size: 14px; text-align: center;">
			 <s:message code="salary"></s:message> </th>			
					
				
				
									
				
				
						
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="birthday"></s:message></th>
						
				<th style="font-size: 14px; text-align: center;">
				Yaşı</th>
						
			<!-- 	<th style="font-size: 14px; text-align: center;"><s:message
						code="gender"></s:message></th>    -->
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="number"></s:message></th>
						
				<th style="font-size: 14px; text-align: center;">
				<s:message code="email"></s:message></th>
				
				<th style="font-size: 14px; text-align: center;"> SpecialEmail </th>	
						
				<th style="font-size: 14px; text-align: center;"><s:message
						code="legal_address"></s:message></th>
				
				<th style="font-size: 14px; text-align: center;"><s:message
						code="actual_address"></s:message>
				</th>
				

				
				<th style="font-size: 14px; text-align: center;">
				 Fovqaladə əlaqə
				
				</th>
					



				<th style="font-size: 14px; text-align: center;">
				 <s:message code="fincode"></s:message>
				
				</th>
				
				<th style="font-size: 14px; text-align: center;">
				<s:message code="idCardsNumber"></s:message></th>
				<th style="font-size: 14px; text-align: center;">SSN</th>


				<th style="font-size: 14px; text-align: center;">Action</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="employee" items="${employees}" >
			
				<tr>
				
					<td >${employee.id}</td>
					
					<td>${employee.surname}</td>
					
					<td>${employee.name}</td>
				
					<td>${employee.fatherName}</td>
					
					<td>${employee.specialIdNumber}</td>
					
					<td>${employee.startTime}</td>
                 	<td>${employee.department.name}</td>					
					
						<td>${employee.areaGroup.name}</td>	
						<td>${employee.position}</td>					
						<td>${employee.salary}</td>	
							
				
				
											
					<td>${employee.dateOfBirth}</td>
					<td>${employee.age}</td>
				
			<!-- 	<td>${employee.gender}</td>  -->
					<td>${employee.number}</td>
					<td>${employee.email}</td>
					<td>${employee.specialEmail}</td>
					<td>${employee.address}</td>
					<td>${employee.actualAddress}</td>
				
					<td>${employee.extraordinaryContact.extraordinaryContactNumber}
					(${employee.extraordinaryContact.extraordinaryContactName})
					</td>

					<td>${employee.fincode}</td>
					<td>${employee.idCardsNumber}</td>
					<td>${employee.socialSecurityNumber}</td>


					<td>
					 
					 <a href="${pageContext.request.contextPath}/cv/review/${employee.id}">Cv</a>
							
					/ <a href="${pageContext.request.contextPath}/empProjectRole/empProjectList/${employee.id}"><s:message code="project"></s:message></a>
					
				   
				    / <a href="javascript:editEmployee('${employee.id}')"> <s:message code="edit"></s:message>${employee.id}</a> 
					
					
					/ <a href="javascript:getDeactvForm('${employee.id}')"> <s:message	code="deactive"></s:message> </a>/
					
					
					<a href="javascript:getNewContract('${employee.contract.id}','${employee.contract.type}')"> contracti yenile </a>
					
					
					</td>
					

				</tr>
			

			</c:forEach>

		</tbody>
	</table>
	
		<a href="javascript:insertEmployee()">
		<button class="button button5">
			<s:message code="insert"></s:message>
		</button>
	</a>
	<br>
	
</div>

	<!-- ---------  -->
	<!-- Modal update-->
	<!-- ---------  -->

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document" style="width:610px;" > <!-- modal-lg -->
			<div class="modal-content"></div>
		</div>
	</div>
	

<!-- 	<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel2" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document"> modal-lg
			<div class="modal-content"></div>
		</div>
	</div> -->


	<script src="<c:url value="/resources/static/js/modal.js"/>"></script>
	
	<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>
	
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

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
	
<script>
(function() {
    var s = document.getElementById('titleTable').style,
        f = false,
        c1 = '#CC2E2E',
        c2 = '#2ECC71';

    setInterval(function() {
        s.backgroundColor = f ? c1 : c2;
        s.color = '#FFFFFF';
        f = !f;
    }, 500);
})();
</script>

<script>
(function() {
    var s = document.getElementById('titleTable2').style,
        f = false,
        c1 = '#CC2E2E',
        c2 = '#2ECC71';

    setInterval(function() {
        s.backgroundColor = f ? c1 : c2;
        s.color = '#FFFFFF';
        f = !f;
    }, 500);
})();
</script>

<script>
(function() {
    var s = document.getElementById('titleTable3').style,
        f = false,
        c1 = '#CC2E2E',
        c2 = '#2ECC71';

    setInterval(function() {
        s.backgroundColor = f ? c1 : c2;
        s.color = '#FFFFFF';
        f = !f;
    }, 500);
})();
</script>
</body>
</html>