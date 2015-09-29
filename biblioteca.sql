CREATE DATABASE Biblioteca
GO
Use Biblioteca
GO

CREATE TABLE Usuario(
	idUsuario INT IDENTITY PRIMARY KEY,
	Nombre VARCHAR (100) NOT NULL,
	Telefono INT NOT NULL,
	Direccion VARCHAR (100) NOT NULL,
)

GO
CREATE TABLE Autor(
	idAutor INT IDENTITY PRIMARY KEY,
	Nombre VARCHAR (100) NOT NULL
	
)

GO
Create Table Libros(
	idLibro INT IDENTITY PRIMARY KEY,
	Titulo VARCHAR (100) NOT NULL , 
	Editorial VARCHAR (100) NOT NULL,
	ISBN INT NOT NULL,
	Paginas INT NOT NULL,
	idAutor INT FOREIGN KEY REFERENCES Autor(idAutor)

)

GO
CREATE TABLE Ejemplar(
	idEjemplar int IDENTITY PRIMARY KEY, 
	Localizacion VARCHAR(30) NOT NULL,
	idLibro INT FOREIGN KEY REFERENCES Libros(idLibro)
)

GO
CREATE TABLE Prestano(
	idPrestano INT IDENTITY PRIMARY KEY,
	idUsuario INT FOREIGN KEY REFERENCES Usuario(idUsuario),
	idEjemplar INT FOREIGN KEY REFERENCES Ejemplar(idEjemplar),
	FechaPrestamo Date NOT NULL UNIQUE,
	FechaLimite DATE NOT NULL UNIQUE,
	FechaDevolucion DATE NULL,
)


GO
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('axel', 445433455, 'zona 12')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('steven', 4224242, 'zona 13')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('oscar', 879546421, 'zona 14')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('omar', 8675645554, 'zona 15')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('javier', 87621232, 'zona 16')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('luis', 533531353, 'zona 17')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('guix', 32323235, 'zona 18')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('eddie', 41848455, 'zona 19')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('marco', 54112854, 'zona 20')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('bryan', 987444484, 'zona 21')

SELECT *FROM Usuario 

