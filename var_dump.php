<?php

echo '<h3>'.'entrega información sobre las variables'.'</h3>'.'<br />';

$palabra = 'calamidad';
$numero = 18;
$numero2 = '23';
$arreglo = ['17', 53, 'petropolis', ['ciudad'=>'lota', 'edad'=>37]];

echo var_dump($palabra).'<br />';
echo var_dump($numero).'<br />';
echo var_dump($numero2).'<br />';
echo var_dump($arreglo).'<br />';

echo '<p>'.'en el caso del arreglo var_dump entrega un diccionario'.'</p>'.'<br />';

foreach($arreglo as $valor) {
  echo var_dump($valor).'<br />';
}

echo '<p>'.'pero al parecer, var_dump no distingue entre un diccionario y un arreglo'.'</p>'.'<br />';




?>