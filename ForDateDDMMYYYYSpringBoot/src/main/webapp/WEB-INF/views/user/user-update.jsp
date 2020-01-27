<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form action="${pageContext.request.contextPath}/user/edit"
	method="post" modelAttribute="user">

	<div class="modal-header">


		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">

			<span aria-hidden="true">&times;</span>

		</button>
	</div>
	<div class="modal-body">

		<p>Full Name</p>
		<spr:input type="text" path="fullname" class="form-control"
			name="textFullname" required="required"
			style="width: 220px; float: left; margin-right:55px" />

		<p style="float: left; margin-right: 300px; margin-top: 6px">Username</p>
		<spr:input type="text" class="form-control" path="username"
			required="required" name="textUsername"
			style="width: 220px; float: left; margin-right:55px ; margin-top:-5px"
			onblur="validationUsername()" />
		<br>


		<p style="float: right; margin-right: 238px; margin-top: -95px">Email</p>
		<spr:input type="text" class="form-control" path="email"
			name="textEmaile"
			style="width: 220px; float: right; margin-right:55px ; margin-top:-70px" />

		<p style="float: right; margin-right: 233px; margin-top: -30px">Phone</p>
		<spr:input type="text" class="form-control" path="phone"
			name="textPhone"
			style="width: 220px; float: right; margin-right:55px;margin-top:-7px" />


		<p style="float: left; margin-left: -270px; margin-top: 33px">Role</p>

		<spr:select path="roles" class="form-control" multiple="single"
			style="width:220px; float:left; margin-left:-275px ; margin-top:53px">
			<spr:options items="${roless}" itemValue="id" itemLabel="name" />
		</spr:select>

		<spr:input type="hidden" class="form-control" path="password" />

		<spr:input type="hidden" path="id" />
		
		<spr:input type="hidden" path="employeeId" />


		<br> <br> <br> <br> <br> <br> <br>
		<br>

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

<script>
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
