<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form action="${pageContext.request.contextPath}/projects/edit"
	method="post" modelAttribute="project">

	<div class="modal-header">

		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">

		<spr:input type="hidden" class="form-control" path="id" />

		<p style="margin-left:2px;"><s:message code="project_name"></s:message></p>
		<spr:input type="text" class="form-control" path="name" />
		<br>

		<p style="float: left; margin-left: 2px"><s:message code="start_date"></s:message></p>

		<spr:input path="fromDate" id="edu_start" type="date"
			class="form-control" name="startTime"
			style="width: 160px; float: left; margin-left: 5px" />


		<p style="float: left; margin-left: 37px; margin-right: 10px">
		<s:message code="end_date"></s:message>
		<p>

			<spr:input path="toDate" id="edu_end" type="date"
				class="form-control" name="endTime"
				style="width: 160px; margin-left: 20px" />
		<p>
	</div>

	<div class="modal-footer">

		<button type="submit" class="btn btn-primary"><s:message code="save"></s:message></button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal"><s:message code="cancel"></s:message></button>


	</div>

</spr:form>