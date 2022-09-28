<?php
// para inhabilitar el cookie debe ponerse un signo negativo
// en time() - 60*...
// con el  signo + el cookie está habilitado
setcookie('font-size', '30px', time()+60*60*24*30, '/');


?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <h1>Cookies Seteada</h1>
  <a href="texto.php">Ir a Texto</a>
  
</body>
</html>