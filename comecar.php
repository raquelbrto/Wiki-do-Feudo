<?php
	session_start();
	$_SESSION['nome'] = $_POST['nome'];
	$_SESSION['pts'] = 0;
	$_SESSION['i'] = 0;
	$perguntas = array(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30);
	shuffle($perguntas);
	$_SESSION['perguntas'] = $perguntas;
	header("Location: quiz.php");
?>
