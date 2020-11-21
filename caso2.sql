CREATE DATABASE caso2;
\c caso2;

--------tablas------------------------

--------departamento-------------------------------
    CREATE TABLE departamento(id_departamento INT,
    nombre_departamento VARCHAR(40),
    PRIMARY KEY(id_departamento));

---------profesor------------------------------------
    CREATE TABLE profesor(id_profesor INT,
    nombre_profesor VARCHAR(30),
    departamento_id INT, 
    PRIMARY KEY(id_profesor),
    FOREIGN KEY(departamento_id) REFERENCES departamento(id_departamento));

--------curso-------------------------------------
    CREATE TABLE curso(id_curso INT,
    nombre_curso VARCHAR(40),
    PRIMARY KEY(id_curso));

---------alumno--------------------------------------
    CREATE TABLE alumno(id_alumno INT,
    nombre VARCHAR(30),
    rut VARCHAR(10),
    curso_id INT,
    PRIMARY KEY(id_alumno),
    FOREIGN KEY(curso_id) REFERENCES curso(id_curso));

--------pruebas------------------------------
    CREATE TABLE pruebas(id_prueba INT,
    alumno_id INT,
    profesor_id INT,
    puntaje FLOAT,
    PRIMARY KEY(id_prueba), 
    FOREIGN KEY(alumno_id) REFERENCES alumno(id_alumno), 
    FOREIGN KEY(profesor_id) REFERENCES profesor(id_profesor));