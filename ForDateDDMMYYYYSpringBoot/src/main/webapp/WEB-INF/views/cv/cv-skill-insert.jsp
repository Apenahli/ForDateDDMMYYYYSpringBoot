<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>


<spr:form action="${pageContext.request.contextPath}/cv/saveSkill"
	method="post" modelAttribute="employee">

	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">
<br>
		<p style="margin-top: 12px; margin-left: 5px; font-style: oblique;">
			<s:message code="top_skill"></s:message>: 
		</p>

		<spr:select path="skills" class="form-control" multiple="single"
			style="width:76%;margin-left: 120px;margin-top:-30px;">

			<spr:options items="${skills}" itemValue="id" itemLabel="name" />

		</spr:select>


		<spr:input type="hidden" path="id" />


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