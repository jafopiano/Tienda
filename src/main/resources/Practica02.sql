create database practica;

use practica;

create table suculenta;

CREATE TABLE suculenta (
    id_suculenta      INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    nombre_suculenta  VARCHAR(100)   NOT NULL,
    Tipo_Cuidado      VARCHAR(50)    NOT NULL,
    precio            DECIMAL(10,2)  NOT NULL,
    cantidad          INT UNSIGNED   NOT NULL DEFAULT 0,
    fecha_registro    DATETIME       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_suculenta)
);

-- 1. Crear el usuario con su contraseña
--    'localhost' = solo se puede conectar desde el mismo servidor
CREATE USER 'usuario_practica'@'localhost' IDENTIFIED BY 'la_Clave';

-- 2. Dar todos los permisos sobre todos los objetos de la base de datos practica
--    (tablas, vistas, procedimientos, etc.)
GRANT ALL PRIVILEGES ON practica.* TO 'usuario_practica'@'localhost';

-- 3. Aplicar los cambios
FLUSH PRIVILEGES;