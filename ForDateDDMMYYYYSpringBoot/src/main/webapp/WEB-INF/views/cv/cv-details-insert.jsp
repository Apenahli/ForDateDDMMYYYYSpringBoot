<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form action="${pageContext.request.contextPath}/cv/saveSummary"
	method="post" modelAttribute="details">

	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">
	<br>

		<p style="margin-top:5px;">
		<s:message code="add_summary"></s:message>
		</p> 
		
		<spr:input type="text" style="width:76%;margin-left: 130px;margin-top:-30px;" class="form-control" path="name" />

		<spr:input type="hidden" class="form-control" path="employee.id"
			value="${id}" />

	</div>
		<br>	
	<div class="modal-footer">

		<button type="submit" class="btn btn-primary">
			<s:message code="save"></s:message>
		</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			<s:message code="cancel"></s:message>
		</button>


	</div>

</spr:form>