$(function(){
	$('#validate').on('click',function(e){
		var  preguntas = $('#preguntas').val(),
			name = $('#name').val(),
			Address = $('#addres').val(),
			phone = $('#phone').val(),
			email = $('#email').val(),
			file = $('#file').val(),
			date = $('#date').val();
			var regex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;

			var validar = 0;
			var tja = "";
			if ($('#preguntas').val() == '') {
			    $('#preguntas').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#preguntas').css('background-color', '#eee');
				
			}
			if ($('#file').val() == 0) {
			    $('#file').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#file').css('background-color', '#eee');
				
			}
			if (name == '') {
			    $('#name').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#name').css('background-color', '#eee');
				
			}
			if (Address == '') {
			    $('#addres').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#addres').css('background-color', '#eee');
				
			}
			if (email == '' || (!regex.test(email))) {
			        $('#email').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#email').css('background-color', '#eee');
				
			}
			t = "";
			if (phone == '') {
			        $('#phone').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#phone').css('background-color', '#eee');
				
			}
			if (date == '') {
			        $('#date').css('background-color', 'red');
			        validar = validar+1;
			}else{
				$('#date').css('background-color', '#eee');
				
			}
			
			var tja1 = false;
			if ($("#q1").is(":checked") == true) {
			    tja = "Presencial";
			    tja1 = true;
			}
			if ($("#q2").is(":checked") == true) {
			    tja = "Telefonica";
			    tja1 = true;
			}
			if ($("#q3").is(":checked") == true) {
			    tja = "WhatsApp";
			    tja1 = true;
			}
			if ($("#q4").is(":checked") == true) {
			    tja = "Skype";
			    tja1 = true;
			}
			if ($("#q5").is(":checked") == true) {
			    tja = "Viber";
			    tja1 = true;
			}

			if (!tja1) {
				$('#query').css('background-color', 'red');
				validar = validar+1;
			}else{
				$('#query').css('background-color', '#444343');
			}

			var tja2 = false;
			var tja8 = "";
			if ($("#o1").is(":checked") == true) {
			    tja8 = "Necesito ayuda de un asesor de inmigración con licencia para preparar una";
			    tja2 = true;
			}
			if ($("#o2").is(":checked") == true) {
			    tja8 = "Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.";
			    tja2 = true;
			}
			if ($("#o3").is(":checked") == true) {
			    tja8 = "Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigración con licencia para preparar una respuesta a una carta recibida de emigración Nueva Zelanda.";
			    tja2 = true;
			}
			if ($("#o4").is(":checked") == true) {
			    tja8 = "Otro";
			    tja2 = true;
			}
			if (!tja2) {
				$('#pgts').css('background-color', 'red');
				validar = validar+1;
			}else{
				$('#pgts').css('background-color', '#444343');
			}
			if (validar == 0) {

				$.ajax({
						type: 'POST',
						url: 'php/save.php',
						data:'name='+name+'&address='+Address+'&email='+email+'&phone='+phone+'&date='+date+'&type='+tja+'&option='+tja8+'&file='+file+'&query='+preguntas,
						dataType:'json',	
						encode  : true
					})
					.done(function(datos){
						if (datos){
							alert("Informacion almacenada en la base de datos ....");
							
							document.location.href = 'index.html'							
						}
					});
			}
			
		e.preventDefault();
	});
});