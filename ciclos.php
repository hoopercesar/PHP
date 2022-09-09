<?php
$lista = array('hola', 'si', 'cama', 'cauto', 'pelele');
$lista2 = $lista;
sort($lista2)
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
 <h3>Lista PHP</h3>
  <ul>
    <?php
    
      foreach($lista as $k) {
        echo '<li>' . $k . '</li>';
      }

    ?>
  </ul>
<h3>Lista ordenada</h3>
  <ul>
    <?php
    foreach($lista2 as $j){
      echo '<li>' . $j . '</li>';
    } 
    
    ?>
  </ul>

</body>
</html>