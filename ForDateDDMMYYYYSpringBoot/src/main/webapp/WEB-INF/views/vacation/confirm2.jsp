<%-- <%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spr:form action="${pageContext.request.contextPath}/vacation/insertConfirm2"
	method="post" modelAttribute="vacation">


	<div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel">${employee.name} ${employee.surname} ${employee.fatherName}</h5>
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	
	<div class="modal-body">
		
		<br>
		<h5>${year}  ci məzuniyyət ilinin bitdiyini təsdiq edin</h5>
		<br>
		
		<input type="hidden" value="${year}" name="year"/>
	</div>
	<div class="modal-footer">

		<button type="submit" class="btn btn-primary">tesdiq et</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			cancel</button>
	</div>
</spr:form>

 --%>