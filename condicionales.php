

<?php
# isset: nativo php que verifica que una variable está definida o no.

$var = 'anonimato'.'<br/>';

$algo = (isset($var)) ? $var : 'no está definido';

echo $algo;

for($k=0; $k<10; $k++) echo 'hola '.$k.'<br />';


// for combinado con if en list comprehensive para print solo pares
for($k=1; $k<10; $k++) echo ($k%2 == 0) ? $k.'<br />' : ''.'<br />';



?>