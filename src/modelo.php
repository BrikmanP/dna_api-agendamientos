<?php
class ModeloUsuarios {
    public static function listarUsuarios($conexion, $filtro = null) {
        $tabla = "usuarios_dummy";

        if ($filtro) {
            $sql = "SELECT * FROM $tabla WHERE nombre LIKE ? OR email LIKE ? OR universidad LIKE ? ORDER BY id DESC";
            $stmt = $conexion->prepare($sql);
            $param = "%$filtro%";
            $stmt->bind_param("sss", $param, $param, $param);
            $stmt->execute();
            return $stmt->get_result()->fetch_all(MYSQLI_ASSOC);
        }

        $sql = "SELECT * FROM $tabla ORDER BY id ASC";
        return $conexion->query($sql)->fetch_all(MYSQLI_ASSOC);
    }
}
