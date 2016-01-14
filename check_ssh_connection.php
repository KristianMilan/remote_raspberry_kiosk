<?php
function my_ssh_disconnect($reason, $message, $language) {
  printf("Server disconnectect code: [%d] message: %s\n",
         $reason, $message);
}
$callbacks = array('disconnect' => 'my_ssh_disconnect');
$rasp['dns']=''; //DNS connection to raspberry
$rasp['ssh_port']=''; // SSH port
$connection = ssh2_connect(trim(preg_replace('/\s+/', ' ', $rasp['dns'])), $rasp['ssh_port'], $callbacks);
	if(ssh2_auth_password($connection, "pi", "123456")){
		$check="<span style='color: #28C213;'>Ok</span>";
	}else{
		$check="<span style='color: #CC3C0C;'>Fail</span>";
	}
	
	
?>
