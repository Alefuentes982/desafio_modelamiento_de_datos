CREATE DATABASE caso1;
\c caso1;

------------tablas------------------

-----departamento------------
    CREATE TABLE departamento(id_departamento INT,
    nombre_departamento VARCHAR(40),
    PRIMARY KEY(id_departamento));

-----trabajador-----------------
    CREATE TABLE trabajador(id_trabajador INT,
    nombre VARCHAR(30),
    rut VARCHAR(10),
    direccion VARCHAR(40),
    departamento_id INT, 
    PRIMARY KEY(id_trabajador),
    FOREIGN KEY (departamento_id) REFERENCES departamento(id_departamento));

------liquidaciones--------------
    CREATE TABLE liquidaciones(id_liquidacion INT,
    trabajador_id INT, 
    enlace_drive VARCHAR(70),
    PRIMARY KEY(id_liquidacion),
    FOREIGN KEY(trabajador_id) REFERENCES trabajador(id_trabajador));