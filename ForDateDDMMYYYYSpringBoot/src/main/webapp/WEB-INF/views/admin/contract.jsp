<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<spr:form action="${pageContext.request.contextPath}/employee/vvvv"
	method="post" modelAttribute="employees">

	<div class="modal-header">
	<!-- 	<p>Contract vaxtı</p> -->
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">

		<c:forEach var="employee" items="${employees}">
		
		 <i class="fa fa-warning" style="font-size: 20px; color: red; float: right"></i>
		
			<p> <em style="size: 20px;margin-right: 0px;"><s:message code="name"></s:message> 
			/ <s:message code="surname"></s:message>
			 / <s:message code="father_name"></s:message>:</em> <em style="size: 22px; margin-left: 17px">${employee.name} ${employee.surname} ${employee.fatherName} </em></p> 
			
			
			<p> <em style="margin-right: 50px;size: 20px">
		
			<s:message code="Department"></s:message>: </em><em style="size: 22px; margin-left: 17px">  ${employee.department.name} </em></p>
		
			<p> <em style="margin-right: -5px;size: 20px">
			<s:message code="Contract_expiration_date"></s:message>
			
			: </em><em style="size: 22px; margin-left: 17px">${employee.contract.endTime}</em></p>
		
		
					
			<a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/admin/sendContractMessage1/${employee.id}"> <span
				class="glyphicon glyphicon-envelope"></span>
				<s:message code="contract_expired"></s:message>
			</a>
		
		
			<a class="btn btn-default btn-sm" style="margin-left:5px;"  href="${pageContext.request.contextPath}/admin/sendContractMessage2/${employee.id}"> <span
				class="glyphicon glyphicon-envelope"></span> 
				 <s:message code="contract_renewed"></s:message>
			</a>
		
		
			<hr>
		</c:forEach>

	</div>


	<div class="modal-footer">
		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			Close</button>
	</div>

</spr:form>