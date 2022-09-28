<?php 
session_start();

if ($_SESSION) {
  $nombre = $_SESSION['nombre'];
  echo "<h1>Hola, $nombre</h1>";
} else {
  echo "<h1>No has iniciado Sesión</h1>";
}


?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Página 2</title>
</head>
<body>
  
  <a href="cerrar.php">Cerrar Sesión</a>
  
</body>
</html>