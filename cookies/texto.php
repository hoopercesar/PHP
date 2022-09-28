<?php

if (isset($_COOKIE['font-size'])) {
  $tamano = htmlspecialchars($_COOKIE['font-size']);
  echo 'el cookie está funcionando';
} else {
  $tamano = '10px';
  echo 'La Cookie fue eliminada';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
  p {
    font-size: <?php echo $tamano ?>;    
  }
</style>

  <title>Texto</title>
</head>
<body>
  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
    Quod nobis cumque nihil animi? Provident ipsum amet quisquam, 
    vero itaque minima harum enim eos natus ut temporibus molestias 
    quos at! Totam?</p>

  
</body>
</html>