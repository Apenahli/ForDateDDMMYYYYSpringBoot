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

<body translate="no" style="background-color: #EEEEEE;margin-left: 2%;margin-right: 2%">
	<jsp:include page="../common/navbar2.jsp"></jsp:include>




	<div class="container-fluid p-0">

		<div class="row" id="body-row">

				<jsp:include page="../common/sidebar.jsp"></jsp:include>




<div class="col">
<br> <br> <br> <br>
<div class="box">
<div class="box-body">
<br>
<div><font class="moduleTitle" style="font-size: 22px; margin-left: 20px;" ><s:message code="Profile_Settings"></s:message> </font></div>
<br>


<div class="nav-tabs-custom">


<a href="${pageContext.request.contextPath}/employee/mod/review" class="btn btn-primary color" style="background-color: #F2F2F2F2;color:black;margin-left: 20px">
<s:message code="General"></s:message></a>

<a href="${pageContext.request.contextPath}/employee/mod/changePassword"	class="btn btn-primary color" style="background-color: #F2F2F2F2;color:black;margin-left:-1px;">
<s:message code="Password"></s:message></a>

<a href="${pageContext.request.contextPath}/employee/mod/contactInformation"	class="btn btn-primary color" style="background-color: #F2F2F2F2;color:black;margin-left:-1px;">

<s:message code="Contact_Info"></s:message></a>

<a href="${pageContext.request.contextPath}/employee/mod/addressInformation"	class="btn btn-primary color" style="background-color: #F2F2F2F2;color:black;margin-left:-1px;">
<s:message code="Addresses"></s:message></a>


<hr style="margin-left:20px;margin-top: 0.1px;">


<div id="divContent"  class="tab-content" style="display:black;">
<br>
<div>
<p style="margin-left: 20px; font-size: 20px; margin-bottom: 4px">
<s:message code="Interface_language"></s:message> </p>



<table ><tr>
<td>
<select class="form-control" style="width:220px; margin-bottom:8px; margin-left:20px; height:37px;"  id="interface_lang">
<option value="az" disabled selected><s:message code="choose"></s:message></option> 
<option value="az"><s:message code="Azerbaijan"></s:message> </option> 
<option value="en"><s:message code="English"></s:message></option>
</select>
</td>
<td>
<a href="?lang=en" id="langTagA"	class="btn btn-primary color" 

style="background-color: #F2F2F2F2;color:black;margin-left:10px; margin-top: -7px;">
<s:message code="save"></s:message></a>


</td>
</tr>

</table>

</div>
<br><hr style="margin-left: 20px;"><br>
<div style="padding:4px 0px" id="divTabGeneralSettings"></div>
</div>

</div>
</div>
</div>
</div>





</div> 
</div>


	<!--   collapsi action -->
	<script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js"/>"></script>

	<script
		src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'></script>


	<script id="rendered-js"
		src="<c:url value="/resources/static/js/sidebar.js"/>"></script>

	<script src="<c:url value="/resources/static/js/cv.js"/>"></script>
<script>

$("#interface_lang").change(function(){
	$("#langTagA").attr("href","?lang="+$("#interface_lang").val());
});

</script>
</body>

</html>
