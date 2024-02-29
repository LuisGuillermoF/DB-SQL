CREATE DATABASE Bancos;

use Bancos;


/* Tablas fuertes*/
CREATE TABLE bancos(
	codigo DECIMAL(10) PRIMARY KEY NOT NULL,
    nombre VARCHAR(30) UNIQUE KEY NOT NULL,
    fecha_fund DATE
);

CREATE TABLE clientes(
	nro_cuenta,
    nombre VARCHAR(35) NOT NULL,
    telefono VARCHAR(25),
    direccion VARCHAR(25),
    genero VARCHAR(10) CHECK(genero IN("masculino","femenino")),
    saldo DECIMAL(6) CHECK(saldo BETWEEN 0 AND 1000000000)
);

CREATE TABLE cargos(
	codigo,
    nombre VARCHAR(35) NOT NULL,
    descripcion VARCHAR(200)
);


/**/

CREATE TABLE empleados(
	nombre VARCHAR(35) NOT NULL,
    fecha_nac DATE,
    genero VARCHAR(10),
    codigo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    telefono INT,
    salario DECIMAL() CHECK(salario BETWEEN 500 AND 2000),
    nro_hijos DECIMAL(1) CHECK(nro_hijos BETWEEN 0 AND 4) 
);


CREATE TABLE vigilantes(
	nombre VARCHAR(35) NOT NULL,
    nro_cedula,
    telefono,
    genero VARCHAR(10),
    salario DECIMAL() CHECK(salario BETWEEN 500 AND 2000)
);

CREATE TABLE cajer_automaticos(
	numero,
    ubicacion VARCHAR(35) NOT NULL,
    deposito DECIMAL() CHECK(deposito BETWEEN 1 AND 30000)
);

CREATE TABLE sucursales(
	codigo,
    ubicacion VARCHAR(35) NOT NULL,
    ciudad VARCHAR(35) NOT NULL,
    telefono
);

CREATE TABLE novedades(
	descripcion VARCHAR(200),
    constraint fk_descripcion foreign key (descripcion) REFERENCE cargos (descripcion)
);