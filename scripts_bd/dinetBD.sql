USE [master]
GO
/****** Object:  Database [dinetDemo]    Script Date: 26/08/2024 19:00:25 ******/
CREATE DATABASE [dinetDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dinetDemo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dinetDemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dinetDemo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dinetDemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dinetDemo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dinetDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dinetDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dinetDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dinetDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dinetDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dinetDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [dinetDemo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dinetDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dinetDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dinetDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dinetDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dinetDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dinetDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dinetDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dinetDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dinetDemo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dinetDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dinetDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dinetDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dinetDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dinetDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dinetDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dinetDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dinetDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dinetDemo] SET  MULTI_USER 
GO
ALTER DATABASE [dinetDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dinetDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dinetDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dinetDemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dinetDemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dinetDemo] SET QUERY_STORE = OFF
GO
USE [dinetDemo]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 26/08/2024 19:00:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Precio] [decimal](18, 2) NULL,
	[FechaCreacion] [datetime] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id], [Nombre], [Precio], [FechaCreacion]) VALUES (1, N'Lapiceros Pilot', CAST(3.50 AS Decimal(18, 2)), CAST(N'2024-08-26T15:44:46.370' AS DateTime))
INSERT [dbo].[Productos] ([Id], [Nombre], [Precio], [FechaCreacion]) VALUES (2, N'Resaltadores pastel', CAST(3.50 AS Decimal(18, 2)), CAST(N'2024-08-26T15:44:50.280' AS DateTime))
INSERT [dbo].[Productos] ([Id], [Nombre], [Precio], [FechaCreacion]) VALUES (3, N'Tarjador', CAST(2.50 AS Decimal(18, 2)), CAST(N'2024-08-22T15:44:46.370' AS DateTime))
INSERT [dbo].[Productos] ([Id], [Nombre], [Precio], [FechaCreacion]) VALUES (4, N'vxvcv', CAST(2.00 AS Decimal(18, 2)), CAST(N'2024-08-26T18:52:45.140' AS DateTime))
INSERT [dbo].[Productos] ([Id], [Nombre], [Precio], [FechaCreacion]) VALUES (5, N'vxvcv', CAST(2.00 AS Decimal(18, 2)), CAST(N'2024-08-26T18:53:09.183' AS DateTime))
INSERT [dbo].[Productos] ([Id], [Nombre], [Precio], [FechaCreacion]) VALUES (6, N'prueba', CAST(41.20 AS Decimal(18, 2)), CAST(N'2024-08-26T18:54:10.147' AS DateTime))
SET IDENTITY_INSERT [dbo].[Productos] OFF
USE [master]
GO
ALTER DATABASE [dinetDemo] SET  READ_WRITE 
GO
