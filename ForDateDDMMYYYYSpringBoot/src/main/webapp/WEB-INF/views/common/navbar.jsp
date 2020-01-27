<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="<c:url value="/resources/static/css/home/bootstrap.min.css"/>"
	rel="stylesheet">
</head>

<nav class="navbar navbar-inverse" style="background-color:#191840;"> <!-- #191840 -->
	<div class="container-fluid">

		<div class="navbar-header">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/admin/list">IDRAK
				Technology</a>
		</div>

		<c:set var="emp" value="0"></c:set>
		<c:set var="project" value="0"></c:set>

		<c:forEach items="${roles}" var="role">

			<c:if test="${role.getName() eq 'ADMIN'}">
				<c:set var="emp" value="${1}"></c:set>

			</c:if>

			<c:if test="${role.getName() eq 'USER'}">
				<c:set var="project" value="${1}"></c:set>

			</c:if>

		</c:forEach>

		<ul class="nav navbar-nav">

			<c:if test="${emp==1 or project==1}">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"><s:message code="employees"></s:message>
						<span class="caret"></span></a>

					<ul class="dropdown-menu">
						<li><a
							href="${pageContext.request.contextPath}/admin/list"> 
							<s:message code="activeEmployees"></s:message>
						</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/deactive">
								<s:message code="deactiveEmployees"></s:message>
						</a></li>
					</ul></li>

			</c:if>

			<c:if test="${emp==1 or project==1 }">

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> 
					
					<s:message code="project"></s:message>
						<span class="caret"></span></a>

					<ul class="dropdown-menu">


						<li><a href="/projects/activelist"> 
						<s:message code="activeProject"></s:message>

						</a></li>
						<li><a href="/projects/deactivelist"> 
						<s:message code="deactiveProject"></s:message>
						</a></li>

					</ul></li>
			</c:if>

			<c:if test="${emp==1 }">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <s:message
							code="classification"></s:message> <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a
							href="${pageContext.request.contextPath}/departments/deplist"><s:message
									code="department"></s:message></a></li>
						<li><a
							href="${pageContext.request.contextPath}/projects/list"><s:message
									code="projects"></s:message></a></li>

						<li><a href="${pageContext.request.contextPath}/roles/list"><s:message
									code="roles"></s:message></a></li>
						<li><a
							href="${pageContext.request.contextPath}/languages/list"><s:message
									code="language"></s:message></a></li>
						<li><a href="${pageContext.request.contextPath}/skills/list"><s:message
									code="skill"></s:message></a></li>
				
				<li><a href="${pageContext.request.contextPath}/skills/yearList"><s:message code="year"></s:message></a></li>
				
					</ul></li>

			</c:if>

		
		
		
			<li class="dropdown"><a class="dropdown-toggle "
				data-toggle="dropdown" href="#"><s:message code="language"></s:message><span
					class="caret"></span> </a>
				<ul class="dropdown-menu">

					<li><a style="margin-right: 10px" href="?lang=az">Az</a></li>

					<li><a style="margin-right: 10px" href="?lang=en">En</a></li>
				</ul></li>
				
				<!-- ------------------ -->
				<!-- ------------------ -->
				<!-- ------------------ -->
				<!-- ------------------ -->
				
			    <li>
			    <a href="${pageContext.request.contextPath}/vacation/list">
				
				<s:message code="vacation"></s:message>
				</a>
				</li>
				
				
				<c:if test="${emp==1 or project==1 }">
			    <li>
			    <a href="${pageContext.request.contextPath}/admin/calendar">
				<s:message code="calendar"></s:message></a>
				</li>		
				</c:if>
				
				
				
				<c:if test="${emp==1 or project==1 }">
				<li>
			    <a href="${pageContext.request.contextPath}/contract/x">
				YY</a>
				</li>
				</c:if>
				
				
				
				<c:if test="${emp==1 or project==1 }">
				<li>
			    <a href="${pageContext.request.contextPath}/contract/contractEndTime">
				Notification</a>
				</li>
				</c:if>			
				
				
				
			<c:if test="${emp==1 }">
			
				<li class="dropdown"><a class="dropdown-toggle "
				data-toggle="dropdown" href="#"><s:message code="userManagment"></s:message><span
					class="caret"></span> </a>
				<ul class="dropdown-menu">

					<li><a href="${pageContext.request.contextPath}/user/list">Admin</a></li>

					<li><a href="${pageContext.request.contextPath}/user/emplist">
					<s:message code="employee"></s:message></a></li>
				</ul></li>
				</c:if>
			
		</ul>
		
		<ul class="nav navbar-nav navbar-right">
			<li>
				<p style="color: white; margin-top: 16px">${user.fullname}</p></li>
			<li><a href="/logout"><s:message code="logout"></s:message> </a></li>
		</ul>
	</div>
</nav>
</html>
