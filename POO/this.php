<?php 

class Persona {
  public $nombre;
  public $edad;
  public $pais;

  public function mostrarInformacion() {
    echo $this->nombre.' tiene '.$this->edad. ' años, y es de '.$this->pais.'<br />';    
  }
}

$cesar = new Persona;
$cesar->nombre = 'cesar ramón';
$cesar->edad = 91;
$cesar->pais = 'peru';

$enoc = new Persona;
$enoc->nombre = 'Enoc Jesús';
$enoc->edad = 33;
$enoc->pais = 'Afganistán';

$cesar->mostrarInformacion();


$enoc->mostrarInformacion();

?>