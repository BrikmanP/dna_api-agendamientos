<?php
require_once "src/conexion.php";
require_once "src/modelo.php";
require_once "src/controlador.php";

$usuarios = ControladorUsuarios::obtenerUsuarios();
?>



<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Usuarios</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background: #0D0D0D;
        font-family: "Segoe UI", Tahoma, sans-serif;
        color: #fff;
        transition: all 0.3s;
    }

    /* ================= HEADER ================= */
    .header {
        position: relative;
        width: 100%;
        height: 350px;
        background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
        overflow: hidden;
    }

    .header img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        object-position: center;
        filter: blur(1px) brightness(0.8);
    }

    .header::after {
        content: "";
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 80px;
        background: linear-gradient(to bottom, transparent, #0D0D0D);
        z-index: 5;
    }

    /* ================= SEARCH WRAPPER ================= */
    .search-wrapper {
        position: absolute;
        bottom: 50px;
        left: 50%;
        transform: translateX(-50%);
        
        display: flex;
        align-items: center;
        gap: 12px;

        width: 90%;
        max-width: 650px;
        z-index: 10;
    }

    .search-wrapper input {
        flex: 1;
        padding: 16px 22px;
        background: #ffffff;
        border: none;
        border-radius: 50px;
        font-size: 16px;
        color: #333;
        outline: none;
        box-shadow: 0 4px 20px rgba(0,0,0,0.3);
        transition: 0.3s;
    }

    .search-wrapper input:focus {
        box-shadow: 0 6px 28px rgba(139,61,255,0.45);
    }

    /* ===== BUTTON VOLVER ===== */
    .btn-volver {
        padding: 12px 18px;
        background: #018744;
        color: white;
        text-decoration: none;
        font-weight: 600;
        border-radius: 50px;
        white-space: nowrap;
        box-shadow: 0 4px 15px rgba(0,0,0,0.25);
        transition: 0.3s;
    }

    .btn-volver:hover {
        background: #02a958;
        transform: scale(1.03);
    }

    /* ================= THEME BUTTON ================= */
    .theme-btn {
        position: fixed;
        right: 30px;
        top: 30px;
        z-index: 100;
        background: linear-gradient(135deg, #5B00A7, #8B3DFF);
        width: 56px;
        height: 56px;
        border-radius: 50%;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        box-shadow: 0 4px 15px rgba(139, 61, 255, 0.5);
        transition: all 0.2s;
    }

    .theme-btn:hover {
        transform: scale(1.1);
        box-shadow: 0 6px 25px rgba(139,61,255,0.7);
    }

    .theme-btn svg {
        width: 24px;
        height: 24px;
        stroke: #fff;
        fill: none;
    }

    /* ================= CONTENT ================= */
    .content {
        width: 90%;
        max-width: 1100px;
        margin: 30px auto 60px;
        padding: 30px;
        background: #141414;
        border-radius: 16px;
        border: 1px solid rgba(91, 0, 167, 0.4);
        box-shadow: 0 0 20px rgba(91, 0, 167, 0.3);
    }

    h2 {
        text-align: center;
        font-size: 26px;
        color: #D1B3FF;
        margin-bottom: 30px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        border-radius: 10px;
        overflow: hidden;
    }

    thead {
        background: linear-gradient(90deg, #5B00A7, #8B3DFF);
    }

    th {
        padding: 14px;
        font-size: 15px;
        font-weight: 600;
        text-align: left;
    }

    td {
        padding: 12px;
        background: #1a1a1a;
        border-bottom: 1px solid #333;
        color: #ddd;
    }

    tr:hover td {
        background: #262626;
    }

    .empty {
        padding: 20px;
        text-align: center;
        color: #999;
    }

    /* ================= LIGHT MODE ================= */
    body.light {
        background: #efefef;
        color: #000;
    }

    body.light .header {
        background: linear-gradient(135deg, #e2e2e2, #f9f9f9);
    }

    body.light .content {
        background: white;
        border-color: #ddd;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }

    body.light h2 {
        color: #5B00A7;
    }

    body.light td {
        background: #fafafa;
        color: #222;
    }

    body.light tr:hover td {
        background: #e9dbff;
    }

    body.light .theme-btn {
        background: linear-gradient(135deg, #FFD700, #FFA500);
    }

    body.light .theme-btn svg {
        stroke: #333;
    }

    </style>
</head>

<body>

<!-- Botón de tema -->
<button class="theme-btn" id="themeBtn">
    <svg id="moon" viewBox="0 0 24 24" stroke-width="2">
        <path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path>
    </svg>
    <svg id="sun" viewBox="0 0 24 24" stroke-width="2" style="display:none;">
        <circle cx="12" cy="12" r="5"></circle>
    </svg>
</button>

<!-- HEADER -->
<div class="header">
<img src="src/assets/img/dna_header.png" alt="DNA Music">

    <form method="GET" class="search-wrapper">
        <input type="text" name="buscar" placeholder="Buscar...">
        <a href="index.php" class="btn-volver">Volver</a>
    </form>
</div>

<!-- CONTENIDO -->
<div class="content">
    <h2>Usuarios Registrados</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Email</th>
                <th>Ciudad</th>
                <th>Universidad</th>
            </tr>
        </thead>
        <tbody>
            <?php if (count($usuarios) > 0): ?>
                <?php foreach ($usuarios as $u): ?>
                    <tr>
                        <td><?= $u["id"] ?></td>
                        <td><?= $u["nombre"] ?></td>
                        <td><?= $u["email"] ?></td>
                        <td><?= $u["ciudad"] ?></td>
                        <td><?= $u["universidad"] ?></td>
                    </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr><td colspan="5" class="empty">No hay resultados</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
</div>

<script>
const btn = document.getElementById("themeBtn");
const moon = document.getElementById("moon");
const sun = document.getElementById("sun");

function setLight() {
    document.body.classList.add("light");
    moon.style.display = "none";
    sun.style.display = "block";
    localStorage.setItem("theme", "light");
}

function setDark() {
    document.body.classList.remove("light");
    moon.style.display = "block";
    sun.style.display = "none";
    localStorage.setItem("theme", "dark");
}

btn.onclick = function() {
    if (document.body.classList.contains("light")) {
        setDark();
    } else {
        setLight();
    }
};

if (localStorage.getItem("theme") === "light") {
    setLight();
}
</script>

</body>
</html>
