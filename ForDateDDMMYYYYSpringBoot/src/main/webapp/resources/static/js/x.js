function contract(){
	
	$.ajax({
		  
		type:"get",
		
		url:"/contract/contract2",
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
			console.log('test')
		}
	})
}