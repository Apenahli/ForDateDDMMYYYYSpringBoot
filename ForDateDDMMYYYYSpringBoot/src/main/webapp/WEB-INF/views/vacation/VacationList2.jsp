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
	
<link href="<c:url value="/resources/static/css/home/table_style.css"/>"
	rel="stylesheet">
	
	<link rel='stylesheet'
	href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
		
	
</head>

<body>

<jsp:include page="../common/navbar.jsp"></jsp:include>
		
		
<table style="margin-top:-12px;margin-left:-12px;margin-bottom:-3px;"><tr>
<td>
  <select class="form-control" style="width:220px; margin-bottom:8px; margin-left:20px; height:37px;" id="interface_lang">
  <option value="az" disabled selected>choose</option>  
  <c:forEach items="${years}" var="yearr">
  <option value="${yearr.year}">${yearr.year}</option>
  </c:forEach>
  </select>
</td>
<td>

 
<a href="javascript:x('${vacation.id}')" id="langTagA"	class="btn btn-primary color" 

style="margin-left:10px; margin-top: -7px;">
search</a>
</td>
</tr>

</table>

	<p style="float: right; margin-right: 195px; margin-top:-35px;">Search:</p>
	
	
	
	<div style="margin:0.2%;">
	<table id="customers" class=" nowrap " style="width: 100%;margin-left:-2.5px;" >
		<thead>
			<tr>
			<th style="font-size: 14px; text-align: center; background-color: white;">
				Ad soyad ata adi</th>

			<th style="font-size: 14px; text-align: center;">
				Department/şöbə</th>

			<th style="font-size: 14px; text-align: center;">Vəzifə</th>

			<th style="font-size: 14px; text-align: center;">İşə başlama
				tarixi</th>

			<th>${oldYear2} 
			<img style="float: right;margin-left:-25px; width: 30px; height: 30px;" src="<c:url 

			value="/resources/images/e4d84a02b820019202ca257077649ff9_icon.png" /> " />
			</th>

			<th style="font-size: 14px; text-align: center;">
			
			<img style="float: right;margin-left:-15px; width: 40px; height: 44px;" src="<c:url 

			value="/resources/images/b2ap3_thumbnail_foto3.png" /> " />
			</th>

			<th style="font-size: 14px; text-align: center;">
			<img style="float: right;margin-left:-15px; width: 30px; height: 30px;" src="<c:url 

			value="/resources/images/ab55c26cff3e4127f84cbb8088275cde.png" /> " />
		
			</th>

			<th style="font-size: 14px; text-align: center;">
		<img style="float: right;margin-left:-15px; width: 30px; height: 28px;" src="<c:url 

		value="/resources/images/icon-staj.png" /> " />
				
				</th>

			<th style="font-size: 14px; text-align: center;">
			
					<img style="float: right;margin-left:-15px; width: 30px; height: 28px;" src="<c:url 

		value="/resources/images/105893148-summation-color-icon-sum-or-total-math-symbol-isolated-vector-illustration.jpg" /> " />
			
			
			</th>

			<th>${yearx}
			
			<img style="float: right;margin-left:-25px; width: 30px; height: 30px;" src="<c:url 

			value="/resources/images/e4d84a02b820019202ca257077649ff9_icon.png" /> " />
			
			
			
			</th>

			<th>
			
				<img style="float: right;margin-left:-15px; width: 35px; height: 30px;" src="<c:url 

			value="/resources/images/b94dc4fd8d77a71f4d4d10e3194e6329.png" /> " />
			
			
			</th>
			
			<!-- <th>action</th> -->


		</tr>
		</thead>
		<tbody>
			<c:forEach var="vacation" items="${vacations}">
	
		<tr>
			<td>
			<a href="javascript:editVacation2('${vacation.id}')" style="color:black;text-decoration: none;">
			${vacation.employee.name} ${vacation.employee.surname} ${vacation.employee.fatherName}
			</a>
			</td>
			<td>${vacation.employee.department.name}</td>
			<td>${vacation.employee.position}</td>
			
			<td>${vacation.employee.startTime}</td>
			
			<td>${vacation.remainder}</td>
			<td>${vacation.basic_vacation_day}</td>
			<td>${vacation.sosial_vacation_day}</td>
		
			<td>${vacation.stajVacationDay}</td>
			<td>${vacation.total}</td>
			<td>${vacation.final_remainder}</td>
		
			<td>	
			  <a href="javascript:editVacationEmp2('${vacation.id}')">
             <i class="fa fa-pencil-square-o" aria-hidden="true" style="margin-left:15px;"></i> 
             </a>	
             
            
             <a href="javascript:reviewVacationEmp2('${vacation.id}')">
		     <i class="fa fa-eye" aria-hidden="true" style="margin-left:15px; margin-top:-2px;"> </i></a> 
             	
			</td>
			
		</tr>
		</c:forEach> 

		</tbody>
	</table>
	
		<a href="javascript:insertVacationEmp2('${message}')">
		<button class="button button5">
			insert
		</button>
	    </a>
	<br>
	
</div>

	<!-- ---------  -->
	<!-- Modal update-->
	<!-- ---------  -->

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content"></div>
		</div>
	</div>


<script src="<c:url value="/resources/static/js/vacation.js"/>"></script>
	
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	
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

$("#interface_lang").change(function(){
	$("#langTagA").attr("href","${pageContext.request.contextPath}/vacation/"+$("#interface_lang").val());
});


</script>

</body>
</html>