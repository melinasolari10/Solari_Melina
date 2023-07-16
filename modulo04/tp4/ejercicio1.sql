CREATE DATABASE institución_privada1; 
USE institución_privada1;

CREATE TABLE curso (
cod_curso INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL
);

CREATE TABLE alumno (
cod_matricula INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
dni INT NOT NULL UNIQUE,
fecha_nac DATETIME NULL,
email VARCHAR(100) NULL
);

CREATE TABLE profesor (
profesor_id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
especialidad VARCHAR(100) NOT NULL,
email VARCHAR(100) NULL
);

CREATE TABLE alumno_curso (
id INT PRIMARY KEY AUTO_INCREMENT,
cod_matricula INT,
cod_curso INT,
FOREIGN KEY (cod_matricula) REFERENCES alumno(cod_matricula),
FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso)
);

CREATE TABLE profesor_curso (
id INT PRIMARY KEY AUTO_INCREMENT, 
profesor_id INT, 
cod_curso INT,
FOREIGN KEY (profesor_id) REFERENCES profesor(profesor_id),
FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso)
);

INSERT INTO curso (nombre) VALUES ('7mo_B');
SELECT * FROM curso;

INSERT INTO alumno (nombre, dni) VALUES
('Nicolás Prato', '40255874'),
('Elias Gómez', '42560344'),
('Leonel Wall', '42067256');
SELECT * FROM alumno;

INSERT INTO profesor (nombre, especialidad) VALUES  
('Marco Méndez', '27678988'), 
('Elena Rodríguez', '31285309'), 
('Maria Casco', '35647891'); 
SELECT * FROM profesor; 