CREATE DATABASE EJEMPLO_4;
USE EJEMPLO_4;
#Crear tabla
CREATE TABLE ESTUDIANTES(NOMBRE VARCHAR(255), APELLIDO VARCHAR(255),
USUARIO VARCHAR(255), EDAD INTEGER, NOTA REAL, CASA VARCHAR(255));
INSERT INTO ESTUDIANTES(NOMBRE, APELLIDO, USUARIO, EDAD, NOTA, CASA) VALUES 
('Harry',     'Potter', 'theboywholived', 15, 4.0, 'Gryffindor'),
('Hermionie', 'Granger','granger2',       15, 4.5, 'Gryffindor'),
('Ron',       'Weasley','weasley7',       15, 3.7, 'Gryffindor'),
('Draco',     'Malfoy', 'malfoy999',      15, 4.0, 'Slytherin'),
('Cedric',    'Diggory','diggory123',     15, 4.0, 'Hufflepuff');

SELECT *FROM ESTUDIANTES;

CREATE TABLE VARITAS(USUARIO VARCHAR(255), TIPO VARCHAR(255), UBICACION VARCHAR(255));
INSERT INTO VARITAS(USUARIO, TIPO, UBICACION) VALUES 
('theboywholived', 'CEDRO','ALMACEN'),
('granger2',       'ROBLE', 'CASA'),
('weasley7',       'PLA', 'COLEGIO');

SELECT *FROM VARITAS;

#INNER JOIN
SELECT * FROM ESTUDIANTES INNER JOIN VARITAS ON ESTUDIANTES.USUARIO = VARITAS.USUARIO;
#LEFT JOIN
SELECT * FROM ESTUDIANTES LEFT JOIN VARITAS ON ESTUDIANTES.USUARIO = VARITAS.USUARIO;
#RIGHT JOIN
SELECT * FROM ESTUDIANTES RIGHT JOIN VARITAS ON ESTUDIANTES.USUARIO = VARITAS.USUARIO;
#LEFT JOIN ESPECIFICANDO ATRIBUTOS
SELECT ESTUDIANTES.NOTA, VARITAS.UBICACION FROM ESTUDIANTES 
LEFT JOIN VARITAS ON ESTUDIANTES.USUARIO = VARITAS.USUARIO;

