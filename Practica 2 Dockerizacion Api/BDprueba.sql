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
('Ingeniería Electromecánica', 'Taller de Ética'),
('Ingeniería Electromecánica', 'Cálculo Diferencial'),
('Ingeniería Electromecánica', 'Introducción a la Programación'),
('Ingeniería Electromecánica', 'Desarrollo Sustentable'),
('Ingeniería Electromecánica', 'Química'),
('Ingeniería Electromecánica', 'Fundamentos de Investigación'),
('Ingeniería Electromecánica', 'Estática'),
('Ingeniería Electromecánica', 'Cálculo Integral'),
('Ingeniería Electromecánica', 'Álgebra Lineal'),
('Ingeniería Electromecánica', 'Metrología y Normalización'),
('Ingeniería Electromecánica', 'Tecnología de los Materiales'),
('Ingeniería Electromecánica', 'Dibujo Electromecánico'),
('Ingeniería Electromecánica', 'Dinámica'),
('Ingeniería Electromecánica', 'Cálculo Vectorial'),
('Ingeniería Electromecánica', 'Procesos de Manufactura'),
('Ingeniería Electromecánica', 'Electricidad y Magnetismo'),
('Ingeniería Electromecánica', 'Mecánica de Materiales'),
('Ingeniería Electromecánica', 'Probabilidad y Estadística'),
('Ingeniería Electromecánica', 'Análisis y Síntesis de Mecanismos'),
('Ingeniería Electromecánica', 'Ecuaciones Diferenciales'),
('Ingeniería Electromecánica', 'Termodinámica'),
('Ingeniería Electromecánica', 'Análisis de Circuitos Eléctricos de CD'),
('Ingeniería Electromecánica', 'Mecánica de Fluidos'),
('Ingeniería Electromecánica', 'Electrónica Analógica'),
('Ingeniería Electromecánica', 'Diseño de Elementos de Máquinas'),
('Ingeniería Electromecánica', 'Diseño e Ingeniería Asistidos por Computadora'),
('Ingeniería Electromecánica', 'Transferencia de Calor'),
('Ingeniería Electromecánica', 'Análisis de Circuitos Eléctricos de CA'),
('Ingeniería Electromecánica', 'Sistemas y Máquinas de Fluidos'),
('Ingeniería Electromecánica', 'Electrónica Digital'),
('Ingeniería Electromecánica', 'Máquinas y Equipos Térmicos I'),
('Ingeniería Electromecánica', 'Ahorro de Energía'),
('Ingeniería Electromecánica', 'Instalaciones Eléctricas'),
('Ingeniería Electromecánica', 'Máquinas Eléctricas'),
('Ingeniería Electromecánica', 'Administración y Técnicas de Mantenimiento'),
('Ingeniería Electromecánica', 'Taller de Investigación I'),
('Ingeniería Electromecánica', 'Máquinas y Equipos Térmicos II'),
('Ingeniería Electromecánica', 'Sistemas Eléctricos de Potencia'),
('Ingeniería Electromecánica', 'Controles Eléctricos'),
('Ingeniería Electromecánica', 'Ingeniería de Control Clásico'),
('Ingeniería Electromecánica', 'Taller de Investigación II'),
('Ingeniería Electromecánica', 'Refrigeración y Aire Acondicionado'),
('Ingeniería Electromecánica', 'Subestaciones Eléctricas'),
('Ingeniería Electromecánica', 'Sistemas Hidráulicos y Neumáticos de Potencia'),
('Ingeniería Electromecánica', 'Formulación y Evaluación de Proyectos'),
('Ingeniería Electromecánica', 'Residencia Profesional'),
('Ingeniería Electromecánica', 'Especialidad'),
('Ingeniería Mecatrónica', 'Química'),
('Ingeniería Mecatrónica', 'Cálculo Diferencial'),
('Ingeniería Mecatrónica', 'Taller de Ética'),
('Ingeniería Mecatrónica', 'Dibujo Asistido por Computadora'),
('Ingeniería Mecatrónica', 'Metrología y Normalización'),
('Ingeniería Mecatrónica', 'Fundamentos de Investigación'),
('Ingeniería Mecatrónica', 'Cálculo Integral'),
('Ingeniería Mecatrónica', 'Álgebra Lineal'),
('Ingeniería Mecatrónica', 'Ciencia e Ingeniería de Materiales'),
('Ingeniería Mecatrónica', 'Programación Básica'),
('Ingeniería Mecatrónica', 'Estadística y Control de Calidad'),
('Ingeniería Mecatrónica', 'Administración y Contabilidad'),
('Ingeniería Mecatrónica', 'Cálculo Vectorial'),
('Ingeniería Mecatrónica', 'Procesos de Fabricación'),
('Ingeniería Mecatrónica', 'Electromagnetismo'),
('Ingeniería Mecatrónica', 'Estática'),
('Ingeniería Mecatrónica', 'Métodos Numéricos'),
('Ingeniería Mecatrónica', 'Desarrollo Sustentable'),
('Ingeniería Mecatrónica', 'Ecuaciones Diferenciales'),
('Ingeniería Mecatrónica', 'Fundamentos de Termodinámica'),
('Ingeniería Mecatrónica', 'Mecánica de Materiales'),
('Ingeniería Mecatrónica', 'Dinámica'),
('Ingeniería Mecatrónica', 'Análisis de Circuitos Eléctricos'),
('Ingeniería Mecatrónica', 'Máquinas Eléctricas'),
('Ingeniería Mecatrónica', 'Electrónica Analógica'),
('Ingeniería Mecatrónica', 'Mecanismos'),
('Ingeniería Mecatrónica', 'Análisis de Fluidos'),
('Ingeniería Mecatrónica', 'Taller de Investigación I'),
('Ingeniería Mecatrónica', 'Electrónica de Potencia Aplicada'),
('Ingeniería Mecatrónica', 'Instrumentación'),
('Ingeniería Mecatrónica', 'Diseño de Elementos Mecánicos'),
('Ingeniería Mecatrónica', 'Electrónica Digital'),
('Ingeniería Mecatrónica', 'Vibraciones Mecánicas'),
('Ingeniería Mecatrónica', 'Taller de Investigación II'),
('Ingeniería Mecatrónica', 'Dinámica de Sistemas'),
('Ingeniería Mecatrónica', 'Manufactura Avanzada'),
('Ingeniería Mecatrónica', 'Circuitos Hidráulicos y Neumáticos'),
('Ingeniería Mecatrónica', 'Mantenimiento'),
('Ingeniería Mecatrónica', 'Microcontroladores'),
('Ingeniería Mecatrónica', 'Programación Avanzada'),
('Ingeniería Mecatrónica', 'Control'),
('Ingeniería Mecatrónica', 'Formulación y Evaluación de Proyectos'),
('Ingeniería Mecatrónica', 'Controladores Lógicos Programables'),
('Ingeniería Mecatrónica', 'Robótica'),
('Ingeniería Mecatrónica', 'Residencia Profesional'),
('Ingeniería Mecatrónica', 'Especialidad'),
('Ingeniería en Logística', 'Introducción a la Ingeniería en Logística'),
('Ingeniería en Logística', 'Cálculo Diferencial'),
('Ingeniería en Logística', 'Química'),
('Ingeniería en Logística', 'Fundamentos de Administración'),
('Ingeniería en Logística', 'Dibujo Asistido por Computadora'),
('Ingeniería en Logística', 'Economía'),
('Ingeniería en Logística', 'Taller de Ética'),
('Ingeniería en Logística', 'Cálculo Integral'),
('Ingeniería en Logística', 'Probabilidad y Estadística'),
('Ingeniería en Logística', 'Desarrollo Humano y Organizacional'),
('Ingeniería en Logística', 'Fundamentos de Investigación'),
('Ingeniería en Logística', 'Contabilidad y Costos'),
('Ingeniería en Logística', 'Cadena de Suministro'),
('Ingeniería en Logística', 'Álgebra Lineal'),
('Ingeniería en Logística', 'Estadística Inferencial I'),
('Ingeniería en Logística', 'Fundamentos de Derecho'),
('Ingeniería en Logística', 'Mecánica Clásica'),
('Ingeniería en Logística', 'Finanzas'),
('Ingeniería en Logística', 'Compras'),
('Ingeniería en Logística', 'Tipología del Producto'),
('Ingeniería en Logística', 'Estadística Inferencial II'),
('Ingeniería en Logística', 'Entorno Económico'),
('Ingeniería en Logística', 'Tópicos de Ingeniería Mecánica'),
('Ingeniería en Logística', 'Bases de Datos'),
('Ingeniería en Logística', 'Almacenes'),
('Ingeniería en Logística', 'Inventarios'),
('Ingeniería en Logística', 'Investigación de Operaciones I'),
('Ingeniería en Logística', 'Higiene y Seguridad'),
('Ingeniería en Logística', 'Procesos de Fabricación y Manejo de Materiales'),
('Ingeniería en Logística', 'Mercadotecnia'),
('Ingeniería en Logística', 'Tráfico y Transporte'),
('Ingeniería en Logística', 'Cultura de Calidad'),
('Ingeniería en Logística', 'Investigación de Operaciones II'),
('Ingeniería en Logística', 'Desarrollo Sustentable'),
('Ingeniería en Logística', 'Taller de Investigación I'),
('Ingeniería en Logística', 'Empaque, Envase y Embalaje'),
('Ingeniería en Logística', 'Servicio al Cliente'),
('Ingeniería en Logística', 'Programación de Procesos Productivos'),
('Ingeniería en Logística', 'Modelos de Simulación y Logística'),
('Ingeniería en Logística', 'Legislación Aduanera'),
('Ingeniería en Logística', 'Taller de Investigación II'),
('Ingeniería en Logística', 'Ingeniería Económica'),
('Ingeniería en Logística', 'Innovación'),
('Ingeniería en Logística', 'Comercio Internacional'),
('Ingeniería en Logística', 'Formulación y Evaluación de Proyectos'),
('Ingeniería en Logística', 'Geografía para el Transporte'),
('Ingeniería en Logística', 'Gestión de Proyectos'),
('Ingeniería en Logística', 'Especialidad'),
('Ingeniería en Logística', 'Residencia Profesional'),
('Ingeniería Electrónica', 'Cálculo Diferencial'),
('Ingeniería Electrónica', 'Mecánica Clásica'),
('Ingeniería Electrónica', 'Química'),
('Ingeniería Electrónica', 'Taller de Ética'),
('Ingeniería Electrónica', 'Fundamentos de Investigación'),
('Ingeniería Electrónica', 'Comunicación Humana'),
('Ingeniería Electrónica', 'Cálculo Integral'),
('Ingeniería Electrónica', 'Probabilidad y Estadística'),
('Ingeniería Electrónica', 'Desarrollo Sustentable'),
('Ingeniería Electrónica', 'Mediciones Eléctricas'),
('Ingeniería Electrónica', 'Tópicos Selectos de Física'),
('Ingeniería Electrónica', 'Desarrollo Humano'),
('Ingeniería Electrónica', 'Cálculo Vectorial'),
('Ingeniería Electrónica', 'Electromagnetismo'),
('Ingeniería Electrónica', 'Álgebra Lineal'),
('Ingeniería Electrónica', 'Física de Semiconductores'),
('Ingeniería Electrónica', 'Programación Estructurada'),
('Ingeniería Electrónica', 'Ecuaciones Diferenciales'),
('Ingeniería Electrónica', 'Circuitos Eléctricos I'),
('Ingeniería Electrónica', 'Marco Legal de la Empresa'),
('Ingeniería Electrónica', 'Análisis Numérico'),
('Ingeniería Electrónica', 'Diseño Digital'),
('Ingeniería Electrónica', 'Programación Visual'),
('Ingeniería Electrónica', 'Circuitos Eléctricos II'),
('Ingeniería Electrónica', 'Diodos y Transistores'),
('Ingeniería Electrónica', 'Teoría Electromagnética'),
('Ingeniería Electrónica', 'Máquinas Eléctricas'),
('Ingeniería Electrónica', 'Diseño Digital con VHDL'),
('Ingeniería Electrónica', 'Desarrollo Profesional'),
('Ingeniería Electrónica', 'Control I'),
('Ingeniería Electrónica', 'Diseño con Transistores'),
('Ingeniería Electrónica', 'Fundamentos Financieros'),
('Ingeniería Electrónica', 'Microcontroladores'),
('Ingeniería Electrónica', 'Taller de Investigación I'),
('Ingeniería Electrónica', 'Control II'),
('Ingeniería Electrónica', 'Amplificadores Operacionales'),
('Ingeniería Electrónica', 'Instrumentación'),
('Ingeniería Electrónica', 'Optoelectrónica'),
('Ingeniería Electrónica', 'Introducción a las Telecomunicaciones'),
('Ingeniería Electrónica', 'Taller de Investigación II'),
('Ingeniería Electrónica', 'Control Digital'),
('Ingeniería Electrónica', 'Controladores Lógicos Programables'),
('Ingeniería Electrónica', 'Electrónica de Potencia'),
('Ingeniería Electrónica', 'Administración Gerencial'),
('Ingeniería Electrónica', 'Desarrollo y Evaluación de Proyectos'),
('Ingeniería Electrónica', 'Residencia Profesional'),
('Ingeniería Electrónica', 'Especialidad'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Cálculo Diferencial'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Fundamentos de Programación'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Taller de Etica'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Matematicas Discratas'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Introducción a las TIC''s'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Fundamentos de Investigacion'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Cálculo Integral'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Programación Orientada a Objetos'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Contabilidad y Costos'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Matematicas Discretas II'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Administración Gerencial'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Probabilidad y Estadística'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Álgebra Lineal'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Estructura y Organizacion de Datos'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Electricidad y Magnetismo'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Matemáticas Aplicadas a Comunicaciones'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Desarrollo Sustentable'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Fundamentos de Base de Datos'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Análisis de Señales y Sistemas de Comunicación'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Programación II'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Matemáticas Para la Toma de Decisiones'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Taller de Base de Datos'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Circuitos Eléctricos y Electrónicos'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Ingeniería de Software'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Fundamentos de Redes'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Telecomunicaciones'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Administración de Proyectos'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Base de Datos Distribuidas'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Taller de Ingeniería de Software'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Arquitectura de Computadoras'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Tecnologías Inalámbricas'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Redes de Computadoras'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Desarrollo de Emprendedores'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Taller de Investigación I'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Sistemas Operativos I'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Programación Web'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Redes Emergentes'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Desarrollo de Aplicaciones para Dispositivos Móviles'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Ingeniería del Conocimiento'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Taller de Investigación II'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Sistemas Operativos II'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Negocios Electrónicos I'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Administración y Seguridad de Redes'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Interacción Humano Computadora'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Auditoría en Tecnologías de Información'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Negocios Electrónicos II'),
('Ingeniería en Tecnologías de Información y Comunicaciones', 'Residencia Profesional'),
('Ingeniería en Gestión Empresarial', 'Fundamentos de Investigación'),
('Ingeniería en Gestión Empresarial', 'Cálculo Diferencial'),
('Ingeniería en Gestión Empresarial', 'Desarrollo Humano'),
('Ingeniería en Gestión Empresarial', 'fundamentos de Gestion Empresarial'),
('Ingeniería en Gestión Empresarial', 'Dinamica Social'),
('Ingeniería en Gestión Empresarial', 'Fundsmentos de Quimica'),
('Ingeniería en Gestión Empresarial', 'Software de Aplicacion Ejecutivo'),
('Ingeniería en Gestión Empresarial', 'Calculo Integral'),
('Ingeniería en Gestión Empresarial', 'Contabilidad Orientada a los Negocios'),
('Ingeniería en Gestión Empresarial', 'LegislaciónLaboral'),
('Ingeniería en Gestión Empresarial', 'Taller de Ética'),
('Ingeniería en Gestión Empresarial', 'Fundamentos de Física'),
('Ingeniería en Gestión Empresarial', 'Marco Legal de las Organizaciones'),
('Ingeniería en Gestión Empresarial', 'Probabilidad y Estadística Descriptiva'),
('Ingeniería en Gestión Empresarial', 'Costos Empresariales'),
('Ingeniería en Gestión Empresarial', 'Habilidades Directivas I'),
('Ingeniería en Gestión Empresarial', 'Economía Empresarial'),
('Ingeniería en Gestión Empresarial', 'Álgebra Lineal'),
('Ingeniería en Gestión Empresarial', 'Instrumentos de Presupuestación Empresarial'),
('Ingeniería en Gestión Empresarial', 'Estadística Inferencial I'),
('Ingeniería en Gestión Empresarial', 'Ingeniería de Procesos'),
('Ingeniería en Gestión Empresarial', 'Habilidades Directivas II'),
('Ingeniería en Gestión Empresarial', 'Entorno Macroeconómico'),
('Ingeniería en Gestión Empresarial', 'Investigación de Operaciones'),
('Ingeniería en Gestión Empresarial', 'Finanzas en las Organizaciones'),
('Ingeniería en Gestión Empresarial', 'Gestión de la Producción I'),
('Ingeniería en Gestión Empresarial', 'Gestión del Capital Humano'),
('Ingeniería en Gestión Empresarial', 'Desarrollo Sustentable'),
('Ingeniería en Gestión Empresarial', 'Mercadotecnia'),
('Ingeniería en Gestión Empresarial', 'Ingeniería Económica'),
('Ingeniería en Gestión Empresarial', 'El Emprendedor y la Innovación'),
('Ingeniería en Gestión Empresarial', 'Gestión de la Producción II'),
('Ingeniería en Gestión Empresarial', 'Administración de la Salud y Seguridad Ocupacional'),
('Ingeniería en Gestión Empresarial', 'Calidad Aplicada a la Gestión Empresarial'),
('Ingeniería en Gestión Empresarial', 'Sistemas de Información de Mercadotecnia'),
('Ingeniería en Gestión Empresarial', 'Plan de Negocios'),
('Ingeniería en Gestión Empresarial', 'Taller de Investigación I'),
('Ingeniería en Gestión Empresarial', 'Diseño Organizacional'),
('Ingeniería en Gestión Empresarial', 'Mercadotecnia Electrónica'),
('Ingeniería en Gestión Empresarial', 'Taller de Investigación II'),
('Ingeniería en Gestión Empresarial', 'Gestión Estratégica'),
('Ingeniería en Gestión Empresarial', 'Cadena de Suministros'),
('Ingeniería en Gestión Empresarial', 'Residencia Profesiona'),
('Ingeniería Industrial', 'QUIMICA'),
('Ingeniería Industrial', 'TALLER DE ÉTICA'),
('Ingeniería Industrial', 'CALCULO DIFERENCIAL'),
('Ingeniería Industrial', 'TALLER DE HERRAMIENTAS INTELECTUALES'),
('Ingeniería Industrial', 'FUNDAMENTOS DE INVESTIGACION'),
('Ingeniería Industrial', 'DIBUJO INDUSTRIAL'),
('Ingeniería Industrial', 'METROLOGIA Y NORMALIZACION'),
('Ingeniería Industrial', 'ELECTRICIDAD Y ELECTRONICA INDUSTRIAL'),
('Ingeniería Industrial', 'CALCULO INTEGRAL'),
('Ingeniería Industrial', 'FISICA'),
('Ingeniería Industrial', 'PROBABILIDAD Y ESTADISTICA'),
('Ingeniería Industrial', 'ANALISIS DE LA REALIDAD NACIONA'),
('Ingeniería Industrial', 'TALLER DE LIDERAZGO'),
('Ingeniería Industrial', 'PROPIEDAD DE LOS MATERIALES'),
('Ingeniería Industrial', 'ECONOMIA'),
('Ingeniería Industrial', 'CALCULO VECTORIAL'),
('Ingeniería Industrial', 'ALGEBRA LINEA'),
('Ingeniería Industrial', 'ESTADISTICA INFERENCIAL 1'),
('Ingeniería Industrial', 'ESTUDIO DEL TRABAJO 1'),
('Ingeniería Industrial', 'ADMINISTRACION DE PROYECTOS'),
('Ingeniería Industrial', 'PROCESOS DE FABRICACION'),
('Ingeniería Industrial', 'ALGORITMOS Y LENGUAJES DE PROGRAMACION'),
('Ingeniería Industrial', 'ADMINSTRACION DE OPERACIONES 1'),
('Ingeniería Industrial', 'INVESTIGACION DE OPERACIONES 1'),
('Ingeniería Industrial', 'ESTADISTICA INFERENCIAL II'),
('Ingeniería Industrial', 'ESTUDIO DEL TRABAJO II'),
('Ingeniería Industrial', 'HIGIENE Y SEGURIDAD INDUSTRIAL'),
('Ingeniería Industrial', 'GESTION DE COSTOS'),
('Ingeniería Industrial', 'MERCADOTECNIA'),
('Ingeniería Industrial', 'ADMINSTRACION DE OPERACIONES I'),
('Ingeniería Industrial', 'INVESTIGACION DE OPERACIONES I'),
('Ingeniería Industrial', 'CONTROL ESTADISTICO DE LA CALIDAD'),
('Ingeniería Industrial', 'ERGONOMIA'),
('Ingeniería Industrial', 'DESARROLLO SUSTENTABL'),
('Ingeniería Industrial', 'INGENIERIA ECONOMICA'),
('Ingeniería Industrial', 'TALLER DE INVESTIGACION 1'),
('Ingeniería Industrial', 'NGENIERIA DE SISTEMAS'),
('Ingeniería Industrial', 'SIMULACION'),
('Ingeniería Industrial', 'ADMINISTRACION DEL MANTENIMIENTO'),
('Ingeniería Industrial', 'PLANEACION FINANCIERA'),
('Ingeniería Industrial', 'RELACIONES INDUSTRIALES'),
('Ingeniería Industrial', 'PLANEACION Y DISEÑO DE INSTALACIONES'),
('Ingeniería Industrial', 'SISTEMAS DE MANUFACTURA'),
('Ingeniería Industrial', 'LOGISTICA Y CADENA DE SUMINISTRO'),
('Ingeniería Industrial', 'GESTION DE LOS SISTEMAS DE CALIDAD'),
('Ingeniería Industrial', 'FORMULACION Y EVALUACION DE PROYECTO'),
('Ingeniería Industrial', 'SEVICIO SOCIAL'),
('Ingeniería Industrial', 'TALLER DE INVESTIGACION II'),
('Ingeniería Industrial', 'RESIDENCIA PROFESIONAL'),
('Ingeniería en Sistemas Computacionales', 'Cálculo Diferencial'),
('Ingeniería en Sistemas Computacionales', 'Fundamentos de Programación'),
('Ingeniería en Sistemas Computacionales', 'Taller de Etica'),
('Ingeniería en Sistemas Computacionales', 'Matematicas Discratas'),
('Ingeniería en Sistemas Computacionales', 'Taller de Administracion'),
('Ingeniería en Sistemas Computacionales', 'Fundamentos de Investigacion'),
('Ingeniería en Sistemas Computacionales', 'Cálculo Integral'),
('Ingeniería en Sistemas Computacionales', 'Programación Orientada a Objetos'),
('Ingeniería en Sistemas Computacionales', 'Contabilidad Financiera'),
('Ingeniería en Sistemas Computacionales', 'Química'),
('Ingeniería en Sistemas Computacionales', 'Álgebra Lineal'),
('Ingeniería en Sistemas Computacionales', 'Probabilidad y Estadística'),
('Ingeniería en Sistemas Computacionales', 'Cálculo Vectoria'),
('Ingeniería en Sistemas Computacionales', 'Estructura de Datos'),
('Ingeniería en Sistemas Computacionales', 'Cultura Empresaria'),
('Ingeniería en Sistemas Computacionales', 'Investigación de Operaciones'),
('Ingeniería en Sistemas Computacionales', 'Desarrollo Sustentable'),
('Ingeniería en Sistemas Computacionales', 'Física General'),
('Ingeniería en Sistemas Computacionales', 'Ecuaciones Diferenciales'),
('Ingeniería en Sistemas Computacionales', 'Métodos Numéricos'),
('Ingeniería en Sistemas Computacionales', 'Tópicos Avanzados de Programación'),
('Ingeniería en Sistemas Computacionales', 'Fundamentos de Base de Datos'),
('Ingeniería en Sistemas Computacionales', 'Simulación'),
('Ingeniería en Sistemas Computacionales', 'Principios Eléctricos y Aplicaciones Digitales'),
('Ingeniería en Sistemas Computacionales', 'Graficación'),
('Ingeniería en Sistemas Computacionales', 'Fundamentos de Telecomunicaciones'),
('Ingeniería en Sistemas Computacionales', 'Sistemas Operativos'),
('Ingeniería en Sistemas Computacionales', 'Taller de Base de Datos'),
('Ingeniería en Sistemas Computacionales', 'Fundamentos de Ingeniería de Software'),
('Ingeniería en Sistemas Computacionales', 'Arquitectura de Computadoras'),
('Ingeniería en Sistemas Computacionales', 'Lenguajes y Autómatas I'),
('Ingeniería en Sistemas Computacionales', 'Redes de Computadoras'),
('Ingeniería en Sistemas Computacionales', 'Taller de Sistemas Operativos'),
('Ingeniería en Sistemas Computacionales', 'Administración de Base de Datos'),
('Ingeniería en Sistemas Computacionales', 'Ingeniería de Software'),
('Ingeniería en Sistemas Computacionales', 'Lenguajes de Interfaz'),
('Ingeniería en Sistemas Computacionales', 'Lenguajes y Autómatas II'),
('Ingeniería en Sistemas Computacionales', 'Conmutación y Enrutamiento en Redes de Datos'),
('Ingeniería en Sistemas Computacionales', 'Taller de Investigación I'),
('Ingeniería en Sistemas Computacionales', 'Gestión de Proyectos de Software'),
('Ingeniería en Sistemas Computacionales', 'Sistemas Programables'),
('Ingeniería en Sistemas Computacionales', 'Programación Lógica y Funcional'),
('Ingeniería en Sistemas Computacionales', 'Administración de Redes'),
('Ingeniería en Sistemas Computacionales', 'Taller de Investigación II'),
('Ingeniería en Sistemas Computacionales', 'Programación Web'),
('Ingeniería en Sistemas Computacionales', 'Inteligencia Artificial'),
('Ingeniería en Sistemas Computacionales', 'Residencia Profesional'),
('Ingeniería en Sistemas Computacionales', 'Especialidad');

insert into Carrera (NomCarrera,Especialidad,MateriasEspecialidad) VALUES
('Ingeniería Industrial','Manufactura en artículos de piel','DISEÑO Y MODELADO'),
('Ingeniería Industrial','Manufactura en artículos de piel','DISEÑO ASISTIDO POR COMPUTADORA'),
('Ingeniería Industrial','Manufactura en artículos de piel','TECNOLOGIA Y TALLER 1'),
('Ingeniería Industrial','Manufactura en artículos de piel','TEMAS SELECTOS DE MANUFACTURA'),
('Ingeniería Industrial','Manufactura en artículos de piel','CORE TOOL'),
('Ingeniería Industrial','Manufactura en artículos de piel','TECNOLOGIA Y TALLER II'),
('Ingeniería Industrial','Manufactura en artículos de piel','MEDICION Y MEJORAMIENTO DE LA PRODUCTIVIDAD'),
('Ingeniería Industrial','Manufactura en artículos de piel','ADMINISTRACION DE LOS SITEMAS DE PRODUCCION DE CALZADO'),
('Ingeniería Industrial','Ingeniería en manufactura y calidad','SISTEMAS NEUMATICOS E HIDRAULICOS'),
('Ingeniería Industrial','Ingeniería en manufactura y calidad','DISEÑO ASISTIDO POR COMPUTADORA'),
('Ingeniería Industrial','Ingeniería en manufactura y calidad','CONTROLADORES LOGICOS PROGRAMABLE'),
('Ingeniería Industrial','Ingeniería en manufactura y calidad','TEMAS SELECTOS DE MANUFACTURA'),
('Ingeniería Industrial','Ingeniería en manufactura y calidad','CORE TOOL'),
('Ingeniería Industrial','Ingeniería en manufactura y calidad','MEDICION Y MEJORAMIENTO DE LA PRODUCTIVIDA'),
('Ingeniería Industrial','Ingeniería en manufactura y calidad','ROBOTICA INDUSTRIAL'),
('Ingeniería Industrial','Ingeniería en manufactura y calidad','MANUFACTURA FLEXIBLE'),
('Ingeniería en Gestión Empresarial','Gestión de la calidad e innovación de procesos','Calidad Aplicada a la Gestión Empresarial II'),
('Ingeniería en Gestión Empresarial','Gestión de la calidad e innovación de procesos','Estrategias Fin. y Costos de Calidad'),
('Ingeniería en Gestión Empresarial','Gestión de la calidad e innovación de procesos','Innovación de Procesos'),
('Ingeniería en Gestión Empresarial','Gestión de la calidad e innovación de procesos','Seminario de Calidad'),
('Ingeniería en Gestión Empresarial','Gestión de la calidad e innovación de procesos','Seminario de Consultoría Org.'),
('Ingeniería en Gestión Empresarial','Gestión de la calidad e innovación de procesos','Gestión del Conocimiento'),
('Ingeniería en Gestión Empresarial','Gestión de la calidad e innovación de procesos','Sem. Gestión Estratégica'),
('Ingeniería en Tecnologías de Información y Comunicaciones','Gestión de Servicios de T.I. en Ambientes Empresariales','Seguridad Informatica'),
('Ingeniería en Tecnologías de Información y Comunicaciones','Gestión de Servicios de T.I. en Ambientes Empresariales','Administración de servidores'),
('Ingeniería en Tecnologías de Información y Comunicaciones','Gestión de Servicios de T.I. en Ambientes Empresariales','Gestion de Sistemas VoIP'),
('Ingeniería en Tecnologías de Información y Comunicaciones','Gestión de Servicios de T.I. en Ambientes Empresariales','Estrategias se Gestión de Serv. De TI'),
('Ingeniería en Tecnologías de Información y Comunicaciones','Gestión de Servicios de T.I. en Ambientes Empresariales','Virtualización & IoT'),
('Ingeniería en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Bases de Datos Avanzadas'),
('Ingeniería en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Ciencia de datos'),
('Ingeniería en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Cómputo y servicios en la nube'),
('Ingeniería en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Desarrollo de Aplicaciones para Dispositivos Móviles'),
('Ingeniería en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Desarrollo de aplicaciones Empresariales'),
('Ingeniería en Sistemas Computacionales','Desarrollo de Aplicaciones Empresariales','Lab. Para despliegue de apliciones empresariales'),
('Ingeniería en Sistemas Computacionales','Redes Convergentes de Alta Disponibilidad con Tecnologías Emergentes','Diseño de redes'),
('Ingeniería en Sistemas Computacionales','Redes Convergentes de Alta Disponibilidad con Tecnologías Emergentes','Redes Inalámbricas'),
('Ingeniería en Sistemas Computacionales','Redes Convergentes de Alta Disponibilidad con Tecnologías Emergentes','Seguridad en Redes'),
('Ingeniería en Sistemas Computacionales','Redes Convergentes de Alta Disponibilidad con Tecnologías Emergentes','Infraestructura para despliegue de aplicaciones');


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

