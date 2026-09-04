-- Creación de la tabla que los alumnos consultarán en el Módulo 4
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    rol VARCHAR(50) DEFAULT 'Estudiante'
);

-- Insertar datos de prueba
INSERT INTO usuarios (nombre, email, rol) VALUES
('Ana Gomez', 'ana@example.com', 'Admin'),
('Carlos Ruiz', 'carlos@example.com', 'Estudiante'),
('Maria Lopez', 'maria@example.com', 'Estudiante');
