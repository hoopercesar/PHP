<?php session_start();

// primero se comprueba si el usuario ya ha iniciado sesión.
// para éso se usa el isset de $_SESION['usuario], si existe
// lo enviamos al index.php que lo redirigirá a contenido.php
if (isset($_SESION['usuario'])){
  header('Location: index.php');
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $usuario = filter_var(strtolower($_POST['usuario']), FILTER_SANITIZE_STRING);
  $password = $_POST['password'];
  // hasheamos el password 2 veces para la seguridad
  $password = hash('sha512', $password);
  $password = hash('sha512', $password);

  $errores = '';

  if (empty($usuario) or empty($password)) {
    $errores .= '<li>Ingrese un usuario</li>';
  } else {
    try{
      $conexion = new PDO('mysql:host=localhost;dbname=curso_login', 'root', '');
    } catch(PDOException $e) {
      echo 'Error: '.$e->getMessage();
    }
    $statement = $conexion->prepare(
      "SELECT * FROM usuarios WHERE usuario = :usuario AND pass = :password"
    );
    $statement->execute(array(
      ':usuario' => $usuario,
      ':password' => $password,
    ));

    $resultado = $statement->fetch();
    //var_dump($resultado);
    if ($resultado == false) {
      $errores .= 'El usuario no existe';
    } else {
      // creamos una sesion de $usuario y lo direccionamos a index.php
      // pues es el index quien decide si el usuario va a la sesión
      // o a inicio de sesión o a registro.
      $_SESSION['usuario'] = $usuario;
      header('Location: index.php');
      
    }
  }  
}

require 'views/login.view.php';

?>