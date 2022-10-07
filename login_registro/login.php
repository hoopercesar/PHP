<?php

// primero se comprueba si el usuario ya ha iniciado sesión.
// para éso se usa el isset de $_SESION['usuario], si existe
// lo enviamos al index.php que lo redirigirá a contenido.php
if (isset($_SESION['usuario'])){
  header('Location: index.php')
}



require 'views/login.view.php';

?>