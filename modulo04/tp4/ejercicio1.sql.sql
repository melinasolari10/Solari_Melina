CREATE DATABASE institución_privada; 
USE institución_privada;

CREATE TABLE curso (
cod_curso INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL
);

CREATE TABLE alumno (
cod_matricula INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
dni INT NOT NULL UNIQUE,
fecha_nac DATETIME NULL,
email VARCHAR(100) NULL,
cod_curso INT,
FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso)
);

CREATE TABLE profesor (
profesor_id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
especialidad VARCHAR(100) NOT NULL,
email VARCHAR(100) NULL,
cod_curso INT,
FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso)
);

INSERT INTO curso (cod_curso, nombre) VALUES (45698772, '7mo_B');
SELECT * FROM curso;

INSERT INTO alumno (cod_matricula, nombre, dni) VALUES
(12564878, 'Nicolás Prato', '40255874'),
(24589633, 'Elias Gómez', '42560344'),
(49365477, 'Leonel Wall', '42067256');
SELECT * FROM alumno;

INSERT INTO profesor (profesor_id, nombre, especialidad) VALUES  
(15975366, 'Marco Méndez', '27678988'), 
(54879622, 'Elena Rodríguez', '31285309'), 
(58746931, 'Maria Casco', '35647891'); 
SELECT * FROM profesor; 