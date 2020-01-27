<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<spr:form action="${pageContext.request.contextPath}/employee/sendBirthdayMessage"
	method="post" modelAttribute="employees">

	<div class="modal-header">
	<!-- 	<p>Dogum gunu olanlar</p> -->

		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">
			
		<c:forEach var="employee" items="${employees}">
		<img style="float: right; width: 40px; height: 47px;" src="<c:url value="/resources/images/Gift-Present-cynthia-selahblue-cynti19-22541940-325-325.jpg" /> " />
			
			<p> <em style="size: 20px;margin-right: 0px;">
			<s:message code="name"></s:message>  /
			 <s:message code="surname"></s:message> /
			  <s:message code="father_name"></s:message>:
			
			
			</em> <em style="size: 22px; margin-left: 17px">${employee.name} ${employee.surname} ${employee.fatherName} </em></p> 
		
			<p> <em style="margin-right: 50px;size: 20px">
			<s:message code="Department"></s:message>: </em><em style="size: 22px; margin-left: 17px">  ${employee.department.name} </em></p>
			
			<p> <em style="margin-right: 50px;size: 20px"><s:message code="birthday"></s:message>: </em><em style="size: 22px; margin-left: 17px">  ${employee.dateOfBirth} </em></p>
			
			
			<a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/admin/sendBirthdayMessage/${employee.id}"> <span
				class="glyphicon glyphicon-envelope"></span> 
				 <s:message code="send_message"></s:message>
				 
			</a>
			
		
			<hr>
		</c:forEach>
		
	</div>

	<div class="modal-footer">

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			Close</button>
	</div>

</spr:form>