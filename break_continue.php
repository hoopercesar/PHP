<?php

$paises = ['chile', 'peru', 'brasil', 'colombia', 'mexico', 'alemania',
'portugal', 'mexico', 'venezuela'];

echo '<h2>'.'break en ciclo foreach'.'</h2>'.'<br />';
echo '<p>'.'break detiene el ciclo cuando se cumple la condición'.'</p>'.'<br />';

foreach($paises as $pais) {
  echo $pais.'<br />';
  if ($pais=='portugal') {
    break;
  }
}
echo '<p>'.'es importante tener el cuenta el orden
donde se coloca la intrucción break, antes o después de
imprimir en pantalla.'.'</p>'.'<br />';

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
  <p>'Continue' salta lo que está dentro de la condición. En este caso 'colombia'</p>
  <?php  
  foreach($paises as $pais) {
    if ($pais=='colombia') {
      continue;
    }
    echo $pais.'<br />';
  } 
  
  ?>
  
  
</body>
</html>

