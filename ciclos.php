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
  <br />

  <ul>
    <p>Ciclo do-while se ejecuta al menos 1 vez, hasta que se verifica <br>
      que se cumpla la condición dentro de while.
    </p>
    <?php
    $i = 1;
    do {
      echo $i.'<br />';
    } while($i>10);
    ?>
  </ul>

  <ul>
    <p>Ciclo foreach para arreglos asociativos (hash o diccionarios)</p>
    <?php
    $meses = ['enero' => 'verano', 'febrero' => 'verano',
              'marzo' => 'otoño', 'abril'=>'otoño',
              'diciembre'=> 'verano', 'agosto'=>'invierno', 'mayo'=>'otoño',
              'julio'=>'invierno'];

    foreach($meses as $mes=>$valor) 
    echo ($valor=='invierno') ? $mes.'<br />':'Es verano'.'<br />';
    
    
    
    ?>
  </ul>



</body>
</html>

