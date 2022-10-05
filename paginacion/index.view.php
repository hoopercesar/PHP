<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script 
    type="module" 
    src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
  ></script>

  <script 
    nomodule 
    src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
  ></script>

  <style>
    .icono {
      color: blue;
      font-size: 20px;
    }
  </style>

  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600" rel="stylesheet">

  <link rel="stylesheet" href="estilos.css">
  <title>Paginación</title>
</head>
<body>
  <div class="contenedor">
    <h1>Articulos
    <ion-icon name="rainy-outline"></ion-icon>
    </h1>
    
    <section class="articulos">
      <ul>
        <?php foreach($articulos as $articulo): ?>
          <li>
            
            <?php echo 'Articulo ' . $articulo['id'] . ' : '. $articulo['articulo']; ?>
            <div class="icono">
              <ion-icon name="bug-outline"></ion-icon>
            </div>
            
          </li>
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
        
        -->
        
      </ul>
    </section>
  </div>
  
</body>
</html>