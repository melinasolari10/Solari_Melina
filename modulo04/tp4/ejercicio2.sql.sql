CREATE DATABASE empresa54;
USE empresa54; 

CREATE TABLE País (
pais_id INT PRIMARY KEY auto_increment,
nombre_pais VARCHAR(50) NOT NULL);

CREATE TABLE Provincia ( 
provincia_id INT PRIMARY KEY auto_increment,
nombre_provincia VARCHAR(50) NOT NULL,
pais_id INT,
FOREIGN KEY (pais_id) REFERENCES País (pais_id));

CREATE TABLE Localidad (
codigo_localidad INT PRIMARY KEY auto_increment,
nombre VARCHAR(50) NOT NULL,
codigo_postal INT NOT NULL unique,
provincia_id INT,
FOREIGN KEY (provincia_id) REFERENCES Provincia (provincia_id));

CREATE TABLE Empleado (
empleado_id INT PRIMARY KEY NOT NULL auto_increment,
dni INT NOT NULL unique,
nombre VARCHAR(50) NOT NULL,
telefono INT NULL,
email VARCHAR(50) NULL,
fecha_alta datetime NULL,
codigo_localidad INT,
FOREIGN KEY (codigo_localidad) REFERENCES Localidad (codigo_localidad)
);

INSERT INTO País (pais_id, nombre_pais) VALUES 
(159875, 'Argentina'),
(254786, 'Brasil'),
(247845, 'Perú');
SELECT * FROM País; 

INSERT INTO Provincia (provincia_id, nombre_provincia) VALUES 
(54796632, 'Misiones'),
(36478541, 'Chaco'),
(49685712, 'Corrrientes');
SELECT * FROM Provincia;

INSERT INTO Localidad (codigo_localidad, nombre, codigo_postal) VALUES 
(54789632, 'Posadas', 3300),
(25478963, 'Resistencia', 3500),
(36789410, 'Corrientes', 4364);
SELECT * FROM Localidad;

INSERT INTO Empleado (empleado_id, dni, nombre, email, fecha_alta) VALUES
(6485207, 45079632, 'Mia Frank', 'miafrank@gmail.com', '2022-09-10'),
(2547861, 36015745, 'Franco Baez', 'frankkkobaez@gmail.com', '2023-01-05'),
(2547899, 31257846, 'Esperanza Bauer', 'esperanzabaaauer25@gmail.com', '2023-02-06');
SELECT * FROM Empleado;