<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<spr:form action="${pageContext.request.contextPath}/admin/update"
	method="post" modelAttribute="employee" enctype="multipart/form-data">

	<div class="modal-header">


		<!-- <h5 class="modal-title"> işçinin məlumatlarinda düzeliş et</h5> -->

		<button type="button" class="close" data-dismiss="modal" aria-label="Close">

		<span aria-hidden="true">&times;</span>

		</button>
	</div>
	 <br>
	 
	  <div class="modal-body">


		<spr:hidden path="id" />
		
		

	<p style="position: absolute; left: 18px; top: 10px;font-style: oblique; margin-top:-20px;">
	<s:message code="name"></s:message></p>

	<spr:input path="name" id="fname" class="form-control" style="position: absolute;
	left: 108px; top: 10px; width: 170px; margin-top:-20px;" placeholder="Your name.." required="required"/><br>
	
	

	<p style="position: absolute; left: 18px; top: 30px; font-style: oblique;">
	<s:message code="surname"></s:message></p>

	<spr:input path="surname" id="fname" class="form-control" style=" position: absolute;
	left: 108px; top:30px; width: 170px;" placeholder="Your surname.." required="required" />
	
	
	<p style="position: absolute; left: 18px; top: 70px;font-style: oblique;">
	<s:message code="father_name"></s:message></p>

	<spr:input path="fatherName" id="fname" class="form-control" style="position: absolute;
	left: 108px; top: 70px; width: 170px;" placeholder="Your father name.." required="required"/><br>
	
	
	
	
	<p style="position: absolute; left: 18px; top: 110px;font-style: oblique;">
	Id Number </p>

	<spr:input  path="specialIdNumber" id="fname"  class="form-control" 
	style=" position: absolute; left: 108px; top: 110px; width: 170px;" required="required"/>
	
	
	
	
	 <p style="position: absolute; left: 18px; top: 150px;font-style: oblique;">
	 <s:message code="birthday"></s:message></p>

	<spr:input type="date" path="dateOfBirth" id="fname"  class="form-control" 
	style=" position: absolute; left: 108px; top: 150px; width: 170px;" required="required"/>
	
	
	
   <p style="position: absolute; left:18px; top: 190px; font-style: oblique;">
   <s:message code="email"></s:message></p>

	<spr:input path="email" id="fname"  class="form-control" style=" position: absolute;
	left: 108px; top:190px; width: 170px;"  placeholder="email.." required="required" onblur="validationEmail()"/>	<br>
	
	
	
		<p style="position: absolute; left:18px; top: 230px; font-style: oblique;">
    Special email</p>

	<spr:input path="specialEmail" id="email"  class="form-control" style=" position: absolute;
	left: 108px; top:230px; width: 170px;"  placeholder="email.." required="required" onblur="validationEmail()" />	<br>
	
	
	
	
	
	
	

	
	
	<p style="position: absolute; left: 18px; top:  270px;  font-style: oblique; font-variant: normal;">
	<s:message code="number"></s:message></p>
		
	<spr:input path="number" id="fname" class="form-control" style=" position: absolute;
	left: 108px; top:270px; width: 170px;" placeholder="000 000 00 00.." required="required"/>
	
	
	
	
	
	<p style="position: absolute; left:18px; top: 310px; font-style: oblique;">
	<s:message code="fincode"></s:message></p>

	<spr:input path="fincode" id="fname" class="form-control" 
		style=" position: absolute; left: 108px; top:310px; width: 170px;" placeholder="Your fincode..." required="required" onblur="validationFincode()"/> 
	
	
	
		<p style="position: absolute; left:18px; top: 350px; font-style: oblique;">
	SSN </p>

	<spr:input path="socialSecurityNumber" id="fname" class="form-control" 
	style=" position: absolute; left: 108px; top:350px; width: 170px;" placeholder="Your socialSecurityNumber..." required="required"/> 
	
	
	
	<p style="position: absolute; left:18px; top: 395px; font-style: oblique;">
	<s:message code="gender"></s:message> </p> <br> 
		
	 <p class="container" style="position: absolute; left:98px; top: 395px; font-style: oblique;">
	 <s:message code="male"></s:message>  
	 <spr:radiobutton path="gender"	checked="checked" value="male" />
	<span class="checkmark"></span> </p>
	 
		
	  <p class="container" style="position: absolute; left:163px; top: 395px; font-style: oblique;">
	  <s:message code="female"></s:message>
   	<spr:radiobutton path="gender"  value="female" /> 
	<span ></span> </p> 
	
	
	<p style="position: absolute; left:18px; top: 435px; font-style: oblique;">Staj</p>

    <p style="position: absolute; left:62px; top: 435px; font-style: oblique;"> gun:</p>
	
    <input type="text" class="form-control" value="${day}"  name="day" style=" position: absolute; left: 92px; top:435px; width: 42px; ">

	<p style="position: absolute; left:143px; top: 435px; font-style: oblique;">ay:</p>		
	
	<input type="text" class="form-control" value="${month}"   name="months" style=" position: absolute; left: 168px; top:435px; width: 42px; ">
	
	<p style="position: absolute; left:220px; top: 435px; font-style: oblique;">il:</p>		
	
	<input type="text" class="form-control" value="${year}"  name="year" style=" position: absolute; left: 235px; top:435px; width: 42px; ">
	
	
	<input type="hidden" id="contractId" name="contractId" value="${employee.contract.id}">
		
	<input type="hidden" id="contractType" name="contractType" value="${employee.contract.type}">
	
	
		<!-- Selected -->

	<p style="position: absolute; left:292px; top: -10px; font-style: oblique;">
	<s:message code="department"></s:message> </p>

	<spr:select path="department" id="country"  class="form-control" 
	style=" position: absolute; left: 420px; top:-10px; width: 170px; ">

	<%-- <spr:option value="0" label="--- Select ---" /> --%>

	<spr:options items="${departments}" itemValue="id" itemLabel="name" />

	</spr:select>

	<!--  -->
	
	
	
		<!-- Selected -->

	<p style="position: absolute; left:292px; top: 30px; font-style: oblique;">
	Şöbə/Sahə/Grup </p>

	<spr:select path="areaGroup" id="country"  class="form-control" 
	style=" position: absolute; left: 420px; top:30px; width: 170px; ">

	<spr:options items="${areaGroup}" itemValue="id" itemLabel="name" required="required"/>

	</spr:select>
	
	
	<p style="position: absolute; left:292px; top: 350px; font-style: oblique;">
	Fovqalade ad </p> 
	
	<input name="extraordinaryContactName"  value="${employee.extraordinaryContact.extraordinaryContactName}"  id="fname" class="form-control" 
	style=" position: absolute; left: 420px;  top: 350px; width: 170px;" required="required"/>
	
	
		<p style="position: absolute; left:292px; top: 390px; font-style: oblique;">
	Fovqalade nomre </p> 
	
	<input name="extraordinaryContactNumber" value="${employee.extraordinaryContact.extraordinaryContactNumber}" id="fname" class="form-control" 
	style=" position: absolute; left: 420px;  top: 390px; width: 170px;" required="required"/>
	
	
	<input type="hidden" id="extraordinaryContactId" name="extraordinaryContactId" value="${employee.extraordinaryContact.id}">
	
	
	
	
	
	
	
	

	

	
	<!-- 210 250 -->
	<p style="position: absolute; left: 292px; top: 70px; font-style: oblique;">
	<s:message code="salary"></s:message></p>

	<spr:input path="salary" id="fname" class="form-control" style=" position: absolute;
	left: 420px; top:70px; width: 170px;" placeholder="Your salary.." required="required"/>
	
	
	
<%-- 	
	<input type="hidden" value="${employee.image.image}" name="editFile" />
	<p style="position: absolute; left: 18px; top: 375px; font-style: oblique;">
	<s:message code="image"></s:message> </p>

	<input type="file" name="imageFile" style="position: absolute; 	left: 100px; top:375px; font-style: oblique;">

	<input type="hidden" value="${employee.image.id}" name="fileId">

	<c:if test="${not empty image}">
	<td><img src="data:image/jpg;base64,${image}"
	style="height: 30px; width: 30px; position: absolute; left: 300px; top: 375px;"></img></td>
	</c:if> --%>


	<p style="position: absolute; left:292px; top: 110px;font-style: oblique;">
	<s:message code="position"></s:message></p>

	<spr:input path="position" id="fname" class="form-control" 
	style=" position: absolute; left: 420px; top:110px; width: 170px;" placeholder="Your position..." required="required"/>
	












<%-- 	<p style="position: absolute; left:286px; top: 10px; font-style: oblique;">
	<s:message code="work_start_time"></s:message></p>

	<spr:input type="date" path="startTime" id="fname" class="form-control" 
	style=" position: absolute; left: 410px; top:10px; width: 170px;" required="required"/>
	 --%>


    <p style="position: absolute; left:292px; top: 150px; font-style: oblique;">
	<s:message code="legal_address"></s:message></p> 

	<spr:input path="address" id="fname"  class="form-control" style=" position: absolute;
	left: 420px; top:150px; width: 170px;" placeholder="your legal address " required="required" /> 
	
	
	<p style="position: absolute; left:292px; top: 190px; font-style: oblique;">
	<s:message code="actual_address"></s:message></p> 

	<spr:input path="actualAddress" id="fname"  class="form-control" style=" position: absolute;
	left: 420px; top:190px; width: 170px;" placeholder="your actual address" required="required" /> 
	
	
	
	
	
	
	
	

	


	
	<p style="position: absolute; left:292px; top: 230px; font-style: oblique;">
	<s:message code="idCardsNumber"></s:message>
	</p> 

    <spr:input path="idCardsNumber" id="fname"  class="form-control" style=" position: absolute;
	left: 420px; top:230px; width: 170px;" placeholder="id card number" required="required"/> 
	
	
	
	
	
	
	

	<p style="position: absolute; left:292px; top: 270px; font-style: oblique;">
	<s:message code="Contract_start_time"></s:message></p> 
	
	<input type="date"  id="fname"  value="${employee.contract.startTime}" name="contractStartTime" class="form-control" 
	style=" position: absolute; left: 420px; top: 270px; width: 170px;" required="required"/>
	
	
	
	
	<p style="position: absolute; left:292px; top: 310px; font-style: oblique;">
	<s:message code="Contract_end_time"></s:message></p> 
	
	<input type="date"  name="contractEndTime"  value="${employee.contract.endTime}"  id="fname" class="form-control" 
	style=" position: absolute; left: 420px;  top: 310px; width: 170px;" required="required"/>
	
	
	
	<input type="hidden" id="contractId" name="contractId" value="${employee.contract.id}">
		
	<input type="hidden" id="contractType" name="contractType" value="${employee.contract.type}">



	
<br> <br><br> <br><br>
<br> <br><br> <br><br>
<br> <br><br> <br> <br>
<br> <br><br>

	</div>
	<div class="modal-footer">

		<button type="submit" class="btn btn-primary">
			<s:message code="save"></s:message>
		</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			<s:message code="cancel"></s:message>
		</button>


	</div>

</spr:form>
