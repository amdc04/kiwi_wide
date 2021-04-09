<?php
    error_reporting(0);

    try{
        $t = time();
        $timeStamp = date("Y-m-d",$t);
        $uploadedFile = $_FILES['form_file']['tmp_name'];
        $destination = '../uploads/'. $_FILES['form_file']['name'];

        if(move_uploaded_file($uploadedFile, $destination)){
            $return_arr = array(
                "message" => 'Success: A document sent - uploaded in: ' . $destination
            );
        } else {
            $return_arr = array(
                "message" => 'Error: ' . $_FILES['file']['error'] . ''
            );
        }

        echo json_encode($return_arr);

    }
    catch (Exception $e) {

		$return_arr = array(
			"message" => "Error - Something went wrong...",
			"Mailer Error" => "{$mail->ErrorInfo}",
		);

		echo json_encode($return_arr);
	}

?>
