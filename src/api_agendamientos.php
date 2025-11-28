<?php
header("Content-Type: application/json");
require_once "../src/conexion.php";


// -------------------------------------------------
// 1. Validar token
// -------------------------------------------------
function validarToken($conexion)
{
    if (!isset($_SERVER["HTTP_AUTHORIZATION"])) {
        http_response_code(401);
        echo json_encode(["error" => "Token no proporcionado"]);
        exit;
    }

    $token = $_SERVER["HTTP_AUTHORIZATION"];

    $query = "SELECT * FROM usuarios_api WHERE token = ?";
    $stmt = $conexion->prepare($query);
    $stmt->bind_param("s", $token);
    $stmt->execute();
    $resultado = $stmt->get_result();

    if ($resultado->num_rows === 0) {
        http_response_code(403);
        echo json_encode(["error" => "Token inválido"]);
        exit;
    }
}

// -------------------------------------------------
// 2. Listar agendamientos (GET)
// -------------------------------------------------
function listarAgendamientos($conexion)
{
    $sql = "SELECT * FROM agendamientos";
    $result = $conexion->query($sql);

    $agendamientos = [];

    while ($row = $result->fetch_assoc()) {
        $agendamientos[] = $row;
    }

    echo json_encode($agendamientos, JSON_PRETTY_PRINT);
}

// -------------------------------------------------
// 3. Crear agendamiento (POST)
// -------------------------------------------------
function crearAgendamiento($conexion)
{
    $input = json_decode(file_get_contents("php://input"), true);

    if (!isset($input["estudiante"], $input["sede"], $input["fecha"], $input["estado"])) {
        http_response_code(400);
        echo json_encode(["error" => "Campos obligatorios: estudiante, sede, fecha, estado"]);
        exit;
    }

    $query = "INSERT INTO agendamientos (estudiante, sede, fecha, estado)
              VALUES (?, ?, ?, ?)";

    $stmt = $conexion->prepare($query);
    $stmt->bind_param(
        "ssss",
        $input["estudiante"],
        $input["sede"],
        $input["fecha"],
        $input["estado"]
    );

    if ($stmt->execute()) {
        echo json_encode(["mensaje" => "Agendamiento creado correctamente"]);
    } else {
        http_response_code(500);
        echo json_encode(["error" => "Error al crear agendamiento"]);
    }
}

// -------------------------------------------------
// 4. Rutas según método HTTP
// -------------------------------------------------
validarToken($conexion);

$method = $_SERVER["REQUEST_METHOD"];

if ($method === "GET") {
    listarAgendamientos($conexion);
} elseif ($method === "POST") {
    crearAgendamiento($conexion);
} else {
    http_response_code(405);
    echo json_encode(["error" => "Método no permitido"]);
}
