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
	FechaPrestamo DATE NOT NULL,
	FechaLimite DATE NOT NULL,
	FechaDevolucion DATE NULL
)


GO
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('axel', 445433455, 'zona 12')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('steven', 4224242, 'zona 13')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('oscar', 14114117, 'zona 14')
INSERT INTO Usuario (Nombre, Telefono, Direccion )VALUES
('omar', 45555454, 'zona 15')
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

GO
INSERT INTO Autor(Nombre )VALUES
('Jose Milla')
INSERT INTO Autor(Nombre )VALUES
('Steven Jobs')
INSERT INTO Autor(Nombre )VALUES
('Oscar Castellanos')
INSERT INTO Autor(Nombre )VALUES
('Pepe Milla')
INSERT INTO Autor(Nombre )VALUES
('Alejandro Suarez')
INSERT INTO Autor(Nombre )VALUES
('Pablo Vaquez')
INSERT INTO Autor(Nombre )VALUES
('Anderson Parada')
INSERT INTO Autor(Nombre )VALUES
('Eli Mazariegos')
INSERT INTO Autor(Nombre )VALUES
('Esvin Mariano')
INSERT INTO Autor(Nombre )VALUES
('Popol Vuh')

SELECT *FROM Autor 


GO
INSERT INTO Libros(Titulo, Editorial, ISBN, Paginas, IdAutor)VALUES
('el paraiso', 'santillana,', 4444, 200, 1)
INSERT INTO Libros(Titulo, Editorial, ISBN, Paginas, IdAutor)VALUES
('arcoirirs', 'server,', 3333, 250, 2)
INSERT INTO Libros(Titulo, Editorial, ISBN, Paginas, IdAutor)VALUES
('la selva', 'cantassa,', 2222, 120, 3)
INSERT INTO Libros(Titulo, Editorial, ISBN, Paginas, IdAutor)VALUES
('maravillas', 'peass,', 1111, 125, 4)
INSERT INTO Libros(Titulo, Editorial, ISBN, Paginas, IdAutor)VALUES
('la casa', 'powers quiz,', 5555, 300, 5)
INSERT INTO Libros(Titulo, Editorial, ISBN, Paginas, IdAutor)VALUES
('la comunicacion', 'piedra santa,', 7777, 400, 6)
INSERT INTO Libros(Titulo, Editorial, ISBN, Paginas, IdAutor)VALUES
('los seminarios', 'eddesaa,', 9999, 220, 7)
INSERT INTO Libros(Titulo, Editorial, ISBN, Paginas, IdAutor)VALUES
('la novela', 'Santossa,', 4554, 350, 8)
INSERT INTO Libros(Titulo, Editorial, ISBN, Paginas, IdAutor)VALUES
('programacion', 'soliz,', 2121, 100, 9)
INSERT INTO Libros(Titulo, Editorial, ISBN, Paginas, IdAutor)VALUES
('mas alla', 'cass,', 4432, 50, 10)

SELECT *FROM Libros

GO
INSERT INTO Ejemplar(localizacion, idlibro)VALUES
('AAAA', 1)
INSERT INTO Ejemplar(localizacion, idlibro)VALUES
('BBBB', 2)
INSERT INTO Ejemplar(localizacion, idlibro)VALUES
('CCCC', 3)
INSERT INTO Ejemplar(localizacion, idlibro)VALUES
('DDDD', 4)
INSERT INTO Ejemplar(localizacion, idlibro)VALUES
('EEEE', 5)
INSERT INTO Ejemplar(localizacion, idlibro)VALUES
('FFFF', 6)
INSERT INTO Ejemplar(localizacion, idlibro)VALUES
('GGGG', 7)
INSERT INTO Ejemplar(localizacion, idlibro)VALUES
('HHHH', 8)
INSERT INTO Ejemplar(localizacion, idlibro)VALUES
('IIII', 9)
INSERT INTO Ejemplar(localizacion, idlibro)VALUES
('MMMM', 10)

SELECT *FROM Ejemplar 

GO
INSERT INTO Prestano(idUsuario, idEjemplar,FechaPrestamo, FechaLimite, FechaDevolucion)VALUES
(1,1, '2011-03-12', '2011-03-20', '2011-03-17')
INSERT INTO Prestano(idUsuario, idEjemplar, FechaPrestamo,FechaLimite, FechaDevolucion)VALUES
(2,2, '2012-03-12', '2012-03-20', '2012-03-17')
INSERT INTO Prestano(idUsuario, idEjemplar, FechaPrestamo,FechaLimite, FechaDevolucion)VALUES
(3,3, '2013-03-12', '2013-03-20', '2013-03-17')
INSERT INTO Prestano(idUsuario, idEjemplar,FechaPrestamo, FechaLimite, FechaDevolucion)VALUES
(4,4, '2014-03-12', '2014-03-20', '2014-03-17')
INSERT INTO Prestano(idUsuario, idEjemplar,FechaPrestamo, FechaLimite, FechaDevolucion)VALUES
(5,5, '2015-03-12', '2015-03-20', '2015-03-17')
INSERT INTO Prestano(idUsuario, idEjemplar,FechaPrestamo, FechaLimite, FechaDevolucion)VALUES
(6,6, '2010-03-12', '2010-03-20', '2010-03-17')
INSERT INTO Prestano(idUsuario, idEjemplar,FechaPrestamo, FechaLimite, FechaDevolucion)VALUES
(7,7, '2009-03-12', '2009-03-20', '2009-03-17')
INSERT INTO Prestano(idUsuario, idEjemplar,FechaPrestamo, FechaLimite, FechaDevolucion)VALUES
(8,8, '2008-03-12', '2008-03-20', '2008-03-17')
INSERT INTO Prestano(idUsuario, idEjemplar,FechaPrestamo, FechaLimite, FechaDevolucion)VALUES
(9,9, '2006-03-12', '2006-03-20', '2006-03-17')
INSERT INTO Prestano(idUsuario, idEjemplar,FechaPrestamo, FechaLimite, FechaDevolucion)VALUES
(10,10,'2007-03-12', '2007-03-20', '2007-03-17')

SELECT * FROM Prestano 