USE [master]
GO
/****** Object:  Database [Carniceria]    Script Date: 12/7/2016 3:57:41 PM ******/
CREATE DATABASE [Carniceria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Carniceria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Carniceria.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Carniceria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Carniceria_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Carniceria] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Carniceria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Carniceria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Carniceria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Carniceria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Carniceria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Carniceria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Carniceria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Carniceria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Carniceria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Carniceria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Carniceria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Carniceria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Carniceria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Carniceria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Carniceria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Carniceria] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Carniceria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Carniceria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Carniceria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Carniceria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Carniceria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Carniceria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Carniceria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Carniceria] SET RECOVERY FULL 
GO
ALTER DATABASE [Carniceria] SET  MULTI_USER 
GO
ALTER DATABASE [Carniceria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Carniceria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Carniceria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Carniceria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Carniceria] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Carniceria', N'ON'
GO
USE [Carniceria]
GO
/****** Object:  Table [dbo].[Categoria_Producto]    Script Date: 12/7/2016 3:57:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria_Producto](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](30) NOT NULL,
	[Imagen] [varchar](50) NULL,
 CONSTRAINT [PK_Categoria_Producto] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Detalle_Factura]    Script Date: 12/7/2016 3:57:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Factura](
	[IdFactura] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [float] NOT NULL,
	[PrecioUnitario] [float] NOT NULL,
 CONSTRAINT [PK_Detalle_Factura] PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC,
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detalle_Ruta]    Script Date: 12/7/2016 3:57:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Ruta](
	[IdRuta] [int] NOT NULL,
	[IdFactura] [int] NOT NULL,
	[Entregado] [bit] NOT NULL,
 CONSTRAINT [PK_Detalle_Ruta] PRIMARY KEY CLUSTERED 
(
	[IdRuta] ASC,
	[IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factura]    Script Date: 12/7/2016 3:57:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Factura](
	[IdFactura] [int] IDENTITY(1,1) NOT NULL,
	[FechaCompra] [date] NOT NULL,
	[TipoPago] [varchar](15) NOT NULL,
	[IdPersona] [int] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 12/7/2016 3:57:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persona](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[PrimerApellido] [varchar](30) NOT NULL,
	[SegundoApellido] [varchar](30) NOT NULL,
	[Telefono] [int] NULL,
	[Direccion] [varchar](60) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[IdRol] [int] NOT NULL,
	[Contrasena] [varchar](20) NOT NULL,
	[NombreUsuario] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 12/7/2016 3:57:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [varchar](50) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[CantDisponible] [float] NOT NULL,
	[Imagen] [varchar](50) NULL,
	[Descripcion] [varchar](2000) NULL,
	[Precio] [float] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 12/7/2016 3:57:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rol](
	[IdRol] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[IdRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 12/7/2016 3:57:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[IdRuta] [int] IDENTITY(1,1) NOT NULL,
	[IdDistribuidor] [int] NOT NULL,
	[FechaEntrega] [date] NOT NULL,
 CONSTRAINT [PK_Ruta] PRIMARY KEY CLUSTERED 
(
	[IdRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Detalle_Factura]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Factura_Factura] FOREIGN KEY([IdFactura])
REFERENCES [dbo].[Factura] ([IdFactura])
GO
ALTER TABLE [dbo].[Detalle_Factura] CHECK CONSTRAINT [FK_Detalle_Factura_Factura]
GO
ALTER TABLE [dbo].[Detalle_Factura]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Factura_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([IdProducto])
GO
ALTER TABLE [dbo].[Detalle_Factura] CHECK CONSTRAINT [FK_Detalle_Factura_Producto]
GO
ALTER TABLE [dbo].[Detalle_Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Ruta_Factura] FOREIGN KEY([IdFactura])
REFERENCES [dbo].[Factura] ([IdFactura])
GO
ALTER TABLE [dbo].[Detalle_Ruta] CHECK CONSTRAINT [FK_Detalle_Ruta_Factura]
GO
ALTER TABLE [dbo].[Detalle_Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Ruta_Ruta] FOREIGN KEY([IdRuta])
REFERENCES [dbo].[Ruta] ([IdRuta])
GO
ALTER TABLE [dbo].[Detalle_Ruta] CHECK CONSTRAINT [FK_Detalle_Ruta_Ruta]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Persona]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Rol] FOREIGN KEY([IdRol])
REFERENCES [dbo].[Rol] ([IdRol])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Rol]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria_Producto] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria_Producto] ([IdCategoria])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria_Producto]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Persona] FOREIGN KEY([IdDistribuidor])
REFERENCES [dbo].[Persona] ([IdPersona])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Persona]
GO
USE [master]
GO
ALTER DATABASE [Carniceria] SET  READ_WRITE 
GO
