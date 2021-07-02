<?php
	require_once("conecta.php");
	session_start();

	if(!isset($_SESSION["nome"])){
		header("Location: index.php");
	}
	
	$pergunta =  $_SESSION['perguntas'][$_SESSION['i']];
	
	$result = $conexao->query("select texto from pergunta where id = {$pergunta}");
	
	if($row = $result->fetch_assoc()){
		$texto = $row["texto"];
	}else{
		echo "select texto from pergunta where id = {$perguntas[$pergunta]}";
		header("Location: encerrar.php");
	}
?>
<?php include("cabecalho.php"); ?>
	<form action="responder.php" method="post">
		<input type="hidden" value="<?=$pergunta;?>">	
		<div class="card">
			<div class="card-body">
				<p class="card-text" style="font-weight:bold;"><?=$texto?></p>
			</div>
				<ul class="list-group list-group-flush">
					<?php
					$result = $conexao->query("select id,texto,status from resposta where idpergunta = {$pergunta}");
					while($row = $result->fetch_assoc()):
					?>
						<li class="list-group-item"><input type="radio" name="resposta"  value="<?=$row["status"];?>"> <?=$row["texto"];?></li>
					<?php	
					endwhile;
					?>
				</ul>
			<div class="card-body">
				<input type="submit" value="Responder">
			</div>

		</div>	
		 
      <br> <br>
     
	</form>
<?php include("rodape.php"); ?>
