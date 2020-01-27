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

</head>
<style>
.user-panel>.image>img {
	width: 100%;
	max-width: 45px;
	height: auto;
}

.img-circle {
	border-radius: 10%;
}

img {
	vertical-align: middle;
}

img {
	border: 0;
}

.pull-left {
	float: left !important;
}

.user-panel {
	position: relative;
	width: 100%;
	padding: 10px;
}
</style>

<style>
.box-body>.table {
	margin-bottom: 0;
}

.table {
	width: 100%;
	max-width: 96%;
	margin-left: 2%;
	margin-right: 2%;
}

* {
	box-sizing: border-box;
}

.table>thead>tr>th {
	padding: 5px;
	line-height: 1.42857143;
	vertical-align: top;
	border-top: 1px solid #ddd;
}

.table td {
	border: 1px solid #ddd;
}

td {
	display: table-cell;
}

:after, :before {
	box-sizing: border-box;
}

table {
	background-color: transparent;
	border-spacing: 0;
	border-collapse: collapse;
	display: table;
	border-color: grey;
}

.box-body {
	border-top-left-radius: 0;
	border-top-right-radius: 0;
	border-bottom-right-radius: 3px;
	border-bottom-left-radius: 3px;
	padding: 10px;
}
</style>

<style>
.box {
	position: relative;
	border-radius: 3px;
	background: #ffffff;
	border-top: 3px solid #d2d6de;
	margin-bottom: 20px;
	width: 100%;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
}

body {
	font-size: 14px;
	line-height: 1.42857143;
	color: #333;
	background-color: #fff;
}

button, html input[type=button], input[type=reset], input[type=submit] {
	-webkit-appearance: button;
	cursor: pointer;
}

.btn-default {
	background-color: #f4f4f4;
	color: #444;
	border-color: #ddd;
}

.btn {
	border-radius: 3px;
	box-shadow: none;
	border: 1px solid transparent;
}

.btn {
	display: inline-block;
	padding: 4px 10px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	user-select: none;
	background-image: none;
}

button, input, select, textarea {
	font-family: inherit;
}

button, input, optgroup, select, textarea {
	margin: 0;
	font: inherit;
	margin-top: 5px;
}

input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
}
</style>

<body translate="no"
	style="background-color: #EEEEEE; margin-left: 2%; margin-right: 2%">





	<div class="container-fluid p-0">

		<div class="row" id="body-row">

			<div id="sidebar-container"
				class="sidebar-expanded d-none d-md-block">
				<ul class="list-group">
					<br>
					<br>
					<br>




					<div class="user-panel">
						<div class="pull-left image">
							<c:if test="${not empty image}">

								<div class="box-header">
									<img src="data:image/jpg;base64,${image}" class="img-circle"
										style="width: 50px; height: 60px;">
								</div>
							</c:if>
						</div>

						<div class="pull-left info"
							style="white-space: normal; margin-top: 2%; margin-left: 10px;">
							<a class="list-group-item-action  text-white"> <span
								class="menu-collapsed" style="color: black; font-size: 15px;">${employee.name}
									${employee.surname}</span>
							</a>
						</div>
					</div>

					<a
						style="background-color: #F9FAFC; border-left: white; border-right: white;"
						href="${pageContext.request.contextPath}/employee/mod/"
						class="list-group-item list-group-item-action">
						<div class="d-flex w-100 justify-content-start align-items-center">

							<i style="font-size: 16px; margin-right: 15px;"
								class="fa fa-home" aria-hidden="true"></i> <span
								class="menu-collapsed"><s:message code="home"></s:message>
							</span>

						</div>
					</a>

					<a
						style="background-color: #F9FAFC; border-left: white; border-right: white;"
						href="#submenu1" data-toggle="collapse" aria-expanded="false"
						class=" list-group-item list-group-item-action flex-column align-items-start">
						<div class="d-flex w-100 justify-content-start align-items-center">
							<i style="font-size: 16px; margin-right: 15px; color: blue;"
								class="fa fa-language" aria-hidden="true"></i> <span
								class="menu-collapsed"><s:message code="language"></s:message></span>

						</div>
					</a>



					<div id="submenu1" class="collapse sidebar-submenu">
						<a href="?lang=az"
							style="background-color: #F9FAFC; border-left: white; border-right: white;"
							class="list-group-item list-group-item-action  text-white"> <span
							class="menu-collapsed" style="color: black;"> <s:message
									code="Azerbaijan"></s:message>


						</span>
						</a> <a href="?lang=en"
							style="background-color: #F9FAFC; border-left: white; border-right: white;"
							class="list-group-item list-group-item-action  text-white"> <span
							class="menu-collapsed" style="color: black;"> <s:message
									code="English"></s:message>


						</span>
						</a>

					</div>


					<a style="background-color: #F9FAFC; border-left: white; border-right: white;"
						href="${pageContext.request.contextPath}/employee/cvreview"
						class="list-group-item list-group-item-action flex-column align-items-start">

						<div class="d-flex w-100 justify-content-start align-items-center">

							<i style="font-size: 16px; margin-right: 15px; color: gray"
								class="fa fa-file-text-o" aria-hidden="true"></i> <span
								class="menu-collapsed"> Cv </span>
						</div>
					</a>



					<%-- 	<a style="background-color: #F9FAFC;border-left:white;border-right:white;" href="#submenu3" data-toggle="collapse" aria-expanded="false"
						class=" list-group-item list-group-item-action flex-column align-items-start">
						
						<div class="d-flex w-100 justify-content-start align-items-center">
							
							<i style="font-size: 16px; margin-right: 15px; color: gray"
								class="fa fa-file-text-o" aria-hidden="true"></i> <span
								class="menu-collapsed"> 
								
								Cv </span> 
						</div>
						
					</a> 
					
					
						<div id="submenu3" class="collapse sidebar-submenu">
						<a  style="background-color: #F9FAFC; border-left:white;border-right:white;"
							href="${pageContext.request.contextPath}/cv/review/${employee.id}"
							class="list-group-item list-group-item-action  text-white">
							<span class="menu-collapsed" style="color: black;">Review <!-- Settings --></span>
						</a> 


						<a   style="background-color: #F9FAFC; border-left:white;border-right:white;"
							href="${pageContext.request.contextPath}/cv/mod/review2/${employee.id}"
							class="list-group-item list-group-item-action  text-white">
							<span class="menu-collapsed" style="color: black;">edit </span>
						</a>
						
					</div> --%>


					<a
						style="background-color: #F9FAFC; border-left: white; border-right: white;"
						href="${pageContext.request.contextPath}/employee/mod/empProjectList"
						class=" list-group-item list-group-item-action">
						<div class="d-flex w-100 justify-content-start align-items-center">
							<span class="fa fa-tasks fa-fw mr-3"
								style="font-size: 14px; color: green"></span> <span
								class="menu-collapsed"> <!-- Tasks --> <s:message
									code="project"></s:message>
							</span>
						</div>
					</a>

					<a
						style="background-color: #F9FAFC; border-left: white; border-right: white;"
						href="${pageContext.request.contextPath}/employee/mod/vacation"
						class=" list-group-item list-group-item-action">
						<div class="d-flex w-100 justify-content-start align-items-center">
						
					
							<span class="fa fa-calendar"
								style="font-size: 14px; color: blue;margin-right:13px;"></span>
								
							 <span
								class="menu-collapsed"> <!-- Tasks --> Vacation
							</span>
						</div>
					</a>






					<li style="border-left: white; border-right: white;"
						class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
						<small>OPTIONS</small>
					</li>




					<a href="#"
						style="background-color: #F9FAFC; border-left: white; border-right: white;"
						data-toggle="sidebar-colapse"
						class=" list-group-item list-group-item-action d-flex align-items-center">
						<div class="d-flex w-100 justify-content-start align-items-center">
							<span id="collapse-icon" class="fa fa-2x mr-3"
								style="font-size: 22px;"></span> <span id="collapse-text"
								class="menu-collapsed">Collapse</span>
						</div>
					</a>

					<a
						style="background-color: #F9FAFC; border-left: white; border-right: white;"
						href="${pageContext.request.contextPath}/employee/mod/review"
						class=" list-group-item list-group-item-action">
						<div class="d-flex w-100 justify-content-start align-items-center">

							<i style="font-size: 16px; margin-right: 15px; color: #F98D75"
								class="fa fa-cogs" aria-hidden="true"></i> <span
								class="menu-collapsed"> <s:message code="settings"></s:message></span>
						</div>
					</a>

					<a href="/logout"
						style="background-color: #F9FAFC; border-left: white; border-right: white;"
						class=" list-group-item list-group-item-action">
						<div class="d-flex w-100 justify-content-start align-items-center">

							<i style="font-size: 16px; margin-right: 15px;" class="fa">&#xf08b;
							</i> <span class="menu-collapsed"> <s:message code="logout"></s:message>

							</span>
						</div>
					</a>

				</ul>
			</div>
</body>



</html>
