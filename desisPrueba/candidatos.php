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
	$sql = "SELECT candidato, region FROM candidatos";
	$resultCandidatos = $conn->query($sql);


	// Verificar si la consulta tuvo éxito
	if ($resultCandidatos) {
		// procesamiento de datos
		foreach ($resultCandidatos as $value) 
		{
            $formattedData[] = array(
                'candidato' => $value['candidato'],
				'region' => $value['region']				
			);
		};


		// Convertir el array en una cadena JSON
		$jsonData = json_encode($formattedData);

		// Imprimir la cadena JSON
		echo $jsonData;
	} else {
		echo "Error en la consulta: ". $conn->errorInfo()[2];
	}

} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}

?>