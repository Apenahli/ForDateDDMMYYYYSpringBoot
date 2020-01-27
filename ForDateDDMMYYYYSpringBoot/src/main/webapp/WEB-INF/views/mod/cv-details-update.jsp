<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form
	action="${pageContext.request.contextPath}/employee/updateSummary"
	method="post" modelAttribute="details">

	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">
		<br>


		<p style="margin-top: 5px; margin-left: 5px; font-style: oblique;">
			<s:message code="summary"></s:message>
			:
		</p>

		<spr:input type="text"
			style="width:82%;margin-left:90px; margin-top:-30px;"
			class="form-control" path="name" />


		<spr:input type="hidden" class="form-control" path="employee.id" />

		<spr:input type="hidden" class="form-control" path="id" />



	</div>
	<br>
	<div class="modal-footer">

		<button type="submit" name="btnEdit" class="btn btn-primary">
			<s:message code="save"></s:message>
		</button>

		<button type="submit" name="btnDelete" class="btn btn-secondary"
			style="float: left; width: 60px">
			<s:message code="delete"></s:message>
		</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			<s:message code="cancel"></s:message>
		</button>


	</div>

</spr:form>



