USE [master]
GO
/****** Object:  Database [SchoolDB]    Script Date: 11/16/2020 10:59:50 PM ******/
CREATE DATABASE [SchoolDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SchoolDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SchoolDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SchoolDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SchoolDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SchoolDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SchoolDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SchoolDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SchoolDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SchoolDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SchoolDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SchoolDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SchoolDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SchoolDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SchoolDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SchoolDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SchoolDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SchoolDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SchoolDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SchoolDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SchoolDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SchoolDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SchoolDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SchoolDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SchoolDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SchoolDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SchoolDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SchoolDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SchoolDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SchoolDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SchoolDB] SET  MULTI_USER 
GO
ALTER DATABASE [SchoolDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SchoolDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SchoolDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SchoolDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SchoolDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SchoolDB] SET QUERY_STORE = OFF
GO
USE [SchoolDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/16/2020 10:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 11/16/2020 10:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Apellido] [nvarchar](max) NULL,
	[Dni] [nvarchar](max) NULL,
	[FechaNacimiento] [datetime2](7) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Telefono] [nvarchar](max) NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 11/16/2020 10:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sigla] [nvarchar](max) NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursoAlumno]    Script Date: 11/16/2020 10:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoAlumno](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AlumnoId] [int] NOT NULL,
	[CursoId] [int] NOT NULL,
 CONSTRAINT [PK_CursoAlumno] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CursoMateria]    Script Date: 11/16/2020 10:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CursoMateria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CursoId] [int] NOT NULL,
	[MateriaId] [int] NOT NULL,
 CONSTRAINT [PK_CursoMateria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 11/16/2020 10:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Anio] [int] NOT NULL,
 CONSTRAINT [PK_Materia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MateriaProfesor]    Script Date: 11/16/2020 10:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MateriaProfesor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfesorId] [int] NOT NULL,
	[MateriaId] [int] NOT NULL,
 CONSTRAINT [PK_MateriaProfesor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota]    Script Date: 11/16/2020 10:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AlumnoId] [int] NOT NULL,
	[MateriaId] [int] NOT NULL,
	[Nota1] [int] NOT NULL,
	[Cuatrimestre] [int] NOT NULL,
 CONSTRAINT [PK_Nota] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 11/16/2020 10:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Apellido] [nvarchar](max) NULL,
	[Dni] [nvarchar](max) NULL,
	[FechaNacimiento] [datetime2](7) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Telefono] [nvarchar](max) NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 11/16/2020 10:59:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [int] NOT NULL,
	[Login] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201027022208_MVCBasico12D.Context.SchoolDBContext', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201109230342_UsuaroMigration', N'3.1.9')
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 

INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (1, N'Matheo', N'Fernandez', N'51705700', CAST(N'1999-11-13T23:53:00.0000000' AS DateTime2), N'matheomike@outlook.com', N'63805362')
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (4, N'Alumno', N'Alumnito', N'11111111', CAST(N'1999-06-16T20:05:00.0000000' AS DateTime2), N'alumnito@gmail.com', N'12345678')
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (5, N'Severino', N'Rocha', N'87654321', CAST(N'2000-01-18T22:47:00.0000000' AS DateTime2), N'severinorosa@gmail.com', N'88884444')
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (6, N'Lionel', N'Messi', N'10101010', CAST(N'1996-07-12T04:01:00.0000000' AS DateTime2), N'liomessi@gmail.com', N'55556666')
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (7, N'Carlos', N'Tevez', N'11110000', CAST(N'1999-05-31T01:23:00.0000000' AS DateTime2), N'carlitostevez@gmail.com', N'54546565')
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (11, N'pepe', N'guardiola', N'77776666', CAST(N'2020-10-28T22:11:00.0000000' AS DateTime2), N'pepguardila@jaja.com', N'12311231')
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (12, N'roman', N'riquelme', N'88889999', CAST(N'2020-11-05T22:23:00.0000000' AS DateTime2), N'roman@elmasgrande.com', N'12365432')
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (13, N'muniieco', N'gallardo', N'89899898', CAST(N'2020-10-30T22:23:00.0000000' AS DateTime2), N'riber@gmail.com', N'99998888')
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (14, N'jorge', N'jorgito', N'58585858', CAST(N'2020-10-08T22:51:00.0000000' AS DateTime2), N'matheomike@outlook.com', N'63805362')
SET IDENTITY_INSERT [dbo].[Alumno] OFF
GO
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([Id], [Sigla]) VALUES (1, N'1A')
INSERT [dbo].[Curso] ([Id], [Sigla]) VALUES (2, N'1B')
INSERT [dbo].[Curso] ([Id], [Sigla]) VALUES (3, N'2A')
INSERT [dbo].[Curso] ([Id], [Sigla]) VALUES (4, N'3A')
SET IDENTITY_INSERT [dbo].[Curso] OFF
GO
SET IDENTITY_INSERT [dbo].[CursoAlumno] ON 

INSERT [dbo].[CursoAlumno] ([Id], [AlumnoId], [CursoId]) VALUES (5, 4, 2)
INSERT [dbo].[CursoAlumno] ([Id], [AlumnoId], [CursoId]) VALUES (7, 1, 2)
INSERT [dbo].[CursoAlumno] ([Id], [AlumnoId], [CursoId]) VALUES (8, 6, 2)
INSERT [dbo].[CursoAlumno] ([Id], [AlumnoId], [CursoId]) VALUES (9, 5, 2)
INSERT [dbo].[CursoAlumno] ([Id], [AlumnoId], [CursoId]) VALUES (10, 7, 1)
INSERT [dbo].[CursoAlumno] ([Id], [AlumnoId], [CursoId]) VALUES (15, 11, 2)
INSERT [dbo].[CursoAlumno] ([Id], [AlumnoId], [CursoId]) VALUES (16, 13, 2)
INSERT [dbo].[CursoAlumno] ([Id], [AlumnoId], [CursoId]) VALUES (17, 12, 1)
SET IDENTITY_INSERT [dbo].[CursoAlumno] OFF
GO
SET IDENTITY_INSERT [dbo].[CursoMateria] ON 

INSERT [dbo].[CursoMateria] ([Id], [CursoId], [MateriaId]) VALUES (2, 2, 1)
INSERT [dbo].[CursoMateria] ([Id], [CursoId], [MateriaId]) VALUES (3, 2, 2)
INSERT [dbo].[CursoMateria] ([Id], [CursoId], [MateriaId]) VALUES (4, 2, 3)
INSERT [dbo].[CursoMateria] ([Id], [CursoId], [MateriaId]) VALUES (5, 1, 1)
INSERT [dbo].[CursoMateria] ([Id], [CursoId], [MateriaId]) VALUES (6, 1, 2)
INSERT [dbo].[CursoMateria] ([Id], [CursoId], [MateriaId]) VALUES (7, 1, 3)
INSERT [dbo].[CursoMateria] ([Id], [CursoId], [MateriaId]) VALUES (8, 4, 4)
INSERT [dbo].[CursoMateria] ([Id], [CursoId], [MateriaId]) VALUES (11, 3, 7)
SET IDENTITY_INSERT [dbo].[CursoMateria] OFF
GO
SET IDENTITY_INSERT [dbo].[Materia] ON 

INSERT [dbo].[Materia] ([Id], [Nombre], [Anio]) VALUES (1, N'Matematica', 1)
INSERT [dbo].[Materia] ([Id], [Nombre], [Anio]) VALUES (2, N'Fisica', 1)
INSERT [dbo].[Materia] ([Id], [Nombre], [Anio]) VALUES (3, N'Quimica', 1)
INSERT [dbo].[Materia] ([Id], [Nombre], [Anio]) VALUES (4, N'Matematica', 3)
INSERT [dbo].[Materia] ([Id], [Nombre], [Anio]) VALUES (7, N'Matematica', 2)
SET IDENTITY_INSERT [dbo].[Materia] OFF
GO
SET IDENTITY_INSERT [dbo].[MateriaProfesor] ON 

INSERT [dbo].[MateriaProfesor] ([Id], [ProfesorId], [MateriaId]) VALUES (2, 1, 2)
INSERT [dbo].[MateriaProfesor] ([Id], [ProfesorId], [MateriaId]) VALUES (3, 2, 1)
INSERT [dbo].[MateriaProfesor] ([Id], [ProfesorId], [MateriaId]) VALUES (4, 3, 3)
SET IDENTITY_INSERT [dbo].[MateriaProfesor] OFF
GO
SET IDENTITY_INSERT [dbo].[Nota] ON 

INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (1, 1, 1, 7, 1)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (2, 1, 1, 10, 2)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (3, 1, 1, 8, 3)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (6, 4, 1, 7, 1)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (7, 5, 1, 9, 1)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (8, 6, 1, 10, 1)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (15, 7, 1, 7, 1)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (16, 7, 1, 6, 2)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (17, 4, 1, 8, 2)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (18, 7, 1, 8, 3)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (19, 4, 1, 8, 3)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (20, 1, 2, 5, 1)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (21, 1, 2, 6, 2)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (22, 1, 2, 7, 3)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (23, 1, 3, 9, 1)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (24, 1, 3, 8, 2)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (25, 1, 3, 10, 3)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (29, 5, 1, 0, 2)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (30, 5, 1, 3, 3)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (31, 6, 1, 9, 2)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (32, 6, 1, 6, 3)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (33, 4, 3, 6, 1)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (34, 4, 3, 8, 2)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (35, 4, 3, 8, 3)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (36, 5, 3, 5, 1)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (37, 6, 3, 10, 1)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (38, 5, 3, 7, 2)
INSERT [dbo].[Nota] ([Id], [AlumnoId], [MateriaId], [Nota1], [Cuatrimestre]) VALUES (39, 5, 3, 10, 3)
SET IDENTITY_INSERT [dbo].[Nota] OFF
GO
SET IDENTITY_INSERT [dbo].[Profesor] ON 

INSERT [dbo].[Profesor] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (1, N'Profesor', N'Girafales', N'10000000', CAST(N'1951-07-12T19:45:00.0000000' AS DateTime2), N'girafalesreal@chavo.com', N'123123123123')
INSERT [dbo].[Profesor] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (2, N'Jorge', N'Jesus', N'20192019', CAST(N'1973-06-06T00:22:00.0000000' AS DateTime2), N'jjmister@gmail.com', N'20199102')
INSERT [dbo].[Profesor] ([Id], [Nombre], [Apellido], [Dni], [FechaNacimiento], [Email], [Telefono]) VALUES (3, N'Diego', N'Maradona', N'86868686', CAST(N'1960-06-07T04:04:00.0000000' AS DateTime2), N'eldiego@gmail.com', N'78788686')
SET IDENTITY_INSERT [dbo].[Profesor] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (1, 0, N'admin', N'admin')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (2, 1, N'51705700', N'matheo')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (3, 2, N'10000000', N'profesor')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (4, 1, N'11111111', N'alumno')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (5, 1, N'87654321', N'severino')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (6, 2, N'20192019', N'jorge')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (7, 1, N'10101010', N'lionel')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (8, 2, N'86868686', N'diego')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (9, 1, N'11110000', N'carlos')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (15, 1, N'77776666', N'pepe')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (16, 1, N'88889999', N'roman')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (17, 1, N'89899898', N'muniieco')
INSERT [dbo].[Usuarios] ([Id], [Tipo], [Login], [Password]) VALUES (18, 1, N'58585858', N'jorge')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
USE [master]
GO
ALTER DATABASE [SchoolDB] SET  READ_WRITE 
GO
