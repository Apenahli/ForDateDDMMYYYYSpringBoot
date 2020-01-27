<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form action="${pageContext.request.contextPath}/employee/updateLanguage"
	method="post" modelAttribute="emp">

	<div class="modal-header">
	

		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">
<br>
		<input type="hidden" value="${language.id}" name="old_lang">

			<p style="margin-top:5px;margin-left:5px;">
			<s:message code="language_name"></s:message>:
		</p>

		<select name="new_lang" class="form-control" style="width:75%;margin-left: 122px;margin-top:-30px;">
			<c:forEach var="lang" items="${languages}">

				<option value="${lang.id}"
					<c:if test="${lang.id==language.id}">selected</c:if>>

					${lang.name}</option>

			</c:forEach>

		</select> <input type="hidden" name="empId" value="${emp.id}">


	</div>
	<br>

	<div class="modal-footer">

		<button type="submit" name="btnEdit" class="btn btn-primary">
				<s:message code="save"></s:message></button>

		<button type="submit" name="btnDelete" class="btn btn-secondary"
			style="float: left; width:60px"><s:message code="delete"></s:message></button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal"><s:message code="cancel"></s:message></button>


	</div>

</spr:form>