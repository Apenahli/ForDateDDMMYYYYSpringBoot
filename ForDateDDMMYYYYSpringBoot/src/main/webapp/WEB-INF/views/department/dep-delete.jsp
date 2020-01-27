<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form
	action="${pageContext.request.contextPath}/departments/remove/${dept.id}"
	method="post" modelAttribute="dept">

	<div class="modal-header">
	
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>

	<div class="modal-body">

		<p>
			<s:message code="remove_user_profil"></s:message>
		</p>

	</div>

	<div class="modal-footer">

		<button type="submit" class="btn btn-primary">
			<s:message code="delete"></s:message>
		</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			<s:message code="cancel"></s:message>
		</button>

	</div>

</spr:form>