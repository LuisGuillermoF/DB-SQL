create database store;

use store;

create table Tiendas(
id_tienda int auto_increment primary key not null,
nombre varchar(45),
direcion varchar(45),
ciudad varchar(45)
);

create table Productos(
id_producto int auto_increment primary key not null,
nombre varchar(45),
precio varchar(45),
category varchar(45)
);

create table Empleados(
id_tienda int,
id_empleado int auto_increment primary key not null,
nombre varchar(45),
cargo varchar(45),
salario varchar(45),
constraint fk_tienda foreign key (id_tienda) references Tiendas (id_tienda)
);


create table Ventas(
id_producto int,
id_tienda int,
id_venta int auto_increment primary key not null,
cantidad_venta int,
fecha_venta date,

constraint fk_tienda1 foreign key (id_tienda) references Tiendas (id_tienda),
constraint fk_producto foreign key (id_producto) references Productos (id_producto)
);


