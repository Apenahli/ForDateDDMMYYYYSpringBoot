<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="<c:url value="/resources/static/js/jquery-3.4.1.min.js"/>"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
</head>
<body>

	<jsp:include page="../common/navbar.jsp"></jsp:include>


		<p style="float: left; margin-left: 8px; margin-top: -14px;">
			<a href="javascript:contract()" class="btn btn-default btn-sm" style="background-color:#CC2E2E;color:white;" id="titleTable">   <span
				class="glyphicon glyphicon-calendar"></span> Contract time  <!-- #FF6544 -->
			</a>
		</p>
	    
<br><br><br>


 <script>
  $( function() {
    $( "#datepicker" ).datepicker({ dateFormat: 'dd/mm/yy' });
  } );
  </script>
  
<h1>Hello world</h1>
<p>Date: <input type="text" id="datepicker"></p>

<br>
<br>
<br>
<br>



<!-- Modal update-->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content"></div>
		</div>
	</div>

	<!-- ---------  -->
	
	
	<script src="<c:url value="/resources/static/js/x.js"/>"></script>
		
	<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>
	
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
</body>
</html>











