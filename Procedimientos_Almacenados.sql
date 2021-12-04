
use sistema_ventas;

-- ------------------------------------------ PROCEDIMIENTOS TABLA PRODUCTOS ------------------------------------------
-- SP : ListarProductos
drop procedure if exists ListarProductos;
delimiter @@
create procedure ListarProductos()
begin
	select * from producto;
end @@
delimiter ;
call ListarProductos();

-- SP : BuscarProducto()
drop procedure if exists BuscarProducto;
delimiter @@
create procedure BuscarProducto(Id Char(8))
begin
	select * from producto where IdProducto = Id;
end @@
delimiter ;
call BuscarProducto('PROD0001');

#imagen
-- SP : InsertarProducto
drop procedure if exists InsertarProducto;
delimiter @@
create procedure InsertarProducto(Id char(8),Des varchar(255),Pre double,Sto int,Est varchar(14))
begin 
	insert into producto values(Id,Des,Pre,Sto,Est);
end @@
delimiter ;

call InsertarProducto ("PRO0001","TSDF", 30, 12, "1");

-- SP : ModificaProducto
drop procedure if exists ModificaProducto;
delimiter @@
create procedure ModificaProducto(Id char(8),Des varchar(255),Pre double,Sto int,Est varchar(14))
begin
	update producto set Descripcion=Des,Precio=Pre,Stock=Sto,Estado=Est where IdProducto = Id;
end @@
delimiter ;
call ModificaProducto('PROD0006','BATTLESHIP',65.97,10,'2');

-- SP : SuprimirProducto
drop procedure if exists SuprimirProducto;
delimiter @@
create procedure SuprimirProducto(Id char(8))
begin
	delete from producto where IdProducto = Id;
end @@
delimiter ;
call SuprimirProducto('PROD0006');

-- SP : GenerarCodigoProducto
drop procedure if exists GenerarCodigoProducto;
delimiter @@
create procedure GenerarCodigoProducto()
begin
	SELECT CONCAT("PROD",LPAD(CONVERT(CONVERT(RIGHT(IdProducto,4),SIGNED INTEGER)+1,CHAR),4,'0'))
		FROM producto ORDER BY 1 DESC LIMIT 0,1;
end @@
delimiter ;
call GenerarCodigoProducto();

-- ------------------------------------------ PROCEDIMIENTOS TABLA CLIENTE ------------------------------------------
-- SP : ListarClientes
drop procedure if exists ListarClientes;
delimiter @@
create procedure ListarClientes()
begin
	select * from cliente;
end @@
delimiter ;
call ListarClientes();

-- SP : BuscarCliente()
drop procedure if exists BuscarCliente;
delimiter @@
create procedure BuscarCliente(Id Char(8))
begin
	select * from cliente where IdCliente = Id;
end @@
delimiter ;
call BuscarCliente('CLI00003');

-- SP : InsertarCliente
drop procedure if exists InsertarCliente;
delimiter @@
create procedure InsertarCliente(Id char(8),Dni char(8),Nom varchar(80),Ape varchar(80),Tel char(9),Dir varchar(250),Est char(1))
begin 
	insert into cliente values(Id,Dni,Nom,Ape,Tel,Dir,Est);
end @@
delimiter ;
call InsertarCliente('CLI00004','88639941','Luis','Garcia Ramirez','932178654','En algun lugar del mundo','1');

-- SP : ModificaCliente
drop procedure if exists ModificaCliente;
delimiter @@
create procedure ModificaCliente(Id char(8),Dni char(8),Nom varchar(80),Ape varchar(80),Tel char(9),Dir varchar(250),Est char(1))
begin
	update cliente set Dni=dni,Nombres=Nom,Apellidos=Ape,Telefono=Tel,Direccion=Dir,Estado=Est where IdCliente = Id;
end @@
delimiter ;
call ModificaCliente('CLI00004','88639941','Luis','Garcia Ramirez','932178654','En algun lugar del mundo','2');

-- SP : SuprimirCliente
drop procedure if exists SuprimirCliente;
delimiter @@
create procedure SuprimirCliente(Id char(8))
begin
	delete from cliente where IdCliente = Id;
end @@
delimiter ;
call SuprimirCliente('CLI00004');

-- SP : GenerarCodigoCliente
drop procedure if exists GenerarCodigoCliente;
delimiter @@
create procedure GenerarCodigoCliente()
begin
	SELECT CONCAT("CLI",LPAD(CONVERT(CONVERT(RIGHT(IdCliente,5),SIGNED INTEGER)+1,CHAR),5,'0'))
		FROM cliente ORDER BY 1 DESC LIMIT 0,1;
end @@
delimiter ;
call GenerarCodigoCliente();

-- ------------------------------------------ PROCEDIMIENTOS TABLA TRABAJADOR ------------------------------------------
-- SP : ListarVendedores
drop procedure if exists ListarVendedores;
delimiter @@
create procedure ListarVendedores()
begin
	select * from trabajador;
end @@
delimiter ;
call ListarVendedores();

-- SP : BuscarVendedor()
drop procedure if exists BuscarVendedor;
delimiter @@
create procedure BuscarVendedor(Id Char(8))
begin
	select * from trabajador where idtrabajador = Id;
end @@
delimiter ;
call BuscarVendedor('TBJ00001');

-- SP : InsertarVendedor
drop procedure if exists InsertarVendedor;
delimiter @@
create procedure InsertarVendedor(Id char(8),Dni char(8),Nom varchar(80),Ape varchar(80),Tel char(9),Acc varchar(20),Usu char(8),Est char(1))
begin 
	insert into trabajador values(Id,Dni,Nom,Ape,Tel,Acc,Usu,Est);
end @@
delimiter ;
call InsertarVendedor('TBJ00005','22968574','Carolina','Garcia Ramirez','932178654','Administrador','EMP00004','1' );

-- SP : ModificaVendedor
drop procedure if exists ModificaVendedor;
delimiter @@
create procedure ModificaVendedor(Id char(8),Dni char(8),Nom varchar(80),Ape varchar(80),Tel char(9),Acc varchar(20),Usu char(8),Est char(1))
begin
	update trabajador set Dni=dni,Nombres=Nom,Apellidos=Ape,Celular=Tel,Acceso=Acc,Usuario=Usu,Estado=Est where idtrabajador = Id;
end @@
delimiter ;
call ModificaVendedor('TBJ00005','22968574','Cna','Garcia Ramirez','932178654','Administrador','EMP00004','1' );

-- SP : SuprimirVendedor
drop procedure if exists SuprimirVendedor;
delimiter @@
create procedure SuprimirVendedor(Id char(8))
begin
	delete from trabajador where Idtrabajador = Id;
end @@
delimiter ;
call SuprimirVendedor('VEN00004');

-- SP : GenerarCodigoVendedor
drop procedure if exists GenerarCodigoVendedor;
delimiter @@
create procedure GenerarCodigoVendedor()
begin
	SELECT CONCAT("TBJ",LPAD(CONVERT(CONVERT(RIGHT(Idtrabajador,5),SIGNED INTEGER)+1,CHAR),5,'0'))
		FROM trabajador ORDER BY 1 DESC LIMIT 0,1;
end @@
delimiter ;
call GenerarCodigoVendedor();

select  * from detalleventas;
-- ------------------------------------------ PROCEDIMIENTOS TABLA VENTA ------------------------------------------
-- SP : ListarVentas
drop procedure if exists ListarVentas;
delimiter @@
create procedure ListarVentas()
begin
	select * from venta;
end @@
delimiter ;
call ListarVentas();

-- SP : InsertarVenta
drop procedure if exists InsertarVenta;
delimiter @@
create procedure InsertarVenta(ven char(8),cli char(8),vend char(8),num varchar(255),fec date,mon double,est varchar(14))
begin 
	insert into venta values(ven,cli,vend,num,fec,mon,est);
end @@
delimiter ;

-- SP : GenerarCodigoVenta
drop procedure if exists GenerarCodigoVenta;
delimiter @@
create procedure GenerarCodigoVenta()
begin
	SELECT CONCAT("VEN",LPAD(CONVERT(CONVERT(RIGHT(IdVenta,5),SIGNED INTEGER)+1,CHAR),5,'0'))
		FROM VENTA ORDER BY 1 DESC LIMIT 0,1;
end @@
delimiter ;
call GenerarCodigoVenta();

-- SP : GenerarCodigoCBO
drop procedure if exists GenerarCodigoCBP;
delimiter @@
create procedure GenerarCodigoCBP()
begin
	SELECT CONCAT("CBO",LPAD(CONVERT(CONVERT(RIGHT(NumeroVenta,5),SIGNED INTEGER)+1,CHAR),5,'0'))
		FROM VENTA ORDER BY 1 DESC LIMIT 0,1;
end @@
delimiter ;
call GenerarCodigoCBP();

-- ------------------------------------------ PROCEDIMIENTOS TABLA DETALLE VENTAS ------------------------------------------
-- SP : InsertarDetalleVenta
drop procedure if exists InsertarDetalleVenta;
delimiter @@
create procedure InsertarDetalleVenta(detven char(8),ven char(8),pro char(8),cant int,pre double)
begin 
	insert into detalleventas values(detven,ven,pro,cant,pre);
end @@
delimiter ;

-- SP : ListarDetalleVentas
drop procedure if exists ListarDetalleVentas;
delimiter @@
create procedure ListarDetalleVentas()
begin
	select * from detalleventas;
end @@
delimiter ;
call ListarDetalleVentas();

-- SP : GenerarCodigoVenta
drop procedure if exists GenerarCodigoDetalleVenta;
delimiter @@
create procedure GenerarCodigoDetalleVenta()
begin
	SELECT CONCAT("DTV",LPAD(CONVERT(CONVERT(RIGHT(IdDetalleVentas,5),SIGNED INTEGER)+1,CHAR),5,'0'))
		FROM detalleventas ORDER BY 1 DESC LIMIT 0,1;
end @@
delimiter ;
call GenerarCodigoDetalleVenta();

-- ------------------------------------------------------------------------------------------------------------------
-- SP : Listado por fechas
drop procedure if exists fechas;
delimiter @@
CREATE PROCEDURE fechas
   ( Desde date,
    Hasta date)
    begin
	select * from venta where FechaVenta BETWEEN Desde AND Hasta;
end @@
delimiter ;
call fechas('2022-01-01', '2022-12-31');
select * from venta;