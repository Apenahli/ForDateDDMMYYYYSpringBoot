<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form action="${pageContext.request.contextPath}/cv/saveEducation"
	method="post" modelAttribute="education">

	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	
	<div class="modal-body">

	<p>
			<spr:input type="hidden" path="employee" class="form-control"
				placeholder="id" value="${id}" />
		</p>

		<p style="font-style: oblique; margin-top: -5px; margin-left: 20px;">
			<s:message code="education_unv_name"></s:message></p>
		<p>
			<spr:input path="universityName" type="text"
				style="width:42%; margin-left:15px;" class="form-control"
				placeholder="Baku State University.." />
		</p>

		<p style="font-style: oblique; margin-top: -5px; margin-left: 20px;">
		<s:message code="your_speciality"></s:message>
			</p>
		<p>
			<spr:input path="speciality" type="text" class="form-control"
				style="width:42%;margin-left:15px;" placeholder="Pedagogy .." />
		</p>
		<p style="font-style: oblique; margin-top: -5px; margin-left: 20px;">
<s:message code="your_faculty"></s:message>
			</p>
		<p>
			<spr:input path="faculty" type="text" class="form-control"
				style="width:42%;margin-left:15px;" placeholder="Mathematics..." />
		</p>

		<p
			style="float: left; margin-top: -212px; margin-left: 59.5%; font-style: oblique; width: 100px">
			<s:message code="your_degree"></s:message>
			</p>


		<spr:input path="degree" type="text" class="form-control"
			style="width:170px;margin-left:335px; margin-top:-182px; "
			placeholder="bachelor ..." />



		<p
			style="float: left; margin-top: -143px; margin-left: 59.5%; font-style: oblique;">
			<s:message code="start_date"></s:message>
		</p>


		<p>
			<spr:input path="startTime" type="date" class="form-control"
				name="startTime"
				style="float: left; margin-top:-113px; margin-left:59%; width: 170px;" />
		</p>

		<p
			style="float: left; margin-top: -75px; margin-left: 59.5%; font-style: oblique;">
			<s:message code="end_date"></s:message>
		<p>
		<p>
			<spr:input path="endTime" type="date" class="form-control"
				name="endTime"
				style="float: left; margin-top:-44px; margin-left:59%; width: 170px;" />
		</p>


	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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