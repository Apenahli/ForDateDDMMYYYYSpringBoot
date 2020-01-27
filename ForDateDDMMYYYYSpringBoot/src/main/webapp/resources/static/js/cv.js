/* --------------------------- TOP  SKILLS- ----------------------------------------- */

function getInsertForm(id) {

	$.ajax({

		type : "get",

		url : "/cv/add/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function getInsertFormMod(id) {

	$.ajax({

		type : "get",

		url : "/employee/add/" + id,

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
function getEditSkillMod(skl_id, emp_id) {

	$.ajax({

		type : "get",

		url : "/employee/editSkill/" + skl_id + "/" + emp_id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

/*
 * --------------------------- Language-
 * -----------------------------------------
 */

function getInsertLanguage(id) {

	$.ajax({

		type : "get",

		url : "/cv/addLanguage/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function getInsertLanguageMod(id) {

	$.ajax({

		type : "get",

		url : "/employee/addLanguage/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function editLanguage(lang_id, emp_id) {

	$.ajax({

		type : "get",

		url : "/cv/editLanguage/" + lang_id + "/" + emp_id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function editLanguageMod(lang_id, emp_id) {

	$.ajax({

		type : "get",

		url : "/employee/editLanguage/" + lang_id + "/" + emp_id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

/* --------------------------- Summary ----------------------------------------- */

function getInsertSummary(id) {

	$.ajax({

		type : "get",

		url : "/cv/addSummary/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function getInsertSummaryMod(id) {

	$.ajax({

		type : "get",

		url : "/employee/addSummary/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function getEditSummary(id) {

	$.ajax({

		type : "get",

		url : "/cv/editSummary/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function getEditSummaryMod(id) {

	$.ajax({

		type : "get",

		url : "/employee/editSummary/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

/*
 * --------------------------- Experience
 * -----------------------------------------
 */

function getInserExperience(id) {

	$.ajax({

		type : "get",

		url : "/cv/addExperience/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}


function getInserExperienceMod(id) {

	$.ajax({

		type : "get",

		url : "/employee/addExperience/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}


function getEditExperience(id) {

	$.ajax({

		type : "get",

		url : "/cv/editExperience/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function getEditExperienceMod(id) {

	$.ajax({

		type : "get",

		url : "/employee/editExperience/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

/*
 * --------------------------- Education
 * -----------------------------------------
 */

function getInserEducation(id) {

	$.ajax({

		type : "get",

		url : "/cv/addEducation/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function getInserEducationMod(id) {

	$.ajax({

		type : "get",

		url : "/employee/addEducation/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function getEditEducation(id) {

	$.ajax({

		type : "get",

		url : "/cv/editEducation/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}
function getEditEducationMod(id) {

	$.ajax({

		type : "get",

		url : "/employee/editEducation/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

/*
 * --------------------------- certificate-
 * -----------------------------------------
 */

function getInsertCertificate(id) {

	$.ajax({

		type : "get",

		url : "/cv/addCertificate/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function getInsertCertificateMod(id) {

	$.ajax({

		type : "get",

		url : "/employee/addCertificate/" + id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}

function getEditCertificate(id, emp_id) {

	$.ajax({

		type : "get",

		url : "/cv/editCertifcat/" + id + "/" + emp_id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}


function getEditCertificateMod(id, emp_id) {

	$.ajax({

		type : "get",

		url : "/employee/editCertifcat/" + id + "/" + emp_id,

		dataType : "html",

		success : function(response) {

			$('.modal-content').html(response);

			$('#exampleModal').modal('show');

			console.log('test')
		}
	})
}








$("#edit_Experie_div").hover(function() {
	$("#edit_Experie").show();
}, function() {
	$("#edit_Experie").hide();
});

$("#edit_Experie_div2").hover(function() {
	$("#edit_Experie2").show();
}, function() {
	$("#edit_Experie2").hide();
});

$("#edit_Education_div").hover(function() {
	$("#edit_Education_a").show();
}, function() {
	$("#edit_Education_a").hide();
});

$("#edit_Education_div2").hover(function() {
	$("#edit_Education_a2").show();
}, function() {
	$("#edit_Education_a2").hide();
});

$("#edit_Summary_div").hover(function() {
	$("#edit_Summary_a").show();
}, function() {
	$("#edit_Summary_a").hide();
});

$("#edit_Summary_div2").hover(function() {
	$("#edit_Summary_a2").show();
}, function() {
	$("#edit_Summary_a2").hide();
});

$("#edit_Certificate_div").hover(function() {
	$("#edit_certificate_a").show();
}, function() {
	$("#edit_certificate_a").hide();
});

$("#edit_Certificate_div2").hover(function() {
	$("#edit_certificate_a2").show();
}, function() {
	$("#edit_certificate_a2").hide();
});


$("#edit_Languages_div").hover(function() {
	$("#edit_Languages_a").show();
}, function() {
	$("#edit_Languages_a").hide();
});

$("#edit_Languages_div2").hover(function() {
	$("#edit_Languages_a2").show();
}, function() {
	$("#edit_Languages_a2").hide();
});


$("#edit_Skill_div").hover(function() {
	$("#edit_Skill_a1").show();
}, function() {
	$("#edit_Skill_a1").hide();
});

$("#edit_Skill_div2").hover(function() {
	$("#edit_Skill_a2").show();
}, function() {
	$("#edit_Skill_a2").hide();
});
