<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <style>
    .contenedor {
      background: #F6FBFB;
      width:90%;
      max-width: 200px;
      padding:20px;
      margin: 300px 50px 200px 300px;
      border: 1px solid #000;
      border-radius: 5px;
    }
  </style>

  <title>Formulario</title>
</head>
<body>
  <div class="contenedor">
    <form action:"recibe.php" method:"post">
      <input type="text" placeholder="Nombre" name="nombre">
      <br>

      <label for="hombre">Hombre</label>
      <input type="radio" name="sexo" value="hombre" id="hombre">

      <label for="mujer">Mujer</label>
      <input type="radio" name="sexo" value="mujer" id="mujer">
      <br>

      <select name="year" id="year">
        <option value="2000">2000</option>
        <option value="2005">2005</option>
        <option value="2010">2010</option>
      </select>
      <br>

      <label for="terminos">Aceptar Términos</label>
      <input type="checkbox" name="terminos" id="terminos" value='ok'>
      <br>

      <input type="submit" value="enviar">


        
    </form>

  </div>
  
</body>
</html>