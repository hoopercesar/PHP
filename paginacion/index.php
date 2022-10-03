<?php

try {
  $conexion = new PDO('mysql:host=localhost; dbname=prueba_datos', 'root', '');
} catch (PDOException $e) {
  echo 'ERROR: '.$e->getmessage();
  die();
}

$pagina = isset($_GET['pagina']) ? (int)($_GET['pagina']) : 1;
$postPorPagina = 3;

$inicio = ($pagina > 1) ? ($pagina * $postPorPagina - $postPorPagina) : 0 ; 

$articulos = $conexion->prepare("
SELECT SQL_CALC_FOUND_ROWS * FROM paginacion 
LIMIT $inicio, $postPorPagina");

$articulos->execute();
$articulos = $articulos->fetchAll();

if (!$articulos) {
  header('Location: http://localhost/cursoPHP/practicas/paginacion/');  
}

$totalArticulos = $conexion->query('SELECT FOUND_ROWS() as total');
$totalArticulos = $totalArticulos->fetch()['total'];

$numeroPaginas = ceil($totalArticulos / $postPorPagina);

echo $numeroPaginas;

//print_r($articulos);

require 'index.view.php';

?>