USE [master]
GO
/****** Object:  Database [TP_Sql_Grupo17]    Script Date: 19-Oct-18 7:29:56 PM ******/
CREATE DATABASE [TP_Sql_Grupo17]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TP_Sql_Grupo17', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TP_Sql_Grupo17.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TP_Sql_Grupo17_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TP_Sql_Grupo17_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TP_Sql_Grupo17] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TP_Sql_Grupo17].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TP_Sql_Grupo17] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET ARITHABORT OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET  MULTI_USER 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TP_Sql_Grupo17] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TP_Sql_Grupo17] SET QUERY_STORE = OFF
GO
USE [TP_Sql_Grupo17]
GO
/****** Object:  Table [dbo].[Aloja]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aloja](
	[codigo_pais] [int] NOT NULL,
	[anio_mundial] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_pais] ASC,
	[anio_mundial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[codigo_ciudad] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director_Tecnico]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director_Tecnico](
	[pasaporte_dt] [varchar](20) NOT NULL,
	[matricula] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pasaporte_dt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[codigo_pais] [int] NOT NULL,
	[anio_mundial] [int] NOT NULL,
	[pasaporte_dt] [varchar](20) NOT NULL,
	[cant_rojas] [int] NULL,
	[cant_amarillas] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_pais] ASC,
	[anio_mundial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estadio]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estadio](
	[codigo_estadio] [int] NOT NULL,
	[nombre_estadio] [varchar](50) NOT NULL,
	[codigo_ciudad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_estadio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gol]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gol](
	[anio_mundial] [int] NOT NULL,
	[numero_partido] [int] NOT NULL,
	[codigo_tipo_gol] [int] NOT NULL,
	[pasaporte_jugador] [varchar](20) NOT NULL,
	[tiempo_gol] [timestamp] NOT NULL,
	[en_contra] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[anio_mundial] ASC,
	[numero_partido] ASC,
	[tiempo_gol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[codigo_grupo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instancia]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instancia](
	[codigo_instancia] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_instancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Juega_En]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Juega_En](
	[codigo_pais] [int] NOT NULL,
	[anio_mundial] [int] NOT NULL,
	[pasaporte_jugador] [varchar](20) NOT NULL,
	[numero_camiseta] [int] NOT NULL,
	[es_titular] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_pais] ASC,
	[anio_mundial] ASC,
	[pasaporte_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[pasaporte_jugador] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pasaporte_jugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mundial]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mundial](
	[anio_mundial] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[anio_mundial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[codigo_pais] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partido](
	[anio_mundial] [int] NOT NULL,
	[codigo_instancia] [int] NOT NULL,
	[codigo_grupo] [int] NULL,
	[codigo_estadio] [int] NOT NULL,
	[codigo_pais_1] [int] NOT NULL,
	[anio_mundial_1] [int] NOT NULL,
	[codigo_pais_2] [int] NOT NULL,
	[anio_mundial_2] [int] NOT NULL,
	[numero_partido] [int] IDENTITY(1,1) NOT NULL,
	[fecha_hora] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[anio_mundial] ASC,
	[numero_partido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[pasaporte] [varchar](20) NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[nombre_apellido] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pasaporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Gol]    Script Date: 19-Oct-18 7:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Gol](
	[codigo_tipo_gol] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_tipo_gol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aloja]  WITH CHECK ADD FOREIGN KEY([anio_mundial])
REFERENCES [dbo].[Mundial] ([anio_mundial])
GO
ALTER TABLE [dbo].[Aloja]  WITH CHECK ADD FOREIGN KEY([codigo_pais])
REFERENCES [dbo].[Pais] ([codigo_pais])
GO
ALTER TABLE [dbo].[Director_Tecnico]  WITH CHECK ADD FOREIGN KEY([pasaporte_dt])
REFERENCES [dbo].[Persona] ([pasaporte])
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD FOREIGN KEY([anio_mundial])
REFERENCES [dbo].[Mundial] ([anio_mundial])
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD FOREIGN KEY([codigo_pais])
REFERENCES [dbo].[Pais] ([codigo_pais])
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD FOREIGN KEY([pasaporte_dt])
REFERENCES [dbo].[Director_Tecnico] ([pasaporte_dt])
GO
ALTER TABLE [dbo].[Estadio]  WITH CHECK ADD FOREIGN KEY([codigo_ciudad])
REFERENCES [dbo].[Ciudad] ([codigo_ciudad])
GO
ALTER TABLE [dbo].[Gol]  WITH CHECK ADD FOREIGN KEY([codigo_tipo_gol])
REFERENCES [dbo].[Tipo_Gol] ([codigo_tipo_gol])
GO
ALTER TABLE [dbo].[Gol]  WITH CHECK ADD FOREIGN KEY([pasaporte_jugador])
REFERENCES [dbo].[Jugador] ([pasaporte_jugador])
GO
ALTER TABLE [dbo].[Gol]  WITH CHECK ADD  CONSTRAINT [FK_Partido] FOREIGN KEY([anio_mundial], [numero_partido])
REFERENCES [dbo].[Partido] ([anio_mundial], [numero_partido])
GO
ALTER TABLE [dbo].[Gol] CHECK CONSTRAINT [FK_Partido]
GO
ALTER TABLE [dbo].[Juega_En]  WITH CHECK ADD FOREIGN KEY([anio_mundial])
REFERENCES [dbo].[Mundial] ([anio_mundial])
GO
ALTER TABLE [dbo].[Juega_En]  WITH CHECK ADD FOREIGN KEY([codigo_pais])
REFERENCES [dbo].[Pais] ([codigo_pais])
GO
ALTER TABLE [dbo].[Juega_En]  WITH CHECK ADD FOREIGN KEY([pasaporte_jugador])
REFERENCES [dbo].[Jugador] ([pasaporte_jugador])
GO
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD FOREIGN KEY([pasaporte_jugador])
REFERENCES [dbo].[Persona] ([pasaporte])
GO
ALTER TABLE [dbo].[Partido]  WITH CHECK ADD  CONSTRAINT [equipo_1] FOREIGN KEY([codigo_pais_1], [anio_mundial_1])
REFERENCES [dbo].[Equipo] ([codigo_pais], [anio_mundial])
GO
ALTER TABLE [dbo].[Partido] CHECK CONSTRAINT [equipo_1]
GO
ALTER TABLE [dbo].[Partido]  WITH CHECK ADD  CONSTRAINT [equipo_2] FOREIGN KEY([codigo_pais_2], [anio_mundial_2])
REFERENCES [dbo].[Equipo] ([codigo_pais], [anio_mundial])
GO
ALTER TABLE [dbo].[Partido] CHECK CONSTRAINT [equipo_2]
GO
ALTER TABLE [dbo].[Partido]  WITH CHECK ADD FOREIGN KEY([anio_mundial])
REFERENCES [dbo].[Mundial] ([anio_mundial])
GO
ALTER TABLE [dbo].[Partido]  WITH CHECK ADD FOREIGN KEY([codigo_instancia])
REFERENCES [dbo].[Instancia] ([codigo_instancia])
GO
ALTER TABLE [dbo].[Partido]  WITH CHECK ADD FOREIGN KEY([codigo_grupo])
REFERENCES [dbo].[Grupo] ([codigo_grupo])
GO
ALTER TABLE [dbo].[Partido]  WITH CHECK ADD FOREIGN KEY([codigo_estadio])
REFERENCES [dbo].[Estadio] ([codigo_estadio])
GO
USE [master]
GO
ALTER DATABASE [TP_Sql_Grupo17] SET  READ_WRITE 
GO
