USE [master]
GO
/****** Object:  Database [Carniceria]    Script Date: 12/7/2016 4:08:13 PM ******/
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
/****** Object:  Table [dbo].[Categoria_Producto]    Script Date: 12/7/2016 4:08:13 PM ******/
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
/****** Object:  Table [dbo].[Detalle_Factura]    Script Date: 12/7/2016 4:08:13 PM ******/
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
/****** Object:  Table [dbo].[Detalle_Ruta]    Script Date: 12/7/2016 4:08:13 PM ******/
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
/****** Object:  Table [dbo].[Factura]    Script Date: 12/7/2016 4:08:13 PM ******/
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
/****** Object:  Table [dbo].[Persona]    Script Date: 12/7/2016 4:08:13 PM ******/
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
/****** Object:  Table [dbo].[Producto]    Script Date: 12/7/2016 4:08:13 PM ******/
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
/****** Object:  Table [dbo].[Rol]    Script Date: 12/7/2016 4:08:13 PM ******/
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
/****** Object:  Table [dbo].[Ruta]    Script Date: 12/7/2016 4:08:13 PM ******/
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
SET IDENTITY_INSERT [dbo].[Categoria_Producto] ON 

INSERT [dbo].[Categoria_Producto] ([IdCategoria], [NombreCategoria], [Imagen]) VALUES (13, N'Carne de Res', N'res.jpg')
INSERT [dbo].[Categoria_Producto] ([IdCategoria], [NombreCategoria], [Imagen]) VALUES (14, N'Carne de Pollo', N'pollo.jpg')
INSERT [dbo].[Categoria_Producto] ([IdCategoria], [NombreCategoria], [Imagen]) VALUES (15, N'Carne de Cerdo', N'cerdo.jpg')
INSERT [dbo].[Categoria_Producto] ([IdCategoria], [NombreCategoria], [Imagen]) VALUES (16, N'Pescado', N'pescado.jpg')
INSERT [dbo].[Categoria_Producto] ([IdCategoria], [NombreCategoria], [Imagen]) VALUES (17, N'Carne de Conejo', N'conejo.jpg')
INSERT [dbo].[Categoria_Producto] ([IdCategoria], [NombreCategoria], [Imagen]) VALUES (18, N'Carne de Pavo', N'pavo.jpg')
SET IDENTITY_INSERT [dbo].[Categoria_Producto] OFF
INSERT [dbo].[Detalle_Factura] ([IdFactura], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (1, 56, 1, 1000)
INSERT [dbo].[Detalle_Factura] ([IdFactura], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (2, 58, 0.5, 1000)
SET IDENTITY_INSERT [dbo].[Factura] ON 

INSERT [dbo].[Factura] ([IdFactura], [FechaCompra], [TipoPago], [IdPersona]) VALUES (1, CAST(N'2016-12-07' AS Date), N'contado', 2)
INSERT [dbo].[Factura] ([IdFactura], [FechaCompra], [TipoPago], [IdPersona]) VALUES (2, CAST(N'2016-12-07' AS Date), N'tarjeta', 2)
SET IDENTITY_INSERT [dbo].[Factura] OFF
SET IDENTITY_INSERT [dbo].[Persona] ON 

INSERT [dbo].[Persona] ([IdPersona], [Nombre], [PrimerApellido], [SegundoApellido], [Telefono], [Direccion], [Email], [IdRol], [Contrasena], [NombreUsuario]) VALUES (1, N'Gabriela', N'Sanchez', N'Alvarado', 56565656, N'Heredia', N'gabskatze@gmail.com', 3, N'123', N'distribuidor')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [PrimerApellido], [SegundoApellido], [Telefono], [Direccion], [Email], [IdRol], [Contrasena], [NombreUsuario]) VALUES (2, N'Ashley', N'Padilla', N'Reñazco', 45454545, N'Guapiles', N'apadilla@micorreo.com', 2, N'123', N'cliente')
INSERT [dbo].[Persona] ([IdPersona], [Nombre], [PrimerApellido], [SegundoApellido], [Telefono], [Direccion], [Email], [IdRol], [Contrasena], [NombreUsuario]) VALUES (3, N'Karen', N'Aguilar', N'Garita', 12121212, N'Limon', N'kaguilar@micorreo.com', 1, N'123', N'administrador')
SET IDENTITY_INSERT [dbo].[Persona] OFF
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (56, N'Filete T-Bone/Porterhouse', 13, 50, N'tbone.jpg', N'Es un corte muy popular y fácil de diferenciar. El lomo tiene excelente textura y sabor. La parte del filete es más suave. No tiene mucha grasa y se venden en todas partes.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (57, N'Lomo (Tenderloin Steak)', 13, 50, N'Lomo (Tenderloin Steak).jpg', N'También conocido como lomito, lomo fino o solomillo. Es un corte del centro del lomo y es muy costoso. Tiene un gran sabor y su carne es tierna.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (58, N'Cola de Cuadril (Tri-Tip Steak)', 13, 50, N'Cola de Cuadril (Tri-Tip Steak).jpg', N'Es el corte favorito del famoso asado californiano. Tiene forma triangular y es grueso, por eso es mejor cubrirlo para cocinarlo. Método sugerido de cocción: Estofado, a la parrilla o a la plancha.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (59, N'Churrasco o Solomillo (Top Sirloin)', 13, 50, N'Churrasco o Solomillo (Top Sirloin).jpg', N'Es un corte de carne fino ovalado con grasa y ligero que tiene mucho sabor, jugos y textura. Este corte se obtiene de la parte superior del lomo y no contiene hueso.Método sugerido de cocción: Al horno.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (60, N'Bife Ancho (Rib Eye Steak)', 13, 50, N'Bife Ancho (Rib Eye Steak).jpg', N'Es uno de los cortes más finos, suaves y caros en el mercado. Proviene de la quinta a la décima primera vértebra del costillar de la res. Su carne es blanda y posee una gran cantidad de grasa que lo hace más tierno y de gran sabor. Método sugerido de cocción: A la parrilla, plancha o guisado.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (61, N'Bife Ancho con Hueso (Bone-In Rib-Eye)', 13, 50, N'Bife Ancho con Hueso (Bone-In Rib-Eye).jpg', N'Tiene forma de paleta y es muy suave y jugoso. Contiene un poco de grasa y se obtiene del costillar de la res. Método sugerido de cocción: A la plancha o a la parrilla.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (62, N'Asado de Tira (Back Ribs)', 13, 50, N'Asado de Tira (Back Ribs).jpg', N'Es un corte que proviene de la costilla de la res. Tiene abundante grasa y es alargado, con pequeños huesos intermedios. Suele ser la parte más tierna y carnosa. Método sugerido de cocción: A la plancha o a la parrilla (para conservar sus jugos y suavidad).', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (63, N'Falda (Skirt Steak)', 13, 50, N'Falda (Skirt Steak).jpg', N'También conocido como arrachera o sobrebarriga. Es un corte que proviene del diafragma y se caracteriza por tener mucho sabor. Es ideal para preparar fajitas. Método sugerido de cocción: Estofado o a la parrilla (marinar antes).', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (64, N'Bife de Vacío (Flank Steak)', 13, 50, N'Bife de Vacio (Flank Steak).jpg', N'Este corte es parte del diafragma pegado a las costillas. Es muy popular, parecido a la falda porque también es un corte magro y lleno de sabor. Método sugerido de cocción: Estofado o a la parrilla (marinar antes).', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (65, N'Pecho (Brisket)', 13, 50, N'Pecho (Brisket).jpg', N'Es un corte de carne de la zona del pecho, justamente detrás de la pierna del frente. Es una carne muy versátil, pero algo dura. Método sugerido de cocción: Estofado o ahumado.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (66, N'Nalga (Top Round Steak)', 13, 50, N'Nalga (Top Round Steak).jpg', N'Es el corte principal que comprende la parte superior de la pata trasera. La falta de grasa hace que sea seco cuando se hace a la parrilla. Método sugerido de cocción: Estofado, a la parrilla o al horno.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (67, N'Carcasa', 14, 50, N'carcasa_pollo.jpg', N'Formada por los huesos que comprenden las costillas y la columna, una vez que se han retirado tanto el cuello, como las pechugas. También se usa muchísimo para la realización de fondos.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (68, N'Cuartos delanteros', 14, 50, N'Cuartos delanteros.jpg', N'Son las pechugas y las alitas. Evidentemente la utilización en cocina es muy extensa: ya sea para freír, para asar, para arroces, para fondos, para lo que queramos prácticamente.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (69, N'Suprema', 14, 50, N'Suprema de-pollo.jpg', N'O lo que es lo mismo el cuarto delantero sin los huesos del tórax, con el hueso de la alita y la carne que le rodea. Aunque también se puede encontrar sin huesos, sin la alita y sin la piel. Suele ser utilizada para saltear o asar normalmente.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (70, N'Troceado', 14, 50, N'Troceado de pollo.jpg', N'El troceado de la pechuga se debe realizar de forma transversal y lo podemos usar para salteados y arroz.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (71, N'Filete', 14, 50, N'Filete-de-pollo.jpg', N'Los filetes de la pechuga se consiguen abriendo la pechuga por la mitad como si fuera un libro. En este caso se suele usar para empanar y para la plancha.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (72, N'Alita', 14, 50, N'AlitaPollo.jpg', N'Una alita va desde la base del hueso. Se suele usar para freír, o para barbacoa.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (73, N'Cuartos traseros', 14, 50, N'cuartostraseros-pollo.jpg', N'Formado por los muslos y los contramuslos. Quizás es la parte más sabrosa a la hora de cocinar.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (74, N'Muslo', 14, 50, N'musloPollo.jpg', N'Se le puede llamar jamoncito y se deja entero, siempre con piel. Se puede freír, saltear y en arroz', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (75, N'Contramuslo', 14, 50, N'contramusloPollo.jpg', N'Unido al muslo tampoco se le retira la piel. También se usa para freír, saltear y en arroz.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (76, N'Pierna trasera', 15, 50, N'piernaCerdo.jpg', N'Se hornea en diferentes formas. La carne maciza (sin hueso) partida en trocitos es para guisados.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (77, N'Chamorro', 15, 50, N'chamorroCerdo.jpg', N' Es la parte de la pierna, junto a los codillos, manitas y patas. Se cocina al horno, como carnitas.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (78, N'Lomo', 15, 50, N'lomoCerdo.jpg', N'Es el costillar sin hueso. Se cocina al horno en trozos fritos, cocidos o simplemente en pequeños filetes o empanizados.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (79, N'Costilla', 15, 50, N'costillaCerdo.jpg', N' Es la parte interior del lomo. Se puede asar al carbón, a la plancha o prepararse en guisados. Las costillas pueden ser aplanadas o sin aplanar. Se corta en porciones individuales.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (80, N'Falda', 15, 50, N'faldaCerdo.jpg', N'Es la parte baja del cerdo, a un lado de la panza. Puede prepararse cocida y deshebrada. Cortada en trozos se cuece y luego se guisa.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (81, N'Manitas', 15, 50, N'manitasCerdo.jpg', N'Son las patas del cerdo. Se hacen cocidas, guisadas, a la vinagreta, capeadas, etc.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (82, N'Paletilla', 15, 50, N'paletilla-de-cerdo.jpg', N'Es la parte alta de la pierna delantera. Se corta en trozos para todo tipo de guisados.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (83, N'Espaldilla', 15, 50, N'espaldillaCerdo.jpg', N'Parte intermedia entre el costillar y la cabeza. Se utiliza en trozos para preparar guisados.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (84, N'Pulpa', 15, 50, N'pulpaCerdo.jpg', N'Es la parte alta de la pierna trasera del cerdo. No tiene hueso. Se prepara en trozos cocidos y fritos; tambien en bisteces.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (85, N'Espinazo', 15, 50, N'espinazoCerdo.jpg', N'Parte final del alto lomo. Se utiliza en guisados, cocido o frito.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (86, N'Cabeza de lomo', 15, 50, N'cabeza de lomoCerdo.jpg', N'Es la parte donde empieza el lomo. Se utiliza en trozos fritos, cocidos, guisados o en carnitas.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (87, N'Abadejo o bacalao fresco', 16, 50, N'abadejo.jpg', N'Pescado de mar o agua salada.Es de color grisáceo en el lomo, con el vientre blanco y con pequeñas escamas rectangulares, su carne blanca, laminada, con pequeñas espinas adheridas a su gruesa piel. Se prepara poché, a la parrilla, meuniere, saladoo seco, se le conoce como bacalao y tiene diferentes preparaciones.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (88, N'Anguila', 16, 50, N'anguila.jpg', N'Pescado de río o agua dulce. Su cuerpo es cilíndrico y alargado de color gris, de piel lisa, viscosa o gelatinosa. La cría de las anguilas se consumen hasta cierta edad y tamaño, tiene el cuerpo gris o transparente, reciben el nombre de angulas. Su carne es blanca y grasosa, se utilizan fritas, ahumadas, matelotte (guiso).', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (89, N'Arenques', 16, 50, N'arenque.jpg', N'Pescado de mar o agua salada. Su cuerpo es pequeño (aproximadamente 23 cm), boca pequeña, dientes en las dos mandíbulas, aletas centrales estrechas, de color azulado por el lomo y plateado por el vientre, tiene escamas. El arenque fresco se prepara emparrillado, meuniere, cocido, al gratén, etc. El arenque se debe condimentar siempre a base de sabores fuertes. Se prepara también en ahumados o salados y en aceite.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (90, N'Atún', 16, 50, N'atun.jpg', N'Pescado de mar o agua salada.Es de color negro azulado por el lomo y gris plateado por el vientre. Su tamaño varía de 2 a 5 metros en edad adulta. Su piel es lisa. El atún fresco se prepara en filetes, emparrillado, braseado, asado y en su forma más usual: en conserva al natural o en aceite. Gran pescado de carne muy roja y de gusto fuerte. La variedad llamada bonito es mucho más fina. Su época, en verano.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (91, N'Bagre', 16, 50, N'bagre.jpg', N'Pescado de río o agua dulce. Pescado alargado, de piel lisa o viscosa, su cabeza es grande y achatada, su color y tamaño es variado, de carne amarilla. Se usa en filete, guisado, poché, fumet.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (92, N'Boca Chica o Coporo', 16, 50, N'bocachica.jpg', N'Pescado de río o agua dulce. Su tamaño es grande puede alcanzar hasta tres kilos, de piel gris y escamosa, de carne amarillenta, tiene muchas espinas. Se usa en mousse, frito.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (93, N'Besugo', 16, 50, N'besugo.jpg', N'Muy estimado para asado entero. Su mejor época, de noviembre a marzo.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (94, N'Boquerón', 16, 50, N'boqueron.jpg', N'Pescado de mar o agua salada. Es semejante a la sardina, pero un poco más pequeño. Su carne es de color pardo con muchas espinas. Se conserva por mucho tiempo fileteado, salado y en aceite, recibiendo el nombre de anchoa.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (95, N'Pargo', 16, 50, N'pargo.jpg', N'Pescado de mar o agua salada. Su color es plateado anaranjado, con escamas. Su carne es blanca y se prepara igual que el mero. Parguito: De pequeño tamaño, tiene todas las características del pargo. Uso: Parrilla, papillotte, braseado.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (96, N'Salmón', 16, 50, N'salmon.jpg', N'Pescado de río o agua dulce. Su piel es gruesa, cubierta de escamas de color azul plateado en el lomo y blanco en el vientre, con manchas oscuras en los costados. El nace en río y a los dos años se dirige al mar, regresa al río a desovar. Su carne es rosada y se prepara poché, grillé, ahumado. Su carne rosada resulta exquisita, ya sea fresco o ahumado. Es un paescado algo graso, Se presta a guisos suculentos. Propio para asado al horno, emparrillado, cocido, guisado, etc.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (97, N'Sardinas', 16, 50, N'sardina.jpg', N'Pescado de mar o agua salada. Pequeño pez, abundantes espinas, carne oscura, firme. Uso: Parrilla, conserva en aceite.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (98, N'Tiburón', 16, 50, N'tiburon.jpg', N'Pescado de mar o agua salada. Pez grande, de distintas formas, de carne firme y rosada, de sabor delicado. Su aleta es muy utilizada en sopa. Uso: Ahumado, guisado, sopa, marinado.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (99, N'Trucha', 16, 50, N'trucha.jpg', N'Pescado de río o agua dulce. Tiene la carne blanca, aunque la hay salmoneada (carne color rosada). De tamaño y color distintos, su piel es lisa se puede criar en piscicultura, es un pez de arroyos fríos. (Área Andina Venezolana). Se prepara escalopada, meuniere, rellena o en filete.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (100, N'Canal', 17, 50, N'canal.jpg', N'Producto resultante de la faena de un animal de la especie Oryctolagus Cunículus una vez insensibilizado, desangrado, cuereado y eviscerado; desprovisto de cabeza, manos y patas (hasta las articulaciones del carpo y tarso), con o sin riñones.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (101, N'Pierna', 17, 50, N'pierna.jpg', N'Corte con hueso correspondiente a la porción caudal de la canal, que se obtiene de la sección transversal de la columna vertebral a nivel de la articulación lumbo-sacra.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (102, N'Espinazo Doble', 17, 50, N'espinazoDoble.jpg', N'Corte con hueso correspondiente a la región lumbar de la canal, que se obtiene mediante dos secciones transversales de la columna vertebral: uno a nivel de la articulación dorso-lumbar y otro a nivel de la articulación lumbo-sacra.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (103, N'Delantero deshuesado', 17, 50, N'delanteroDeshuesado.jpg', N'Corte correspondiente a la región cérvico-torácica, escapular y braquial de la canal, que se obtiene una vez retiradas sus bases óseas.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (104, N'Pavo entero', 18, 50, N'pavoEntero.jpg', N'Se vende entero y admite variedad de preparaciones. Especialmente asado al horno en fechas navideñas.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (105, N'Cogote', 18, 50, N'cogote.jpg', N'Es un trozo que no lleva mucha carne, generalmente junto con la carcaza y otras menudencias se lo utiliza para la elaboración de fondos, caldos, salsas y consomés. Otorgando muy buen sabor y nutrientes de todas sus partes.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (106, N'Pechuga', 18, 50, N'pechugaPavo.jpg', N'Como en toda ave, es el corte más magro del pavo y muy recomendable para dietas. Proporciona un 25% de proteínas de excelente calidad, potasio, fósforo, magnesio y selenio, con menos de un 1% de grasa, si se lo cocina sin piel que es donde se le concentra toda la grasa.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (107, N'Alas', 18, 50, N'alasPavo.jpg', N'Es un corte con poco contenido cárnico, y bastante difícil de retirarle toda la piel, lo que la vuelve más grasosa, pero indudablemente muy sabrosa para los que saben disfrutarla. Contiene cuatro veces más calorías que la pechuga y el dobre que el muslo.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (108, N'Contramuslo', 18, 50, N'contramusloPavo.jpg', N'Un corte de lujo, especial para hacer churrasquitos o formando parte del pavo asado o al horno. Muy carnoso, con muy buen sabor y con el doble de aporte calórico que la pechuga debido a la grasa intramuscular. Se recomienda quitarle la piel antes de consumir.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (109, N'Jamoncitos', 18, 50, N'jamoncitosPavo.jpg', N'Corte muy carnoso y muy sabroso. Contiene tres veces más grasa que la pechuga. Se recomienda quitar la piel para no consumir tanta grasa y colesterol. Si se lo cocina con piel, es mejor quitársela antes de comer la presa.', 1000)
INSERT [dbo].[Producto] ([IdProducto], [NombreProducto], [IdCategoria], [CantDisponible], [Imagen], [Descripcion], [Precio]) VALUES (110, N'Pata - muslo', 18, 50, N'patamusloPavo.jpg', N'Es un corte que puede llevar o no hueso y es muy carnoso. Muy sabroso rostizado, al horno o grillado. Siempre se recomienda quitarle la piel antes de cocinarlo, si se tiene problemas de colesterol.', 1000)
SET IDENTITY_INSERT [dbo].[Producto] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([IdRol], [Descripcion]) VALUES (1, N'Administrador')
INSERT [dbo].[Rol] ([IdRol], [Descripcion]) VALUES (2, N'Cliente')
INSERT [dbo].[Rol] ([IdRol], [Descripcion]) VALUES (3, N'Distribuidor')
SET IDENTITY_INSERT [dbo].[Rol] OFF
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
