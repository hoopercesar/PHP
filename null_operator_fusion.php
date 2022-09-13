<?php

// esta línea comprueba que se envió el name a través del
// protocolo get. Si no se envió, como en este caso, la variable
// $nombre adquiere el valor 'anonimo'.
// $nombre = isset($_GET['name']) ? $_GET['name'] : 'Anonimo';

// pues bien, con el operador de fisión null, se puede acortar 
// la línea anterior a lo siguiente

$nombre = $_GET['name'] ?? 'Anónimo';

echo $nombre;

?>