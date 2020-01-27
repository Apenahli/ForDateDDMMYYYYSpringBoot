<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<form action="${pageContext.request.contextPath}/employee/mod/editActualAddress" method="post" >
	<br>
	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>

	<div class="modal-body">
	

		
		<input name="actualAddress" id="actualAddress" value="${actualAddress}"
			class="form-control" style="width: 65%; margin-left: 5px;"
			placeholder="Your address..." required="required" /><br>
			
			 <input
			name="id" type="hidden" id="id" value="${id}" />
			


	</div>

	<div class="modal-footer">

		<button type="submit" class="btn btn-primary">
			<s:message code="save"></s:message>
		</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			<s:message code="cancel"></s:message>
		</button>


	</div>
				</form>
