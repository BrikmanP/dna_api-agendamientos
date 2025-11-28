-- 1. Traer todos los agendamientos del mes actual
SELECT *
FROM agendamientos
WHERE MONTH(fecha) = MONTH(CURDATE())
  AND YEAR(fecha) = YEAR(CURDATE());

-- 2. Contar cuántos pendientes hay por sede
SELECT sede, COUNT(*) AS pendientes
FROM agendamientos
WHERE estado = 'pendiente'
GROUP BY sede;

-- 3. Actualizar el estado de un agendamiento a "asistido" por id
UPDATE agendamientos
SET estado = 'asistido'
WHERE id = 1;
