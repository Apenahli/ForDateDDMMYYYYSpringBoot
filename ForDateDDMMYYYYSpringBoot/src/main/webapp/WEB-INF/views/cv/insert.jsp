<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
	<spr:form action="${pageContext.request.contextPath}/departments/save" method="post" modelAttribute="details">
 
 <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        
          <span aria-hidden="true">&times;</span>
          
        </button>
      </div>
      <div class="modal-body">

	<p>Name </p> 
	<spr:input  type="text" class="form-control" path="name" />

      </div>
 
      <div class="modal-footer">
       
         <button type="submit" class="btn btn-primary">Save changes</button>
         
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      
      </div>
      
	</spr:form>