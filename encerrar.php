<?php

	session_start();
	
?>
<?php include("cabecalho.php"); ?>
<div class="jumbotron">
	  <h1 class="display-4">Oi, <?=$_SESSION['nome']?>!</h1>
	  <p class="lead">Você acertou  <?=$_SESSION['pts']?> perguntas!</p>
	  <hr class="my-4">
	  <p>Caso queira reiniciar o quiz novamente, aperte o link abaixo</p>
	  <a class="btn btn-primary btn-lg" href="reiniciar.php" role="button">Iniciar Quiz</a>
	  <a class="btn btn-primary btn-lg" href="reiniciar.php" role="button">Sair</a>
	</div>
<?php include("rodape.php"); ?>
