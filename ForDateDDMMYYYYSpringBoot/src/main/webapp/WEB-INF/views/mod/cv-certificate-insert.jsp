<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form
	action="${pageContext.request.contextPath}/employee/saveCertificate"
	method="post" modelAttribute="certificate" enctype="multipart/form-data">

	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">
	<br>

	<p style="margin-top:5px;margin-left:5px;">
	
	<s:message code="add_certificate"></s:message>:
	
	</p>

		<spr:input type="text" class="form-control" path="certificateName" style="width:73%;margin-left: 125px;margin-top:-30px;"/><br>
			
	<p style="margin-left:5px;">
	<s:message code="pdf_fayl"></s:message>:	
	</p>	
	
		<input id="file" type="file" name="file" class="file-input" required  style="margin-left: 125px; margin-top:-30px;"/>

		<spr:input type="hidden" class="form-control" path="employee.id"
			value="${id}" />

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