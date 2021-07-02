<?php
	session_start();
	$_SESSION['pts']+=$_POST['resposta'];
	$_SESSION['i']++;
	if($_SESSION['i']>9){
		header("Location: encerrar.php");	
	}else{
		header("Location: quiz.php");
	}
?>
