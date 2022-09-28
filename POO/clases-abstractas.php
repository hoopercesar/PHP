<?php

abstract class Persona {
  public function saludo() {
    return 'Hola';
  }
}

class Trabajador extends Persona {
    
}

//echo 'Este es el mensaje desde la clase Persona';
//$cesar = new Persona;
//echo $cesar->saludo();
//'<br />';

echo 'este es el mensaje desde la clase Trabajador'.'<br />';
$lucho = new Trabajador;
echo $lucho->saludo();
// la clase trabajador heredó de la clase abstracta Persona
// al heredar puede instanciar la función que está dentro de Persona.
// es decir, no es posible llamar la función de la clase abstracta Persona a menos
// que otra función herede de Persona
// en resumen: sólo se puede acceder a una clase abstracta heredándola




?>