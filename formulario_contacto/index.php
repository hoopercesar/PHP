<?php

$errores = '';
$enviado = '';

if (isset($_POST['submit'])) {
  $nombre = $_POST['nombre'];
  $correo = $_POST['correo'];
  $mensaje = $_POST['mensaje'];
  $telefono = $_POST['telefono'];

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

  if (!empty($telefono)) {
    $telefono = htmlspecialchars($telefono);
    $telefono = trim($telefono);
    $telefono = stripcslashes($telefono);

    if (strlen($telefono) !== 9) {
      $errores .= 'Por favor, ingresa un teléfono válido';
    }
  }

  if (!empty($mensaje)) {
    $mensaje = htmlspecialchars($mensaje);
    $mensaje = trim($mensaje);
    $mensaje = stripcslashes($mensaje);
  } else {
    $errores .= 'Por favor, ingresa un mensaje';
  }

  if (!$errores) {
    $enviar_a = 'tunombre@empresa.com'; 
    $asunto = 'Mensaje Automático desde MiSitio.com';
    $mensaje_preparado = 'De: '.$nombre.'<br />';
    $mensaje_preparado .= 'Correo: '.$correo.'<br />';
    $mensaje_preparado .= 'Mensaje: '.$mensaje.'<br />';

    //mail($enviar_a, $asunto, $mensaje_preparado);
    $enviado = 'true';

  }  


}

require 'index.view.php';

?>