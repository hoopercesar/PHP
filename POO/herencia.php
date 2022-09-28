<?php 

class Persona {
  public $nombre;
  public $edad;
  public $pais;

 function __construct($nombre, $edad, $pais) {
  
  $this->nombre = $nombre;
  $this->edad = $edad;
  $this->pais = $pais;
 }

 public function mostrarInformacion() {
  return $this->nombre.' tiene '.$this->edad. ' años, y es de '.$this->pais.'<br />';    
}
}

class Estudiante extends Persona {

  // así se establece la herencia de las propiedades de Persona
  //  a la nueva clase estudiante. 
  // con parent la clase Estudiante hereda las propiedades de Persona
  function __construct($nombre, $edad, $pais, $carrera) {
    parent::__construct($nombre, $edad, $pais);

    $this->carrera = $carrera;
  }

}

$cesar = new Estudiante('Cesar Ramón', 88, 'Creta', 'Desarrollador');
echo $cesar->carrera . '<br />';
echo $cesar->mostrarInformacion();

// OJO: con herencia no se puedn heredar multiclases.
// por ejemplo no se puede extender una clases para que herede
// varias clases simultáneamente 
// class NuevaClase extends Estudiante Persona {}
// PERO es posible combinar las clases para heredar esa combinación
// tal como lo hacemos a continuación, en que la Clase Estudiante
// está compuesta por persona y luego heredamos las variables e instancias
// a la nueva clase género

class Genero extends Estudiante {
  function __construct($nombre, $edad, $pais, $carrera, $genero) {
    parent::__construct($nombre, $edad, $pais, $carrera);

    $this->genero = $genero;
  }

}

$maria =  new Genero('maria', 21, 'brasil', 'peluquera', 'mujer');
echo $maria->genero . '<br />';
echo $maria->mostrarInformacion();


?>