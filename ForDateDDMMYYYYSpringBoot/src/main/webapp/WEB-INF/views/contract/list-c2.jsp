<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
 
<spr:form action="${pageContext.request.contextPath}/contract/y"
	method="post" modelAttribute="employee" enctype="multipart/form-data" onsubmit="return validation();">

	<div class="modal-header">


	<button type="button" class="close" data-dismiss="modal" aria-label="Close">

		<span aria-hidden="true">&times;</span>

	</button>
	</div> <br>	<div class="modal-body">


 <script>
  $( function() {
    $( "#datepicker1" ).datepicker({ dateFormat: 'dd/mm/yy' });
  } );
  </script>
<h1>Hello world</h1>
<p>Date: <input type="text" id="datepicker1" name="txt" ></p>



<br> <br><br> <br> <br>
<br> <br><br>




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




	