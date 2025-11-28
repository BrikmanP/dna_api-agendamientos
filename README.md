# Proyecto – Prueba Técnica Programador  
Agendamientos Estudiantiles + Consumo de API Externa + MVC

Este repositorio contiene la solución completa a la prueba técnica solicitada. Incluye lógica en PHP, API REST, consultas SQL, consumo de API externa y un módulo MVC con interfaz moderna (modo claro y oscuro).

---

## 🧩 Estructura del Proyecto

/src  
├── api.php                # Consumo API externa (DummyJSON) y guardado en BD  
├── api_agendamientos.php  # API propia de agendamientos  
├── logica.php             # Lógica de filtrado y agrupamiento por sede  
├── modelo.php             # Modelo MVC  
├── controlador.php        # Controlador MVC  
├── conexion.php           # Conexión a base de datos  
└── assets/                # Recursos gráficos y estilos

En la raíz:  
- `index.php` → Vista principal con filtro de usuarios  
- `consultas.sql` → Consultas MySQL pedidas en la prueba  
- `git_respuestas.txt` → Comandos Git solicitados  
- `analisis_tecnico.md` → Diagnóstico de lentitud

> Nota: La carpeta `src/test/` contiene scripts de prueba (Postman / scripts PHP) que **no se suben al PR**.

---

## 🎨 Vista del Frontend

![Frontend](src/assets/img/frontend.png)

---

## 🗂️ Tabla `usuarios_dummy`

- Contiene los usuarios importados desde la API externa `https://dummyjson.com/users`.  
- Campos principales: `id`, `nombre`, `email`, `ciudad`, `universidad`.  
- Usada para mostrar los datos en el front con filtrado por nombre, email o universidad.  
- Ordenada por `id DESC` para ver los registros más recientes primero.

---

## 🧪 Scripts de prueba

- `src/test/crear_agendamiento.php` → Inserta agendamientos de prueba  
- `src/test/generar_token.php` → Genera token de prueba  
- `src/test/listar_agendamientos.php` → Lista agendamientos en JSON  

> Solo para pruebas locales, no forman parte del flujo de producción.

---

## 🚀 Requisitos

- PHP 8.x  
- MySQL o MariaDB  
- Servidor local (XAMPP, WAMP o similar)  
- Extensión mysqli habilitada  

> Versión utilizada para el desarrollo: **PHP 8.2**

---

## ⚙️ Cómo ejecutar el proyecto

1. Clonar el repositorio  
2. Importar o crear la base de datos y ejecutar `consultas.sql`  
3. Configurar las credenciales en `conexion.php`  
4. Colocar el proyecto en la carpeta `htdocs` (o equivalente)  
5. Abrir en navegador: http://localhost/dna_api/index.php
6. Para importar usuarios desde la API externa:  



7. Para consumir la API propia de agendamientos:  

- GET → `/src/api_agendamientos.php`  
- POST → `/src/api_agendamientos.php` (usando token generado previamente)

---

## 📌 Decisiones Técnicas

- MVC para separar responsabilidades  
- Consumo de API externa usando `file_get_contents`  
- Front con filtros dinámicos y ordenamiento por `id DESC`  
- Dashboard claro/oscuro, UI moderna  
- API de agendamientos con validación por token y respuestas JSON estandarizadas  

---

## 🗃️ Comandos Git utilizados

```bash
git checkout -b feature/mejora-agendamientos
git add .
git commit -m "Actualizar front con filtros y ordenar por ID en usuarios_dummy"
git push -u origin feature/mejora-agendamientos

