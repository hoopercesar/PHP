<?php

class Persona {
  public $nombre;
  public $edad;
  public $pais;

  public function mostrarInformacion() {
    echo 'Hola mundo '.'<br />';
  }
}

$cesar = new Persona;
$cesar->nombre = 'cesar ramiro';
$cesar->edad = 56;
$cesar->pais = 'peru';

$cesar->mostrarInformacion();

$daniel = new Persona;
$daniel-> nombre = 'daniel ícaro';
$daniel-> edad = 66;
$daniel -> pais= 'chile';

echo $daniel->nombre.', '.' tiene '. $cesar->edad.' años de edad';


?>