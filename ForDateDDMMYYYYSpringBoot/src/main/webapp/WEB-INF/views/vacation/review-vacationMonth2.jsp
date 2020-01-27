<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spr:form action="#" method="post"
	modelAttribute="vacationMonths">


	<div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">${employee.name} ${employee.surname} ${employee.fatherName}
	
	</h5>
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	<span aria-hidden="true">&times;</span> </button>

	</div>
	

	
	<div class="modal-body">
	
	
	<p style="position: absolute; left: 25px; top: 20px;font-style: oblique;">
     Istifade etdiyi mezuniyyetler : </p>
	
	

      <c:if test="${ empty vacationMonth}">
      <p style="position: absolute; left: 25px; top: 55px;font-style: oblique;">Məzuniyyət istifadə edilməyib </p>
      </c:if>
      


	<c:if test="${not empty vacationMonth}">
  	<table style="position: absolute; left: 40px; top: 55px;font-style: oblique;" class="a">
    <c:forEach var="vacation" items="${vacationMonth}">
    <tr>
    <td> ${vacation.id} ) </td>
  	<td><p style="margin-left: 10px;margin-top: 10px;"> ${vacation.startTime}  /  ${vacation.endTime}</p>  </td>
  	<td> <p style="margin-left: 30px;margin-right: 10px;margin-top: 10px;">gun sayi:</p> </td>
  	  	<td> ${vacation.day}</td>
  	  	<td> <p style="margin-left: 30px;margin-right: 10px;margin-top: 10px;">Bayrama düşən gün sayı</p> </td>
  	  	<td><p style="margin-left: 10px;margin-right: 10px;margin-top: 10px;"> ${vacation.feastDay} </p>  </td>
  	</tr>
  	</c:forEach>
  	</table>
	</c:if>
	
	
	
     	
	
		<c:if test="${not empty vacationMonth}">
 	    <p style="position: absolute; left: 25px; top: 145px;font-style: oblique;">
      Qaliq mezuniyyet gunu : ${canculV.final_remainder}</p>  
			</c:if>
	
	
		<c:if test="${ empty vacationMonth}">
 	    <p style="position: absolute; left: 25px; top: 100px;font-style: oblique;">
         Qaliq mezuniyyet gunu : ${canculV.final_remainder}</p>  
		</c:if>


<br><br><br><br><br><br><br><br>

	 </div>
	 <div class="modal-footer">

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			cancel</button>
	</div>
</spr:form>
<style>

.a {
    counter-reset: rowNumber;
}

.b {
    counter-increment: rowNumber;
}

.a table tr td:first-child::before {
    content: counter(rowNumber);
    min-width: 1em;
    margin-right: 0.5em;
}
	</style> 
