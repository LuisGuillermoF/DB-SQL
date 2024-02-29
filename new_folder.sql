create database unidades_residenciales;

use unidades_residenciales;


CREATE TABLE conjuntos (
	nit_conjunto VARCHAR(11) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    estrato int NOT NULL
);


CREATE TABLE vigilantes(
	ced_vigilante VARCHAR(11) PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    fecha_nacimiento DATE,
    genero varchar(4) CHECK(genero IN("M","F","Otro"))
);



CREATE TABLE edificios(
	id_edificio INT PRIMARY KEY AUTO_INCREMENT,
    numero_de_pisos INT CHECK(numero_de_pisos BETWEEN 5 AND 8),
    ubicacion VARCHAR (40)
    #id_conjuntos VARCHAR(11),
    #constraint fk_id_conjunto foreign key(id_conjuntos) REFERENCES conjuntos (nit_conjunto)
);

CREATE TABLE novedades (
	 id INT AUTO_INCREMENT PRIMARY KEY,
     id_edificio INT,
     id_vigilante VARCHAR(11),
     constraint fk_id_edificio foreign key (id_edificio) REFERENCES edificios (id_edificio),
     constraint fk_id_vigilante foreign key (id_vigilante) REFERENCES vigilantes (ced_vigilante)
);

CREATE TABLE apartamentos(
	num_apto int PRIMARY KEY AUTO_INCREMENT,
    piso int NOT NULL,
    valor DOUBLE CHECK(valor BETWEEN 10000 AND 100000),
    id_edificio int,
    constraint fk_id_edificio_apto foreign key (id_edificio) REFERENCES edificios (id_edificio)
);

ALTER TABLE edificios ADD COLUMN sector VARCHAR(30) CHECK(sector IN("Piscina","Alameda","Cancha"));

insert into vigilantes VALUES("123456","Santiago","1984-05-02","m");

SELECT * FROM vigilantes;

SELECT * FROM edificios;
select * from conjuntos,edificios;