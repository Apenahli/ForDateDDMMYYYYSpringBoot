<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">


<link href="<c:url value="/resources/static/css/cv/CvReview.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/static/css/cv/cv_style.css"/>"
	rel="stylesheet">

<title>Cv</title>
</head>
<body
	style="margin-left: 80px; margin-right: 80px; background-color: #EEEEEE">
	<!--------------------------------------------------------------------------------------------->


	<div class="wrapper">

		<div class="content-left">


			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/employee/mod"
				style="color: white; margin-left: 3px; margin-top: 1px"> <i
				class="glyphicon glyphicon-menu-left" style="font-size: 36px"></i> <i
				class="glyphicon glyphicon-menu-left" style="font-size: 26px"></i> <i
				class="glyphicon glyphicon-menu-left" style="font-size: 16px"></i>
			</a> <br>

			<div style="color: white; margin-left: 20px; margin-top: 20px">
				<br> <br>
				<div class="color">
					<s:message code="contact"></s:message>
				</div>

				<div>
					<p>${employee.number}
						(
						<s:message code="mobile"></s:message>
						)<br> ${employee.email}
					</p>
				</div>
				<br>

				<!----------------------------------------TOP  SKILLS----------------------------------------------------------- -->


				<div class="color"  id="edit_Skill_div">
					<p style="margin-bottom: 8px;">
						<a style="text-decoration: none; color: #E1E9EE;"
							href="javascript:getInsertFormMod(${employee.id})"><s:message
								code="top_skill"></s:message> </a>
								
						<a
							href="javascript:getInsertFormMod(${employee.id})"
							id="edit_Skill_a1" style="font-size: 12px; color: white;"
							hidden> 
							<span class="glyphicon glyphicon-plus-sign"></span>
						</a>				
								
					</p>
				</div>


				<div class="skills">
					<c:forEach var="skill" items="${employee.skills}">
				<div id="edit_Skill_div2">
						<p style="margin-bottom: 5px;">
							<a style="text-decoration: none; color: white"
								href="javascript:getEditSkillMod(${skill.id},${employee.id})">${skill.name}</a>
					
					
									<a
									href="javascript:getEditSkillMod(${skill.id},${employee.id})"
									id="edit_Skill_a2" style="font-size: 12px; color: white;"
									hidden> <span class="glyphicon glyphicon-edit"></span>
								</a>					
					
					
						</p>
				</div>
					</c:forEach>
				</div>
				<br>

				<!----------------------------------------LANGUAGES----------------------------------------------------------- -->

				<div class="color" id="edit_Languages_div">
					<p style="margin-bottom: 8px;">
						<a style="text-decoration: none;color: #E1E9EE;"
							href="javascript:getInsertLanguageMod(${employee.id})"> <s:message
								code="language"></s:message></a>
				
				
	<a 	href="javascript:getInsertLanguageMod(${employee.id})"
							id="edit_Languages_a" style="font-size: 12px; color: white;"
							hidden> 
							<span class="glyphicon glyphicon-plus-sign"></span>
						</a>			
				
					</p>
				</div>

				<div>

					<c:forEach var="language" items="${employee.languages}">

			<div id="edit_Languages_div2">
						<p style="margin-bottom: 5px;">
							<a style="color: white; text-decoration: none;"
								href="javascript:editLanguageMod(${language.id},${employee.id})">
								${language.name} </a>

			<a href="javascript:editLanguageMod(${language.id},${employee.id})"
									id="edit_Languages_a2" style="font-size: 12px; color: white;"
									hidden> <span class="glyphicon glyphicon-edit"></span>
								</a>


						</p>
			</div>
					</c:forEach>
				</div>
				<br>
				<!----------------------------------------certificate----------------------------------------------------------- -->

				<div class="color" id="edit_Certificate_div">
					<p style="margin-bottom: 8px;">
						<a style="text-decoration: none; color: #E1E9EE;"
							href="javascript:getInsertCertificateMod(${employee.id})"> <s:message
								code="certificate"></s:message></a>
					
					
								<a
							href="javascript:getInsertCertificateMod(${employee.id})"
							id="edit_certificate_a" style="font-size: 12px; color: white;"
							hidden> 
							
							<span class="glyphicon glyphicon-plus-sign"></span>
						</a>
					
					
					
					</p>
				</div>
				<div>

					<c:forEach var="certificate" items="${employee.certificates}">
	<div id="edit_Certificate_div2">

						<p style="margin-bottom: 5px;">

							<a style="text-decoration: none;color: white"
								href="javascript:getEditCertificateMod('${certificate.id}',${employee.id})">
								${certificate.certificateName}</a>
					
					
			<a
			href="javascript:getEditCertificateMod('${certificate.id}',${employee.id})"
									id="edit_certificate_a2" style="font-size: 12px; color: white;"
									hidden> <span class="glyphicon glyphicon-edit"></span>
								</a>			
					
					
						</p>


	</div>
					</c:forEach>
				</div>
				<br>

				<!----------------------------------------certificate----------------------------------------------------------- -->



			</div>
		</div>
	</div>



	<div class="content-right">

		<c:if test="${not empty image}">
			<div>
				<a href="javascript:getEditImage('${employee.id}')"><img src="data:image/jpg;base64,${image}"
					style="width: 180px; height: 200px; float: right; position: absolute; left: 1040px; top: 50px;">
				</a>
			</div>
		</c:if>



		<div class="class2">
			<p>${employee.name} ${employee.surname}</p>
		</div>

		<div class="class3">
			<p>${employee.position}</p>
		</div>


		<div class="class4">

			<!-- -------------------------------------Summary-------------------------------------------- -->


			<div class="class5" style="font-weight: normal;"id="edit_Summary_div">

				<a style="text-decoration: none; color: black"
					href="javascript:getInsertSummaryMod('${employee.id}')"> <s:message
						code="summary"></s:message>
				</a>
				
				<a href="javascript:getInsertSummaryMod('${employee.id}')"
					id="edit_Summary_a" style="font-size: 16px;" hidden> <span
					class="glyphicon glyphicon-plus-sign"></span>
				</a>

			</div>
			<div>

				<c:forEach var="summary" items="${employee.details}">
					<div id="edit_Summary_div2">
					<p style="margin-top: 7px;">
						<a style="text-decoration: none; color: black"
							href="javascript:getEditSummaryMod('${summary.id}')">
							${summary.name} </a>
							
							
									 <a
								href="javascript:getEditSummaryMod('${summary.id}')"
								id="edit_Summary_a2" style="font-size: 16px;" hidden> <span
								class="glyphicon glyphicon-edit"></span>
							</a>						
							
					</p>
</div>
				</c:forEach>

				<div class="container-fluid"
					style="margin-left: -15px; width: 100px;">
					<div class="row">
						<div class="col-md-10">
							<hr style="height: 1px; background-color: #2A3E49; border: none;"
								noshade />
						</div>
					</div>
				</div>
			</div>
			<br>

			<!---------------------------------------------Experience----------------------------------------------- -->


			<div class="class5" style="font-weight: normal;" id="edit_Experie_div">
				<a style="text-decoration: none; color: black"
					href="javascript:getInserExperienceMod('${employee.id}')"> <s:message
						code="experience"></s:message>
				</a>

				 <a href="javascript:getInserExperienceMod('${employee.id}')"
					id="edit_Experie" style="font-size: 16px;" hidden> <span
					class="glyphicon glyphicon-plus-sign"></span>
				</a>
				
			</div>
			<br>

			<c:forEach var="experience" items="${employee.experience}">
<div id="edit_Experie_div2">
				
					<a style="text-decoration: none;  color: black"
						href="javascript:getEditExperienceMod('${experience.id}')">
						${experience.experienceName} </a>

						<a
						href="javascript:getEditExperienceMod('${experience.id}')"
						id="edit_Experie2" hidden> <span
						class="glyphicon glyphicon-edit"></span>
					</a>

					<p>
						<a style="text-decoration: none;  color: black"
							href="javascript:getEditExperienceMod('${experience.id}')">
							${experience.position} </a>
					</p>
					<p>
						<a style="text-decoration: none;  color: black"
							href="javascript:getEditExperienceMod('${experience.id}')">
							(${experience.startTime} / ${experience.endTime}) </a>
					</p>

				</div>
				<br>
			</c:forEach>
			<div class="container-fluid"
				style="margin-left: -15px; width: 100px;">
				<div class="row">
					<div class="col-md-10">
						<hr style="height: 1px; background-color: #2A3E49; border: none;"
							noshade />
					</div>
				</div>
			</div>


			<!---------------------------------------------Education----------------------------------------------- -->


			<div class="class5" style="font-weight: normal;" id="edit_Education_div">

				<a style="text-decoration: none; color: black"
					href="javascript:getInserEducationMod('${employee.id}')"> <s:message
						code="education"></s:message></a>

			<a
				href="javascript:getInserEducationMod('${employee.id}')"
					id="edit_Education_a" style="font-size: 16px;" hidden> <span
					class="glyphicon glyphicon-plus-sign"></span>
				</a>

			</div>
			<br>
			<c:forEach var="education" items="${employee.education}">
				<div  id="edit_Education_div2">
					<p>
						<a style="text-decoration: none; color: black"
							href="javascript:getEditEducationMod('${education.id}')">${education.universityName}
						</a>
				<a href="javascript:getEditEducationMod('${education.id}')"
							id="edit_Education_a2" hidden> <span
							class="glyphicon glyphicon-edit"></span>
						</a>					
						
						
					</p>

					<p>
						<a style="text-decoration: none; color: black"
							href="javascript:getEditEducationMod('${education.id}')">${education.speciality}</a>
					</p>
					<p>
						<a style="text-decoration: none;  color: black"
							href="javascript:getEditEducationMod('${education.id}')">${education.faculty}</a>
					</p>
					<p>
						<a style="text-decoration: none;  color: black"
							href="javascript:getEditEducationMod('${education.id}')">${education.degree}(${education.startTime}/
							${education.endTime} )</a>
					</p>

				</div>
				<br>
			</c:forEach>
			<hr>
		</div>
	</div>




	<!--------------------------------------------------------------------------------------------->



	<!-- ---------  -->

	<!-- Modal update-->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content"></div>
		</div>
	</div>

	<!-- ---------  -->


	<script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/cv.js"/>"></script>



</body>
</html>