<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form action="${pageContext.request.contextPath}/languages/edit"
	method="post" modelAttribute="language">

	<div class="modal-header">

		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">
<br>
		<spr:input type="hidden" class="form-control" path="id" />
		<p style="margin-left:5px;">
			<s:message code="language_name"></s:message>
		</p>
		<spr:input type="text" class="form-control" path="name" style="width:350px;" />
<br>
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