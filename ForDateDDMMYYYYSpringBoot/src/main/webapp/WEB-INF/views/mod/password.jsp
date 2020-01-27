<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'>

<link rel='stylesheet'
	href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>


<link href="<c:url value="/resources/static/css/home/sidebar.css"/>"
	rel="stylesheet">

</head>


<body translate="no"
	style="background-color: #EEEEEE; margin-left: 2%; margin-right: 2%">
	<jsp:include page="../common/navbar2.jsp"></jsp:include>



	<div class="container-fluid p-0">

		<div class="row" id="body-row">


			<jsp:include page="../common/sidebar.jsp"></jsp:include>

			<div class="col">
				<br> <br> <br>
				<div class="box">


					<br>
					<div>
						<font class="moduleTitle"
							style="font-size: 22px; margin-left: 20px;"><s:message
								code="Profile_Settings"></s:message> </font>
					</div>
					<br>

					<div class="nav-tabs-custom">



						<a href="${pageContext.request.contextPath}/employee/mod/review"
							class="btn btn-primary color"
							style="background-color: #F2F2F2F2; color: black; margin-left: 20px">
							<s:message code="General"></s:message>
						</a> <a
							href="${pageContext.request.contextPath}/employee/mod/changePassword"
							class="btn btn-primary color"
							style="background-color: #F2F2F2F2; color: black; margin-left: -1px;">
							<s:message code="Password"></s:message>
						</a> <a
							href="${pageContext.request.contextPath}/employee/mod/contactInformation"
							class="btn btn-primary color"
							style="background-color: #F2F2F2F2; color: black; margin-left: -1px;">

							<s:message code="Contact_Info"></s:message>
						</a> <a
							href="${pageContext.request.contextPath}/employee/mod/addressInformation"
							class="btn btn-primary color"
							style="background-color: #F2F2F2F2; color: black; margin-left: -1px;">
							<s:message code="Addresses"></s:message>
						</a>


						<hr style="margin-left: 20px; margin-top: 0.1px;">


					</div>



					<p style="margin-left: 20px; font-size: 20px;">
						<s:message code="Password"></s:message>
					</p>



					<div style="margin-left: 20px;">

						<br> Parolu dəyişdirmək üçün hazırkı parolu daxil etmək
						təhlükəsizlik üçündür. Əks halda siz hesaba daxil olduqdan sonra
						hesabdan çıxmadan kompüterdən uzaqlaşsanız, həmin kompüteri
						istifadə edən şəxs sizin parolu dəyişə bilər.
					</div>

					<div style="padding: 4px; margin-left: 20px;"
						class="table-responsive">


						<form
							action="${pageContext.request.contextPath}/employee/mod/editPassword"
							onsubmit="return validation();" method="post">
							<table class="simple-table">

								<tbody>
									<tr>
										<td><s:message code="Current_password"></s:message>:</td>
										<td><input class="form-control" name="oldPassword" id="p"
											type="password" required="required"></td>
									</tr>

									<tr>
										<td colspan="2" height="5"></td>
									</tr>

									<tr>

										<td><s:message code="New_password"></s:message>:</td>
										<td><input class="form-control" name="newPassword"
											id="p1" type="password" required="required">
											<div align="left"
												style="font-size: 10px; color: #333; margin-left: 2px">
												Parol ən az 4 simvoldan ibarət olmalıdır</div></td>

									</tr>
									<tr>

										<td><s:message code="New_password_(again)"></s:message>:</td>
										<td><input class="form-control" name="confirmPassword"
											id="p2" type="password" required="required"> <input
											type="hidden" value="${employee.id}" name="empId"></td>
									<tr>
										<td>&nbsp;</td>
										<td>

											<button type="submit" class="btn btn-primary"
												style="margin-left: 1px; margin-top: 3px;">
												<s:message code="save"></s:message>
											</button>


										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
					<br>
					<div style="padding: 4px; margin-left: 20px;">

						<s:message code="mod_password_1"></s:message>

						<br>
						<s:message code="mod_password_1_1"></s:message>
					</div>

					<div style="padding: 1px">
						<ul style="list-style-position: inside; list-style: circle">

							<li><s:message code="mod_password_2"></s:message></li>


							<li><s:message code="mod_password_3"></s:message></li>

							<li><s:message code="mod_password_4"></s:message></li>

							<li><s:message code="mod_password_5"></s:message></li>

							<li><s:message code="mod_password_6"></s:message></li>

							<li><s:message code="mod_password_7"></s:message></li>

							<li><s:message code="mod_password_8"></s:message></li>

							<li><s:message code="mod_password_9"></s:message></li>


						</ul>

						<hr style="margin-left: 2%; margin-right: 2%;">
					</div>
					<br>
				</div>
			</div>
		</div>

	</div>
</body>






<div id="eresult"
	style="color: red; float: left; margin-left: 630px; margin-top: -438px; position: relative;"></div>

<script type="text/javascript">
	function validation() {
		var password = document.getElementById('p1').value;
		var confirmPassword = document.getElementById('p2').value;

		if (password.length < 4) {
			document.getElementById("eresult").innerHTML = "Password Must Be Atleast 4 characters";
			return false;
		} else if (password !== confirmPassword) {

			document.getElementById("eresult").innerHTML = "Password are not matching"
			return false;

		} else {
			return true;
		}
	}
</script>

<!--   collapsi action -->
<script src='https://code.jquery.com/jquery-3.2.1.slim.min.js'></script>

<script
	src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'></script>


<script id="rendered-js"
	src="<c:url value="/resources/static/js/sidebar.js"/>"></script>



</html>
