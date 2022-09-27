<?php

$errores = '';
$enviado = '';

if (isset($_POST['submit'])) {
  $nombre = $_POST['nombre'];
  $correo = $_POST['correo'];
  $mensaje = $_POST['mensaje'];

  //$algo = $_POST[["nombre", "correo", "mensaje"]];
  // print_r($_POST);
 
  if (!empty($nombre)) {
    // trim() quita espacio al inicio y final de string
    $nombre = trim($nombre);
    $nombre = filter_var($nombre, FILTER_SANITIZE_STRING);  
  } else {
    $errores .= 'Por favor, ingresa un nombre'.'<br />';
  }

  if (!empty($correo)) {
    $correo = filter_var($correo, FILTER_SANITIZE_EMAIL); 
    if (!filter_var($correo, FILTER_VALIDATE_EMAIL)) {
      $errores .= 'Por favor, ingresa un correo Válido';
    } 
  } else {
    $errores .= 'Por favor, ingresa un correo';
  } 
}

require 'index.view.php';

?>