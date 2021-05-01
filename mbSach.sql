USE [master]
GO
/****** Object:  Database [MB_SACH]    Script Date: 5/4/2021 11:26:41 AM ******/
CREATE DATABASE [MB_SACH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MB_SACH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MB_SACH.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MB_SACH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MB_SACH_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MB_SACH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MB_SACH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MB_SACH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MB_SACH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MB_SACH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MB_SACH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MB_SACH] SET ARITHABORT OFF 
GO
ALTER DATABASE [MB_SACH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MB_SACH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MB_SACH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MB_SACH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MB_SACH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MB_SACH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MB_SACH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MB_SACH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MB_SACH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MB_SACH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MB_SACH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MB_SACH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MB_SACH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MB_SACH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MB_SACH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MB_SACH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MB_SACH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MB_SACH] SET RECOVERY FULL 
GO
ALTER DATABASE [MB_SACH] SET  MULTI_USER 
GO
ALTER DATABASE [MB_SACH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MB_SACH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MB_SACH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MB_SACH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MB_SACH] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MB_SACH', N'ON'
GO
USE [MB_SACH]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 5/4/2021 11:26:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Tittle] [nvarchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[BookDecription] [nvarchar](50) NULL,
	[PublishingCompany] [nvarchar](50) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/4/2021 11:26:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryDecription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/4/2021 11:26:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/4/2021 11:26:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/4/2021 11:26:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Book]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
USE [master]
GO
ALTER DATABASE [MB_SACH] SET  READ_WRITE 
GO
