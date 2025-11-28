<?php
require_once "conexion.php";
header("Content-Type: application/json");

// 1. Consumir API externa
$apiUrl = "https://dummyjson.com/users";
$data = json_decode(file_get_contents($apiUrl), true);
$usuarios = $data["users"];

// 2. Guardar en la BD solo si no existe el email
foreach ($usuarios as $u) {
    $nombre = $u["firstName"] . " " . $u["lastName"];
    $email = $u["email"];
    $ciudad = $u["address"]["city"] ?? "No registra";
    $uni = $u["university"] ?? "No registra";

    // Verificar si ya existe
    $check = $conexion->prepare("SELECT id FROM usuarios_dummy WHERE email = ?");
    $check->bind_param("s", $email);
    $check->execute();
    $res = $check->get_result();

    if ($res->num_rows === 0) {
        $stmt = $conexion->prepare(
            "INSERT INTO usuarios_dummy (nombre, email, ciudad, universidad) VALUES (?, ?, ?, ?)"
        );
        $stmt->bind_param("ssss", $nombre, $email, $ciudad, $uni);
        $stmt->execute();
    }
}

echo json_encode(["mensaje" => "Usuarios guardados correctamente"]);
