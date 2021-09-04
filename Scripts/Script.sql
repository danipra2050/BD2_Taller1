--Tabla TipoDocumento
CREATE TABLE TipoDocumento(
	codigoTipoDocumento VARCHAR(10),
	nombreTipoDocumento VARCHAR(30),
	activo BIT,
	PRIMARY KEY (codigoTipoDocumento)
);

--Tabla TipoVisita
CREATE TABLE TipoVisita(
	codigoTipoVisita VARCHAR(10),
	nombreTipoVisita VARCHAR(30),
	activo BIT,
	PRIMARY KEY (codigoTipoVisita)
);

--Tabla TipoCaso
CREATE TABLE TipoCaso(
	codigoTipoCaso VARCHAR(10),
	nombreTipoCaso VARCHAR(30),
	activo BIT,
	PRIMARY KEY	(codigoTipoCaso)
);

--Creacion tabla RolUsuario
CREATE TABLE RolUsuario(
	codigoRol VARCHAR(10),
	nombreRol VARCHAR(30),
	activo BIT,
	PRIMARY KEY (codigoRol)
);

--Creacion tabla Localidad
CREATE TABLE Localidad(
	codigoLocalidad VARCHAR(10),
	nombreLocalidad VARCHAR(30),
	activo BIT,
	PRIMARY KEY (codigoLocalidad)
);

--Creacion tabla Barrio
CREATE TABLE Barrio(
	codigoBarrio VARCHAR(10),
	nombreBarrio VARCHAR(30),
	activo BIT,
	PRIMARY KEY (codigoBarrio),
	codigoLocalidad VARCHAR(10) REFERENCES Localidad(codigoLocalidad)
);

--Creación de la tabla de Usuarios
CREATE TABLE Usuario(
	documentoUsuario VARCHAR(15) NOT NULL,
	codigoBarrio VARCHAR(10) REFERENCES Barrio(codigoBarrio) NOT NULL,
	codigoTipoDocumento VARCHAR(10) REFERENCES TipoDocumento (codigoTipoDocumento) NOT NULL,
	codigoRol VARCHAR(10) REFERENCES RolUsuario (codigoRol) NOT NULL,
	nombreUsuario VARCHAR(100) NOT NULL,
	razonSolcial VARCHAR(100),
	telefono BIGINT NOT NULL,
	email VARCHAR(100) NOT NULL,
	direccion VARCHAR(100) NOT NULL,
	contrasena VARCHAR(200) NOT NULL,
	activo BIT NOT NULL,
	PRIMARY KEY (documentoUsuario)
);

--Creacion de la tabla de Mascotas
CREATE TABLE Mascota(
	codigoMascota VARCHAR(10) NOT NULL,
	documentoUsuario VARCHAR(15) REFERENCES Usuario (documentoUsuario) NOT NULL,
	nombreMascota VARCHAR(30) NOT NULL,
	edad INTEGER NOT NULL,
	especie VARCHAR(30) NOT NULL,
	sexo VARCHAR(2) NOT NULL,
	tamano DECIMAL NOT NULL,
	peligroso BIT NOT NULL,
	foto VARCHAR(50) NOT NULL,
	activo BIT NOT NULL,
	PRIMARY KEY (codigoMascota)
);

--Creacion de tabla de Visitas
CREATE TABLE Visita(
	codigoVisita VARCHAR(10) NOT NULL,
	codigoMascota VARCHAR(10) REFERENCES Mascota(codigoMascota) NOT NULL,
	coditoTipoVisita VARCHAR(10) REFERENCES TipoVisita(codigoTipoVisita) NOT NULL,
	documentoUsuario VARCHAR(15) REFERENCES Usuario(documentoUsuario) NOT NULL,
	chip VARCHAR(50),
	fechaRegistro TIMESTAMP DEFAULT NOW() NOT NULL,
	observacion VARCHAR(500) NOT NULL,
	PRIMARY KEY (codigoVisita)
);

--Creación de la tabla AdjuntoVisita
CREATE TABLE AdjuntoVisita(
	codigoVisita VARCHAR(10) REFERENCES Visita(codigoVisita) NOT NULL,
	nombreAdjunto VARCHAR(50) NOT NULL,
	activo BIT NOT NULL
);

--Creación tabla Vaso
CREATE TABLE Caso(
	codigoCaso VARCHAR(10) NOT NULL,
	codigoTipoCaso VARCHAR(10) REFERENCES TipoCaso(codigoTipoCaso) NOT NULL,
	codigoMascota VARCHAR(10) REFERENCES Mascota(codigoMascota) NOT NULL,
	observacion VARCHAR(500) NOT NULL,
	fechaRegistro TIMESTAMP DEFAULT NOW() NOT NULL,
	PRIMARY KEY (codigoCaso)
);