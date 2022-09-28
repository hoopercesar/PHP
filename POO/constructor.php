<?php 

class Persona {
  public $nombre;
  public $edad;
  public $pais;

  // el método __construct() se usa para asignarle valores a las variables
  // de cada instancia
 function __construct($nombre, $edad, $pais) {
  
  $this->nombre = $nombre;
  $this->edad = $edad;
  $this->pais = $pais;
 }

 public function mostrarInformacion() {
  echo $this->nombre.' tiene '.$this->edad. ' años, y es de '.$this->pais.'<br />';    
}
}

// así se ingresan los valores de cada instancia
$cesar = new Persona('César Ramón', 21, 'Peru');
$cesar->mostrarInformacion();

$enoc = new Persona('Enoc Abraham', 27, 'Jerusalén');
$enoc->mostrarInformacion();


?>