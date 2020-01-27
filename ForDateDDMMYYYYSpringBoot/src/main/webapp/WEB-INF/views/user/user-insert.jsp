<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form action="${pageContext.request.contextPath}/user/save"
	method="post" modelAttribute="user" onsubmit="return validation();">

	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	
	<div class="modal-body">

		<p>Full Name</p>
		<spr:input style="width: 220px; float: left; margin-right:55px"
			type="text" class="form-control" path="fullname" id="fullname"
			required="required" />

		<p style="float: left; margin-right: 300px; margin-top: 6px">
			Username</p>

		<spr:input type="text" class="form-control" path="username"
			id="username" required="required"
			style="width: 220px; float: left; margin-right:55px ; margin-top:-5px"
			onblur="validationUsername()" />
		<br>

		<p style="float: left; margin-right: 300px; margin-top: 5px">Role
		</p>
		<spr:select path="roles" class="form-control" multiple="single"
			style="width: 220px; float: left; margin-right:50px ; margin-top:-5px">
			<spr:options items="${roless}" itemValue="id" itemLabel="name" />
		</spr:select>


		<p style="float: right; margin-right: 239px; margin-top: -160px">
			Email</p>
		<spr:input type="text" path="email" class="form-control"
			style="width: 220px; float: right; margin-right:55px;margin-top:-134px" />


		<p style="float: right; margin-right: 230px; margin-top: -94px">
			Phone</p>

		<spr:input type="text" path="phone" class="form-control"
			style="width: 220px; float: right; margin-right:55px;margin-top:-70px" />



		<p style="float: right; margin-right: 184px; margin-top: -30px">
			New password</p>
		<spr:input type="password" class="form-control" path="password"
			required="required" name="textPassword" id="textPassword"
			style="width: 90px; float: right; margin-right:185px; margin-top:-5px" />

		<p style="float: right; margin-right: -215px; margin-top: -30px">
			Confirm Password</p>
		<input type="password" name="psw" class="form-control"
			id="textConfirmPassword" required="required"
			style="width: 90px; float: right; margin-right: -214px; margin-top: -8px" />


		<br> <br> <br> <br> <br> <br> <br>
		<br> <br>

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
	style="color: red; float: left; margin-left: 24px; margin-top: -99px"></div>

<script type="text/javascript">
	function validation() {
		var password = document.getElementById('textPassword').value;
		var confirmPassword = document.getElementById('textConfirmPassword').value;
		var username = document.getElementById('username').value;

		if (password == '' || confirmPassword == '' || fullname == ''
				|| username === '') {

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

	function validationUsername() {

		var username = document.getElementById('username').value;

		if (username != '') {

			checkUsername(username);
		}
	}

	function checkUsername(username) {

		var xhttp = new XMLHttpRequest();

		xhttp.onreadystatechange = function() {

			if (this.readyState == 4 && this.status == 200) {

				if (this.responseText != '') {

					document.getElementById("eresult").innerHTML = "bu username artiq istifadə edilib";

				} else {

					document.getElementById("eresult").innerHTML = "";

				}
			}
		};

		xhttp.open("GET", "/user/checkUser/" + username, true);

		xhttp.send();
	}
</script>

