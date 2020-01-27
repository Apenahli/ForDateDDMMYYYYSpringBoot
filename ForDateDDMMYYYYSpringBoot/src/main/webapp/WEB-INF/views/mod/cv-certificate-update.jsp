<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<spr:form
	action="${pageContext.request.contextPath}/employee/updateCertificate"
	method="post" modelAttribute="certificate">

	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">
			<p> Certificate Name </p>

	
		<p>${certificate.certificateName}</p>
		<br>

		<spr:input type="hidden" class="form-control" path="employee.id" />

		<spr:input type="hidden" class="form-control" path="id" />

		<p style="margin-top:-50px;margin-left:280px "> 
			<a
			href="${pageContext.request.contextPath}/cv/downloadFile/${certificate.id}">download</a>
		</p>

		<br>

	</div>

	
	<div class="modal-footer">

		<button type="submit" name="btnDelete" class="btn btn-secondary"
			style="float: left; width: 60px">
			<s:message code="delete"></s:message>
		</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			<s:message code="cancel"></s:message>
		</button>


	</div>

</spr:form>



