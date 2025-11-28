<?php
require_once "modelo.php";

class ControladorUsuarios {
    public static function obtenerUsuarios() {
        global $conexion;
        $filtro = $_GET["buscar"] ?? null;
        return ModeloUsuarios::listarUsuarios($conexion, $filtro);
    }
}
