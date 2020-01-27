<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form
	action="${pageContext.request.contextPath}/admin/edit_deactive"
	method="post" modelAttribute="employee">

	<div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel"></h5>
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">


		<spr:input type="hidden" class="form-control" path="id" />
		<p><s:message code="employee_deaktiv_time"></s:message></p>
		<spr:input type="date" class="form-control" path="endTime" />

	</div>

	<div class="modal-footer">

		<button type="submit" class="btn btn-primary"><s:message code="save"></s:message></button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal"><s:message code="cancel"></s:message></button>


	</div>

</spr:form>