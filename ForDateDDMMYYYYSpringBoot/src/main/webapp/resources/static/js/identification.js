/*  ----------------------------------  PROJECT   -------------------------------       */
function getInsertFormm() {

	$.ajax({

		type : "get",

		url : "/projects/add",

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function geteditform(id) {

	$.ajax({

		type : "get",

		url : "/projects/update/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function getDeleteForm(id) {

	$.ajax({

		type : "get",

		url : "/projects/delete/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

/* ---------------------------------- ROLES ------------------------------- */

function getInsertRolFormm() {

	$.ajax({

		type : "get",

		url : "/roles/add",

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function geteditRolform(id) {

	$.ajax({

		type : "get",

		url : "/roles/update/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function getDeleteRolForm(id) {

	$.ajax({

		type : "get",

		url : "/roles/delete/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

/* ---------------------------------- Language ------------------------------- */

function getInsertLangForm() {

	$.ajax({

		type : "get",

		url : "/languages/add",

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function geteditLangform(id) {

	$.ajax({

		type : "get",

		url : "/languages/update/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function getDeleteLangForm(id) {

	$.ajax({

		type : "get",

		url : "/languages/delete/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

/* ---------------------------------- Skill ------------------------------- */

function getInsertSkillForm() {

	$.ajax({

		type : "get",

		url : "/skills/add",

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function geteditSkillform(id) {

	$.ajax({

		type : "get",

		url : "/skills/update/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function getDeleteSkillForm(id) {

	$.ajax({

		type : "get",

		url : "/skills/delete/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

/* ---------------------------------- Year ------------------------------- */




function getInsertYearForm() {

	$.ajax({

		type : "get",

		url : "/skills/addYear",

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function geteditYearform(id) {
	  

	$.ajax({

		type : "get",

		url : "/skills/updateYear/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			/* console.log('test') */
		}
	})
}

function getDeleteYearForm(id) {
	   
	$.ajax({

		type : "get",

		url : "/skills/deleteYear/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
