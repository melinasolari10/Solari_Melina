CREATE DATABASE empresa_1;
USE empresa_1;

CREATE TABLE departamentos (
departamento_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
presupuesto DOUBLE UNSIGNED NOT NULL,
estado boolean NOT NULL
);
CREATE TABLE empleados (
empleado_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cuil_cuit VARCHAR(15) NOT NULL UNIQUE,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
departamento INT UNSIGNED,
estado BOOLEAN,
FOREIGN KEY (departamento) REFERENCES departamentos(departamento_id));

INSERT INTO departamentos VALUES(1, 'Desarrollo', 120000, true);
INSERT INTO departamentos VALUES(2, 'Sistemas', 150000, true);
INSERT INTO departamentos VALUES(3, 'Recursos Humanos', 280000, true);
INSERT INTO departamentos VALUES(4, 'Contabilidad', 110000, true);
INSERT INTO departamentos VALUES(5, 'I+D', 375000, true);
INSERT INTO departamentos VALUES(6, 'Proyectos', 0,true );
INSERT INTO departamentos VALUES(7, 'Publicidad', 0, true);
INSERT INTO departamentos VALUES(8, 'Comercial', 0, false);
INSERT INTO empleados VALUES(1, '27-32481596-3', 'Aarón', 'Rivero', 1, true);
INSERT INTO empleados VALUES(2, '27-29557532-1', 'Adela', 'Salas', 2, true);
INSERT INTO empleados VALUES(3, '20-36970642-1', 'Adolfo', 'Rubio', 3, true);
INSERT INTO empleados VALUES(4, '20-41705545-1', 'Adrián', 'Suárez', 4, true);
INSERT INTO empleados VALUES(5, '20-17087203-3', 'Marcos', 'Loyola', 5, true);
INSERT INTO empleados VALUES(6, '27-38382980-3', 'María', 'Santana', 1, true);
INSERT INTO empleados VALUES(7, '23-80576669-1', 'Pilar', 'Ruiz', 2, true);
INSERT INTO empleados VALUES(8, '24-71651431-3', 'Pepe', 'Ruiz', 3, true);
INSERT INTO empleados VALUES(9, '25-36399183-3', 'Juan', 'Gómez', 2, true);
INSERT INTO empleados VALUES(10, '20-34638446-3', 'Diego','Flores', 5, true);
INSERT INTO empleados VALUES(11, '27-36738983-3', 'Marta','Herrera', 1, true);
INSERT INTO empleados VALUES(12, '27-44123836-1', 'Irene','Salas', NULL,
false);
INSERT INTO empleados VALUES(13, '20-38265162-1', 'Juan', 'Antonio', NULL,
true);

-- Consultas ejercicio número 5 del práctico 4:

-- a) 
SELECT apellido FROM empleados;

-- b)
SELECT distinct apellido FROM empleados;

-- c)
SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'empleados';

-- d)
SELECT nombre, apellido FROM empleados;

-- e)
SELECT cuil_cuit FROM empleados;

-- f)
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM empleados;

-- g)
SELECT UPPER(CONCAT(nombre, ' ', apellido)) AS nombre_completo_mayusculas FROM empleados;

-- h)
SELECT LOWER(CONCAT(nombre, ' ', apellido)) AS nombre_completo_minusculas FROM empleados;

-- i)
SELECT nombre, presupuesto as valor_actual FROM departamentos ORDER BY presupuesto asc;

-- j)
SELECT nombre FROM departamentos ORDER BY nombre asc;

-- k)
SELECT nombre FROM departamentos ORDER BY nombre desc;

-- l)
SELECT apellido, nombre FROM empleados ORDER BY apellido, nombre;

-- m)
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto desc LIMIT 3;

-- n)
SELECT nombre, presupuesto FROM departamentos ORDER BY presupuesto LIMIT 3;

-- o)
SELECT nombre, presupuesto FROM departamentos WHERE presupuesto >= 150000;

-- p)
SELECT nombre, presupuesto FROM departamentos WHERE presupuesto >= 100000 AND presupuesto <= 200000;

-- q)
SELECT nombre, presupuesto FROM departamentos WHERE presupuesto < 100000 OR presupuesto > 200000;

-- r)
SELECT nombre FROM departamentos WHERE presupuesto BETWEEN 100000 AND 200000;

-- s) 
SELECT empleados.nombre, empleados.apellido, departamentos.nombre FROM empleados inner join departamentos on empleados.departamento = departamentos.departamento_id;

-- t) 
--pasaron cosas...

-- u) 
SELECT departamentos.departamento_id, departamentos.nombre FROM departamentos inner join empleados ON departamentos.departamento_id = empleados.departamento GROUP BY departamentos.departamento_id, departamentos.nombre ORDER BY departamentos.departamento_id;

-- v) 
SELECT departamentos.nombre FROM empleados inner join departamentos on empleados.departamento = departamentos.departamento_id and empleados.cuil_cuit = "27-38382980-3";

-- w) 
SELECT departamentos.nombre FROM empleados inner join departamentos on empleados.departamento = departamentos.departamento_id WHERE empleados.nombre = 'Pepe' AND empleados.apellido = 'Ruiz';

-- x)
SELECT empleados. * FROM empleados inner join departamentos on empleados.departamento = departamentos.departamento_id  and departamentos.nombre = "I+D" ORDER BY empleados.nombre, apellido;

-- y)
SELECT * FROM empleados inner join departamentos ON empleados.departamento = departamentos.departamento_id WHERE departamentos.nombre IN ('Sistemas', 'Contabilidad', 'I+D') ORDER BY empleados.apellido, empleados.nombre;

-- z)
SELECT nombre FROM empleados WHERE departamento NOT IN (SELECT departamento_id FROM departamentos WHERE presupuesto >= 100000 AND presupuesto <= 200000);
