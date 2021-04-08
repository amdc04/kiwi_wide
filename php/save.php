<?php
	$conexion = mysqli_connect('localhost', 'root', '', 'conacus');
	//Create a new PHPMailer instance
	
	 
	//Configuracion servidor mail
		
	$name = $_POST['name'];
	$address = $_POST['address'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$date = $_POST['date'];
	$type = $_POST['type'];
	$option = $_POST['option'];
	$file = $_POST['file'];
	$query = $_POST['query'];
	$datos = true;
		
	mysqli_query($conexion,"INSERT INTO info (name,address,email,phone,datei,type,optionq,query,file) VALUES('".$name."','".$address."','".$email."','".$phone."','".$date."','".$type."','".$option."','".$query."','".$file."')");
	
	$mensaj = "name = "+$name+" address = "+$address+" email = "+$email+" phone = "+$phone+" date = "+$date+"type = "+$type+" option = "+$option+" file = "+$file+" query = "+$query;
	mail($email,"Datos",$mensaj);
	
	echo"<script type='text/javascript'>
	           alert('Correo Enviado Correctamente');
	        </script>";	
	echo json_encode($datos);

?>