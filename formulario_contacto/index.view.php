<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="estilos.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&family=Nunito:ital,wght@0,200;0,400;0,500;0,700;1,300;1,400&family=Yuji+Boku&display=swap" rel="stylesheet">
  <title>Formulario Contacto</title>
</head>
<body>
  <div class="wrap">
    <h1>Olá, Brasil</h1>
    <form 
      action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" 
      method="post"
    >

    <input 
      type="text" 
      class="form-control" 
      id="nombre" 
      name="nombre" 
      placeholder="nombre" 
      value="<?php if (!$enviado && isset($nombre)) echo $nombre;?>"
    >
    
    <input 
      type="text"
      class='form-control'
      id='correo'
      name='correo'
      placeholder='correo'
      value="<?php if (!$enviado && isset($correo)) echo $correo;?>"
    >

    <input 
      type="text"
      class='form-control'
      id='telefono'
      name='telefono'
      placeholder='telefono'
      value="<?php if (!$enviado && isset($telefono)) echo $telefono;?>"
    >

    <textarea 
      name="mensaje" 
      class='form-control' 
      id='mensaje' 
      placeholder='mensaje'
    ><?php if (!$enviado && isset($mensaje)) echo $mensaje;?></textarea>

    <!-- 
      estos alertas se implementarán con PHP

    <div class="alert error">
      Lorem ipsum dolor, sit amet consectetur adipisicing elit. 
    </div>

    <div class="alert succes">
      Lorem ipsum dolor, sit amet consectetur adipisicing elit. 
    </div>

    -->
    <?php if (!empty($errores)):  ?>
      <div class="alert error">
        <?php echo $errores; ?>
      </div>
    <?php elseif ($enviado): ?>
      <div class="alert succes">
        <p>Enviado Correctamene</p>
      </div>
    <?php endif ?>

    <input 
      type="submit" 
        name='submit' 
        class="btn btn-primary" 
        value="Enviar"
    >

    

    </form>
  </div>
  
</body>
</html>