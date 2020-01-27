<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<table id="customers">
		<tr>

			<td style="font-size:14px; text-align: center; "><s:message code="name"></s:message></td>
			<td style="font-size:14px; text-align: center;"><s:message code="surname"></s:message></td>
			<td style="font-size:14px; text-align: center;"><s:message code="birthday"></s:message></td>

			<td style="font-size:14px; text-align: center;"><s:message code="salary"></s:message></td>
			<td style="font-size:14px; text-align: center;"><s:message code="gender"></s:message></td>
			<td style="font-size:14px; text-align: center;"><s:message code="number"></s:message></td>

			<td style="font-size:14px;  text-align: center;"> <s:message code="email"></s:message></td>
			<td style="font-size:14px;  text-align: center;">huquqi unvan</td>
			<td style="font-size:14px; text-align: center;">faktiki unvan</td>
			<td style="font-size:14px; text-align: center;">fatherName</td>

			<td style="font-size:14px; text-align: center;"><s:message code="department"></s:message></td>
			<td style="font-size:14px; text-align: center;"><s:message code="position"></s:message></td>
			<td style="font-size:14px; text-align: center;">Action</td>
			<td style="font-size:14px; text-align: center;">Action</td>
		</tr>

		<c:forEach var="employee" items="${employees}">
			<tr>
				<td><a style="color: black"
					href="${pageContext.request.contextPath}/employee/details/${employee.id}">${employee.name}</a></td>
				<td>${employee.surname}</td>
				<td>${employee.dateOfBirth}</td>

				<td>${employee.salary}</td>
				<td>${employee.gender}</td>
				<td>${employee.number}</td>

				<td>${employee.email}</td>

				<td>${employee.address}</td>
				<td>${employee.actualAddress}</td>
				<td>${employee.fatherName}</td>


				<td>${employee.department.name}</td>
				<td>${employee.position}</td>


				<td><a href="javascript:editEmployee('${employee.id}')"> <s:message
							code="edit"></s:message> <br></a> <!-- ****************************************************************************	 -->

					<a href="javascript:getDeactvForm('${employee.id}')"> <s:message
							code="deactive"></s:message>
				</a></td>

				<!-- ****************************************************************************	 -->

				<td><a
					href="${pageContext.request.contextPath}/cv/review/${employee.id}">
						Cv</a> <br> <a
					href="${pageContext.request.contextPath}/empProjectRole/empProjectList/${employee.id}">
						<s:message code="project"></s:message>
				</a></td>
			</tr>
		</c:forEach>

	</table>


</html>