create database CineCol;
use CineCol;

create table Director(
id_director int auto_increment primary key,
nombre varchar(50),
apellido varchar(50),
edad int,
fecha_nacimiento datetime,
nacionalidad varchar(50)
);

create table Cajero(
id_cajero int auto_increment primary key,
nombre varchar(50),
apellido varchar(50)
);

create table Genero(
id_genero int auto_increment primary key, 
nombre_genero varchar(50)
);

create table Pelicula(
id_pelicula int auto_increment primary key,
titulo varchar(100),
id_director int not null,
año_estreno datetime,
duracion varchar(50),
id_genero int not null,
foreign key (id_director) references Director(id_director),
foreign key (id_genero) references Genero(id_genero)
);

create table Sala(
id_sala int auto_increment primary key,
nombre_sala varchar(50),
capacidad int not null check(capacidad>0)
);

create table Funcion(
id_funcion int auto_increment primary key,
id_sala int not null,
id_pelicula int not null,
fecha datetime, 
hora_funcion time,
foreign key (id_sala) references Sala(id_sala),
foreign key (id_pelicula) references Pelicula(id_sala)
);

create table Venta(
id_venta int auto_increment primary key,
id_cajero int not null,
id_funcion int not null,
sala int not null,
fecha_venta datetime,
foreign key (id_cajero) references Cajero(id_cajero),
foreign key (id_funcion) references Funcion(id_funcion)
);
