$(function(){
	$('#validate').on('click',function(e){
		e.preventDefault();
		var form_preguntas = $('#preguntas').val(),
			form_name = $('#form_name').val(),
			form_address = $('#form_address').val(),
			form_phone = $('#form_phone').val(),
			form_email = $('#form_email').val(),
			form_file = $('#form_file').val(),
			form_file = form_file.substring(form_file.lastIndexOf("\\") + 1, form_file.length),
			$el_file = $('#form_file')[0].files[0],
			form_date = $('#form_date').val();
			var regex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
			t = "";
			var tja = "";
			var validar = 0;
			var tja1 = false;
			var tja2 = false;
			var tja8 = "";

			if ($('#preguntas').val() === '') {
			    $('#preguntas').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#preguntas').css('background-color', '#eee');
				
			}
			if (!$('#form_file').val()) {
			    $('#form_file').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#form_file').css('background-color', '#eee');
				
			}
			if (form_name === '') {
			    $('#form_name').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#form_name').css('background-color', '#eee');
				
			}
			if (form_address === '') {
			    $('#form_address').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#sform_address').css('background-color', '#eee');
				
			}
			if (form_email === '' || (!regex.test(form_email))) {
			        $('#form_email').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#form_email').css('background-color', '#eee');
				
			}

			if (form_phone === '') {
			        $('#form_phone').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#form_phone').css('background-color', '#eee');
				
			}
			if (form_date === '') {
			        $('#form_date').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#form_date').css('background-color', '#eee');
				
			}
			
			
			if ($("#q1").is(":checked") === true) {
			    tja = "Presencial";
			    tja1 = true;
			}
			if ($("#q2").is(":checked") === true) {
			    tja = "Telefonica";
			    tja1 = true;
			}
			if ($("#q3").is(":checked") === true) {
			    tja = "WhatsApp";
			    tja1 = true;
			}
			if ($("#q4").is(":checked") === true) {
			    tja = "Skype";
			    tja1 = true;
			}
			if ($("#q5").is(":checked") === true) {
			    tja = "Viber";
			    tja1 = true;
			}

			if (!tja1) {
				$('#query').css('background-color', 'red');
				validar = validar+1;
			}else{
				$('#query').css('background-color', '#444343');
			}

			if ($("#o1").is(":checked") === true) {
			    tja8 = "Necesito ayuda de un asesor de inmigración con licencia para preparar una";
			    tja2 = true;
			}
			if ($("#o2").is(":checked") === true) {
			    tja8 = "Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.";
			    tja2 = true;
			}
			if ($("#o3").is(":checked") === true) {
			    tja8 = "Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigración con licencia para preparar una respuesta a una carta recibida de emigración Nueva Zelanda.";
			    tja2 = true;
			}
			if ($("#o4").is(":checked") === true) {
			    tja8 = "Otro";
			    tja2 = true;
			}
			if (!tja2) {
				$('#pgts').css('background-color', 'red');
				validar = validar+1;
			}else{
				$('#pgts').css('background-color', '#444343');
			}
			if (validar === 0) {
				$("#preloader, .preloader").fadeIn();

				var postValue =  `
					name=${encodeURI(form_name)}
					&address=${encodeURI(form_address)}
					&email=${encodeURI(form_email)}
					&phone=${encodeURI(form_phone)}
					&date=${encodeURI(form_date)}
					&type=${encodeURI(tja)}
					&option=${encodeURI(tja8)}
					&file=${encodeURI(form_file)}
					&query=${encodeURI(form_preguntas)}
				`.replace(/\s/g, '');

				form_data_file_upload = new FormData();
            	form_data_file_upload.append('form_file', $el_file);
				//console.log(form_data_file_upload.getAll('file'))
				
				$.ajax({
					type: 'POST',
					url: 'php/file_upload.php',
					data: form_data_file_upload,
					dataType: 'json',
					contentType: false,
					processData: false,
					cache: false,
					success: function(result){
						console.log(result.message);
						sendEnquiryData(postValue);
					},
					error: function(xhr, status, error) {
						$("#preloader, .preloader").fadeOut();
						var err = eval("(" + xhr.responseText + ")");
  						alert(err.Message);
					}
				});

				return false
			}
			

	});
});

function sendEnquiryData(postValue){
	$.ajax({
		type: 'POST',
		url: 'php/save.php',
		data: postValue,
		dataType: 'json',
		success: function(result){
			$("#preloader, .preloader").fadeOut();
			alert(result.message);
			document.location.href = 'index.html'
		},
		error: function(xhr, status, error) {
			$("#preloader, .preloader").fadeOut();
			var err = eval("(" + xhr.responseText + ")");
			  alert(err.Message);
		}
	});
}
