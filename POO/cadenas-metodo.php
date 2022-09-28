<?php

// este es un método que sirve para encadenar las salidas de varias
// funciones dentro de una clase.
// se genera la salida de cada función y luego se retorna $this
// para cada función. Como se muestra a continuación.

class Usuario {
  public $nombre;
  public $correo;

  function __construct($nombre, $correo) {
    $this->nombre = $nombre;
    $this->correo = $correo;  

  }

  public function mostrarNombre() {
    echo 'El nombre: '.$this->nombre.'<br />';
    return $this;
  }

  public function mostrarCorreo() {
    echo 'el correo: '. $this->correo.'<br />';
    return $this;
  }

}

$cesar  = new Usuario('Cesar', 'cesar@correo.com');
// esta línea es la que encadena las salidas de las funciones 
// de la clase Usuario.
$cesar->mostrarNombre()->mostrarCorreo();


?>