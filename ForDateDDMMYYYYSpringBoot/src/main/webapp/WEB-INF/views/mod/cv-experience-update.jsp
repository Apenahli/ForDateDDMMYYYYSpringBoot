<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form action="${pageContext.request.contextPath}/employee/updateExperience"
	method="post" modelAttribute="experience">

	<div class="modal-header">
	

		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">

		<p>
			<spr:input type="hidden" path="id" class="form-control"
				placeholder="id" />
		</p>

		<p>
			<spr:input type="hidden" path="employee" class="form-control"
				placeholder="id" />
		</p>


		<p style="font-style: oblique; margin-top: -5px; margin-left: 15px;"> <s:message code="your_experience_name"></s:message></p>
		
		<p>
			<spr:input path="experienceName" type="text" style="width:42%; margin-left:15px;"
				class="form-control" name="experienceName" placeholder="Your Experience name.." />	</p>

		<p style="font-style: oblique; margin-left: 15px;"><s:message code="your_posision"></s:message></p>
		<p>
			<spr:input path="position" type="text" class="form-control"
				style="width:42%; margin-left: 15px;" name="experiencePosision" placeholder="Your posision.." />
		</p>
		
		<p style="float: left; margin-top: -147px;margin-left:59%; marfont-style: oblique;">
		<s:message code="start_date"></s:message> </p>


		<p>
			<spr:input path="startTime" type="date" class="form-control"
				name="startTime" style="float: left; margin-left:330px; margin-top: -118px; width:30%" />
		</p>

		<p
			style="float: left; margin-left: 59%; margin-top: -74px; font-style: oblique;">
			<s:message code="end_date"></s:message> <p>
		
		<p>
			<spr:input path="endTime" type="date" class="form-control"
				name="endTime" style="float: left; margin-left:330px; margin-top: -44px; width:30%" />
		</p>


	</div>

	<div class="modal-footer">

		<button type="submit" name="btnEdit" class="btn btn-primary">
				<s:message code="save"></s:message></button>

		<button type="submit" name="btnDelete" class="btn btn-secondary"
			style="float: left; width: 60px">
			<s:message code="delete"></s:message></button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal"><s:message code="cancel"></s:message></button>

	</div>

</spr:form>