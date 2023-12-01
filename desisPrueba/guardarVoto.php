<?php
// Conexión a la base de datos (ajusta los detalles según tu configuración)
$servername="localhost";
$port=3306;
$username="root";
$password="Password123#@!";
$database="sistema_votacion";

try {
    $conn = new PDO("mysql:host=$servername;port=$port;dbname=$database", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Obtener datos del cuerpo de la solicitud POST
    $data = json_decode(file_get_contents('php://input'), true);

    // Extraer datos del objeto JSON
    $nombre = $data['nombre'];
    $rut = $data['rut'];
    $email = $data['email'];
    $region = $data['region'];
    $comuna = $data['comuna'];
    $candidato = $data['candidato'];
    $fuentes = implode('', $data['fuentes']); // Concatenar fuentes como cadena

    // Verificar si el rut ya ha emitido un voto
    $stmt = $conn->prepare("SELECT rut FROM elector WHERE rut = :rut");
    $stmt->bindParam(':rut', $rut);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        // El rut ya ha emitido un voto
        $response = ['success' => false, 'message' => 'Este RUT ya ha emitido un voto. No es posible votar más de una vez.'];
        echo json_encode($response);
        exit;
    }

    // Insertar datos en la base de datos
    $stmt = $conn->prepare("INSERT INTO elector (nombre, rut, correo, region, comuna, candidato, informacion) 
                            VALUES (:nombre, :rut, :email, :region, :comuna, :candidato, :fuentes)");
    
    $stmt->bindParam(':nombre', $nombre);
    $stmt->bindParam(':rut', $rut);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':region', $region);
    $stmt->bindParam(':comuna', $comuna);
    $stmt->bindParam(':candidato', $candidato);
    $stmt->bindParam(':fuentes', $fuentes);

    $stmt->execute();

    $response = ['success' => true, 'message' => 'Voto guardado correctamente'];
    echo json_encode($response);

} catch (PDOException $e) {
    $response = ['success' => false, 'message' => 'Error al guardar el voto: ' . $e->getMessage()];
    echo json_encode($response);
}

$conn = null;
?>
