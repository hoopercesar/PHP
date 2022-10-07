<?php session_start();

// con ésto destruimos o cerramos la sesión
// de modo que el usuario no podrá acceder al contenido
// a menos que inicie sesión nuevamente.
session_destroy();
$_SESSION = array();
header('Location: login.php');

// en contenido.view.php se hace referencia a cerrar.php
// <a href="cerrar.php">Cerrar Sesion</a>
// entonces, ésta función es la que se acaba de desarrollar aquí,
// para cerrar sesión. 



?>