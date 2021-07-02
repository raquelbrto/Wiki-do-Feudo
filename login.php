
<?php include("cabecalho.php"); ?>
<div class="row">
  <div class="col">
    <form action="comecar.php" method="post">
      <div class="form-group">
        <h2 class="" style="">Qual o seu nome?</h2>
           <input type="text" class="form-control form-control-lg" name="nome">
            <br>
      <br>
            <h2 class="">Qual o seu email?</h2>
        <input type="email" class="form-control form-control-lg" name="email">
     
      </div>
      <button type="submit" class="btn btn-primary">Entrar</button>
      <br>
      <br>
      <br>
    </form>

  </div>
</div>
<?php include("rodape.php"); ?>

