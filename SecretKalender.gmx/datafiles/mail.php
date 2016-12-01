<?php
$to = $_GET['to'];
$subject = $_GET['subject'];
$txt = $_GET['body'];
$headers = "From: " . base64_decode($_GET['header']);
//$headers = ;

echo mail($to,$subject,$txt,$headers);
?>