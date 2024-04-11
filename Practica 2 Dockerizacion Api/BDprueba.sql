use master
go
IF NOT EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE NAME = 'DBPrueba')
CREATE DATABASE DBPrueba

GO 

USE DBPrueba

GO

drop table Carrera

if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Carrera')
CREATE TABLE Carrera (
	IdCarrera int primary key identity(1,1),
    NomCarrera varchar(100),
	Materia varchar(100) NULL,
    Especialidad varchar(100)NULL,
	MateriasEspecialidad varchar(100)NULL
);
GO

-- Crear la tabla Materias
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Materias')
CREATE TABLE Materias (
	IdMaterias int primary key identity(1,1),
	Carrera varchar(100),
    Materia varchar(100)
    
);
GO

-- Crear la tabla Especialidad
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Especialidad')
CREATE TABLE Especialidad (
	IdEspecialidad int primary key identity(1,1),
    Carrera varchar(100),
	Especialidad varchar(100),
    
);
GO

-- Crear la tabla MateriasEspecialidad
if not exists (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'MateriasEspecialidad')
CREATE TABLE MateriasEspecialidad (
	IdMateriasEspecialidad int primary key identity(1,1),
	Carrera varchar(100),
	Especialidad varchar(100),
	MateriasEspecialidad varchar(100),
    
	
);
GO

SELECT * FROM Carrera;



go

select * from dbo.Carrera


use  [DBPrueba]
GO

insert into Carrera (NomCarrera,Materia) values 
('Ingenier�a Electromec�nica', 'Taller de �tica'),
('Ingenier�a Electromec�nica', 'C�lculo Diferencial'),
('Ingenier�a Electromec�nica', 'Introducci�n a la Programaci�n'),
('Ingenier�a Electromec�nica', 'Desarrollo Sustentable'),
('Ingenier�a Electromec�nica', 'Qu�mica'),
('Ingenier�a Electromec�nica', 'Fundamentos de Investigaci�n'),
('Ingenier�a Electromec�nica', 'Est�tica'),
('Ingenier�a Electromec�nica', 'C�lculo Integral'),
('Ingenier�a Electromec�nica', '�lgebra Lineal'),
('Ingenier�a Electromec�nica', 'Metrolog�a y Normalizaci�n'),
('Ingenier�a Electromec�nica', 'Tecnolog�a de los Materiales'),
('Ingenier�a Electromec�nica', 'Dibujo Electromec�nico'),
('Ingenier�a Electromec�nica', 'Din�mica'),
('Ingenier�a Electromec�nica', 'C�lculo Vectorial'),
('Ingenier�a Electromec�nica', 'Procesos de Manufactura'),
('Ingenier�a Electromec�nica', 'Electricidad y Magnetismo'),
('Ingenier�a Electromec�nica', 'Mec�nica de Materiales'),
('Ingenier�a Electromec�nica', 'Probabilidad y Estad�stica'),
('Ingenier�a Electromec�nica', 'An�lisis y S�ntesis de Mecanismos'),
('Ingenier�a Electromec�nica', 'Ecuaciones Diferenciales'),
('Ingenier�a Electromec�nica', 'Termodin�mica'),
('Ingenier�a Electromec�nica', 'An�lisis de Circuitos El�ctricos de CD'),
('Ingenier�a Electromec�nica', 'Mec�nica de Fluidos'),
('Ingenier�a Electromec�nica', 'Electr�nica Anal�gica'),
('Ingenier�a Electromec�nica', 'Dise�o de Elementos de M�quinas'),
('Ingenier�a Electromec�nica', 'Dise�o e Ingenier�a Asistidos por Computadora'),
('Ingenier�a Electromec�nica', 'Transferencia de Calor'),
('Ingenier�a Electromec�nica', 'An�lisis de Circuitos El�ctricos de CA'),
('Ingenier�a Electromec�nica', 'Sistemas y M�quinas de Fluidos'),
('Ingenier�a Electromec�nica', 'Electr�nica Digital'),
('Ingenier�a Electromec�nica', 'M�quinas y Equipos T�rmicos I'),
('Ingenier�a Electromec�nica', 'Ahorro de Energ�a'),
('Ingenier�a Electromec�nica', 'Instalaciones El�ctricas'),
('Ingenier�a Electromec�nica', 'M�quinas El�ctricas'),
('Ingenier�a Electromec�nica', 'Administraci�n y T�cnicas de Mantenimiento'),
('Ingenier�a Electromec�nica', 'Taller de Investigaci�n I'),
('Ingenier�a Electromec�nica', 'M�quinas y Equipos T�rmicos II'),
('Ingenier�a Electromec�nica', 'Sistemas El�ctricos de Potencia'),
('Ingenier�a Electromec�nica', 'Controles El�ctricos'),
('Ingenier�a Electromec�nica', 'Ingenier�a de Control Cl�sico'),
('Ingenier�a Electromec�nica', 'Taller de Investigaci�n II'),
('Ingenier�a Electromec�nica', 'Refrigeraci�n y Aire Acondicionado'),
('Ingenier�a Electromec�nica', 'Subestaciones El�ctricas'),
('Ingenier�a Electromec�nica', 'Sistemas Hidr�ulicos y Neum�ticos de Potencia'),
('Ingenier�a Electromec�nica', 'Formulaci�n y Evaluaci�n de Proyectos'),
('Ingenier�a Electromec�nica', 'Residencia Profesional'),
('Ingenier�a Electromec�nica', 'Especialidad'),
('Ingenier�a Mecatr�nica', 'Qu�mica'),
('Ingenier�a Mecatr�nica', 'C�lculo Diferencial'),
('Ingenier�a Mecatr�nica', 'Taller de �tica'),
('Ingenier�a Mecatr�nica', 'Dibujo Asistido por Computadora'),
('Ingenier�a Mecatr�nica', 'Metrolog�a y Normalizaci�n'),
('Ingenier�a Mecatr�nica', 'Fundamentos de Investigaci�n'),
('Ingenier�a Mecatr�nica', 'C�lculo Integral'),
('Ingenier�a Mecatr�nica', '�lgebra Lineal'),
('Ingenier�a Mecatr�nica', 'Ciencia e Ingenier�a de Materiales'),
('Ingenier�a Mecatr�nica', 'Programaci�n B�sica'),
('Ingenier�a Mecatr�nica', 'Estad�stica y Control de Calidad'),
('Ingenier�a Mecatr�nica', 'Administraci�n y Contabilidad'),
('Ingenier�a Mecatr�nica', 'C�lculo Vectorial'),
('Ingenier�a Mecatr�nica', 'Procesos de Fabricaci�n'),
('Ingenier�a Mecatr�nica', 'Electromagnetismo'),
('Ingenier�a Mecatr�nica', 'Est�tica'),
('Ingenier�a Mecatr�nica', 'M�todos Num�ricos'),
('Ingenier�a Mecatr�nica', 'Desarrollo Sustentable'),
('Ingenier�a Mecatr�nica', 'Ecuaciones Diferenciales'),
('Ingenier�a Mecatr�nica', 'Fundamentos de Termodin�mica'),
('Ingenier�a Mecatr�nica', 'Mec�nica de Materiales'),
('Ingenier�a Mecatr�nica', 'Din�mica'),
('Ingenier�a Mecatr�nica', 'An�lisis de Circuitos El�ctricos'),
('Ingenier�a Mecatr�nica', 'M�quinas El�ctricas'),
('Ingenier�a Mecatr�nica', 'Electr�nica Anal�gica'),
('Ingenier�a Mecatr�nica', 'Mecanismos'),
('Ingenier�a Mecatr�nica', 'An�lisis de Fluidos'),
('Ingenier�a Mecatr�nica', 'Taller de Investigaci�n I'),
('Ingenier�a Mecatr�nica', 'Electr�nica de Potencia Aplicada'),
('Ingenier�a Mecatr�nica', 'Instrumentaci�n'),
('Ingenier�a Mecatr�nica', 'Dise�o de Elementos Mec�nicos'),
('Ingenier�a Mecatr�nica', 'Electr�nica Digital'),
('Ingenier�a Mecatr�nica', 'Vibraciones Mec�nicas'),
('Ingenier�a Mecatr�nica', 'Taller de Investigaci�n II'),
('Ingenier�a Mecatr�nica', 'Din�mica de Sistemas'),
('Ingenier�a Mecatr�nica', 'Manufactura Avanzada'),
('Ingenier�a Mecatr�nica', 'Circuitos Hidr�ulicos y Neum�ticos'),
('Ingenier�a Mecatr�nica', 'Mantenimiento'),
('Ingenier�a Mecatr�nica', 'Microcontroladores'),
('Ingenier�a Mecatr�nica', 'Programaci�n Avanzada'),
('Ingenier�a Mecatr�nica', 'Control'),
('Ingenier�a Mecatr�nica', 'Formulaci�n y Evaluaci�n de Proyectos'),
('Ingenier�a Mecatr�nica', 'Controladores L�gicos Programables'),
('Ingenier�a Mecatr�nica', 'Rob�tica'),
('Ingenier�a Mecatr�nica', 'Residencia Profesional'),
('Ingenier�a Mecatr�nica', 'Especialidad'),
('Ingenier�a en Log�stica', 'Introducci�n a la Ingenier�a en Log�stica'),
('Ingenier�a en Log�stica', 'C�lculo Diferencial'),
('Ingenier�a en Log�stica', 'Qu�mica'),
('Ingenier�a en Log�stica', 'Fundamentos de Administraci�n'),
('Ingenier�a en Log�stica', 'Dibujo Asistido por Computadora'),
('Ingenier�a en Log�stica', 'Econom�a'),
('Ingenier�a en Log�stica', 'Taller de �tica'),
('Ingenier�a en Log�stica', 'C�lculo Integral'),
('Ingenier�a en Log�stica', 'Probabilidad y Estad�stica'),
('Ingenier�a en Log�stica', 'Desarrollo Humano y Organizacional'),
('Ingenier�a en Log�stica', 'Fundamentos de Investigaci�n'),
('Ingenier�a en Log�stica', 'Contabilidad y Costos'),
('Ingenier�a en Log�stica', 'Cadena de Suministro'),
('Ingenier�a en Log�stica', '�lgebra Lineal'),
('Ingenier�a en Log�stica', 'Estad�stica Inferencial I'),
('Ingenier�a en Log�stica', 'Fundamentos de Derecho'),
('Ingenier�a en Log�stica', 'Mec�nica Cl�sica'),
('Ingenier�a en Log�stica', 'Finanzas'),
('Ingenier�a en Log�stica', 'Compras'),
('Ingenier�a en Log�stica', 'Tipolog�a del Producto'),
('Ingenier�a en Log�stica', 'Estad�stica Inferencial II'),
('Ingenier�a en Log�stica', 'Entorno Econ�mico'),
('Ingenier�a en Log�stica', 'T�picos de Ingenier�a Mec�nica'),
('Ingenier�a en Log�stica', 'Bases de Datos'),
('Ingenier�a en Log�stica', 'Almacenes'),
('Ingenier�a en Log�stica', 'Inventarios'),
('Ingenier�a en Log�stica', 'Investigaci�n de Operaciones I'),
('Ingenier�a en Log�stica', 'Higiene y Seguridad'),
('Ingenier�a en Log�stica', 'Procesos de Fabricaci�n y Manejo de Materiales'),
('Ingenier�a en Log�stica', 'Mercadotecnia'),
('Ingenier�a en Log�stica', 'Tr�fico y Transporte'),
('Ingenier�a en Log�stica', 'Cultura de Calidad'),
('Ingenier�a en Log�stica', 'Investigaci�n de Operaciones II'),
('Ingenier�a en Log�stica', 'Desarrollo Sustentable'),
('Ingenier�a en Log�stica', 'Taller de Investigaci�n I'),
('Ingenier�a en Log�stica', 'Empaque, Envase y Embalaje'),
('Ingenier�a en Log�stica', 'Servicio al Cliente'),
('Ingenier�a en Log�stica', 'Programaci�n de Procesos Productivos'),
('Ingenier�a en Log�stica', 'Modelos de Simulaci�n y Log�stica'),
('Ingenier�a en Log�stica', 'Legislaci�n Aduanera'),
('Ingenier�a en Log�stica', 'Taller de Investigaci�n II'),
('Ingenier�a en Log�stica', 'Ingenier�a Econ�mica'),
('Ingenier�a en Log�stica', 'Innovaci�n'),
('Ingenier�a en Log�stica', 'Comercio Internacional'),
('Ingenier�a en Log�stica', 'Formulaci�n y Evaluaci�n de Proyectos'),
('Ingenier�a en Log�stica', 'Geograf�a para el Transporte'),
('Ingenier�a en Log�stica', 'Gesti�n de Proyectos'),
('Ingenier�a en Log�stica', 'Especialidad'),
('Ingenier�a en Log�stica', 'Residencia Profesional'),
('Ingenier�a Electr�nica', 'C�lculo Diferencial'),
('Ingenier�a Electr�nica', 'Mec�nica Cl�sica'),
('Ingenier�a Electr�nica', 'Qu�mica'),
('Ingenier�a Electr�nica', 'Taller de �tica'),
('Ingenier�a Electr�nica', 'Fundamentos de Investigaci�n'),
('Ingenier�a Electr�nica', 'Comunicaci�n Humana'),
('Ingenier�a Electr�nica', 'C�lculo Integral'),
('Ingenier�a Electr�nica', 'Probabilidad y Estad�stica'),
('Ingenier�a Electr�nica', 'Desarrollo Sustentable'),
('Ingenier�a Electr�nica', 'Mediciones El�ctricas'),
('Ingenier�a Electr�nica', 'T�picos Selectos de F�sica'),
('Ingenier�a Electr�nica', 'Desarrollo Humano'),
('Ingenier�a Electr�nica', 'C�lculo Vectorial'),
('Ingenier�a Electr�nica', 'Electromagnetismo'),
('Ingenier�a Electr�nica', '�lgebra Lineal'),
('Ingenier�a Electr�nica', 'F�sica de Semiconductores'),
('Ingenier�a Electr�nica', 'Programaci�n Estructurada'),
('Ingenier�a Electr�nica', 'Ecuaciones Diferenciales'),
('Ingenier�a Electr�nica', 'Circuitos El�ctricos I'),
('Ingenier�a Electr�nica', 'Marco Legal de la Empresa'),
('Ingenier�a Electr�nica', 'An�lisis Num�rico'),
('Ingenier�a Electr�nica', 'Dise�o Digital'),
('Ingenier�a Electr�nica', 'Programaci�n Visual'),
('Ingenier�a Electr�nica', 'Circuitos El�ctricos II'),
('Ingenier�a Electr�nica', 'Diodos y Transistores'),
('Ingenier�a Electr�nica', 'Teor�a Electromagn�tica'),
('Ingenier�a Electr�nica', 'M�quinas El�ctricas'),
('Ingenier�a Electr�nica', 'Dise�o Digital con VHDL'),
('Ingenier�a Electr�nica', 'Desarrollo Profesional'),
('Ingenier�a Electr�nica', 'Control I'),
('Ingenier�a Electr�nica', 'Dise�o con Transistores'),
('Ingenier�a Electr�nica', 'Fundamentos Financieros'),
('Ingenier�a Electr�nica', 'Microcontroladores'),
('Ingenier�a Electr�nica', 'Taller de Investigaci�n I'),
('Ingenier�a Electr�nica', 'Control II'),
('Ingenier�a Electr�nica', 'Amplificadores Operacionales'),
('Ingenier�a Electr�nica', 'Instrumentaci�n'),
('Ingenier�a Electr�nica', 'Optoelectr�nica'),
('Ingenier�a Electr�nica', 'Introducci�n a las Telecomunicaciones'),
('Ingenier�a Electr�nica', 'Taller de Investigaci�n II'),
('Ingenier�a Electr�nica', 'Control Digital'),
('Ingenier�a Electr�nica', 'Controladores L�gicos Programables'),
('Ingenier�a Electr�nica', 'Electr�nica de Potencia'),
('Ingenier�a Electr�nica', 'Administraci�n Gerencial'),
('Ingenier�a Electr�nica', 'Desarrollo y Evaluaci�n de Proyectos'),
('Ingenier�a Electr�nica', 'Residencia Profesional'),
('Ingenier�a Electr�nica', 'Especialidad'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'C�lculo Diferencial'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Fundamentos de Programaci�n'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Taller de Etica'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Matematicas Discratas'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Introducci�n a las TIC''s'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Fundamentos de Investigacion'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'C�lculo Integral'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Programaci�n Orientada a Objetos'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Contabilidad y Costos'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Matematicas Discretas II'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Administraci�n Gerencial'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Probabilidad y Estad�stica'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', '�lgebra Lineal'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Estructura y Organizacion de Datos'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Electricidad y Magnetismo'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Matem�ticas Aplicadas a Comunicaciones'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Desarrollo Sustentable'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Fundamentos de Base de Datos'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'An�lisis de Se�ales y Sistemas de Comunicaci�n'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Programaci�n II'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Matem�ticas Para la Toma de Decisiones'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Taller de Base de Datos'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Circuitos El�ctricos y Electr�nicos'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Ingenier�a de Software'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Fundamentos de Redes'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Telecomunicaciones'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Administraci�n de Proyectos'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Base de Datos Distribuidas'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Taller de Ingenier�a de Software'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Arquitectura de Computadoras'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Tecnolog�as Inal�mbricas'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Redes de Computadoras'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Desarrollo de Emprendedores'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Taller de Investigaci�n I'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Sistemas Operativos I'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Programaci�n Web'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Redes Emergentes'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Desarrollo de Aplicaciones para Dispositivos M�viles'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Ingenier�a del Conocimiento'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Taller de Investigaci�n II'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Sistemas Operativos II'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Negocios Electr�nicos I'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Administraci�n y Seguridad de Redes'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Interacci�n Humano Computadora'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Auditor�a en Tecnolog�as de Informaci�n'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Negocios Electr�nicos II'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones', 'Residencia Profesional'),
('Ingenier�a en Gesti�n Empresarial', 'Fundamentos de Investigaci�n'),
('Ingenier�a en Gesti�n Empresarial', 'C�lculo Diferencial'),
('Ingenier�a en Gesti�n Empresarial', 'Desarrollo Humano'),
('Ingenier�a en Gesti�n Empresarial', 'fundamentos de Gestion Empresarial'),
('Ingenier�a en Gesti�n Empresarial', 'Dinamica Social'),
('Ingenier�a en Gesti�n Empresarial', 'Fundsmentos de Quimica'),
('Ingenier�a en Gesti�n Empresarial', 'Software de Aplicacion Ejecutivo'),
('Ingenier�a en Gesti�n Empresarial', 'Calculo Integral'),
('Ingenier�a en Gesti�n Empresarial', 'Contabilidad Orientada a los Negocios'),
('Ingenier�a en Gesti�n Empresarial', 'Legislaci�nLaboral'),
('Ingenier�a en Gesti�n Empresarial', 'Taller de �tica'),
('Ingenier�a en Gesti�n Empresarial', 'Fundamentos de F�sica'),
('Ingenier�a en Gesti�n Empresarial', 'Marco Legal de las Organizaciones'),
('Ingenier�a en Gesti�n Empresarial', 'Probabilidad y Estad�stica Descriptiva'),
('Ingenier�a en Gesti�n Empresarial', 'Costos Empresariales'),
('Ingenier�a en Gesti�n Empresarial', 'Habilidades Directivas I'),
('Ingenier�a en Gesti�n Empresarial', 'Econom�a Empresarial'),
('Ingenier�a en Gesti�n Empresarial', '�lgebra Lineal'),
('Ingenier�a en Gesti�n Empresarial', 'Instrumentos de Presupuestaci�n Empresarial'),
('Ingenier�a en Gesti�n Empresarial', 'Estad�stica Inferencial I'),
('Ingenier�a en Gesti�n Empresarial', 'Ingenier�a de Procesos'),
('Ingenier�a en Gesti�n Empresarial', 'Habilidades Directivas II'),
('Ingenier�a en Gesti�n Empresarial', 'Entorno Macroecon�mico'),
('Ingenier�a en Gesti�n Empresarial', 'Investigaci�n de Operaciones'),
('Ingenier�a en Gesti�n Empresarial', 'Finanzas en las Organizaciones'),
('Ingenier�a en Gesti�n Empresarial', 'Gesti�n de la Producci�n I'),
('Ingenier�a en Gesti�n Empresarial', 'Gesti�n del Capital Humano'),
('Ingenier�a en Gesti�n Empresarial', 'Desarrollo Sustentable'),
('Ingenier�a en Gesti�n Empresarial', 'Mercadotecnia'),
('Ingenier�a en Gesti�n Empresarial', 'Ingenier�a Econ�mica'),
('Ingenier�a en Gesti�n Empresarial', 'El Emprendedor y la Innovaci�n'),
('Ingenier�a en Gesti�n Empresarial', 'Gesti�n de la Producci�n II'),
('Ingenier�a en Gesti�n Empresarial', 'Administraci�n de la Salud y Seguridad Ocupacional'),
('Ingenier�a en Gesti�n Empresarial', 'Calidad Aplicada a la Gesti�n Empresarial'),
('Ingenier�a en Gesti�n Empresarial', 'Sistemas de Informaci�n de Mercadotecnia'),
('Ingenier�a en Gesti�n Empresarial', 'Plan de Negocios'),
('Ingenier�a en Gesti�n Empresarial', 'Taller de Investigaci�n I'),
('Ingenier�a en Gesti�n Empresarial', 'Dise�o Organizacional'),
('Ingenier�a en Gesti�n Empresarial', 'Mercadotecnia Electr�nica'),
('Ingenier�a en Gesti�n Empresarial', 'Taller de Investigaci�n II'),
('Ingenier�a en Gesti�n Empresarial', 'Gesti�n Estrat�gica'),
('Ingenier�a en Gesti�n Empresarial', 'Cadena de Suministros'),
('Ingenier�a en Gesti�n Empresarial', 'Residencia Profesiona'),
('Ingenier�a Industrial', 'QUIMICA'),
('Ingenier�a Industrial', 'TALLER DE �TICA'),
('Ingenier�a Industrial', 'CALCULO DIFERENCIAL'),
('Ingenier�a Industrial', 'TALLER DE HERRAMIENTAS INTELECTUALES'),
('Ingenier�a Industrial', 'FUNDAMENTOS DE INVESTIGACION'),
('Ingenier�a Industrial', 'DIBUJO INDUSTRIAL'),
('Ingenier�a Industrial', 'METROLOGIA Y NORMALIZACION'),
('Ingenier�a Industrial', 'ELECTRICIDAD Y ELECTRONICA INDUSTRIAL'),
('Ingenier�a Industrial', 'CALCULO INTEGRAL'),
('Ingenier�a Industrial', 'FISICA'),
('Ingenier�a Industrial', 'PROBABILIDAD Y ESTADISTICA'),
('Ingenier�a Industrial', 'ANALISIS DE LA REALIDAD NACIONA'),
('Ingenier�a Industrial', 'TALLER DE LIDERAZGO'),
('Ingenier�a Industrial', 'PROPIEDAD DE LOS MATERIALES'),
('Ingenier�a Industrial', 'ECONOMIA'),
('Ingenier�a Industrial', 'CALCULO VECTORIAL'),
('Ingenier�a Industrial', 'ALGEBRA LINEA'),
('Ingenier�a Industrial', 'ESTADISTICA INFERENCIAL 1'),
('Ingenier�a Industrial', 'ESTUDIO DEL TRABAJO 1'),
('Ingenier�a Industrial', 'ADMINISTRACION DE PROYECTOS'),
('Ingenier�a Industrial', 'PROCESOS DE FABRICACION'),
('Ingenier�a Industrial', 'ALGORITMOS Y LENGUAJES DE PROGRAMACION'),
('Ingenier�a Industrial', 'ADMINSTRACION DE OPERACIONES 1'),
('Ingenier�a Industrial', 'INVESTIGACION DE OPERACIONES 1'),
('Ingenier�a Industrial', 'ESTADISTICA INFERENCIAL II'),
('Ingenier�a Industrial', 'ESTUDIO DEL TRABAJO II'),
('Ingenier�a Industrial', 'HIGIENE Y SEGURIDAD INDUSTRIAL'),
('Ingenier�a Industrial', 'GESTION DE COSTOS'),
('Ingenier�a Industrial', 'MERCADOTECNIA'),
('Ingenier�a Industrial', 'ADMINSTRACION DE OPERACIONES I'),
('Ingenier�a Industrial', 'INVESTIGACION DE OPERACIONES I'),
('Ingenier�a Industrial', 'CONTROL ESTADISTICO DE LA CALIDAD'),
('Ingenier�a Industrial', 'ERGONOMIA'),
('Ingenier�a Industrial', 'DESARROLLO SUSTENTABL'),
('Ingenier�a Industrial', 'INGENIERIA ECONOMICA'),
('Ingenier�a Industrial', 'TALLER DE INVESTIGACION 1'),
('Ingenier�a Industrial', 'NGENIERIA DE SISTEMAS'),
('Ingenier�a Industrial', 'SIMULACION'),
('Ingenier�a Industrial', 'ADMINISTRACION DEL MANTENIMIENTO'),
('Ingenier�a Industrial', 'PLANEACION FINANCIERA'),
('Ingenier�a Industrial', 'RELACIONES INDUSTRIALES'),
('Ingenier�a Industrial', 'PLANEACION Y DISE�O DE INSTALACIONES'),
('Ingenier�a Industrial', 'SISTEMAS DE MANUFACTURA'),
('Ingenier�a Industrial', 'LOGISTICA Y CADENA DE SUMINISTRO'),
('Ingenier�a Industrial', 'GESTION DE LOS SISTEMAS DE CALIDAD'),
('Ingenier�a Industrial', 'FORMULACION Y EVALUACION DE PROYECTO'),
('Ingenier�a Industrial', 'SEVICIO SOCIAL'),
('Ingenier�a Industrial', 'TALLER DE INVESTIGACION II'),
('Ingenier�a Industrial', 'RESIDENCIA PROFESIONAL'),
('Ingenier�a en Sistemas Computacionales', 'C�lculo Diferencial'),
('Ingenier�a en Sistemas Computacionales', 'Fundamentos de Programaci�n'),
('Ingenier�a en Sistemas Computacionales', 'Taller de Etica'),
('Ingenier�a en Sistemas Computacionales', 'Matematicas Discratas'),
('Ingenier�a en Sistemas Computacionales', 'Taller de Administracion'),
('Ingenier�a en Sistemas Computacionales', 'Fundamentos de Investigacion'),
('Ingenier�a en Sistemas Computacionales', 'C�lculo Integral'),
('Ingenier�a en Sistemas Computacionales', 'Programaci�n Orientada a Objetos'),
('Ingenier�a en Sistemas Computacionales', 'Contabilidad Financiera'),
('Ingenier�a en Sistemas Computacionales', 'Qu�mica'),
('Ingenier�a en Sistemas Computacionales', '�lgebra Lineal'),
('Ingenier�a en Sistemas Computacionales', 'Probabilidad y Estad�stica'),
('Ingenier�a en Sistemas Computacionales', 'C�lculo Vectoria'),
('Ingenier�a en Sistemas Computacionales', 'Estructura de Datos'),
('Ingenier�a en Sistemas Computacionales', 'Cultura Empresaria'),
('Ingenier�a en Sistemas Computacionales', 'Investigaci�n de Operaciones'),
('Ingenier�a en Sistemas Computacionales', 'Desarrollo Sustentable'),
('Ingenier�a en Sistemas Computacionales', 'F�sica General'),
('Ingenier�a en Sistemas Computacionales', 'Ecuaciones Diferenciales'),
('Ingenier�a en Sistemas Computacionales', 'M�todos Num�ricos'),
('Ingenier�a en Sistemas Computacionales', 'T�picos Avanzados de Programaci�n'),
('Ingenier�a en Sistemas Computacionales', 'Fundamentos de Base de Datos'),
('Ingenier�a en Sistemas Computacionales', 'Simulaci�n'),
('Ingenier�a en Sistemas Computacionales', 'Principios El�ctricos y Aplicaciones Digitales'),
('Ingenier�a en Sistemas Computacionales', 'Graficaci�n'),
('Ingenier�a en Sistemas Computacionales', 'Fundamentos de Telecomunicaciones'),
('Ingenier�a en Sistemas Computacionales', 'Sistemas Operativos'),
('Ingenier�a en Sistemas Computacionales', 'Taller de Base de Datos'),
('Ingenier�a en Sistemas Computacionales', 'Fundamentos de Ingenier�a de Software'),
('Ingenier�a en Sistemas Computacionales', 'Arquitectura de Computadoras'),
('Ingenier�a en Sistemas Computacionales', 'Lenguajes y Aut�matas I'),
('Ingenier�a en Sistemas Computacionales', 'Redes de Computadoras'),
('Ingenier�a en Sistemas Computacionales', 'Taller de Sistemas Operativos'),
('Ingenier�a en Sistemas Computacionales', 'Administraci�n de Base de Datos'),
('Ingenier�a en Sistemas Computacionales', 'Ingenier�a de Software'),
('Ingenier�a en Sistemas Computacionales', 'Lenguajes de Interfaz'),
('Ingenier�a en Sistemas Computacionales', 'Lenguajes y Aut�matas II'),
('Ingenier�a en Sistemas Computacionales', 'Conmutaci�n y Enrutamiento en Redes de Datos'),
('Ingenier�a en Sistemas Computacionales', 'Taller de Investigaci�n I'),
('Ingenier�a en Sistemas Computacionales', 'Gesti�n de Proyectos de Software'),
('Ingenier�a en Sistemas Computacionales', 'Sistemas Programables'),
('Ingenier�a en Sistemas Computacionales', 'Programaci�n L�gica y Funcional'),
('Ingenier�a en Sistemas Computacionales', 'Administraci�n de Redes'),
('Ingenier�a en Sistemas Computacionales', 'Taller de Investigaci�n II'),
('Ingenier�a en Sistemas Computacionales', 'Programaci�n Web'),
('Ingenier�a en Sistemas Computacionales', 'Inteligencia Artificial'),
('Ingenier�a en Sistemas Computacionales', 'Residencia Profesional'),
('Ingenier�a en Sistemas Computacionales', 'Especialidad');

insert into Carrera (NomCarrera,Especialidad,MateriasEspecialidad) VALUES
('Ingenier�a Industrial','Manufactura en art�culos de piel','DISE�O Y MODELADO'),
('Ingenier�a Industrial','Manufactura en art�culos de piel','DISE�O ASISTIDO POR COMPUTADORA'),
('Ingenier�a Industrial','Manufactura en art�culos de piel','TECNOLOGIA Y TALLER 1'),
('Ingenier�a Industrial','Manufactura en art�culos de piel','TEMAS SELECTOS DE MANUFACTURA'),
('Ingenier�a Industrial','Manufactura en art�culos de piel','CORE TOOL'),
('Ingenier�a Industrial','Manufactura en art�culos de piel','TECNOLOGIA Y TALLER II'),
('Ingenier�a Industrial','Manufactura en art�culos de piel','MEDICION Y MEJORAMIENTO DE LA PRODUCTIVIDAD'),
('Ingenier�a Industrial','Manufactura en art�culos de piel','ADMINISTRACION DE LOS SITEMAS DE PRODUCCION DE CALZADO'),
('Ingenier�a Industrial','Ingenier�a en manufactura y calidad','SISTEMAS NEUMATICOS E HIDRAULICOS'),
('Ingenier�a Industrial','Ingenier�a en manufactura y calidad','DISE�O ASISTIDO POR COMPUTADORA'),
('Ingenier�a Industrial','Ingenier�a en manufactura y calidad','CONTROLADORES LOGICOS PROGRAMABLE'),
('Ingenier�a Industrial','Ingenier�a en manufactura y calidad','TEMAS SELECTOS DE MANUFACTURA'),
('Ingenier�a Industrial','Ingenier�a en manufactura y calidad','CORE TOOL'),
('Ingenier�a Industrial','Ingenier�a en manufactura y calidad','MEDICION Y MEJORAMIENTO DE LA PRODUCTIVIDA'),
('Ingenier�a Industrial','Ingenier�a en manufactura y calidad','ROBOTICA INDUSTRIAL'),
('Ingenier�a Industrial','Ingenier�a en manufactura y calidad','MANUFACTURA FLEXIBLE'),
('Ingenier�a en Gesti�n Empresarial','Gesti�n de la calidad e innovaci�n de procesos','Calidad Aplicada a la Gesti�n Empresarial II'),
('Ingenier�a en Gesti�n Empresarial','Gesti�n de la calidad e innovaci�n de procesos','Estrategias Fin. y Costos de Calidad'),
('Ingenier�a en Gesti�n Empresarial','Gesti�n de la calidad e innovaci�n de procesos','Innovaci�n de Procesos'),
('Ingenier�a en Gesti�n Empresarial','Gesti�n de la calidad e innovaci�n de procesos','Seminario de Calidad'),
('Ingenier�a en Gesti�n Empresarial','Gesti�n de la calidad e innovaci�n de procesos','Seminario de Consultor�a Org.'),
('Ingenier�a en Gesti�n Empresarial','Gesti�n de la calidad e innovaci�n de procesos','Gesti�n del Conocimiento'),
('Ingenier�a en Gesti�n Empresarial','Gesti�n de la calidad e innovaci�n de procesos','Sem. Gesti�n Estrat�gica'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones','Gesti�n de Servicios de T.I. en Ambientes Empresariales','Seguridad Informatica'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones','Gesti�n de Servicios de T.I. en Ambientes Empresariales','Administraci�n de servidores'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones','Gesti�n de Servicios de T.I. en Ambientes Empresariales','Gestion de Sistemas VoIP'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones','Gesti�n de Servicios de T.I. en Ambientes Empresariales','Estrategias se Gesti�n de Serv. De TI'),
('Ingenier�a en Tecnolog�as de Informaci�n y Comunicaciones','Gesti�n de Servicios de T.I. en Ambientes Empresariales','Virtualizaci�n & IoT'),
('Ingenier�a en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Bases de Datos Avanzadas'),
('Ingenier�a en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Ciencia de datos'),
('Ingenier�a en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','C�mputo y servicios en la nube'),
('Ingenier�a en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Desarrollo de Aplicaciones para Dispositivos M�viles'),
('Ingenier�a en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Desarrollo de aplicaciones Empresariales'),
('Ingenier�a en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Lab. Para despliegue de apliciones empresariales'),
('Ingenier�a en Sistemas Computacionales','Redes Convergentes de Alta Disponibilidad con Tecnolog�as Emergentes','Dise�o de redes'),
('Ingenier�a en Sistemas Computacionales','Redes Convergentes de Alta Disponibilidad con Tecnolog�as Emergentes','Redes Inal�mbricas'),
('Ingenier�a en Sistemas Computacionales','Redes Convergentes de Alta Disponibilidad con Tecnolog�as Emergentes','Seguridad en Redes'),
('Ingenier�a en Sistemas Computacionales','Redes Convergentes de Alta Disponibilidad con Tecnolog�as Emergentes','Infraestructura para despliegue de aplicaciones');


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_registrar')
DROP PROCEDURE usp_registrar

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_modificar')
DROP PROCEDURE usp_modificar

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_obtener')
DROP PROCEDURE usp_obtener

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_listar')
DROP PROCEDURE usp_obtener

go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'usp_eliminar')
DROP PROCEDURE usp_eliminar
go


create procedure usp_registrar(
@nomcarrera varchar(100),
@materia varchar(100),
@especialidad varchar(100),
@materiasespecialidad varchar(100)
)
as
begin

insert into Carrera(NomCarrera,Materia,Especialidad,MateriasEspecialidad)
values
(
@nomcarrera,
@materia,
@especialidad,
@materiasespecialidad
)

end


go

create procedure usp_modificar(
@idcarrera int,
@nomcarrera varchar(100),
@materia varchar(100),
@especialidad varchar(100),
@materiasespecialidad varchar(100)
)
as
begin

update Carrera set 
NomCarrera = @nomcarrera,
Materia = @materia,
Especialidad = @especialidad,
MateriasEspecialidad = @materiasespecialidad
where IdCarrera = @idcarrera

end

go

create procedure usp_obtener(@idcarrera int)
as
begin

select * from Carrera where IdCarrera = @idcarrera
end

go
create procedure usp_listar
as
begin

select * from Carrera
end


go

go

create procedure usp_eliminar(
@idcarrera int
)
as
begin

delete from Carrera where IdCarrera = @idcarrera

end

go

