<?php 
$errores ='';

if (isset($_POST['submit'])) {
  $nombre = $_POST['name'];
  $correo = $_POST['email'];
  // se ejecuta si la variable nombre fue ingresada
  if (!empty($nombre)) {
    //$nombre = trim($nombre);
    //$nombre = htmlspecialchars($nombre);
    //$nombre = stripcslashes($nombre);

    // elimina los símbolos html que acompañen al string nombre
    $nombre = filter_var($nombre, FILTER_SANITIZE_STRING);

    echo 'nombre: '.$nombre.'<br />';
  } else {
    $errores .= 'Agrega tu nombre!'.'<br />';
  }

  if(!empty($correo)) {
    $correo = filter_var($correo, FILTER_SANITIZE_EMAIL);
    if(!filter_var($correo, FILTER_VALIDATE_EMAIL)){
      $errores .= 'Ingresa un correo válido';
    } else {echo 'correo: '.$correo.'<br />';}
    
  } else {
    $errores .= 'Agrega un correo';
  }
  
  
}


?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <style>
    .error {
      color: red;
      font-size: 25px;
    }
  </style>



  <title>Document</title>
</head>
<body>
  <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="post">
    <input type="text" placeholder="nombre" name="name">
    <input type="text" placeholder="e-mail" name="email">
    <!--
      las siguientes líneas representan el condicional if dentro de código
      html intercalando html con php.
      Si $errores no está vacío entonces se ejecuta 
    -->

    <?php if(!empty($errores)): ?>
      <div class="error"><?php echo $errores; ?></div>
      <?php endif; ?>


    <input type="submit" name="submit">
  </form>
  
</body>
</html>