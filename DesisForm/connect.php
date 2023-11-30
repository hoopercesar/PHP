<?php
$servername="/home/cesar/snap/mysql-workbench-community/12/databases/desis/";
$port=123456;
$username="root";
$password="Password123#@!";
$database="sistema_votacion";

// para que el servidor apache2 pueda ejecutar el archivo connect.php es necesario instalar 
// sudo apt install php libapache2-mod-php php-mysql

try {
    // Crear la conexión
    $conn = new PDO("mysql:host=localhost;port=$port;dbname=$database", $username, $password);

    // Configurar el modo de error para PDO
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	// consulta región
	$sql = "SELECT id, region FROM regiones";
	$result = $conn->query($sql);

	$comunas = "SELECT id, comuna FROM comunas";
	$resultComunas = $conn->query($comunas);

	// Verificar si la consulta tuvo éxito
	if ($result) {
		// procesamiento de datos
		foreach ($result as $value) 
		{
			echo "ID: " .  $value['id']. ", Region: ". $value['region'].`<br>`;
		}
	} else {
		echo "Error en la consulta: ". $conn->errorInfo()[2];
	}

	if ($resultComunas) {
		// procesamiento de datos
		foreach ($resultComunas as $value) 
		{
			echo "ID: " .  $value['id']. ", Comuna: ". $value['comuna'].`<br>`;
		}
	} else {
		echo "Error en la consulta: ". $conn->errorInfo()[2];
	}

} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}



	


	


?>
