<?php 

// public
// se puede acceder a los datos desde cualquier parte del programa

// protected
// se puede acceder a los datos sólo desde dentro de la clase
// o desde las clases que heredan la clase

// private
// se puede acceder a los datos sólo desde dentro de la clase donde fueron creados

class Usuario {
  public $nombre;
  private $correo;
  protected $pais;
  

  function __construct($nombre, $correo, $pais) {
    $this->nombre = $nombre;
    $this->correo = $correo;
    $this->pais = $pais;
  }

  public function mostrarInfo() {
    return $this->correo;
  }
}

// creamos una nueva clase
class Miembro extends Usuario {
  function __construct($nombre, $correo, $pais, $edad) {
    parent::__construct($nombre, $correo, $pais);
    // esta clase hereda las variables de la clase Usuario. Pero OJO
    // algunas de las variables de Usuario son public, private y protected.
    // las variables private no se pueden instanciar desde Miembro.
    // la variable $correo es privaye. Sólo se puede instanciar desde Usuario.
    // en cambio $nombre y $pais se pueden instanciar desde Miembro

    $this->edad = $edad;
  }
  
  public function showInfo() {
    return $this->pais. ' correo '.$this->correo .'<br />';
  }
}

$cesar = new Usuario('Cesar', 'cesar@correo.com', 'Chile');
echo $cesar->mostrarInfo() . '<br />';

$pancho = new Miembro('pancho', 'pancho@correo.com', 'peru', 24);
echo $pancho->showInfo();
echo $pancho->edad;

// con esta línea puedo acceder a $correo de $pancho, porque se llama una función
// que está en Usuario!!
echo $pancho->mostrarInfo();
//echo $pancho->pais; // esta variable es protected


?>