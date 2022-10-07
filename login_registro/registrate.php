<?php session_start();

if (isset($_SESSION['usuario'])) {
  header('Location: index.php');
} 
// con esto se traen los datos desde registrate.view
// por el método POST. 
// las variables SERVER y SESSION se usan para comprobar 
// y transportar datos dentro del serviro
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $usuario = filter_var(strtolower($_POST['usuario']), FILTER_SANITIZE_STRING);
  $password = $_POST['password'];
  $password2 = $_POST['password2'];

  $errores = '';

  if (empty($usuario) or empty($password) or empty($password2)) {
    $errores .= '<li>Rellene los datos correctamente</li>';
  } else {
    try {
      $conexion = new PDO('mysql:host=localhost;dbname=curso_login', 'root', '');
    }catch(PDOException $e)  {
      echo 'Error: '. $e->getMessage();
    }
    $statement = $conexion->prepare("SELECT * FROM usuarios 
      WHERE usuario= :usuario LIMIT 1");
    $statement->execute(array(':usuario' => $usuario));
    $resultado = $statement->fetch();

    // OJO con esto: fetch() va a dar como resultado false
    // cuando el nombre de usuario NO exista en la base de datos
    // arroja otro resultado cuando el nombre de usuario exista en la base de datos.

    if ($resultado != false) {
      $errores .= 'El nombre de usuario ya existe';
    }

    // Las siguientes líneas encriptan el password
    // para dar mayor seguridad.
    // en nuestro caso vamos a usar el encriptado del encriptado
    // como contraseña. encriptado doble.
    $password = hash('sha512', $password);
    $password = hash('sha512', $password);
    $password2 = hash('sha512', $password2);
    $password2 = hash('sha512', $password2);

    if ($password != $password2) {
      $errores .= 'Las contraseñas no son iguales';
    }

    //echo "$password <br /> $password2";

  }

  if ($errores == '') {
    $statement = $conexion->prepare("INSERT INTO usuarios VALUES(null, :usuario, :pass)");
    $statement->execute(array(
      ':usuario' => $usuario,
      ':pass' => $password,
    ));
    // Una ve que el usuario se registró lo enviamos a la página
    // para iniciar sesión
    header('Location: login.php');
  }

  //echo "$usuario - $password - $password2";  
}

require 'views/registrate.view.php';

?>