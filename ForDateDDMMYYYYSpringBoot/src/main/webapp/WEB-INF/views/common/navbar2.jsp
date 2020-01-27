<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<style>
.navbar-laravel {
	box-shadow: 0 2px 4px rgba(0, 0, 0, .04);
	color:white;
	border-radius:  6px/6px;
}

.navbar-brand, .nav-link, .my-form, .login-form {
	font-family: Raleway, sans-serif;
	color:white;
}
</style>

	<nav class="navbar navbar-expand-lg navbar-light navbar-laravel  navbar-static-top"
		style="position: absolute; left: 0px; top: 0px; width: 96%; background-color:#605CA8/* #605CA8 */; 
		margin-left:1.8%;margin-right:2%; opacity: 0.8;/* #3C8DBC */
  filter: alpha(opacity=8);">
  
  
		
		<div class="container" >
			
			
			
			<div class="collapse navbar-collapse" id="navbarSupportedContent"
				style="margin-right: 10px;">
				
				
				
				<ul class="navbar-nav ml-auto">
				
					
					<li class="nav-item">
					<a class="nav-link" href="#" style="float: right;margin-right:-60%; color:white; size:2px;">${user.fullname}</a></li>
						
					<%-- 	<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/employee/cvreview"
						style="float: right;margin-right:-180%;color:white; margin-left:5px;"> 
						<i class="fa fa-cogs" aria-hidden="true"></i></a></li> --%>
			
				</ul>
				
			</div>
		</div>
	</nav>


</html>

