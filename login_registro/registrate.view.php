<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <script 
    type="module" 
    src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
  ></script>

  <script 
    nomodule 
    src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
  ></script>

  <link 
    href="https://fonts.googleapis.com/css2?family=Raleway:400,300" 
    rel="stylesheet" 
    type="text/css"
  >


  <meta name="viewport" content="width=device-width, user-scalable=no,
    initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

  <link rel="stylesheet" href="css/estilos.css">
  <title>Registrate</title>
</head>
<body>
  <div class="contenedor">
    <h1 class="titulo">Regístrate
    
    <ion-icon name="rocket"></ion-icon>
    </h1>
    <hr class="border">

    <form 
      action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>"
      method="POST"
      class='formulario'
      name='login'      
      >
      <div class="form-group">
        <ion-icon name="person-sharp">
        </ion-icon>
        <input type="text" name="usuario" class="usuario" placeholder='Usuario'>
      </div>

      <div class="form-group">
        <ion-icon name="lock-closed-sharp">
        </ion-icon>
        <input type="password" name="password" class="password" placeholder='Password'>
      </div>

      <div class="form-group">
        <ion-icon name="lock-closed-sharp">
        </ion-icon>
        <input 
          type="password" 
          name="password2" 
          class="password_btn" 
          placeholder='Repetir Password'
        >
        <ion-icon 
          name="arrow-forward-circle-sharp"
          onclick="login.submit()"
        ></ion-icon>
      </div>

      <?php if(!empty($errores)): ?>
        <div class="errores">
          <ul>
            <?php echo $errores; ?>
          </ul>
        </div>
      <?php endif; ?>

    </form>
    <p class="texto-registrate">
      Si ya estás registrado
      <a href="login.php">Inicia Sesión</a>
    </p>

    
  </div>
  
</body>
</html>