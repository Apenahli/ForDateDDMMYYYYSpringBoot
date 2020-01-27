<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<spr:form action="${pageContext.request.contextPath}/vacation/updateVacation"
	method="post" modelAttribute="vacation">


	<div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel">${employee.name} ${employee.surname} ${employee.fatherName}</h5>
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	
	<div class="modal-body">
		
		
 			<p style="position: absolute; left: 25px; top: 20px;font-style: oblique;">
     		2018-2019 qalıq :</p> 
		
		<input  type="text" value="${remainder}"  name="remainder" class="form-control" style="width:230px;margin-left:190px;float:left;"/> 
		
		 <input  type="hidden" value="${empId}"  name="empId" class="form-control"/> 
		
	
			<p style="position: absolute; left: 25px; top: 70px;font-style: oblique;">
     	Əsas Əmək məzuniyyəti :</p>
		
		<spr:select path="basic_vacation_day" id="basic_vacation_day" class="form-control" style="margin-top:10px; width:230px;margin-left:190px;float:left;">
            <spr:option value="21">21</spr:option>
             <spr:option value="30">30</spr:option>
        </spr:select>
        
       
       	<p style="position: absolute; left: 25px; top: 115px;font-style: oblique;">
     	Sosial Mezuniyyet :</p> 
        
        <spr:input path="sosial_vacation_day" type="text" id="sosial_vacation_day"  class="form-control" style="margin-top:10px; width:230px;margin-left:190px;float:left;"/>    
        
      
        <spr:hidden path="id" class="form-control"/>  
        
          <br>  <br>  <br>  <br>  <br>  <br>    <br>
	</div>
	<div class="modal-footer">

		<button type="submit" class="btn btn-primary">save</button>

		<button type="button" class="btn btn-secondary" data-dismiss="modal">
			cancel</button>
	</div>
</spr:form>





