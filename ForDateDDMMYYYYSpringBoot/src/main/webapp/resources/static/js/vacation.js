function insertVacationEmp() {

	$.ajax({

		type : "get",

		url : "/vacation/insert",

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function editVacationEmp(id) {

	$.ajax({

		type : "get",

		url : "/vacation/insertMonth/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function reviewVacationEmp(id) {

	$.ajax({

		type : "get",

		url : "/vacation/reviewMonth/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function editVacationEmp2(id) {

	$.ajax({

		type : "get",

		url : "/vacation/insertMonth2/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function insertVacationEmp2(message) {

	$.ajax({

		type : "get",

		url : "/vacation/insertv2/" + message,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function insertVacationMonthEmp(id) {

	$.ajax({

		type : "get",
		url : "/vacation/insertMonth2/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function editVacation(id) {

	$.ajax({

		type : "get",

		url : "/vacation/editVacation/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}






function editVacation2(id) {

	$.ajax({

		type : "get",

		url : "/vacation/editVacation2/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}





function reviewVacationEmp2(id) {

	$.ajax({

		type : "get",

		url : "/vacation/reviewMonth2/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

























