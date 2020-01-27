<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>


<spr:form action="${pageContext.request.contextPath}/cv/editSkill"
	method="post" modelAttribute="employee">

	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">
<br>

		<input type="hidden" value="${skill.id}" name="old_skill">

		<p style="margin-top: 12px;margin-left:5px; font-style: oblique;">
			<s:message code="top_skill"></s:message>: 
		</p>

		<select name="new_skill" class="form-control" style="width:76%;margin-left: 120px;margin-top:-30px;">
			<c:forEach var="skl" items="${skillss}">

				<option value="${skl.id}"
					<c:if test="${skl.id==skill.id}">selected</c:if>>

					${skl.name}</option>

			</c:forEach>

		</select>

		<spr:input type="hidden" path="id" />

	</div>
<br>
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