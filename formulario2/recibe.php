<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <h2>Verifica si el formulario2 está enviando datos</h2>
  <p>Se muestra el array global SERVER con sus claves=>valores</p>
  <?php
  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    echo 'se enviaron por POST';
  } else {
    echo 'se enviaron por get'.'<br />';
  }
  '<br />';
  
  foreach($_SERVER as $k=>$v) {
    echo $k.': '.$v.'<br />';
  }

  ?>
  
</body>
</html>