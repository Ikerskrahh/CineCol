create database CineCol;
use CineCol;

create table Director(
id_director int auto_increment primary key,
nombre varchar(50),
apellido varchar(50),
edad int,
fecha_nacimiento datetime,
premios varchar(200),
nominaciones varchar(200)
);

create table Cajero(
id_cajero int auto_increment primary key,
nombre varchar(50),
apellido varchar(50)
);

create table Pelicula(
id_pelicula int auto_increment primary key,
nombre varchar(100),
genero varchar(50),
id_director int not null,
año_estreno datetime,
duracion varchar(50),
foreign key (id_director) references Director(id_director)
);

create table Venta(
id_venta int auto_increment primary key,
id_cajero int not null,
id_pelicula int not null,
sala int not null,
fecha_venta datetime,
hora_funcion time,
foreign key (id_cajero) references Cajero(id_cajero),
foreign key (id_pelicula) references Pelicula(id_pelicula)
);
