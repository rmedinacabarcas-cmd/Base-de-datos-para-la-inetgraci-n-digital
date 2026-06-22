CREATE DATABASE Material_de_Arriendo ;

USE Material_de_Arriendo ;

-----------------TABLA DE CLIENTES---------------


CREATE TABLE Clientes (
  ID INT ,
  Nombre VARCHAR (45),
  Telefono VARCHAR (30),
  Direccion VARCHAR (120),
  Material VARCHAR (7000),
  ID_pago VARCHAR(20),
  Fecha DATE ,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_pago) REFERENCES Pagos(ID)
  );

-----------TABLA DE DISTRUBUIDORA-------------
CREATE TABLE Distribuidora (
   ID VARCHAR (34),
   Nombre VARCHAR (30),
   Codigo INT,
   PRIMARY KEY (ID)

   );



---------------TABLA DE MATERIAL----------
CREATE TABLE Material (
  ID INT ,
  ID_Distribuidora VARCHAR (34),
  Nombre VARCHAR(30),
  Cantidad VARCHAR(1000),
  Precio_por_unidad DECIMAL(12,3),
  PRIMARY KEY (ID),
  FOREIGN KEY (ID_Distribuidora) REFERENCES Distribuidora(ID)
    );
  
-----------------TABLA DE PAGOS-----------------
CREATE TABLE Pagos (
  ID VARCHAR (20),
  Forma_de_pago VARCHAR (60),
  Total INT ,
  PRIMARY KEY (ID)

);




------------DATOS SIMULADOS--------------------------
-- ============================================
-- DATOS SIMULADOS PARA SQL SERVER
-- Orden de insercion respeta las llaves foraneas:
-- 1. Distribuidora  2. Material  3. Pagos  4. Clientes
-- ============================================

-- ===== DISTRIBUIDORA (7 registros) =====
INSERT INTO Distribuidora (ID, Nombre, Codigo) VALUES ('DIST-01', N'Ferreteria El Tornillo', 101);
INSERT INTO Distribuidora (ID, Nombre, Codigo) VALUES ('DIST-02', N'Materiales San Jose', 102);
INSERT INTO Distribuidora (ID, Nombre, Codigo) VALUES ('DIST-03', N'Andamios del Norte', 103);
INSERT INTO Distribuidora (ID, Nombre, Codigo) VALUES ('DIST-04', N'ConstruExpress', 104);
INSERT INTO Distribuidora (ID, Nombre, Codigo) VALUES ('DIST-05', N'Distribuidora La Roca', 105);
INSERT INTO Distribuidora (ID, Nombre, Codigo) VALUES ('DIST-06', N'Equipos y Herramientas SAS', 106);
INSERT INTO Distribuidora (ID, Nombre, Codigo) VALUES ('DIST-07', N'Insumos Industriales  Caribe', 107);

-- ===== MATERIAL (24 registros) =====
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (1, 'DIST-06', N'Tablas', '62', 29059.056);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (2, 'DIST-03', N'Tabas cortas', '130', 195943.442);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (3, 'DIST-06', N'Grapas de 12', '57', 577780.968);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (4, 'DIST-05', N'Grapas de 15', '49', 505194.695);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (5, 'DIST-01', N'Grapas de U', '20', 86891.392);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (6, 'DIST-02', N'Cuerpo de andamio', '263', 514899.77);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (7, 'DIST-05', N'Tijeras del cuerpo de andamio', '106', 610888.514);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (8, 'DIST-06', N'Cuerpo de burro', '284', 361235.689);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (9, 'DIST-04', N'Tablon', '147', 689540.445);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (10, 'DIST-01', N'Pulidora', '86', 595833.371);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (11, 'DIST-03', N'Taladro', '147', 138913.739);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (12, 'DIST-07', N'Trompo de cemento', '177', 94061.053);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (13, 'DIST-04', N'Formaletas de 20x20', '54', 310260.638);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (14, 'DIST-03', N'Formaletas de 25x25', '140', 687602.006);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (15, 'DIST-06', N'Formaletas de 30x30', '240', 459504.053);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (16, 'DIST-04', N'Pizon', '45', 472818.212);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (17, 'DIST-07', N'Cortadora grande', '190', 494130.506);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (18, 'DIST-06', N'Cortadora pequena', '40', 46584.131);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (19, 'DIST-02', N'Pico', '153', 837556.52);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (20, 'DIST-07', N'Carretilla', '124', 737579.247);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (21, 'DIST-04', N'Mona', '147', 389771.475);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (22, 'DIST-07', N'Cerchas', '191', 144954.75);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (23, 'DIST-03', N'Gatos', '112', 572287.497);
INSERT INTO Material (ID, ID_Distribuidora, Nombre, Cantidad, Precio_por_unidad) VALUES (24, 'DIST-06', N'Compresor de pintura', '41', 520888.307);

-- ===== PAGOS (120 registros) =====
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0001', N'Transferencia', 2073622);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0002', N'Transferencia', 3897719);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0003', N'Tarjeta de debito', 2284486);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0004', N'Credito a 30 dias', 1862265);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0005', N'Tarjeta de credito', 489241);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0006', N'Transferencia', 289276);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0007', N'Tarjeta de credito', 3385214);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0008', N'Tarjeta de credito', 575230);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0009', N'Transferencia', 2659709);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0010', N'Transferencia', 4207855);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0011', N'Tarjeta de debito', 3869128);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0012', N'Transferencia', 2241975);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0013', N'Transferencia', 2088861);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0014', N'Credito a 30 dias', 2224036);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0015', N'Credito a 30 dias', 3613963);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0016', N'Credito a 30 dias', 3370414);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0017', N'Tarjeta de credito', 1859795);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0018', N'Transferencia', 4294216);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0019', N'Tarjeta de debito', 782603);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0020', N'Efectivo', 939803);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0021', N'Transferencia', 1362026);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0022', N'Tarjeta de debito', 552909);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0023', N'Tarjeta de debito', 3221254);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0024', N'Credito a 30 dias', 3946287);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0025', N'Credito a 30 dias', 2129014);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0026', N'Credito a 30 dias', 116309);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0027', N'Efectivo', 2258291);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0028', N'Tarjeta de credito', 955767);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0029', N'Tarjeta de credito', 3667075);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0030', N'Transferencia', 3826110);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0031', N'Efectivo', 2229467);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0032', N'Credito a 30 dias', 1518640);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0033', N'Credito a 30 dias', 912638);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0034', N'Tarjeta de credito', 4278584);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0035', N'Credito a 30 dias', 1688587);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0036', N'Transferencia', 3156616);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0037', N'Transferencia', 4468929);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0038', N'Efectivo', 2739218);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0039', N'Tarjeta de debito', 183382);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0040', N'Efectivo', 3064903);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0041', N'Tarjeta de credito', 2028671);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0042', N'Efectivo', 2040577);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0043', N'Credito a 30 dias', 680662);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0044', N'Efectivo', 4096783);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0045', N'Efectivo', 4488663);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0046', N'Transferencia', 1097025);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0047', N'Tarjeta de debito', 1405185);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0048', N'Tarjeta de credito', 4446448);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0049', N'Credito a 30 dias', 3569538);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0050', N'Transferencia', 1707377);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0051', N'Tarjeta de credito', 3366989);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0052', N'Tarjeta de credito', 3695049);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0053', N'Credito a 30 dias', 3807340);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0054', N'Efectivo', 2099583);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0055', N'Transferencia', 557088);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0056', N'Tarjeta de credito', 196448);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0057', N'Credito a 30 dias', 1950342);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0058', N'Credito a 30 dias', 1867317);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0059', N'Efectivo', 615533);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0060', N'Efectivo', 1940502);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0061', N'Efectivo', 283510);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0062', N'Tarjeta de credito', 614394);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0063', N'Credito a 30 dias', 2016527);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0064', N'Tarjeta de credito', 4091951);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0065', N'Transferencia', 1129912);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0066', N'Credito a 30 dias', 3985051);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0067', N'Transferencia', 3987584);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0068', N'Tarjeta de debito', 1617274);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0069', N'Efectivo', 833114);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0070', N'Tarjeta de debito', 2992063);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0071', N'Tarjeta de debito', 3468575);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0072', N'Tarjeta de debito', 474420);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0073', N'Efectivo', 528455);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0074', N'Tarjeta de debito', 2866276);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0075', N'Efectivo', 2105880);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0076', N'Transferencia', 1615587);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0077', N'Credito a 30 dias', 3783243);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0078', N'Transferencia', 3558999);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0079', N'Transferencia', 2356606);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0080', N'Tarjeta de debito', 2115528);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0081', N'Efectivo', 3737250);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0082', N'Credito a 30 dias', 841317);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0083', N'Efectivo', 143797);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0084', N'Efectivo', 2002894);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0085', N'Transferencia', 3429248);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0086', N'Tarjeta de debito', 4057927);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0087', N'Transferencia', 3384169);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0088', N'Efectivo', 1401076);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0089', N'Tarjeta de debito', 38080);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0090', N'Tarjeta de debito', 2244684);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0091', N'Tarjeta de debito', 2412843);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0092', N'Tarjeta de debito', 4102495);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0093', N'Transferencia', 1612978);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0094', N'Tarjeta de credito', 1846207);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0095', N'Efectivo', 531349);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0096', N'Tarjeta de credito', 499537);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0097', N'Efectivo', 4019591);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0098', N'Credito a 30 dias', 4475408);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0099', N'Transferencia', 497140);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0100', N'Credito a 30 dias', 692023);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0101', N'Transferencia', 594798);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0102', N'Credito a 30 dias', 590097);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0103', N'Transferencia', 3407114);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0104', N'Efectivo', 2085404);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0105', N'Credito a 30 dias', 353377);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0106', N'Credito a 30 dias', 707726);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0107', N'Tarjeta de debito', 4405419);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0108', N'Tarjeta de credito', 2207461);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0109', N'Transferencia', 2655565);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0110', N'Transferencia', 2248136);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0111', N'Tarjeta de debito', 1117886);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0112', N'Tarjeta de credito', 3855477);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0113', N'Tarjeta de credito', 628535);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0114', N'Efectivo', 3864377);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0115', N'Credito a 30 dias', 858703);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0116', N'Efectivo', 1808067);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0117', N'Credito a 30 dias', 2244662);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0118', N'Transferencia', 2947698);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0119', N'Efectivo', 2069206);
INSERT INTO Pagos (ID, Forma_de_pago, Total) VALUES ('PAG-0120', N'Tarjeta de credito', 2410647);

-- ===== CLIENTES (120 registros) =====
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (1, N'Diana Rojas', '3186075395', N'Diagonal 84 #68-2, Villa Concha', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0001', '2025-11-10');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (2, N'Laura Torres', '3042936571', N'Calle 71 #20-35, Mamatoco', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0002', '2026-01-04');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (3, N'Julian Vargas', '3049479356', N'Transversal 33 #7-12, Bonda', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0003', '2024-02-15');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (4, N'Carlos Ramirez', '3125394880', N'Carrera 57 #71-91, Bonda', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0004', '2024-01-10');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (5, N'Laura Torres', '3021604451', N'Avenida 75 #71-19, Bonda', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0005', '2024-02-12');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (6, N'Paula Mendoza', '3107003042', N'Carrera 88 #32-86, Bastidas', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0006', '2026-03-09');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (7, N'Daniela Reyes', '3193592974', N'Carrera 21 #23-53, El Prado', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0007', '2026-01-24');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (8, N'Julian Vargas', '3135476257', N'Carrera 90 #14-49, El Prado', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0008', '2024-08-15');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (9, N'Felipe Castro', '3156120253', N'Carrera 29 #4-85, Manzanares', N'Mona, Compresor de pintura, Grapas de U', 'PAG-0009', '2024-12-02');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (10, N'Sergio Lopez', '3046891254', N'Diagonal 52 #87-69, Gaira', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0010', '2024-04-28');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (11, N'Sergio Lopez', '3095453786', N'Calle 14 #77-56, Gaira', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0011', '2025-03-22');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (12, N'Alejandra Pinzon', '3217462506', N'Diagonal 25 #33-6, Bonda', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0012', '2025-06-16');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (13, N'Daniela Reyes', '3237110622', N'Transversal 9 #86-43, El Bosque', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0013', '2025-11-10');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (14, N'Laura Torres', '3249508103', N'Avenida 86 #53-42, Bonda', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0014', '2025-07-21');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (15, N'Andres Gomez', '3067361002', N'Carrera 79 #73-39, Bonda', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0015', '2026-05-03');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (16, N'Carlos Ramirez', '3144526280', N'Transversal 75 #78-84, Gaira', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0016', '2025-03-28');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (17, N'Esteban Morales', '3239576076', N'Transversal 22 #85-11, Mamatoco', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0017', '2025-11-10');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (18, N'Alejandra Pinzon', '3114940441', N'Avenida 29 #26-19, El Prado', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0018', '2024-09-07');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (19, N'Sofia Jimenez', '3218640615', N'Transversal 81 #74-25, Bonda', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0019', '2025-02-13');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (20, N'Camila Diaz', '3002788238', N'Transversal 29 #23-90, Villa Concha', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0020', '2024-02-21');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (21, N'Daniela Reyes', '3018658158', N'Carrera 60 #86-68, Villa Concha', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0021', '2026-02-12');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (22, N'Esteban Morales', '3288159521', N'Diagonal 58 #21-96, Taganga', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0022', '2024-09-22');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (23, N'Camila Diaz', '3249745959', N'Transversal 81 #31-36, Taganga', N'Tablon, Pizon, Carretilla', 'PAG-0023', '2025-12-31');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (24, N'Paula Mendoza', '3046634586', N'Avenida 70 #11-18, Pescaito', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0024', '2025-01-27');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (25, N'Andres Gomez', '3232077581', N'Transversal 53 #43-70, Taganga', N'Mona, Compresor de pintura, Grapas de U', 'PAG-0025', '2024-03-04');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (26, N'Felipe Castro', '3161327691', N'Diagonal 49 #62-1, Gaira', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0026', '2026-02-10');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (27, N'Ricardo Pena', '3184700025', N'Transversal 29 #35-56, Taganga', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0027', '2025-02-02');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (28, N'Julian Vargas', '3263768991', N'Transversal 17 #80-69, El Prado', N'Mona, Compresor de pintura, Grapas de U', 'PAG-0028', '2025-08-29');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (29, N'Hector Suarez', '3202408404', N'Transversal 18 #60-24, El Prado', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0029', '2025-01-23');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (30, N'Julian Vargas', '3076483562', N'Avenida 49 #36-97, Bonda', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0030', '2026-05-04');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (31, N'Jose Martinez', '3101873851', N'Avenida 29 #84-9, El Prado', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0031', '2024-09-10');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (32, N'Felipe Castro', '3093556551', N'Carrera 17 #61-86, Bastidas', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0032', '2025-04-21');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (33, N'Sergio Lopez', '3122921542', N'Carrera 40 #14-75, El Prado', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0033', '2025-08-12');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (34, N'Ricardo Pena', '3132275009', N'Diagonal 89 #81-32, Bastidas', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0034', '2026-05-20');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (35, N'Alejandra Pinzon', '3091689025', N'Avenida 69 #55-85, Gaira', N'Tablon, Pizon, Carretilla', 'PAG-0035', '2025-06-02');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (36, N'Julian Vargas', '3069224219', N'Calle 56 #47-82, Taganga', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0036', '2025-03-21');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (37, N'Diana Rojas', '3285531230', N'Diagonal 69 #62-60, Bonda', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0037', '2024-11-26');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (38, N'Camila Diaz', '3048563202', N'Carrera 60 #73-79, Bonda', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0038', '2024-01-30');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (39, N'Sofia Jimenez', '3129179730', N'Carrera 46 #34-44, Mamatoco', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0039', '2025-07-23');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (40, N'Carlos Ramirez', '3232436347', N'Carrera 53 #63-72, Manzanares', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0040', '2025-10-23');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (41, N'Sofia Jimenez', '3102561176', N'Avenida 29 #52-89, Manzanares', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0041', '2025-11-10');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (42, N'Hector Suarez', '3179907391', N'Avenida 55 #96-71, Gaira', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0042', '2025-12-20');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (43, N'Esteban Morales', '3145217853', N'Carrera 16 #93-25, Gaira', N'Tablon, Pizon, Carretilla', 'PAG-0043', '2026-01-30');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (44, N'Daniela Reyes', '3224213524', N'Carrera 62 #36-93, El Bosque', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0044', '2025-09-03');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (45, N'Paula Mendoza', '3035970190', N'Carrera 47 #23-39, El Prado', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0045', '2024-05-09');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (46, N'Sergio Lopez', '3005901239', N'Carrera 82 #97-63, Bastidas', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0046', '2025-08-10');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (47, N'Paula Mendoza', '3178389840', N'Avenida 24 #7-33, Taganga', N'Tablon, Pizon, Carretilla', 'PAG-0047', '2026-04-21');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (48, N'Jose Martinez', '3172242892', N'Diagonal 81 #88-7, Pescaito', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0048', '2026-04-10');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (49, N'Hector Suarez', '3115163953', N'Calle 72 #98-54, El Bosque', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0049', '2026-03-05');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (50, N'Mauricio Ortiz', '3178427625', N'Avenida 76 #55-40, El Bosque', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0050', '2025-09-16');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (51, N'Laura Torres', '3035440025', N'Calle 21 #31-23, Villa Concha', N'Tablon, Pizon, Carretilla', 'PAG-0051', '2024-06-09');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (52, N'Carlos Ramirez', '3178883823', N'Avenida 5 #30-37, Mamatoco', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0052', '2024-03-13');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (53, N'Camila Diaz', '3194318855', N'Transversal 15 #70-29, Pescaito', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0053', '2026-04-26');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (54, N'Andres Gomez', '3003783722', N'Avenida 77 #96-73, Mamatoco', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0054', '2024-05-07');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (55, N'Esteban Morales', '3247752972', N'Avenida 65 #70-64, Taganga', N'Tablon, Pizon, Carretilla', 'PAG-0055', '2025-09-04');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (56, N'Maria Gonzalez', '3155200476', N'Calle 12 #30-87, El Bosque', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0056', '2026-02-22');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (57, N'Sergio Lopez', '3203939212', N'Transversal 67 #84-57, Mamatoco', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0057', '2025-08-22');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (58, N'Valentina Cruz', '3272530793', N'Transversal 45 #53-43, Gaira', N'Tablon, Pizon, Carretilla', 'PAG-0058', '2026-05-28');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (59, N'Diana Rojas', '3169312590', N'Avenida 85 #52-98, Villa Concha', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0059', '2025-04-10');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (60, N'Jose Martinez', '3146423634', N'Calle 52 #66-1, Villa Concha', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0060', '2025-02-27');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (61, N'Maria Gonzalez', '3087069650', N'Diagonal 64 #81-57, El Prado', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0061', '2024-09-30');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (62, N'Daniela Reyes', '3048350368', N'Transversal 16 #4-81, El Bosque', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0062', '2025-12-27');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (63, N'Diana Rojas', '3181229419', N'Diagonal 53 #12-29, Bastidas', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0063', '2024-04-30');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (64, N'Andres Gomez', '3149537455', N'Avenida 54 #62-61, Manzanares', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0064', '2025-07-18');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (65, N'Andres Gomez', '3139526867', N'Carrera 9 #36-99, Bonda', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0065', '2026-03-17');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (66, N'Mauricio Ortiz', '3105745250', N'Avenida 76 #75-85, Taganga', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0066', '2025-04-02');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (67, N'Daniela Reyes', '3156577416', N'Diagonal 70 #49-59, Gaira', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0067', '2025-12-15');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (68, N'Camila Diaz', '3264918527', N'Transversal 6 #41-96, Taganga', N'Mona, Compresor de pintura, Grapas de U', 'PAG-0068', '2025-01-30');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (69, N'Andres Gomez', '3103118060', N'Diagonal 76 #43-13, Taganga', N'Tablon, Pizon, Carretilla', 'PAG-0069', '2025-06-22');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (70, N'Esteban Morales', '3027878299', N'Carrera 10 #61-34, Gaira', N'Mona, Compresor de pintura, Grapas de U', 'PAG-0070', '2025-10-27');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (71, N'Jose Martinez', '3187375499', N'Avenida 81 #92-98, Taganga', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0071', '2024-02-06');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (72, N'Alejandra Pinzon', '3035821419', N'Carrera 12 #56-13, Bastidas', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0072', '2024-06-19');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (73, N'Paula Mendoza', '3006442103', N'Calle 38 #46-48, Bonda', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0073', '2024-09-07');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (74, N'Mauricio Ortiz', '3194020853', N'Carrera 23 #11-79, Bonda', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0074', '2025-05-24');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (75, N'Hector Suarez', '3038736811', N'Avenida 59 #33-86, El Prado', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0075', '2024-10-21');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (76, N'Daniela Reyes', '3018410995', N'Avenida 76 #39-82, Bonda', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0076', '2025-04-12');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (77, N'Paula Mendoza', '3069106886', N'Calle 31 #49-74, Gaira', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0077', '2025-12-17');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (78, N'Paula Mendoza', '3065605016', N'Calle 73 #88-96, El Prado', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0078', '2026-05-02');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (79, N'Paula Mendoza', '3096910964', N'Carrera 82 #25-80, Mamatoco', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0079', '2025-10-05');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (80, N'Laura Torres', '3206183033', N'Transversal 5 #75-47, Pescaito', N'Tablon, Pizon, Carretilla', 'PAG-0080', '2024-10-29');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (81, N'Julian Vargas', '3263946751', N'Carrera 17 #70-47, Villa Concha', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0081', '2024-10-06');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (82, N'Diana Rojas', '3175951651', N'Avenida 15 #60-10, Pescaito', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0082', '2026-05-30');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (83, N'Ricardo Pena', '3252515030', N'Transversal 2 #34-69, Bastidas', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0083', '2025-01-12');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (84, N'Sergio Lopez', '3267232293', N'Calle 87 #30-61, El Prado', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0084', '2024-12-01');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (85, N'Alejandra Pinzon', '3018789116', N'Avenida 84 #53-15, Pescaito', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0085', '2024-02-08');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (86, N'Paula Mendoza', '3112630611', N'Carrera 69 #18-50, Taganga', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0086', '2025-11-17');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (87, N'Daniela Reyes', '3193592464', N'Transversal 84 #13-63, El Bosque', N'Mona, Compresor de pintura, Grapas de U', 'PAG-0087', '2024-10-13');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (88, N'Maria Gonzalez', '3254645180', N'Transversal 57 #31-47, Bastidas', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0088', '2025-07-11');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (89, N'Natalia Herrera', '3065628522', N'Carrera 16 #59-12, Manzanares', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0089', '2024-02-21');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (90, N'Julian Vargas', '3024442778', N'Calle 71 #27-76, Manzanares', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0090', '2024-12-02');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (91, N'Andres Gomez', '3205651899', N'Carrera 17 #70-33, Pescaito', N'Tablon, Pizon, Carretilla', 'PAG-0091', '2025-11-07');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (92, N'Carlos Ramirez', '3007010308', N'Carrera 76 #42-3, Pescaito', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0092', '2024-02-23');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (93, N'Andres Gomez', '3269826250', N'Calle 9 #61-58, Gaira', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0093', '2025-08-30');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (94, N'Laura Torres', '3184716988', N'Diagonal 6 #94-85, Villa Concha', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0094', '2025-04-14');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (95, N'Carlos Ramirez', '3077738019', N'Transversal 88 #14-63, Taganga', N'Tablon, Pizon, Carretilla', 'PAG-0095', '2024-03-23');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (96, N'Julian Vargas', '3222101965', N'Carrera 36 #80-82, El Bosque', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0096', '2025-12-30');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (97, N'Julian Vargas', '3199901266', N'Avenida 59 #65-78, Bonda', N'Tablon, Pizon, Carretilla', 'PAG-0097', '2026-03-23');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (98, N'Laura Torres', '3284607488', N'Transversal 58 #30-53, Gaira', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0098', '2025-02-12');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (99, N'Valentina Cruz', '3216243691', N'Transversal 41 #86-33, Gaira', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0099', '2025-12-04');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (100, N'Sofia Jimenez', '3012432176', N'Calle 56 #13-96, Gaira', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0100', '2025-07-23');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (101, N'Maria Gonzalez', '3286530541', N'Calle 53 #46-86, Bonda', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0101', '2024-10-21');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (102, N'Alejandra Pinzon', '3152738129', N'Diagonal 65 #28-20, Taganga', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0102', '2026-05-17');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (103, N'Laura Torres', '3187166651', N'Calle 36 #74-29, Bonda', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0103', '2026-02-24');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (104, N'Alejandra Pinzon', '3281440466', N'Diagonal 85 #89-35, El Prado', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0104', '2024-10-06');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (105, N'Paula Mendoza', '3151102438', N'Carrera 19 #73-85, Bonda', N'Tablon, Pizon, Carretilla', 'PAG-0105', '2024-05-25');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (106, N'Carlos Ramirez', '3084609330', N'Transversal 54 #59-44, Pescaito', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0106', '2024-11-15');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (107, N'Julian Vargas', '3292425342', N'Calle 20 #21-97, El Bosque', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0107', '2025-11-21');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (108, N'Jose Martinez', '3178113787', N'Transversal 78 #57-54, Mamatoco', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0108', '2026-02-12');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (109, N'Mauricio Ortiz', '3058212753', N'Calle 37 #87-87, El Bosque', N'Formaletas de 25x25, Formaletas de 30x30', 'PAG-0109', '2025-06-23');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (110, N'Paula Mendoza', '3037631419', N'Diagonal 8 #1-27, Mamatoco', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0110', '2026-02-24');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (111, N'Andres Gomez', '3146504979', N'Calle 1 #64-96, Bonda', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0111', '2024-05-12');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (112, N'Ricardo Pena', '3239393009', N'Diagonal 86 #46-10, Bonda', N'Tablas, Grapas de 12, Cuerpo de andamio', 'PAG-0112', '2025-03-22');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (113, N'Carlos Ramirez', '3116252285', N'Diagonal 55 #74-52, Bonda', N'Cuerpo de burro, Tijeras del cuerpo de andamio', 'PAG-0113', '2024-04-27');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (114, N'Ricardo Pena', '3053883553', N'Diagonal 59 #89-47, Bastidas', N'Mona, Compresor de pintura, Grapas de U', 'PAG-0114', '2026-05-14');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (115, N'Laura Torres', '3067718433', N'Diagonal 11 #51-40, Gaira', N'Taladro, Pulidora, Trompo de cemento', 'PAG-0115', '2024-12-07');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (116, N'Diana Rojas', '3082913049', N'Diagonal 66 #25-45, Gaira', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0116', '2024-08-29');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (117, N'Laura Torres', '3044309671', N'Carrera 78 #20-98, Bastidas', N'Formaletas de 20x20, Gatos, Cerchas', 'PAG-0117', '2026-03-02');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (118, N'Sofia Jimenez', '3198531380', N'Diagonal 83 #82-80, Gaira', N'Cortadora grande, Cortadora pequena, Pico', 'PAG-0118', '2024-06-03');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (119, N'Esteban Morales', '3078419020', N'Avenida 36 #76-8, Gaira', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0119', '2024-03-16');
INSERT INTO Clientes (ID, Nombre, Telefono, Direccion, Material, ID_pago, Fecha) VALUES (120, N'Paula Mendoza', '3171630944', N'Calle 48 #37-10, Bastidas', N'Grapas de 15, Tablas, Tabas cortas', 'PAG-0120', '2025-01-28');
SELECT * FROM Clientes;