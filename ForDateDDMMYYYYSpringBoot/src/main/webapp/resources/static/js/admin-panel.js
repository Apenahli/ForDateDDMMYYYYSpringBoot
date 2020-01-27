function geteditAP(id) {

	$.ajax({

		type : "get",

		url : "/user/update/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function getChangePasswordAP(id) {

	$.ajax({

		type : "get",

		url : "/user/updatePassword/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function getDeleteAP(id) {

	$.ajax({

		type : "get",

		url : "/user/delete/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function getInsertAP() {

	$.ajax({

		type : "get",

		url : "/user/add",

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
