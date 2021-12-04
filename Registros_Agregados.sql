use sistema_ventas;

-------------------------------------- TABLA CLIENTE ------------------------------------------

insert into cliente values();
insert into cliente values('CLI00001','12345687','Laura','Torres','999636521','Jr. Ucayali N 388','1');
insert into cliente values('CLI00002','63584568','Jose Manuel','Quiro Mejia','996352521','Av Mariscal Caceres 1420','2');
insert into cliente values('CLI00003','85265687','Diana','Guevada Garcia','937456521','Jr.Callao 122','2');
select * from cliente;
-- ------------------------------------------ TABLA PRODUCTO ------------------------------------------

insert into producto values();
insert into producto values('PROD0001','BARBIE CAMPER DE BARBIE 3 EN 1',650.98,13,'1');
insert into producto values('PROD0002','LOL SURPRISE OMG WNTR CHILLMEOWBCAT',149.75,17,'1');
insert into producto values('PROD0003','Baby Alive Hora De Comer Castaña',67.88,17,'2');
insert into producto values('PROD0004','GAMES PICTIONARY MAN DOBLE RETO',65.50,19,'1');
insert into producto values('PROD0005','HOT WHEELS GARAGE EXTREMO',199.95,16,'2');
select * from producto;
call ListarVentas();
call ListarDetalleVentas();

-- ------------------------------------------ TABLA TRABAJADOR ------------------------------------------

insert into trabajador values ("TBJ00001","12345678","Karen","Jugo","987654321","Administrador","Admin","1");
insert into trabajador values ("TBJ00002","12345678","Nicole","Torres","989954321","Vendedor","User1","1");