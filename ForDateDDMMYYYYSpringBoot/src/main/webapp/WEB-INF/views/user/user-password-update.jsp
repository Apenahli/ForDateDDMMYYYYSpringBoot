<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form action="${pageContext.request.contextPath}/user/editPassword"
	method="post" onsubmit="return validation();">

	<div class="modal-header">

		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">

		<p>New password</p>
		<input style="width: 220px; float: left; margin-right: 55px"
			type="password" class="form-control" name="textPassword"
			required="required" id="textPassword" />

		<p style="float: right; margin-right: 160px; margin-top: -30px">Confirm
			Password</p>
		<input type="password" class="form-control"
			style="width: 220px; float: right; margin-right: 55px; margin-top: -1px"
			name="textConfirmPassword" id="textConfirmPassword"
			required="required" /> <br> <input type="hidden" value="${id}"
			name="textId"> <br> <br>

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


<div id="eresult"
	style="color: red; float: left; margin-left: 24px; margin-top: -91px"></div>

<script type="text/javascript">
	function validation() {
		var password = document.getElementById('textPassword').value;
		var confirmPassword = document.getElementById('textConfirmPassword').value;
		if (password == '' || confirmPassword == '') {

			document.getElementById("eresult").innerHTML = "All field Required";
			return false;

		} else if (password.length < 4) {
			document.getElementById("eresult").innerHTML = "Password Must Be Atleast 4 characters";
			return false;
		} else if (password !== confirmPassword) {
			document.getElementById("eresult").innerHTML = "Password are not matching";
			return false;
		} else {
			return true;
		}
	}

	
</script>