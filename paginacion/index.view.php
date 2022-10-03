<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&family=Nunito:ital,wght@0,200;0,400;0,500;0,700;1,300;1,400&family=Oswald:wght@200;300;400;500;600;700&family=Yuji+Boku&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="estilos.css">
  <title>Paginación</title>
</head>
<body>
  <div class="contenedor">
    <h1>Articulos</h1>
    <section class="articulos">
      <ul>
        <?php foreach($articulos as $articulo): ?>
          <li><?php echo 'Articulo ' . $articulo['id'] . ' : '. $articulo['articulo']; ?></li>
        <?php endforeach; ?>

      </ul>
    </section>

    <section class="paginacion">
      <ul>
        <!-- Se estable el uso del botón (flecha) de retroceso -->
        <?php if ($pagina == 1) : ?>
          <li class="disabled">&laquo;</a></li>
          <?php else : ?>
          <li> <a href="?pagina=<?php echo $pagina - 1; ?>"></a>&laquo;</a></li>

        <?php endif; ?>

        <!-- se establecen el funcionamiento de las páginas -->

        <?php 

        for ($i=1; $i<=$numeroPaginas; $i++) {
          if ($pagina == $i) {
            echo "<li class='active'><a href='?pagina=$i'>$i</a></li>";
          } else {
            echo "<li><a href='?pagina=$i'>$i</a></li>";
          }          
        }
        ?>

        <!-- se establece el funcionamiento de flecha para avanzar páginas -->

        <?php if ($pagina == $numeroPaginas) : ?>
          <li class="disabled">&raquo;</a></li>
          <?php else : ?>
            <li><a href="?pagina=<?php echo $pagina + 1; ?>"></a>&raquo;</a></li>

        <?php endif; ?>
        <!-- 
        <li class="disabled">&laquo;</a></li>
        
        
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">&raquo;</a></li>
        -->
        
      </ul>
    </section>
  </div>
  
</body>
</html>