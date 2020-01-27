<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spr:form
	action="${pageContext.request.contextPath}/empProjectRole/save"
	method="post" modelAttribute="employeeProjectRole">

	<div class="modal-header">
		
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	
	<div class="modal-body">

		<spr:select path="projectRole.id" class="form-control">

			<spr:options items="${projects}" itemValue="id" itemLabel="name" />

		</spr:select>
		
		<br>

		<spr:select path="employee.id" class="form-control">

			<c:forEach var="employee" items="${employees}">
				<spr:option value="${employee.id}">
					<c:out value="${employee.name} ${employee.surname}" />
				</spr:option>
			</c:forEach>
		</spr:select>
		<br>


		<p style="float: left; margin-left: 15px">Start time</p>


		<spr:input path="startTime" id="edu_start" type="date"
			class="form-control" name="startTime"
			style="width: 160px; float: left; margin-left: 5px" />


		<p style="float: left; margin-left: 50px; margin-right: 10px">End
			Time
		<p>

			<spr:input path="endTime" id="edu_end" type="date"
				class="form-control" name="endTime"
				style="width: 160px; margin-left: 20px" />
		<p>
		<p>
			<spr:input type="hidden" path="project.id" class="form-control"
				value="${id}" />
		</p>


	</div>
	<div class="modal-footer">

		<button type="submit" class="btn btn-primary">Save changes</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>


	</div>

</spr:form>