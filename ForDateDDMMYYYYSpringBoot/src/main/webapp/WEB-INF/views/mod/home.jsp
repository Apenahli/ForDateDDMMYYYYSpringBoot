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

					<form action="${pageContext.request.contextPath}/employee/mod/changeImage"
					method="post" enctype="multipart/form-data">
						
						
							<table class="table table-hover table-bordered">

								<tbody>
									<tr>
										<td rowspan="17" width="160" align="center"><c:if
												test="${not empty image}">

												<div class="box-header">
													<img src="data:image/jpg;base64,${image}" height="160"
														width="145px"
														style="border-radius: 5%; webkit-border-radius: 5%; -moz-border-radius: 5%">
												</div>
											</c:if></td>

										<td style="color: #555"><s:message code="name"></s:message>
										</td>
										<td nowrap="nowrap">${employee.name}</td>
									</tr>


									<tr>
										<td style="color: #555"><s:message code="surname"></s:message></td>
										<td nowrap="nowrap"> ${employee.surname}</td>
									</tr>

									<tr>
										<td style="color: #555"><s:message code="father_name"></s:message></td>
										<td nowrap="nowrap"> ${employee.fatherName}</td>
									</tr>


									<tr>
										<td style="color: #555"><s:message code="birthday"></s:message>
										</td>
										<td nowrap="nowrap"> ${employee.dateOfBirth}</td>
									</tr>

									<tr>
										<td style="color: #555"><s:message code="salary"></s:message>
										</td>
										<td nowrap="nowrap">${employee.salary}</td>
									</tr>

									<tr>
										<td style="color: #555"><s:message code="legal_address"></s:message>
										</td>
										<td nowrap="nowrap">${employee.address}</td>
									</tr>
									<tr>
										<td style="color: #555"><s:message code="actual_address"></s:message>
										</td>
										<td nowrap="nowrap">${employee.actualAddress}</td>
									</tr>
									<tr>
										<td style="color: #555"><s:message code="number"></s:message>
										</td>
										<td nowrap="nowrap"> ${employee.number}</td>
									</tr>


									<tr>
										<td style="color: #555"><s:message code="email"></s:message>
										</td>
										<td nowrap="nowrap"> ${employee.email}</td>
									</tr>

									<tr>
										<td style="color: #555"><s:message code="department"></s:message>
										</td>

										<td nowrap="nowrap">${employee.department.name}</td>
									</tr>


									<tr>
										<td style="color: #555"><s:message code="position"></s:message>
										</td>

										<td nowrap="nowrap"> ${employee.position}</td>
									</tr>

									<tr>
										<td style="color: #555"><s:message code="fincode"></s:message>
										</td>

										<td nowrap="nowrap"> ${employee.fincode}</td>
									</tr>

									<tr>
										<td style="color: #555"><s:message code="idCardsNumber"></s:message>
										</td>

										<td nowrap="nowrap">${employee.idCardsNumber}</td>
									</tr>
									<tr>
										<td style="color: #555">SSN</td>

										<td nowrap="nowrap">
												${employee.socialSecurityNumber}</td>

									</tr>

									<tr>


										<td style="color: #555">
						
										
				     <input type="file" name="imageFile" style="position: absolute; font-style: oblique;" required>
				    
				      <input type="hidden" value="${employee.image.image}" name="editFile" /> 
				       <input type="hidden" value="${employee.image.id}" name="fileId">
				         <input type="hidden" value="${employee.id}" name="empId">
				      
				      
				   
				    
				    </td>

										<td nowrap="nowrap">
											<button type="submit">
												<s:message code="save"></s:message>
											</button>
										</td>

									</tr>
								</tbody>
							</table>
					 </form>
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
