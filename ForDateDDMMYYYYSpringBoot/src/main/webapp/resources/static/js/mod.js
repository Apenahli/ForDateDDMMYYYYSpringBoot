function _like(mail,id) {

	$.ajax({

		type : "get",

		url : "/employee/mod/mailx/"+mail+"/"+id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}


function _number(number,id) {

	$.ajax({

		type : "get",

		url : "/employee/mod/numberx/"+number+"/"+id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function legal_address(address,id) {

	$.ajax({

		type : "get",

		url : "/employee/mod/address/"+address+"/"+id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function _actualAddress(actualAddress,id) {

	$.ajax({

		type : "get",

		url : "/employee/mod/actualAddress/"+actualAddress+"/"+id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}



function getEditSkill(skl_id, emp_id) {

	$.ajax({

		type : "get",

		url : "/cv/editSkill/" + skl_id + "/" + emp_id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}







