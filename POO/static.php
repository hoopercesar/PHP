<?php

// static: es una forma de acceder a las variables de una clase
// sin tener que instanciar la clase. 

class Persona {
  public static $dia =  '7 de septiembre';

  public static function saludo($nombre = null) {
    if ($nombre) {
      return 'buenos días, '.$nombre;
    } else {
      return 'buenos días';
    }    
  }
}

// podemos acceder a la variable $día y a la función saludo
// sin tener que instanciar (sin crear una instancia persona. p. ej $cesar =  new Persona)
// usando static

//echo Persona::$dia;
echo Persona::saludo().'<br />';
echo Persona::$dia;




?>