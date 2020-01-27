<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spr:form action="${pageContext.request.contextPath}/vacation/saveMonth" method="post"
	modelAttribute="vacationMonths">


	<div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">${employee.name} ${employee.surname} ${employee.fatherName}
		<c:if test="${not empty msg }">
	( ${msg} ) 		 <i class="fa fa-warning" style="font-size: 20px; color: red; float: left; margin-right:10px;"></i>
	</c:if>
	</h5>
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	<span aria-hidden="true">&times;</span> </button>

	</div>
	
	<div class="modal-body">
	
	
	
 	  <p style="position: absolute; left: 361px; top: 22px;font-style: oblique;">
      Qaliq mezuniyyet gunu : ${canculV.final_remainder}</p>
		
	  <p  style="position: absolute; left: 361px; top: 57px;font-style: oblique;">Istifade etdiyi mezuniyyetler :</p>

      <c:if test="${ empty vacationMonth}">
      <p style="position: absolute; left: 361px; top: 100px;font-style: oblique;">Məzuniyyət istifadə edilməyib </p>
      </c:if>
      
      

	<c:if test="${not empty vacationMonth}">
  	<table style="position: absolute; left: 360px; top: 95px;font-style: oblique;">
    <c:forEach var="vacation" items="${vacationMonth}">
    <tr>
  	<td>  
  	${vacation.startTime}  /  ${vacation.endTime} 
  	<a href="${pageContext.request.contextPath}/vacation/deleteMonth/${vacation.id}">
  	 <i class="fa fa-trash-o"  aria-hidden="true" style="font-size: 15px; color: red; left: left; margin-left:10px;"></i>
  	</a>
  	</td>
  	</tr>
  	</c:forEach>
  	</table>
	</c:if>
	
	
	
     	<p style="position: absolute; left: 25px; top: 20px;font-style: oblique;">
     	Məzuniyyət əlavə et : </p>
     	
		

        <p style="position: absolute; left: 25px; top: 55px;font-style: oblique;">start time</p> 
        
      
        
		<spr:input type="date" path="startTime" id="fname"
		class="form-control" required="required" style="position: absolute; left: 100px; top: 55px;font-style: oblique;width:160px;" />

		 <p style="position: absolute; left: 25px; top: 100px;font-style: oblique;">end time</p>
		 
		<spr:input type="date" path="endTime" id="fname" class="form-control" required="required"
		 style="position: absolute; left: 100px; top:100px; font-style: oblique;width:160px;" />

		<spr:input type="hidden" path="vacation" class="form-control" placeholder="id" value="${id}" />


<br><br><br><br><br><br><br><br>

	 </div>
	 <div class="modal-footer">

		<button type="submit" class="btn btn-primary">save</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			cancel</button>
	</div>
</spr:form>
