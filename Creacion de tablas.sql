create schema sistema_ventas;

use sistema_ventas;
-- ------------------------------------------ TABLA TRABAJADOR ------------------------------------------
drop table if exists trabajador;
create table trabajador(
IdTrabajador char(8) not null,
Dni char(8) not null,
Nombres varchar(80),
Apellidos varchar (80),
Celular char(9),
Acceso varchar(20),
Usuario char(8),
Estado varchar(1),
Check(Estado in("1","2")),
Check (Acceso in("Administrador","Vendedor")),
primary key (IdTrabajador)
);

insert into trabajador values ("TBJ00001","12345678","Karen","Jugo","987654321","Administrador","Admin","1");
insert into trabajador values ("TBJ00002","12345678","Nicole","Torres","989954321","Vendedor","User1","1");
 
 select * from trabajador where usuario="Admin" and dni="12345678";
 
 -- ------------------------------------------ TABLA PRODUCTO ------------------------------------------
 drop table if exists producto;
create table producto(
IdProducto char(8) not null,
Descripcion varchar(255) ,
Precio double ,
Stock int ,
Estado varchar(15),



primary key (IdProducto),
check(Precio > 0),
Check(Estado in("1","2"))
);
select * from producto;



-- ------------------------------------------ TABLA CLIENTE ------------------------------------------
drop table if exists cliente;
create table cliente(
IdCliente char(8) not null,  
Dni char(8) not null,
Nombres varchar(80), 
Apellidos varchar (80),
Telefono char(9),
Direccion varchar(255),
Estado varchar(15),
Check(Estado in("1","2")),
primary key (IdCliente)
);

-- ------------------------------------------ TABLA VENTAS ------------------------------------------
drop table if exists venta;
create table venta(
IdVenta char(8) not null,
IdCliente char(8) not null,
IdTrabajador char(8) not null,
NumeroVenta varchar(200) not null, 
FechaVenta date not null,
Monto double not null,
Estado varchar(15) not null,
Check(Monto > 0),
Check(Estado in("1","2")),
primary key(IdVenta),
foreign key(IdCliente) references cliente(IdCliente) ,
foreign key(IdTrabajador) references trabajador(IdTrabajador)
);

-- ------------------------------------------ TABLA DETALLE VENTAS ------------------------------------------
drop table if exists detalleventas;
create table detalleventas(
IdDetalleVentas char(8) not null,
IdVenta char(8) not null,
IdProducto char(8) not null,
Cantidad int not null,
PrecioVenta double ,
Check (Cantidad >0),
primary key(IdDetalleVentas),
foreign key(IdVenta) references Venta(IdVenta),
foreign key(IdProducto) references producto(IdProducto)
);













