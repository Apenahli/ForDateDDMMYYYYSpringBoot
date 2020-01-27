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

							<div class="  box-body table-responsive no-padding">
								<br>
								<table class="table table-hover table-bordered"
									style="max-width: 80%; margin-left: 10%; margin-right: 10%">

									<tbody>
										<tr>
											<th colspan="6">
												<p style="text-align: center; font-size: 130%;"><s:message
						code="experience"></s:message> </p>
											</th>
										</tr>


										<tr>
											<td style="color: #555">Ex name</td>
											<td style="color: #555">Pozition</td>
											<td style="color: #555">start time</td>
											<td style="color: #555">end time</td>
										</tr>
											<c:forEach var="experience" items="${employee.experience}">
										<tr>


											<td nowrap="nowrap">${experience.experienceName}</td>


											<td nowrap="nowrap">${experience.position}</td>
										
											<td nowrap="nowrap">${experience.startTime}</td>

											<td nowrap="nowrap">${experience.endTime}
											
											<a
												href="javascript:_actualAddress('${employee.actualAddress}','${employee.id}')">
													<i style="float: right;" class="fa fa-pencil-square-o"
													aria-hidden="true"></i>
											</a>
											
											</td>
										</tr>
			</c:forEach>


									</tbody>
								</table>

								<br> <br>
								<table class="table table-hover table-bordered"
									style="margin-left: 5%; margin-right:10%">

									<tbody>
										<tr>
											<th colspan="6">
												<p style="text-align: center; font-size: 130%"><s:message
						code="education"></s:message>
													</p>
											</th>
										</tr>

										<tr>
											<td style="color: #555">Ex name</td>
											<td style="color: #555">Pozition</td>
											<td style="color: #555">start time</td>
											<td style="color: #555">degree</td>
											<td style="color: #555">start time</td>
											<td style="color: #555">end time</td>
										</tr>
									<c:forEach var="education" items="${employee.education}">	
										<tr>
											<td nowrap="nowrap">${education.universityName}</td>
											<td nowrap="nowrap">${education.speciality}</td>
											<td nowrap="nowrap">${education.faculty}</td>
											<td nowrap="nowrap">${education.degree}</td>
											<td> ${education.startTime}</td>
											<td nowrap="nowrap">
											${education.endTime}
											<a
												href="javascript:_actualAddress('${employee.actualAddress}','${employee.id}')">
													<i style="float: right;" class="fa fa-pencil-square-o"
													aria-hidden="true"></i>
											</a>
											</td>
										</tr>
										</c:forEach>	
										
										
									</tbody>
								</table>

								<br>


								<table>
									<tr>
									</tr>
								</table>






								<table class="table table-hover table-bordered" style="width: 30%; margin-left: 10%;" >
									<!-- style="width: 20%; margin-left: 10%;" -->
									<tbody>
										<tr>
											<th colspan="6">
												<p style="text-align: center; font-size: 130%"> <s:message
									code="language"></s:message> bilikləri
												</p>
											</th>
										</tr>
									<c:forEach var="language" items="${employee.languages}">
										<tr>
											<td nowrap="nowrap"> ${language.name} 
											
												<a
												href="javascript:_actualAddress('${employee.actualAddress}','${employee.id}')">
													<i style="float: right;" class="fa fa-pencil-square-o"
													aria-hidden="true"></i>
											</a>
											</td>
										</tr>
										
											</c:forEach>
									</tbody>
								</table>
								<br>

								
								
								<table class="table table-hover table-bordered" style="width: 30%; margin-left: 10%;">

									<tbody>
										<tr>
											<th colspan="6">
												<p style="text-align: center; font-size: 110%"><s:message
												code="top_skill"></s:message></p>
										
									
											</th>
										</tr>
									
									<c:forEach var="skill" items="${employee.skills}">
										<tr>

											<td nowrap="nowrap">${skill.name}
											<a
												href="javascript:getEditSkill(${skill.id},${employee.id})">
													<i style="float: right;" class="fa fa-pencil-square-o"
													aria-hidden="true"></i>
											</a>
											</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>


								<br>

								<table class="table table-hover table-bordered" style="width: 30%; margin-left: 10%;">

									<tbody>
										<tr>
											<th colspan="6">
												<p style="text-align: center; font-size: 130%"><s:message
								code="certificate"></s:message></p>
											</th>
										</tr>
										
										<c:forEach var="certificate" items="${employee.certificates}">	
										<tr>
											<td style="color: #555">${certificate.certificateName}
											
											<a
												href="javascript:_actualAddress('${employee.actualAddress}','${employee.id}')">
													<i style="float: right;" class="fa fa-pencil-square-o"
													aria-hidden="true"></i>
											</a>
											</td>
											
										</tr>
		</c:forEach>
									</tbody>
								</table>

								<br>
								<br>
							</div>
						</div>
					</div>
					
					
			
					
				</div>
			</div>
</body>


<!--   collapsi action -->
<script src='https://code.jquery.com/jquery-3.2.1.slim.min.js'></script>

<script
	src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'></script>


<script id="rendered-js"
	src="<c:url value="/resources/static/js/sidebar.js"/>"></script>



</html>
