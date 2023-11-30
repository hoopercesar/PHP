<?php
$servername="/home/cesar/snap/mysql-workbench-community/12/databases/desis/";
$port=3306;
$username="root";
$password="Password123#@!";
$database="sistema_votacion";

try {
    // Crear la conexión
    $conn = new PDO("mysql:host=localhost;dbname=$database", $username, $password);

    // Configurar el modo de error para PDO
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	// consulta región
	$sql = "SELECT id, region FROM regiones";
	$result = $conn->query($sql);

	// Verificar si la consulta tuvo éxito
	if ($result) {
		// procesamiento de datos
		foreach ($result as $value) 
		{
			echo "ID: " .  $value['id']. ", Region: ". $value['region']."<br>";
		}
	} else {
		echo "Error en la consulta: ". $conn->errorInfo()[2];
	}
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}



	


	


?>
