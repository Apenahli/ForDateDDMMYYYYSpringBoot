<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form
	action="${pageContext.request.contextPath}/employee/languagesave"
	method="post" modelAttribute="employee">

	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">
		<br>
		<p style="margin-top:5px; margin-left: 5px;">
				<s:message code="language_name"></s:message>:
		</p>

		<spr:select path="languages" class="form-control" multiple="single"
			style="width:75%;margin-left: 122px;margin-top:-30px;">

			<spr:options items="${languages}" itemValue="id" itemLabel="name" />

		</spr:select>

		<br>

		<spr:input type="hidden" path="id" />

	</div>

	<div class="modal-footer">

		<button type="submit" class="btn btn-primary">
			<s:message code="save"></s:message>
		</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			<s:message code="cancel"></s:message>
		</button>


	</div>

</spr:form>