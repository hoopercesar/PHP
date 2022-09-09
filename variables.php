<?php

# VARIABLES

$nombre = "cesar";
$numero = 7;

# las comillas dobles se usan para incluir variables dentro de strings
//echo "hola, $nombre, cómo estás? ya son las $numero de la tarde"

# con comillas simples este procedimiento se realiza de este modo;
# el punto '.' sirve para concatenar stringss
//echo 'hola, ' . $nombre . ', nos vamos a las ' . $numero

# para conocer el tipo de variable string, int, float...
//echo gettype($numero)

# CONSTANTES
# las constantes no pueden alterar su valor. se definen de un mod y así quedan
define('PI', 3.1416);
// define('PI', 333); =====> aquí se crea un conflicto porque la variable está definida

//echo PI;


# ARREGLOS
$semana = array('lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo');
# forma burda de mostrar todos los días de la semana

/*
echo $semana[0] . '<br />';
echo $semana[1] . '<br />';
echo $semana[2] . '<br />';
echo $semana[3] . '<br />';
echo $semana[4] . '<br />';
echo $semana[5] . '<br />';
echo $semana[6] . '<br />';
*/

# ARREGLOS ASOCIATIVOS (diccionarios u objetos)
$arreglo = ['llave1' => 'valor1', 
            'llave2' => 'valor2',
            'llave3' => 'valor3',
];

//echo $arreglo['llave2'];


# ARREGLOS MULTIDIMENSIONALES
$datos = [['carlos', 30, 'chile'], 
          ['fernanda', 27, 'brasil'], 
          ['sandra', 39, 'peru']];

//echo $datos[1][2]

//count($arrego) : cuenta cantidad de elementos en arreglos!!

?>