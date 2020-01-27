function geteditform(id){
	
	$.ajax({
		  
		type:"get",
		
		url:"/departments/update/" + id,
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
			/*console.log('test')*/
		}
	})
}

function getDeleteForm(id){
	
	$.ajax({
		  
		type:"get",
		
		url:"/departments/delete/" + id,
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
			console.log('test')
		}
	})
}


function getInsertForm(){
	
	$.ajax({
		  
		type:"get",
		
		url:"/departments/add",
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
			console.log('test')
		}
	})
}



function getDeactvForm(id){
	
	$.ajax({
		  
		type:"get",
		
		url:"/admin/update_deactive/" + id,
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
			/*console.log('test')*/
		}
	})
} 

function insertEmployee(){
	
	$.ajax({
		  
		type:"get",
		
		url:"/admin/new",
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
			console.log('test')
		}
	})
}


function editEmployee(id){
	
	$.ajax({
		  
		type:"get",
		
		url:"/admin/edit/" + id,
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
		}
	})
}


function getBirthday(){
	
	$.ajax({
		  
		type:"get",
		
		url:"/admin/birthday",
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
			console.log('test')
		}
	})
}

function contract(){
	
	$.ajax({
		  
		type:"get",
		
		url:"/admin/contract",
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
			console.log('test')
		}
	})
}




function getNewContract(id,type){
	
	$.ajax({
		  
		type:"get",
		
		url:"/admin/newContract/" + id+"/"+type,
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
		}
	})
}



function probation(){
	
	$.ajax({
		  
		type:"get",
		
		url:"/admin/probation",
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
			console.log('test')
		}
	})
}



