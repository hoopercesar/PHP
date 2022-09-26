<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="estilos.css">
  <title>Formulario Contacto</title>
</head>
<body>
  <h1>Chupi doo do</h1>
  <div class="wrap">
    <form action="<?php echo htmlspecialchars($_SERVER[PHP_SELF]); ?>" method="post">
    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="nombre" value=''>
    
    <input 
      type="text"
      class='form-control'
      id='correo'
      name='correo'
      placeholder='correo'
      value=''
    >

    <textarea 
      name="Mensaje" 
      class='form-control' 
      id='mensaje' 
      placeholder='mensaje'
    ></textarea>

    </form>
  </div>
  
</body>
</html>