<?php
	error_reporting(0);
	$conexion = mysqli_connect('localhost', 'root', Null ,'conacus');
	

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
	$file = 'uploads/' . $file;
	$query = $_POST['query'];
	$datos = true;
		
	mysqli_query($conexion,"INSERT INTO info (name,address,email,phone,datei,type,optionq,query,file) VALUES('".$name."','".$address."','".$email."','".$phone."','".$date."','".$type."','".$option."','".$query."','".$file."')");
	
	$mensaj = "name = "+$name+" address = "+$address+" email = "+$email+" phone = "+$phone+" date = "+$date+"type = "+$type+" option = "+$option+" file = "+$file+" query = "+$query;
	mail($email,"Datos",$mensaj);

	include 'class.smtp.php';
	include 'class.phpmailer.php';
	
	$mail = new PHPMailer(true);

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

	$return_arr = array(
		"message" => "Informacion almacenada en la base de datos ....",
		"name" => $name,
		"address" => $address,
		"email" => $email,
		"phone" => $phone,
		"date" => $date,
		"type" => $type,
		"file" => $file,
		"query" => $query,
		"datos" => $datos
	);


	// Email Sender Credentials
	$emailFromName = "Kiwi Wide";
	$emailFrom = "simeonxianodos@gmail.com";
	$emailFromPass = "Kiwi_wide";

	// Receiver
	$emailToName = $name;
	$emailTo = $email; // you can replace any email here

	$message = json_encode($return_arr);

	try {
		$mail->SMTPDebug = 0;                               // SMTP::DEBUG_SERVER or 0
		$mail->isSMTP();                                    //Send using SMTP
		$mail->Host       = 'smtp.gmail.com';               //Set the SMTP server to send through
		$mail->SMTPAuth   = true;                           //Enable SMTP authentication
		$mail->Username   = $emailFrom;                     //SMTP username
		$mail->Password   = $emailFromPass;                 //SMTP password
		$mail->SMTPSecure = 'tls';    						//Enable TLS encryption;
		$mail->Port       = 587;

		$mail->setFrom($emailFrom, $emailFromName);  // Add Sender
		$mail->addAddress($emailTo, $emailToName); // Add Receiver here

		//Attachments
		// $mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
		// $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name
	
		//Content
		$mail->isHTML(true);
		$mail->Subject = 'You received message from '. $name;
		$mail->Body    = $message; // can be HTML string here
		$mail->AltBody = $message; // Text Only

		$mail->addBcc("todorubik@gmail.com");


		$mail->send();
		
		echo json_encode($return_arr);
	} catch (Exception $e) {

		$return_arr = array(
			"message" => "Error - Something went wrong...",
			"Mailer Error" => "{$mail->ErrorInfo}",
		);

		echo json_encode($return_arr);
	}

?>