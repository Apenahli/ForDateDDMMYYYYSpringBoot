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

<link
	href="<c:url value="/resources/static/css/home/button_style.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/static/css/home/table_style.css"/>"
	rel="stylesheet">

</head>
<body>

	<jsp:include page="../common/navbar.jsp"></jsp:include>




	<div class="content-left">



<!-- 
		<div style="margin-top: 30px">
			<div class="container">

				<table class="table table-hover table-bordered"
					style="width: 450px;">

					<tr>
						<th colspan="5" style="height: 10px">
							<p style="text-align: center; font-size: 100%">Son 12 ay
								ərzində hesablanan əmək haqqı</p>
						</th>
					</tr>

					<tr style="height: -50px">
						<td style="font-weight: bolder">Aylar</td>
						<td style="font-weight: bolder">Əmək haqqı</td>
					</tr>
					<tr>
						<td>1-ci ay</td>
						<td><input name="zp1" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>2-ci ay</td>
						<td><input name="zp2" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>3-ci ay</td>
						<td><input name="zp3" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>4-ci ay</td>
						<td><input name="zp4" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>5-ci ay</td>
						<td><input name="zp5" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>6-ci ay</td>
						<td><input name="zp6" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>7-ci ay</td>
						<td><input name="zp7" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>8-ci ay</td>
						<td><input name="zp8" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>9-ci ay</td>
						<td><input name="zp9" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>10-ci ay</td>
						<td><input name="zp10" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>11-ci ay</td>
						<td><input name="zp11" size=7 type="text" /></td>
					</tr>
					<tr>
						<td>12-ci ay</td>
						<td><input name="zp12" size=7 type="text" /></td>
					</tr>

					<tr>
						<td>Məzuniyyət günlərinin sayı</td>
						<td><input name="zp1" size=7 type="text" /></td>
					</tr>

					<tr>
						<td><input type="submit" value="Hesabla"
							style="margin-left: 100px" /></td>
						<td><input type="reset" value="Təmizlə" /></td>
					</tr>
				</table>
			</div>
		</div> -->






		<div style="margin-top: 30px">
			<div class="container">

				<table class="table table-hover table-bordered"
					style="width: 450px;">

					<tr>
						<%-- 	<th colspan="6">
							<p style="text-align: center; font-size: 130%">
								${employee.name} ${employee.surname}</p>
						</th> --%>
					</tr>

					<%-- 		<tr>
						<th scope="col"></th>
						<th scope="col">${employee.name}</th>
					</tr> --%>


					<tr>
						<td style="font-weight: bolder">Ad</td>
						<td>${employee.name}</td>
					</tr>
					<tr>
						<td style="font-weight: bolder">Soyad</td>
						<td>${employee.surname}</td>
					</tr>
					<tr>
						<td style="font-weight: bolder">Dogum tarixi</td>
						<td>${employee.dateOfBirth}</td>
					</tr>
					<tr>
						<td style="font-weight: bolder">Maasi</td>
						<td>${employee.salary}</td>
					</tr>
					<tr>
						<td style="font-weight: bolder">Cinsi</td>
						<td>${employee.gender}</td>
					</tr>


					<tr>
						<td style="font-weight: bolder">Nomre</td>
						<td>${employee.number}</td>
					</tr>
					<tr>
						<td style="font-weight: bolder">Email</td>
						<td>${employee.email}</td>
					</tr>
					<tr>
						<td style="font-weight: bolder">Address</td>
						<td>${employee.address}</td>
					</tr>
					<tr>
						<td style="font-weight: bolder">Fincodu</td>
						<td>${employee.fincode}</td>
					</tr>
					<tr>
						<td style="font-weight: bolder">Pozisiyasi</td>
						<td>${employee.position}</td>
					</tr>
					<tr>
						<td style="font-weight: bolder">Baslangic vaxti</td>
						<td>${employee.startTime}</td>
					</tr>



					<c:if test="${empty employee.endTime}">
						<td style="font-weight: bolder">Cixma tarixi</td>
						<td>on going</td>
					</c:if>

					<c:if test="${not empty employee.endTime}">
						<td style="font-weight: bolder">Cixma tarixi</td>
						<td>${employee.endTime}</td>
					</c:if>

					<tr>
						<td style="font-weight: bolder">Departament</td>
						<td>${employee.department.name}</td>
					</tr>
				</table>
			</div>
		</div>

	</div>

	<%-- <div class="content-right">

		<div style="margin-top: 30px">
			<div class="container">

				<table class="table table-hover table-bordered"
					style="width: 750px;">
					<tr style="line-height: 25px; min-height: 25px; height: 25px;">
						<th colspan="6">
							<p style="text-align: center; font-size: 130%">2018 Mezuniiet
								tarixi</p>
						</th>
					</tr>

					<tr>
						<th>baslangic tarixi</th>
						<th>bitis tarixi</th>
						<th>istifade edilib</th>
						<th>qaliq vaxt</th>
						<th></th>
					</tr>
					<c:forEach var="vacations" items="${vacations}">
						<tr>

							<td>${vacations.startTime}</td>
							<td>${vacations.endTime}</td>
							<td>${vacations.dayOfUse}</td>
							<td>${vacations.remainingDay}</td>
							<td><a>insert</a> <br> <a>edit</a></td>

						</tr>
					</c:forEach>


				</table>
				<input type="reset" value="Insert" /> <br /> <br>



				<table class="table table-hover table-bordered"
					style="width: 750px;">
					<tr style="line-height: 25px; min-height: 25px; height: 25px;">
						<th colspan="6">
							<p style="text-align: center; font-size: 130%">2019 Mezuniiet
								tarixi</p>
						</th>
					</tr>

					<tr>
						<th>baslangic tarixi</th>
						<th>bitis tarixi</th>
						<th>istifade edilib</th>
						<th>qaliq vaxt</th>
						<th></th>
					</tr>


					<tr>
						<td>YYYYYYYYY</td>
						<td>UUUUUUUUU</td>
						<td>UUUUUUUUU</td>
						<td>UUUUUUUUU</td>
						<td><a>insert</a> <br> <a>edit</a></td>
					</tr>
				</table>
				<input type="reset" value="Insert" />


			</div>
		</div>
</div>
 --%>


<div class="content-right">

		<div style="margin-top: 30px">
			<div class="container">

				<table class="table table-hover table-bordered"
					style="width: 750px;">
					<tr style="line-height: 25px; min-height: 25px; height: 25px;">
						<th colspan="6">
							<p style="text-align: center; font-size: 130%">Education
								</p>
						</th>
						</tr>
					<tr>
						<th>Universitetin adi</th>
						<th>Bolum</th>
						<th>Fakulte</th>
						<th>derece</th>
						<th>daxil olduqu il</th>
						<th>bitirdiyi il</th>
					</tr>
					
					<c:forEach var="education" items="${employee.education}">
						<tr>

							<td>${education.universityName}	</td>
							<td>${education.speciality}</td>
							<td>${education.faculty}</td>
							<td>${education.degree}</td>
							<td>${education.startTime}</td>
							<td>${education.endTime}</td>
						</tr>
					</c:forEach>
				</table>
				
				
				
				<table class="table table-hover table-bordered"
					style="width: 750px;">
					<tr style="line-height: 25px; min-height: 25px; height: 25px;">
						<th colspan="6">
							<p style="text-align: center; font-size: 130%">Experience
								</p>
						</th>
					</tr>

					<tr>
						<th>Experience</th>
						<th>Vezife</th>
						<th>basladigi tarix</th>
						<th>cxixdigi tarix</th>
					</tr>
					
				<c:forEach var="experience" items="${employee.experience}">
						<tr>

							<td>${experience.experienceName}	</td>
							<td>${experience.position}</td>
							<td>${experience.startTime}</td>
							<td>${experience.endTime}</td>
						</tr>
					</c:forEach>


				</table>
			

			</div>
		</div>
</div>
	











	<script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>

	<script src="<c:url value="/resources/static/js/modal.js"/>"></script>


</body>


<style>
.content-left {
	margin-left: 25px;
	float: left;
	width: 35%;
	height: 1500px;
	background-color: #FFFFFF;
	float: left;
}

.content-right {
	margin-right: 60px;
	float: right;
	width: 57%;
	height: 1500px;
	background-color: #FFFFFF;
}

.skills {
	width: 70%;
}
</style>

</html>



<!-- https://kriptoinvest.az/2018/01/29/mezuniyyet-haqqinin-hesablanmasi-qaydasi/

https://muhasib.az/Accountsoft/Calc/calc_mezun.php -->
