function getDeleteForm(id) {

	$.ajax({

		type : "get",

		url : "/empProjectRole/delete/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function getEditForm(id) {

	$.ajax({

		type : "get",

		url : "/empProjectRole/update/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function getInsertForm(id) {

	$.ajax({

		type : "get",

		url : "/empProjectRole/insert/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function getDeactvForm(id){
	
	$.ajax({
		  
		type:"get",
		
		url:"/projects/update_deactive/" + id,
		
		dataType:"html",
		
		success:function(response){
			
			$('.modal-content').html(response);
			
			$('#exampleModal').modal('show');
			
			/*console.log('test')*/
		}
	})
}
