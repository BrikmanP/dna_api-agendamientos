<?php
header("Content-Type: application/json");

$agendamientos = [
    ["estudiante" => "Juan", "sede" => "Bogotá", "estado" => "pendiente", "fecha" => "2025-02-10"],
    ["estudiante" => "María", "sede" => "Cali", "estado" => "asistido", "fecha" => "2025-02-11"],
    ["estudiante" => "Andrés", "sede" => "Medellín", "estado" => "cancelado", "fecha" => "2025-02-12"],
    ["estudiante" => "Laura", "sede" => "Bogotá", "estado" => "pendiente", "fecha" => "2025-02-13"]
];

// 1. Filtrar pendientes
$pendientes = array_filter($agendamientos, function($item) {
    return $item["estado"] === "pendiente";
});

// 2. Agrupar por sede
$agrupados = [];

foreach ($pendientes as $item) {
    $sede = $item["sede"];
    if (!isset($agrupados[$sede])) {
        $agrupados[$sede] = [];
    }
    $agrupados[$sede][] = $item;
}

// 3. Retornar JSON
echo json_encode($agrupados, JSON_PRETTY_PRINT);
