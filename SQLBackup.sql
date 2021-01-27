USE [master]
GO
/****** Object:  Database [BookDB]    Script Date: 1/27/2021 5:23:37 PM ******/
CREATE DATABASE [BookDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BookDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BookDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BookDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BookDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BookDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookDB] SET  MULTI_USER 
GO
ALTER DATABASE [BookDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BookDB] SET QUERY_STORE = OFF
GO
USE [BookDB]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 1/27/2021 5:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[DisplayName] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[Thumbnails] [nvarchar](150) NOT NULL,
	[DownloadSize] [nvarchar](50) NULL,
	[DownloadLink] [nvarchar](150) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/27/2021 5:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (1, N'Provas', N'Provas', NULL, N'https://www.amarbooks.org/thumbs/1464940013.jpg', N'0.2 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Provas.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (2, N'Shastra Jatok', N'Shastra Jatok', NULL, N'https://www.amarbooks.org/thumbs/1464940030.jpg', N'0.77 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Shastra%20Jatok.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (3, N'Ponchom Purush', N'Ponchom Purush', NULL, N'https://www.amarbooks.org/thumbs/1464939995.jpg', N'3.1 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Ponchom%20Purush.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (4, N'Surupa Sarupa', N'Surupa Sarupa', NULL, N'https://www.amarbooks.org/thumbs/1464940047.jpg', N'2.03 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Surupa%20Sarupa.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (5, N'Akrur Songab', N'Akrur Songab', NULL, N'https://www.amarbooks.org/thumbs/1464939811.jpg', N'0.22 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Akrur%20Songab.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (6, N'Anyo Bhai', N'Anyo Bhai', NULL, N'https://www.amarbooks.org/thumbs/1464939845.jpg', N'1.3 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Anyo%20Bhai.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (7, N'Uponyas Ponchok', N'Uponyas Ponchok', NULL, N'https://www.amarbooks.org/thumbs/1464940066.jpg', N'6.03 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Uponyas%20Ponchok.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (8, N'Operation Orindom', N'Operation Orindom', NULL, N'https://www.amarbooks.org/thumbs/1464939977.jpg', N'3.91 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Operation%20Orindom.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (9, N'Meyeli', N'Meyeli', NULL, N'https://www.amarbooks.org/thumbs/1464939923.jpg', N'6.86 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Meyeli.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (10, N'All Ladies Vramon', N'All Ladies Vramon', NULL, N'https://www.amarbooks.org/thumbs/1464939828.jpg', N'0.5 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=All%20Ladies%20Vramon.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (11, N'Gandharbi', N'Gandharbi', NULL, N'https://www.amarbooks.org/thumbs/1464939886.jpg', N'9.39 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Gandharbi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (12, N'Ashani Sanket', N'Ashani Sanket', NULL, N'https://www.amarbooks.org/thumbs/1464940247.jpg', N'3.31 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Ashani%20Sanket.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (13, N'Saras Golpo', N'Saras Golpo', NULL, N'https://www.amarbooks.org/thumbs/1465445497.jpg', N'8.22 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Saras%20Golpo.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (14, N'He Aranya Katha Kao', N'He Aranya Katha Kao', NULL, N'https://www.amarbooks.org/thumbs/1465445327.jpg', N'8.75 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=He%20Aranya%20Katha%20Kao.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (15, N'Chander Pahar', N'Chander Pahar', NULL, N'https://www.amarbooks.org/thumbs/1573777072.jpg', N'1.18 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Chander%20Pahar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (16, N'Michmider Kabach', N'Michmider Kabach', NULL, N'https://www.amarbooks.org/thumbs/1573777672.jpg', N'0.73 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Michmider%20Kabach.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (17, N'Aranyak', N'Aranyak', NULL, N'https://www.amarbooks.org/thumbs/1464940229.jpg', N'3.1 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Aranyak.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (18, N'Patho Cheye', N'Patho Cheye', NULL, N'https://www.amarbooks.org/thumbs/1464940373.jpg', N'0.36 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Patho%20Cheye.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (19, N'Trinangkur', N'Trinangkur', NULL, N'https://www.amarbooks.org/thumbs/1464940409.jpg', N'4.73 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Trinangkur.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (20, N'Ahban', N'Ahban', NULL, N'https://www.amarbooks.org/thumbs/1464940212.jpg', N'1.97 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Ahban.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (21, N'Debjan', N'Debjan', NULL, N'https://www.amarbooks.org/thumbs/1464940301.jpg', N'8.58 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Debjan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (22, N'Kishore Somogro', N'Kishore Somogro', NULL, N'https://www.amarbooks.org/thumbs/1464940357.jpg', N'9.08 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Kishore%20Somogro.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (23, N'Pother Panchalii', N'Pother Panchalii', NULL, N'https://www.amarbooks.org/thumbs/1464940390.jpg', N'12.63 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Pother%20Panchalii.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (24, N'Dui Bari', N'Dui Bari', NULL, N'https://www.amarbooks.org/thumbs/1464940316.jpg', N'10.93 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Bibhutibhushan%20Bandopadhyay&f=Dui%20Bari.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (25, N'Basantika', N'Basantika', NULL, N'https://www.amarbooks.org/thumbs/1489973333.jpg', N'0.17 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Basantika.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (26, N'Vidyapati', N'Vidyapati', NULL, N'https://www.amarbooks.org/thumbs/1489972993.jpg', N'0.91 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Vidyapati.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (27, N'Ranga Joba', N'Ranga Joba', NULL, N'https://www.amarbooks.org/thumbs/1489976505.jpg', N'0.67 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Ranga%20Joba.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (28, N'Hena', N'Hena', NULL, N'https://www.amarbooks.org/thumbs/1489721642.jpg', N'4.91 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Hena.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (29, N'Samyabadi', N'Samyabadi', NULL, N'https://www.amarbooks.org/thumbs/1489717279.jpg', N'0.3 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Samyabadi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (30, N'Probondho', N'Probondho', NULL, N'https://www.amarbooks.org/thumbs/1489974054.jpg', N'2.4 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Probondho.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (31, N'Kuhelika', N'Kuhelika', NULL, N'https://www.amarbooks.org/thumbs/1489728820.jpg', N'2.72 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Kuhelika.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (32, N'Kobita-Songroho', N'Kobita-Songroho', NULL, N'https://www.amarbooks.org/thumbs/1466491209.jpg', N'0.61 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Kobita-Songroho.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (33, N'Nazrul Rochonaboli -02', N'Nazrul Rochonaboli -02', NULL, N'https://www.amarbooks.org/thumbs/1489637655.jpg', N'12.46 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Nazrul%20Rochonaboli%20-02.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (34, N'Shiuli Mala', N'Shiuli Mala', NULL, N'https://www.amarbooks.org/thumbs/1466484909.jpg', N'1.59 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Shiuli%20Mala.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (35, N'Nazrul-Geetika', N'Nazrul-Geetika', NULL, N'https://www.amarbooks.org/thumbs/1489728527.jpg', N'1.18 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Nazrul-Geetika.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (36, N'Rudra Mangal', N'Rudra Mangal', NULL, N'https://www.amarbooks.org/thumbs/1489722344.jpg', N'0.57 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Rudra%20Mangal.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (37, N'Agranthita Gaan', N'Agranthita Gaan', NULL, N'https://www.amarbooks.org/thumbs/1489978599.jpg', N'5.65 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Agranthita%20Gaan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (38, N'Agni Bina', N'Agni Bina', NULL, N'https://www.amarbooks.org/thumbs/1489711447.jpg', N'0.69 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Agni%20Bina.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (39, N'Bhangar Gaan', N'Bhangar Gaan', NULL, N'https://www.amarbooks.org/thumbs/1489712685.jpg', N'0.29 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Bhangar%20Gaan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (40, N'Nazrul Rochonaboli -07', N'Nazrul Rochonaboli -07', NULL, N'https://www.amarbooks.org/thumbs/1489637502.jpg', N'11.89 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Nazrul%20Rochonaboli%20-07.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (41, N'Sandhya Malati', N'Sandhya Malati', NULL, N'https://www.amarbooks.org/thumbs/1489807461.jpg', N'1.13 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Sandhya%20Malati.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (42, N'Geeti Satadal', N'Geeti Satadal', NULL, N'https://www.amarbooks.org/thumbs/1489977241.jpg', N'0.77 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Geeti%20Satadal.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (43, N'Gul Bagicha', N'Gul Bagicha', NULL, N'https://www.amarbooks.org/thumbs/1489979360.jpg', N'0.72 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Gul%20Bagicha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (44, N'Bibidh', N'Bibidh', NULL, N'https://www.amarbooks.org/thumbs/1489972873.jpg', N'1.34 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Bibidh.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (45, N'Byethar Daan', N'Byethar Daan', NULL, N'https://www.amarbooks.org/thumbs/1489712905.jpg', N'2.09 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Byethar%20Daan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (46, N'Aleya', N'Aleya', NULL, N'https://www.amarbooks.org/thumbs/1489713499.jpg', N'0.95 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Aleya.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (47, N'Ghumer Ghore', N'Ghumer Ghore', NULL, N'https://www.amarbooks.org/thumbs/1489721735.jpg', N'1.94 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Ghumer%20Ghore.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (48, N'Sondha', N'Sondha', NULL, N'https://www.amarbooks.org/thumbs/1489732485.jpg', N'0.53 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Sondha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (49, N'Bon Geeti', N'Bon Geeti', NULL, N'https://www.amarbooks.org/thumbs/1489973199.jpg', N'0.67 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Bon%20Geeti.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (50, N'Nazrul Rochonaboli -11', N'Nazrul Rochonaboli -11', NULL, N'https://www.amarbooks.org/thumbs/1489637436.jpg', N'9.61 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Nazrul%20Rochonaboli%20-11.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (51, N'Shapure', N'Shapure', NULL, N'https://www.amarbooks.org/thumbs/1489977872.jpg', N'0.25 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Shapure.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (52, N'Badol Borishone', N'Badol Borishone', NULL, N'https://www.amarbooks.org/thumbs/1489714317.jpg', N'1.77 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Badol%20Borishone.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (53, N'Modhumala', N'Modhumala', NULL, N'https://www.amarbooks.org/thumbs/1489977525.jpg', N'1.05 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Modhumala.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (54, N'Agranthita Galpo', N'Agranthita Galpo', NULL, N'https://www.amarbooks.org/thumbs/1489976831.jpg', N'0.37 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Agranthita%20Galpo.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (55, N'Putuler Biye', N'Putuler Biye', NULL, N'https://www.amarbooks.org/thumbs/1489808577.jpg', N'0.44 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Putuler%20Biye.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (56, N'Durdiner Jatri', N'Durdiner Jatri', NULL, N'https://www.amarbooks.org/thumbs/1489722216.jpg', N'0.36 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Durdiner%20Jatri.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (57, N'Kabya Ampara', N'Kabya Ampara', NULL, N'https://www.amarbooks.org/thumbs/1489973804.jpg', N'0.91 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Kabya%20Ampara.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (58, N'Nazrul Rochonaboli -12', N'Nazrul Rochonaboli -12', NULL, N'https://www.amarbooks.org/thumbs/1489637394.jpg', N'90.42 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Nazrul%20Rochonaboli%20-12.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (59, N'Biye Bari', N'Biye Bari', NULL, N'https://www.amarbooks.org/thumbs/1489808293.jpg', N'0.3 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Biye%20Bari.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (60, N'Nazrul Rochonaboli -10', N'Nazrul Rochonaboli -10', NULL, N'https://www.amarbooks.org/thumbs/1489637476.jpg', N'12.79 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Nazrul%20Rochonaboli%20-10.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (61, N'Sur O Shruti', N'Sur O Shruti', NULL, N'https://www.amarbooks.org/thumbs/1489974003.jpg', N'1.6 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Sur%20O%20Shruti.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (62, N'Sindhu Hindol', N'Sindhu Hindol', NULL, N'https://www.amarbooks.org/thumbs/1489727884.jpg', N'0.58 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Sindhu%20Hindol.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (63, N'Nazrul Rochonaboli -04', N'Nazrul Rochonaboli -04', NULL, N'https://www.amarbooks.org/thumbs/1489637602.jpg', N'10.27 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Nazrul%20Rochonaboli%20-04.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (64, N'Chandrabindu', N'Chandrabindu', NULL, N'https://www.amarbooks.org/thumbs/1489733772.jpg', N'0.63 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Chandrabindu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (65, N'Shesh Saogat', N'Shesh Saogat', NULL, N'https://www.amarbooks.org/thumbs/1489974187.jpg', N'1.55 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Shesh%20Saogat.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (66, N'Bisher Banshi', N'Bisher Banshi', NULL, N'https://www.amarbooks.org/thumbs/1489711971.jpg', N'2.97 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Bisher%20Banshi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (67, N'Badhon Hara', N'Badhon Hara', NULL, N'https://www.amarbooks.org/thumbs/1489713161.jpg', N'3.73 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Badhon%20Hara.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (68, N'Mrityukshuda', N'Mrityukshuda', NULL, N'https://www.amarbooks.org/thumbs/1489721586.jpg', N'2.63 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Mrityukshuda.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (69, N'Chhayanat', N'Chhayanat', NULL, N'https://www.amarbooks.org/thumbs/1489715511.jpg', N'1.42 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Chhayanat.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (70, N'Foni Monsha', N'Foni Monsha', NULL, N'https://www.amarbooks.org/thumbs/1489723479.jpg', N'0.58 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Foni%20Monsha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (71, N'Jugbani', N'Jugbani', NULL, N'https://www.amarbooks.org/thumbs/1489714847.jpg', N'1.93 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Jugbani.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (72, N'Maktab Sahitya', N'Maktab Sahitya', NULL, N'https://www.amarbooks.org/thumbs/1489977738.jpg', N'0.31 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Maktab%20Sahitya.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (73, N'Nazrul Rochonaboli -05', N'Nazrul Rochonaboli -05', NULL, N'https://www.amarbooks.org/thumbs/1489637574.jpg', N'10.57 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Nazrul%20Rochonaboli%20-05.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (74, N'Manik Bandyopadhyay Rachana Samagra-01', N'Manik Bandyopadhyay Rachana Samagra-01', NULL, N'https://www.amarbooks.org/thumbs/1489382342.jpg', N'27.21 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Manik%20Bandyopadhyay%20Rachana%20Samagra-01.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (75, N'Dhorabandha Jiban', N'Dhorabandha Jiban', NULL, N'https://www.amarbooks.org/thumbs/1489540391.jpg', N'1.91 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Dhorabandha%20Jiban.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (76, N'Paristhiti', N'Paristhiti', NULL, N'https://www.amarbooks.org/thumbs/1489541061.jpg', N'3.9 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Paristhiti.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (77, N'Putul Nacher Itikotha', N'Putul Nacher Itikotha', NULL, N'https://www.amarbooks.org/thumbs/1489221840.jpg', N'10.37 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Putul%20Nacher%20Itikotha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (78, N'Manik Bandyopadhyay Rachana Samagra-08', N'Manik Bandyopadhyay Rachana Samagra-08', NULL, N'https://www.amarbooks.org/thumbs/1489382140.jpg', N'24.92 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Manik%20Bandyopadhyay%20Rachana%20Samagra-08.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (79, N'Bhitemati', N'Bhitemati', NULL, N'https://www.amarbooks.org/thumbs/1489540098.jpg', N'2.08 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Bhitemati.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (80, N'Manik Bandyopadhyay Rachana Samagra-04', N'Manik Bandyopadhyay Rachana Samagra-04', NULL, N'https://www.amarbooks.org/thumbs/1489382255.jpg', N'135.63 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Manik%20Bandyopadhyay%20Rachana%20Samagra-04.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (81, N'Ohingsha', N'Ohingsha', NULL, N'https://www.amarbooks.org/thumbs/1489424582.jpg', N'7.18 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Ohingsha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (82, N'Padma Nadir Majhi', N'Padma Nadir Majhi', NULL, N'https://www.amarbooks.org/thumbs/1489417338.jpg', N'5.82 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Padma%20Nadir%20Majhi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (83, N'Pashapashi', N'Pashapashi', NULL, N'https://www.amarbooks.org/thumbs/1489541171.jpg', N'5.41 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Pashapashi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (84, N'Chato Bakulpurer Jatri', N'Chato Bakulpurer Jatri', NULL, N'https://www.amarbooks.org/thumbs/1489424671.jpg', N'1.99 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Chato%20Bakulpurer%20Jatri.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (85, N'Manik Bandyopadhyay Rachana Samagra-05', N'Manik Bandyopadhyay Rachana Samagra-05', NULL, N'https://www.amarbooks.org/thumbs/1489382224.jpg', N'23.57 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Manik%20Bandyopadhyay%20Rachana%20Samagra-05.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (86, N'Pesha', N'Pesha', NULL, N'https://www.amarbooks.org/thumbs/1489541264.jpg', N'4.72 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Pesha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (87, N'Amritasya Putrah', N'Amritasya Putrah', NULL, N'https://www.amarbooks.org/thumbs/1489539792.jpg', N'3.8 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Amritasya%20Putrah.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (88, N'Swadhinatar Swad', N'Swadhinatar Swad', NULL, N'https://www.amarbooks.org/thumbs/1489425170.jpg', N'6.87 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandyopadhyay&f=Swadhinatar%20Swad.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (89, N'post_title', N'post_title', NULL, N'post_thumbnail', N'book_size
', N'download_link', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (90, N'Sarbajanin', N'Sarbajanin', NULL, N'https://www.amarbooks.org/thumbs/1489541350.jpg', N'5.57 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Sarbajanin.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (91, N'Pratibimba', N'Pratibimba', NULL, N'https://www.amarbooks.org/thumbs/1489424994.jpg', N'4.55 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Pratibimba.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (92, N'Chhoto Boro', N'Chhoto Boro', NULL, N'https://www.amarbooks.org/thumbs/1489540296.jpg', N'3.56 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Chhoto%20Boro.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (93, N'Jibaner Jotilata', N'Jibaner Jotilata', NULL, N'https://www.amarbooks.org/thumbs/1489538779.jpg', N'3.17 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Jibaner%20Jotilata.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (94, N'Manik Bandyopadhyay Rachana Samagra-03', N'Manik Bandyopadhyay Rachana Samagra-03', NULL, N'https://www.amarbooks.org/thumbs/1489382283.jpg', N'26.15 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Manik%20Bandyopadhyay%20Rachana%20Samagra-03.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (95, N'Aj Kal Porshur Golpo', N'Aj Kal Porshur Golpo', NULL, N'https://www.amarbooks.org/thumbs/1489424325.jpg', N'3.74 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Aj%20Kal%20Porshur%20Golpo.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (96, N'Chhandapatan', N'Chhandapatan', NULL, N'https://www.amarbooks.org/thumbs/1489538896.jpg', N'3.01 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Chhandapatan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (97, N'Aadaayer Itihaas', N'Aadaayer Itihaas', NULL, N'https://www.amarbooks.org/thumbs/1489539702.jpg', N'1.81 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Aadaayer%20Itihaas.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (98, N'Arogyo', N'Arogyo', NULL, N'https://www.amarbooks.org/thumbs/1489539967.jpg', N'4.3 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Arogyo.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (99, N'Holud Pora', N'Holud Pora', NULL, N'https://www.amarbooks.org/thumbs/1489539378.jpg', N'14.06 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Holud%20Pora.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (100, N'Manik Bandyopadhyay Rachana Samagra-07', N'Manik Bandyopadhyay Rachana Samagra-07', NULL, N'https://www.amarbooks.org/thumbs/1489382164.jpg', N'23.38 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Manik%20Bandyopadhyay%20Rachana%20Samagra-07.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (101, N'Manik Bandyopadhyay Rachana Samagra-06', N'Manik Bandyopadhyay Rachana Samagra-06', NULL, N'https://www.amarbooks.org/thumbs/1489382192.jpg', N'25.87 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Manik%20Bandyopadhyay%20Rachana%20Samagra-06.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (102, N'Sonar Cheye Dami', N'Sonar Cheye Dami', NULL, N'https://www.amarbooks.org/thumbs/1489541411.jpg', N'7.11 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Sonar%20Cheye%20Dami.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (103, N'Sahartali', N'Sahartali', NULL, N'https://www.amarbooks.org/thumbs/1489539168.jpg', N'8.07 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Sahartali.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (104, N'Sarisrip', N'Sarisrip', NULL, N'https://www.amarbooks.org/thumbs/1489539211.jpg', N'4.13 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Sarisrip.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (105, N'Manik Bandyopadhyay Rachana Samagra-09', N'Manik Bandyopadhyay Rachana Samagra-09', NULL, N'https://www.amarbooks.org/thumbs/1489382043.jpg', N'25.58 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Manik%20Bandyopadhyay%20Rachana%20Samagra-09.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (106, N'Teish Bochhor Age Pore', N'Teish Bochhor Age Pore', NULL, N'https://www.amarbooks.org/thumbs/1489541485.jpg', N'4.41 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Teish%20Bochhor%20Age%20Pore.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (107, N'Matir Mashul', N'Matir Mashul', NULL, N'https://www.amarbooks.org/thumbs/1489540893.jpg', N'3.52 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Matir%20Mashul.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (108, N'Naagpaash', N'Naagpaash', NULL, N'https://www.amarbooks.org/thumbs/1489540974.jpg', N'5.06 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Naagpaash.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (109, N'Feriwala', N'Feriwala', NULL, N'https://www.amarbooks.org/thumbs/1489425100.jpg', N'3.07 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Feriwala.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (110, N'Manik Granthabali', N'Manik Granthabali', NULL, N'https://www.amarbooks.org/thumbs/1489382386.jpg', N'20.42 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sarat%20Chandra%20Chattopadhyay&f=Manik%20Granthabali.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (111, N'Kishore Cornel Samagra 1', N'Kishore Cornel Samagra 1', NULL, N'https://www.amarbooks.org/thumbs/1491446260.jpg', N'16.65 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Kishore%20Cornel%20Samagra%201.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (112, N'Cornel Samagra 2', N'Cornel Samagra 2', NULL, N'https://www.amarbooks.org/thumbs/1491449531.jpg', N'12.12 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Cornel%20Samagra%202.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (113, N'Boner Asar', N'Boner Asar', NULL, N'https://www.amarbooks.org/thumbs/1491704875.jpg', N'2.31 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Boner%20Asar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (114, N'Golpomala-3', N'Golpomala-3', NULL, N'https://www.amarbooks.org/thumbs/1491443843.jpg', N'23.79 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Golpomala-3.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (115, N'Haoya Sap', N'Haoya Sap', NULL, N'https://www.amarbooks.org/thumbs/1491703885.jpg', N'5.58 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Haoya%20Sap.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (116, N'Plabon', N'Plabon', NULL, N'https://www.amarbooks.org/thumbs/1464949867.jpg', N'22.18 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Plabon.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (117, N'Krishna Bari Fereni', N'Krishna Bari Fereni', NULL, N'https://www.amarbooks.org/thumbs/1491704050.jpg', N'6.17 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Krishna%20Bari%20Fereni.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (118, N'Kuashar Rang', N'Kuashar Rang', NULL, N'https://www.amarbooks.org/thumbs/1491704094.jpg', N'6.83 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Kuashar%20Rang.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (119, N'Kishore Cornel Samagra 2', N'Kishore Cornel Samagra 2', NULL, N'https://www.amarbooks.org/thumbs/1491448497.jpg', N'10.26 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Kishore%20Cornel%20Samagra%202.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (120, N'Thrillar Saptak', N'Thrillar Saptak', NULL, N'https://www.amarbooks.org/thumbs/1491705057.jpg', N'20.21 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Thrillar%20Saptak.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (121, N'Nil Machi', N'Nil Machi', NULL, N'https://www.amarbooks.org/thumbs/1464949820.jpg', N'19.66 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Nil%20Machi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (122, N'Swarnachampar Upakkhyan', N'Swarnachampar Upakkhyan', NULL, N'https://www.amarbooks.org/thumbs/1491704932.jpg', N'9.94 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Swarnachampar%20Upakkhyan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (123, N'Bishakha Tomar Name', N'Bishakha Tomar Name', NULL, N'https://www.amarbooks.org/thumbs/1491463940.jpg', N'4.08 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Bishakha%20Tomar%20Name.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (124, N'Hemanter Barnamala', N'Hemanter Barnamala', NULL, N'https://www.amarbooks.org/thumbs/1491703939.jpg', N'4.71 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Hemanter%20Barnamala.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (125, N'Aroop Ratan', N'Aroop Ratan', NULL, N'https://www.amarbooks.org/thumbs/1491462832.jpg', N'6.52 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Aroop%20Ratan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (126, N'Adventure Amnibus', N'Adventure Amnibus', NULL, N'https://www.amarbooks.org/thumbs/1491458323.jpg', N'9 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Adventure%20Amnibus.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (127, N'Amartya Premkatha', N'Amartya Premkatha', NULL, N'https://www.amarbooks.org/thumbs/1491461875.jpg', N'13.44 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Amartya%20Premkatha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (128, N'Bhalobasa', N'Bhalobasa', NULL, N'https://www.amarbooks.org/thumbs/1491704642.jpg', N'10.47 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Bhalobasa.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (129, N'Kamanar Sukh Dukha', N'Kamanar Sukh Dukha', NULL, N'https://www.amarbooks.org/thumbs/1491705032.jpg', N'5.66 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Kamanar%20Sukh%20Dukha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (130, N'Mayamridanga', N'Mayamridanga', NULL, N'https://www.amarbooks.org/thumbs/1491442022.jpg', N'6.32 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Mayamridanga.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (131, N'Ashariri Jharh', N'Ashariri Jharh', NULL, N'https://www.amarbooks.org/thumbs/1491463003.jpg', N'6.81 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Ashariri%20Jharh.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (132, N'Basanta Rater Jharh', N'Basanta Rater Jharh', NULL, N'https://www.amarbooks.org/thumbs/1491463469.jpg', N'10.05 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Basanta%20Rater%20Jharh.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (133, N'Bedboti', N'Bedboti', NULL, N'https://www.amarbooks.org/thumbs/1464949754.jpg', N'13.74 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Bedboti.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (134, N'Megher Pore Rod', N'Megher Pore Rod', NULL, N'https://www.amarbooks.org/thumbs/1464949801.jpg', N'2.96 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Megher%20Pore%20Rod.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (135, N'Dashti Upanyas', N'Dashti Upanyas', NULL, N'https://www.amarbooks.org/thumbs/1491704981.jpg', N'31.44 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Dashti%20Upanyas.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (136, N'Kishore Cornel Samagra 3', N'Kishore Cornel Samagra 3', NULL, N'https://www.amarbooks.org/thumbs/1491446217.jpg', N'20.37 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Kishore%20Cornel%20Samagra%203.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (137, N'Takhan Anek Rat', N'Takhan Anek Rat', NULL, N'https://www.amarbooks.org/thumbs/1491704556.jpg', N'5.36 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Takhan%20Anek%20Rat.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (138, N'Ekdojon Cornnel', N'Ekdojon Cornnel', NULL, N'https://www.amarbooks.org/thumbs/1491705006.jpg', N'8.83 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Ekdojon%20Cornnel.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (139, N'Operation Red Hering', N'Operation Red Hering', NULL, N'https://www.amarbooks.org/thumbs/1464949854.jpg', N'17.67 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Operation%20Red%20Hering.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (140, N'Sera Crime', N'Sera Crime', NULL, N'https://www.amarbooks.org/thumbs/1491705079.jpg', N'12.84 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Sera%20Crime.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (141, N'Nishiddho Oronno', N'Nishiddho Oronno', NULL, N'https://www.amarbooks.org/thumbs/1464949838.jpg', N'15.13 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Nishiddho%20Oronno.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (142, N'Shrestha Galpa', N'Shrestha Galpa', NULL, N'https://www.amarbooks.org/thumbs/1491704958.jpg', N'8.76 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Shrestha%20Galpa.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (143, N'Arek Falgun', N'Arek Falgun', NULL, N'https://www.amarbooks.org/thumbs/1573780900.jpg', N'1.49 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Zahir%20Raihan&f=Arek%20Falgun.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (144, N'Hajar Bochor Dhore', N'Hajar Bochor Dhore', NULL, N'https://www.amarbooks.org/thumbs/1573780991.jpg', N'1.43 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Zahir%20Raihan&f=Hajar%20Bochor%20Dhore.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (145, N'Ar Kotodin', N'Ar Kotodin', NULL, N'https://www.amarbooks.org/thumbs/1466577738.jpg', N'6.81 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Zahir%20Raihan&f=Ar%20Kotodin.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (146, N'Trishna', N'Trishna', NULL, N'https://www.amarbooks.org/thumbs/1466576260.jpg', N'1.95 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Zahir%20Raihan&f=Trishna.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (147, N'Shesh Bikeler Meye', N'Shesh Bikeler Meye', NULL, N'https://www.amarbooks.org/thumbs/1573781029.jpg', N'1.72 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Zahir%20Raihan&f=Shesh%20Bikeler%20Meye.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (148, N'Koyekti Mrittyu', N'Koyekti Mrittyu', NULL, N'https://www.amarbooks.org/thumbs/1466578467.jpg', N'1.3 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Zahir%20Raihan&f=Koyekti%20Mrittyu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (149, N'Baraf Gola Nadi', N'Baraf Gola Nadi', NULL, N'https://www.amarbooks.org/thumbs/1573780952.jpg', N'2.03 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Zahir%20Raihan&f=Baraf%20Gola%20Nadi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (150, N'Ekushey February', N'Ekushey February', NULL, N'https://www.amarbooks.org/thumbs/1464949994.jpg', N'3.45 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Zahir%20Raihan&f=Ekushey%20February.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (151, N'Advuture', N'Advuture', NULL, N'https://www.amarbooks.org/thumbs/1561802275.jpg', N'5.78 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Advuture.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (152, N'Shirshendur Shera 101', N'Shirshendur Shera 101', NULL, N'https://www.amarbooks.org/thumbs/1467536392.jpg', N'23.75 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Shirshendur%20Shera%20101.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (153, N'Jhiler Dhare Bari', N'Jhiler Dhare Bari', NULL, N'https://www.amarbooks.org/thumbs/1467535985.jpg', N'1.98 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Jhiler%20Dhare%20Bari.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (154, N'Batukbabur Chashma', N'Batukbabur Chashma', NULL, N'https://www.amarbooks.org/thumbs/1561802420.jpg', N'1.14 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Batukbabur%20Chashma.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (155, N'Hridoy Bittanto', N'Hridoy Bittanto', NULL, N'https://www.amarbooks.org/thumbs/1467535960.jpg', N'1.53 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Hridoy%20Bittanto.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (156, N'Rahasya Samagra', N'Rahasya Samagra', NULL, N'https://www.amarbooks.org/thumbs/1467536299.jpg', N'36.18 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Rahasya%20Samagra.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (157, N'Jhuri Kuri Golpo', N'Jhuri Kuri Golpo', NULL, N'https://www.amarbooks.org/thumbs/1467536006.jpg', N'5.55 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Jhuri%20Kuri%20Golpo.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (158, N'Hirer Angti', N'Hirer Angti', NULL, N'https://www.amarbooks.org/thumbs/1467535938.jpg', N'1.43 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Hirer%20Angti.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (159, N'Nobiganjer Doitya', N'Nobiganjer Doitya', NULL, N'https://www.amarbooks.org/thumbs/1561896181.jpg', N'0.71 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Nobiganjer%20Doitya.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (160, N'Uhu', N'Uhu', NULL, N'https://www.amarbooks.org/thumbs/1562377283.jpg', N'0.82 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Uhu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (161, N'Hetam Garer Guptadhon', N'Hetam Garer Guptadhon', NULL, N'https://www.amarbooks.org/thumbs/1467535912.jpg', N'1.87 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Hetam%20Garer%20Guptadhon.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (162, N'Warish', N'Warish', NULL, N'https://www.amarbooks.org/thumbs/1467536437.jpg', N'1.57 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Warish.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (163, N'Dicarini', N'Dicarini', NULL, N'https://www.amarbooks.org/thumbs/1467535729.jpg', N'1.9 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Dicarini.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (164, N'Golmele Lok', N'Golmele Lok', NULL, N'https://www.amarbooks.org/thumbs/1467835875.jpg', N'1.01 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Golmele%20Lok.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (165, N'Mohon Rayer Banshi', N'Mohon Rayer Banshi', NULL, N'https://www.amarbooks.org/thumbs/1561896039.jpg', N'1.23 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Mohon%20Rayer%20Banshi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (166, N'Valobasha', N'Valobasha', NULL, N'https://www.amarbooks.org/thumbs/1467536414.jpg', N'24.59 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Valobasha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (167, N'Jiban Patra', N'Jiban Patra', NULL, N'https://www.amarbooks.org/thumbs/1467536028.jpg', N'1.79 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Jiban%20Patra.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (168, N'Boxer Ratan', N'Boxer Ratan', NULL, N'https://www.amarbooks.org/thumbs/1467535629.jpg', N'4.69 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Boxer%20Ratan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (169, N'8 Ti  Upanyas', N'8 Ti  Upanyas', NULL, N'https://www.amarbooks.org/thumbs/1467535461.jpg', N'16 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=8%20Ti%20%20Upanyas.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (170, N'Sholo Nombor Fotik Ghosh', N'Sholo Nombor Fotik Ghosh', NULL, N'https://www.amarbooks.org/thumbs/1562377363.jpg', N'0.7 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Sholo%20Nombor%20Fotik%20Ghosh.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (171, N'Asukher Pore', N'Asukher Pore', NULL, N'https://www.amarbooks.org/thumbs/1467535508.jpg', N'2.2 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Asukher%20Pore.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (172, N'Durbin', N'Durbin', NULL, N'https://www.amarbooks.org/thumbs/1562377556.jpg', N'14.84 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Durbin.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (173, N'Chakrapurer Chakkare', N'Chakrapurer Chakkare', NULL, N'https://www.amarbooks.org/thumbs/1561802517.jpg', N'0.97 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Chakrapurer%20Chakkare.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (174, N'Sonar Medel', N'Sonar Medel', NULL, N'https://www.amarbooks.org/thumbs/1562377318.jpg', N'0.79 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Sonar%20Medel.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (175, N'Nilu Hazrer Hotya Rohosya', N'Nilu Hazrer Hotya Rohosya', NULL, N'https://www.amarbooks.org/thumbs/1467536163.jpg', N'2.22 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Nilu%20Hazrer%20Hotya%20Rohosya.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (176, N'Din Jai', N'Din Jai', NULL, N'https://www.amarbooks.org/thumbs/1467535752.jpg', N'2.51 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Din%20Jai.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (177, N'Bus Stopey Keu Nei', N'Bus Stopey Keu Nei', NULL, N'https://www.amarbooks.org/thumbs/1467535652.jpg', N'1.52 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Bus%20Stopey%20Keu%20Nei.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (178, N'Pagla Gones', N'Pagla Gones', NULL, N'https://www.amarbooks.org/thumbs/1467536209.jpg', N'15.84 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Pagla%20Gones.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (179, N'Nrisingha Rahasya', N'Nrisingha Rahasya', NULL, N'https://www.amarbooks.org/thumbs/1467536187.jpg', N'2.89 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Nrisingha%20Rahasya.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (180, N'Dudhsayer Dwip', N'Dudhsayer Dwip', NULL, N'https://www.amarbooks.org/thumbs/1561802599.jpg', N'0.69 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Dudhsayer%20Dwip.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (181, N'Boni', N'Boni', NULL, N'https://www.amarbooks.org/thumbs/1467535607.jpg', N'1.9 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Boni.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (182, N'Sheulier Gandha', N'Sheulier Gandha', NULL, N'https://www.amarbooks.org/thumbs/1467536369.jpg', N'2.64 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Sheulier%20Gandha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (183, N'Jhikorgachar Jhanjhat', N'Jhikorgachar Jhanjhat', NULL, N'https://www.amarbooks.org/thumbs/1561895663.jpg', N'0.73 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Jhikorgachar%20Jhanjhat.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (184, N'Khoi', N'Khoi', NULL, N'https://www.amarbooks.org/thumbs/1467536093.jpg', N'1.21 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Khoi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (185, N'Lal Nil Manus', N'Lal Nil Manus', NULL, N'https://www.amarbooks.org/thumbs/1467536117.jpg', N'2.36 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Lal%20Nil%20Manus.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (186, N'Ghor Pache Pangobinda', N'Ghor Pache Pangobinda', NULL, N'https://www.amarbooks.org/thumbs/1561802631.jpg', N'0.69 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Ghor%20Pache%20Pangobinda.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (187, N'Astapurer Britanto', N'Astapurer Britanto', NULL, N'https://www.amarbooks.org/thumbs/1561802382.jpg', N'0.93 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Astapurer%20Britanto.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (188, N'Chokh', N'Chokh', NULL, N'https://www.amarbooks.org/thumbs/1467535707.jpg', N'2.75 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Chokh.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (189, N'Patalghar', N'Patalghar', NULL, N'https://www.amarbooks.org/thumbs/1561896297.jpg', N'2.57 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Patalghar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (190, N'Pagla Shaheber Kabor', N'Pagla Shaheber Kabor', NULL, N'https://www.amarbooks.org/thumbs/1561896246.jpg', N'0.92 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Pagla%20Shaheber%20Kabor.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (191, N'Gojananer Kouto', N'Gojananer Kouto', NULL, N'https://www.amarbooks.org/thumbs/1561802671.jpg', N'1 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Gojananer%20Kouto.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (192, N'Shadhubabar Lathi', N'Shadhubabar Lathi', NULL, N'https://www.amarbooks.org/thumbs/1562377400.jpg', N'0.96 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Shadhubabar%20Lathi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (193, N'PotashGarer Jongole', N'PotashGarer Jongole', NULL, N'https://www.amarbooks.org/thumbs/1467536277.jpg', N'4.28 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=PotashGarer%20Jongole.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (194, N'Sarbaneshe Bhul Anka', N'Sarbaneshe Bhul Anka', NULL, N'https://www.amarbooks.org/thumbs/1562377450.jpg', N'0.88 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Sarbaneshe%20Bhul%20Anka.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (195, N'Golmaal', N'Golmaal', NULL, N'https://www.amarbooks.org/thumbs/1467535818.jpg', N'3.49 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Golmaal.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (196, N'Rokter Bish', N'Rokter Bish', NULL, N'https://www.amarbooks.org/thumbs/1467536344.jpg', N'1.83 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Rokter%20Bish.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (197, N'Gourer Kabach', N'Gourer Kabach', NULL, N'https://www.amarbooks.org/thumbs/1467535863.jpg', N'1.91 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Gourer%20Kabach.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (198, N'Hatyapuri', N'Hatyapuri', NULL, N'https://www.amarbooks.org/thumbs/1573623317.jpg', N'1.78 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Hatyapuri.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (199, N'Badshahi Angti', N'Badshahi Angti', NULL, N'https://www.amarbooks.org/thumbs/1573607131.jpg', N'2.12 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Badshahi%20Angti.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (200, N'Bhusharga Bhayankar', N'Bhusharga Bhayankar', NULL, N'https://www.amarbooks.org/thumbs/1573621543.jpg', N'1.9 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Bhusharga%20Bhayankar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (201, N'Chinnomastar Obhishap', N'Chinnomastar Obhishap', NULL, N'https://www.amarbooks.org/thumbs/1573608535.jpg', N'1.6 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Chinnomastar%20Obhishap.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (202, N'Gangtok e Gondogol (Comics)', N'Gangtok e Gondogol (Comics)', NULL, N'https://www.amarbooks.org/thumbs/1467711460.jpg', N'11.48 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Gangtok%20e%20Gondogol%20(Comics).pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (203, N'Gosaipur Sargaram', N'Gosaipur Sargaram', NULL, N'https://www.amarbooks.org/thumbs/1573623082.jpg', N'1.35 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Gosaipur%20Sargaram.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (204, N'Feluda Somogro-2', N'Feluda Somogro-2', NULL, N'https://www.amarbooks.org/thumbs/1467711379.jpg', N'31.51 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Feluda%20Somogro-2.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (205, N'Feluda And Co', N'Feluda And Co', NULL, N'https://www.amarbooks.org/thumbs/1573620657.jpg', N'1.86 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Feluda%20And%20Co.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (206, N'Bomjatrir Dairy', N'Bomjatrir Dairy', NULL, N'https://www.amarbooks.org/thumbs/1573607877.jpg', N'0.9 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Bomjatrir%20Dairy.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (207, N'Joto Kando Katmandute', N'Joto Kando Katmandute', NULL, N'https://www.amarbooks.org/thumbs/1573625906.jpg', N'1.79 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Joto%20Kando%20Katmandute.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (208, N'Kailashey Kelenkari', N'Kailashey Kelenkari', NULL, N'https://www.amarbooks.org/thumbs/1573626182.jpg', N'2.88 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Kailashey%20Kelenkari.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (209, N'Jokhon Chhoto Chhilam', N'Jokhon Chhoto Chhilam', NULL, N'https://www.amarbooks.org/thumbs/1467711574.jpg', N'6.15 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Jokhon%20Chhoto%20Chhilam.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (210, N'Darjeling Jamjamat', N'Darjeling Jamjamat', NULL, N'https://www.amarbooks.org/thumbs/1573610961.jpg', N'1.68 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Darjeling%20Jamjamat.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (211, N'Ebar Kando Kedarnathe (Comics)', N'Ebar Kando Kedarnathe (Comics)', NULL, N'https://www.amarbooks.org/thumbs/1467711321.jpg', N'4.65 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Ebar%20Kando%20Kedarnathe%20(Comics).pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (212, N'Joy Baba Felunath', N'Joy Baba Felunath', NULL, N'https://www.amarbooks.org/thumbs/1573626058.jpg', N'2.96 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Joy%20Baba%20Felunath.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (213, N'Ambar Sen Antordhan Rahasyo', N'Ambar Sen Antordhan Rahasyo', NULL, N'https://www.amarbooks.org/thumbs/1573712937.jpg', N'0.72 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Ambar%20Sen%20Antordhan%20Rahasyo.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (214, N'Professor Sanku (Part-2)', N'Professor Sanku (Part-2)', NULL, N'https://www.amarbooks.org/thumbs/1573665087.jpg', N'1.45 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Professor%20Sanku%20(Part-2).pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (215, N'Ghurghutiyar Ghatona', N'Ghurghutiyar Ghatona', NULL, N'https://www.amarbooks.org/thumbs/1573610746.jpg', N'1.9 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Ghurghutiyar%20Ghatona.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (216, N'Bombayer Bombate', N'Bombayer Bombate', NULL, N'https://www.amarbooks.org/thumbs/1573608315.jpg', N'1.9 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Bombayer%20Bombate.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (217, N'Golokdham Rahasya', N'Golokdham Rahasya', NULL, N'https://www.amarbooks.org/thumbs/1573622684.jpg', N'1.06 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Golokdham%20Rahasya.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (218, N'Feludar Goendagiri', N'Feludar Goendagiri', NULL, N'https://www.amarbooks.org/thumbs/1467717311.jpg', N'0.61 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Feludar%20Goendagiri.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (219, N'Gangtok e Gondogol', N'Gangtok e Gondogol', NULL, N'https://www.amarbooks.org/thumbs/1573622506.jpg', N'1.69 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Gangtok%20e%20Gondogol.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (220, N'Indrajal Rahasya', N'Indrajal Rahasya', NULL, N'https://www.amarbooks.org/thumbs/1573622110.jpg', N'1.81 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Indrajal%20Rahasya.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (221, N'Professor Sanku (Part-1)', N'Professor Sanku (Part-1)', NULL, N'https://www.amarbooks.org/thumbs/1573664671.jpg', N'0.19 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Professor%20Sanku%20(Part-1).pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (222, N'Tarini Khuror Kirti Kalap', N'Tarini Khuror Kirti Kalap', NULL, N'https://www.amarbooks.org/thumbs/1467711787.jpg', N'7.54 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Tarini%20Khuror%20Kirti%20Kalap.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (223, N'Tota Rahasya', N'Tota Rahasya', NULL, N'https://www.amarbooks.org/thumbs/1467711816.jpg', N'2.97 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Tota%20Rahasya.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (224, N'Galpo 101', N'Galpo 101', NULL, N'https://www.amarbooks.org/thumbs/1467711415.jpg', N'47.9 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Galpo%20101.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (225, N'Ebar Kando Kedarnathe', N'Ebar Kando Kedarnathe', NULL, N'https://www.amarbooks.org/thumbs/1573713015.jpg', N'1.22 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Ebar%20Kando%20Kedarnathe.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (226, N'Gorothane Sabdhan', N'Gorothane Sabdhan', NULL, N'https://www.amarbooks.org/thumbs/1573622885.jpg', N'1.22 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Gorothane%20Sabdhan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (227, N'Tintorettor Jishu', N'Tintorettor Jishu', NULL, N'https://www.amarbooks.org/thumbs/1573664996.jpg', N'1.39 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Tintorettor%20Jishu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (228, N'Ami Aar Feluda', N'Ami Aar Feluda', NULL, N'https://www.amarbooks.org/thumbs/1467711204.jpg', N'7.96 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Ami%20Aar%20Feluda.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (229, N'Sheyal Debota Rohosyo (Comics)', N'Sheyal Debota Rohosyo (Comics)', NULL, N'https://www.amarbooks.org/thumbs/1467711726.jpg', N'4.89 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Sheyal%20Debota%20Rohosyo%20(Comics).pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (230, N'Feluda Somogro-1', N'Feluda Somogro-1', NULL, N'https://www.amarbooks.org/thumbs/1467711353.jpg', N'29.52 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=&f=Feluda%20Somogro-1.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (231, N'Brojongona', N'Brojongona', NULL, N'https://www.amarbooks.org/thumbs/1489113805.jpg', N'0.55 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Brojongona.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (232, N'Sharmistha', N'Sharmistha', NULL, N'https://www.amarbooks.org/thumbs/1489114190.jpg', N'2.39 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Sharmistha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (233, N'Buro Shaliker Ghare Ro', N'Buro Shaliker Ghare Ro', NULL, N'https://www.amarbooks.org/thumbs/1489113905.jpg', N'0.72 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Buro%20Shaliker%20Ghare%20Ro.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (234, N'Michael Madhusudan Dutta Rachanabali', N'Michael Madhusudan Dutta Rachanabali', NULL, N'https://www.amarbooks.org/thumbs/1488254374.jpg', N'25.8 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Michael%20Madhusudan%20Dutta%20Rachanabali.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (235, N'Maya Kannan', N'Maya Kannan', NULL, N'https://www.amarbooks.org/thumbs/1489114054.jpg', N'2.62 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Maya%20Kannan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (236, N'Birangona', N'Birangona', NULL, N'https://www.amarbooks.org/thumbs/1489113873.jpg', N'1.4 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Birangona.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (237, N'Ekei ki Bole Shobbhota', N'Ekei ki Bole Shobbhota', NULL, N'https://www.amarbooks.org/thumbs/1489113968.jpg', N'0.86 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Ekei%20ki%20Bole%20Shobbhota.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (238, N'Poddaboti', N'Poddaboti', NULL, N'https://www.amarbooks.org/thumbs/1489114163.jpg', N'1.94 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Poddaboti.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (239, N'Tilottama Sambhava', N'Tilottama Sambhava', NULL, N'https://www.amarbooks.org/thumbs/1489114222.jpg', N'2.01 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Tilottama%20Sambhava.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (240, N'Nana Kobita', N'Nana Kobita', NULL, N'https://www.amarbooks.org/thumbs/1489114113.jpg', N'0.98 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Nana%20Kobita.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (241, N'Meghnath Vadh', N'Meghnath Vadh', NULL, N'https://www.amarbooks.org/thumbs/1489114084.jpg', N'4.96 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Michael%20Madhusudan%20Dutta&f=Meghnath%20Vadh.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (242, N'Rasakali', N'Rasakali', NULL, N'https://www.amarbooks.org/thumbs/1490066237.jpg', N'0.75 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Rasakali.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (243, N'Tarasankar Rachanabali-09', N'Tarasankar Rachanabali-09', NULL, N'https://www.amarbooks.org/thumbs/1489984909.jpg', N'23.4 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-09.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (244, N'Fariad', N'Fariad', NULL, N'https://www.amarbooks.org/thumbs/1490064913.jpg', N'5.64 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Fariad.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (245, N'Shondhamoni', N'Shondhamoni', NULL, N'https://www.amarbooks.org/thumbs/1490066414.jpg', N'0.36 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Shondhamoni.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (246, N'Rabindranath O Banglar Palli', N'Rabindranath O Banglar Palli', NULL, N'https://www.amarbooks.org/thumbs/1490066187.jpg', N'3.4 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Rabindranath%20O%20Banglar%20Palli.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (247, N'Aagun', N'Aagun', NULL, N'https://www.amarbooks.org/thumbs/1490064189.jpg', N'4.81 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Aagun.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (248, N'Tarasankar Rachanabali-07', N'Tarasankar Rachanabali-07', NULL, N'https://www.amarbooks.org/thumbs/1489984863.jpg', N'18.73 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-07.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (249, N'Pashanpuri', N'Pashanpuri', NULL, N'https://www.amarbooks.org/thumbs/1490065986.jpg', N'3.05 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Pashanpuri.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (250, N'Bhubanpurer Hat', N'Bhubanpurer Hat', NULL, N'https://www.amarbooks.org/thumbs/1490064424.jpg', N'3.87 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Bhubanpurer%20Hat.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (251, N'Paush-Lakshmi', N'Paush-Lakshmi', NULL, N'https://www.amarbooks.org/thumbs/1490066040.jpg', N'1.57 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Paush-Lakshmi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (252, N'Tarasankar Rachanabali-21', N'Tarasankar Rachanabali-21', NULL, N'https://www.amarbooks.org/thumbs/1489985206.jpg', N'35.87 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-21.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (253, N'Dui Purush', N'Dui Purush', NULL, N'https://www.amarbooks.org/thumbs/1490064724.jpg', N'2.77 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Dui%20Purush.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (254, N'Sanket', N'Sanket', NULL, N'https://www.amarbooks.org/thumbs/1490066323.jpg', N'7.92 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Sanket.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (255, N'Tarasankar Rachanabali-05', N'Tarasankar Rachanabali-05', NULL, N'https://www.amarbooks.org/thumbs/1489984813.jpg', N'20.54 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-05.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (256, N'Kalindi', N'Kalindi', NULL, N'https://www.amarbooks.org/thumbs/1490057275.jpg', N'12.41 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Kalindi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (257, N'Yogobhrashta', N'Yogobhrashta', NULL, N'https://www.amarbooks.org/thumbs/1490059694.jpg', N'7.91 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Yogobhrashta.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (258, N'Chaitali Ghurni', N'Chaitali Ghurni', NULL, N'https://www.amarbooks.org/thumbs/1490064503.jpg', N'3.31 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Chaitali%20Ghurni.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (259, N'Tarasankar Rachanabali-06', N'Tarasankar Rachanabali-06', NULL, N'https://www.amarbooks.org/thumbs/1489984838.jpg', N'22.43 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-06.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (260, N'Shakkar Bai', N'Shakkar Bai', NULL, N'https://www.amarbooks.org/thumbs/1490066371.jpg', N'9.34 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Shakkar%20Bai.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (261, N'Mahashweta', N'Mahashweta', NULL, N'https://www.amarbooks.org/thumbs/1490066755.jpg', N'2.53 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Mahashweta.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (262, N'Tamas Tapasya', N'Tamas Tapasya', NULL, N'https://www.amarbooks.org/thumbs/1490066541.jpg', N'4.8 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tamas%20Tapasya.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (263, N'Panchaputtali', N'Panchaputtali', NULL, N'https://www.amarbooks.org/thumbs/1490065937.jpg', N'13.04 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Panchaputtali.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (264, N'Kalapahar', N'Kalapahar', NULL, N'https://www.amarbooks.org/thumbs/1490065300.jpg', N'0.58 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Kalapahar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (265, N'Manvantar', N'Manvantar', NULL, N'https://www.amarbooks.org/thumbs/1490065587.jpg', N'9.62 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Manvantar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (266, N'Ekti Charui Pakhi O Kalo Meye', N'Ekti Charui Pakhi O Kalo Meye', NULL, N'https://www.amarbooks.org/thumbs/1490064842.jpg', N'1.14 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Ekti%20Charui%20Pakhi%20O%20Kalo%20Meye.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (267, N'Moni Boudi', N'Moni Boudi', NULL, N'https://www.amarbooks.org/thumbs/1490066777.jpg', N'7.45 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Moni%20Boudi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (268, N'Tarasankar Rachanabali-17', N'Tarasankar Rachanabali-17', NULL, N'https://www.amarbooks.org/thumbs/1489985111.jpg', N'7.31 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-17.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (269, N'Tarasankar Rachanabali-01', N'Tarasankar Rachanabali-01', NULL, N'https://www.amarbooks.org/thumbs/1489984676.jpg', N'20.47 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-01.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (270, N'Saptapadi', N'Saptapadi', NULL, N'https://www.amarbooks.org/thumbs/1490056510.jpg', N'1.24 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Saptapadi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (271, N'Jangalgarh', N'Jangalgarh', NULL, N'https://www.amarbooks.org/thumbs/1490058659.jpg', N'1.57 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Jangalgarh.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (272, N'Kabi', N'Kabi', NULL, N'https://www.amarbooks.org/thumbs/1490061919.jpg', N'7.1 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Kabi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (273, N'Shuksari Katha', N'Shuksari Katha', NULL, N'https://www.amarbooks.org/thumbs/1490066458.jpg', N'12.66 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Shuksari%20Katha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (274, N'Tarasankar Rachanabali-12', N'Tarasankar Rachanabali-12', NULL, N'https://www.amarbooks.org/thumbs/1489984986.jpg', N'7.47 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-12.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (275, N'Panchagram', N'Panchagram', NULL, N'https://www.amarbooks.org/thumbs/1490057788.jpg', N'14.09 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Panchagram.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (276, N'Naba Diganta', N'Naba Diganta', NULL, N'https://www.amarbooks.org/thumbs/1490065709.jpg', N'16.64 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Naba%20Diganta.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (277, N'Sandipan Pathshala', N'Sandipan Pathshala', NULL, N'https://www.amarbooks.org/thumbs/1490066286.jpg', N'6.65 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Sandipan%20Pathshala.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (278, N'Swargo-Marto', N'Swargo-Marto', NULL, N'https://www.amarbooks.org/thumbs/1490066498.jpg', N'7.29 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Swargo-Marto.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (279, N'Kanna', N'Kanna', NULL, N'https://www.amarbooks.org/thumbs/1490065431.jpg', N'6.31 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Kanna.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (280, N'Bicharak', N'Bicharak', NULL, N'https://www.amarbooks.org/thumbs/1490056744.jpg', N'7.02 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Bicharak.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (281, N'Daini', N'Daini', NULL, N'https://www.amarbooks.org/thumbs/1490064596.jpg', N'0.66 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Daini.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (282, N'Mahanagari', N'Mahanagari', NULL, N'https://www.amarbooks.org/thumbs/1490065477.jpg', N'1.84 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Mahanagari.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (283, N'Kalratri', N'Kalratri', NULL, N'https://www.amarbooks.org/thumbs/1490065342.jpg', N'4.63 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Kalratri.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (284, N'Tarasankar Rachanabali-02', N'Tarasankar Rachanabali-02', NULL, N'https://www.amarbooks.org/thumbs/1489984729.jpg', N'20.62 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-02.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (285, N'Tarasankar Rachanabali-20', N'Tarasankar Rachanabali-20', NULL, N'https://www.amarbooks.org/thumbs/1489985183.jpg', N'28.62 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-20.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (286, N'Tripatra', N'Tripatra', NULL, N'https://www.amarbooks.org/thumbs/1490066592.jpg', N'0.9 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tripatra.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (287, N'Dak Harkara', N'Dak Harkara', NULL, N'https://www.amarbooks.org/thumbs/1490066731.jpg', N'2.82 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Dak%20Harkara.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (288, N'1971', N'1971', NULL, N'https://www.amarbooks.org/thumbs/1490059590.jpg', N'9.7 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=1971.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (289, N'Amar Kaler Katha', N'Amar Kaler Katha', NULL, N'https://www.amarbooks.org/thumbs/1490064296.jpg', N'5.38 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Amar%20Kaler%20Katha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (290, N'Tarasankar Rachanabali-14', N'Tarasankar Rachanabali-14', NULL, N'https://www.amarbooks.org/thumbs/1489985039.jpg', N'18.24 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-14.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (291, N'Uttarayan', N'Uttarayan', NULL, N'https://www.amarbooks.org/thumbs/1490066648.jpg', N'1.84 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Uttarayan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (292, N'Bhut Puran', N'Bhut Puran', NULL, N'https://www.amarbooks.org/thumbs/1490066709.jpg', N'5.26 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Bhut%20Puran.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (293, N'Tarasankar Rachanabali-04', N'Tarasankar Rachanabali-04', NULL, N'https://www.amarbooks.org/thumbs/1489984788.jpg', N'20.21 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-04.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (294, N'Raikamal', N'Raikamal', NULL, N'https://www.amarbooks.org/thumbs/1490056682.jpg', N'2.87 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Raikamal.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (295, N'Tarasankar Rachanabali-13', N'Tarasankar Rachanabali-13', NULL, N'https://www.amarbooks.org/thumbs/1489985016.jpg', N'21.16 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-13.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (296, N'Nilkantha', N'Nilkantha', NULL, N'https://www.amarbooks.org/thumbs/1490065766.jpg', N'4.38 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Nilkantha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (297, N'Tarasankar Rachanabali-16', N'Tarasankar Rachanabali-16', NULL, N'https://www.amarbooks.org/thumbs/1489985088.jpg', N'8.61 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Tarashankar%20Bandopadhyay&f=Tarasankar%20Rachanabali-16.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (298, N'Osompto Chumboner 19 Bosor Por', N'Osompto Chumboner 19 Bosor Por', NULL, N'https://www.amarbooks.org/thumbs/1464934455.jpg', N'0.4 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Osompto%20Chumboner%2019%20Bosor%20Por.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (299, N'Sahasra Ak Arabya Rajani-4 - Khitish Sarkar', N'Sahasra Ak Arabya Rajani-4 - Khitish Sarkar', NULL, N'https://www.amarbooks.org/thumbs/1467789310.jpg', N'25.84 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Sahasra%20Ak%20Arabya%20Rajani-4%20-%20Khitish%20Sarkar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (300, N'Rodin', N'Rodin', NULL, N'https://www.amarbooks.org/thumbs/1572668919.jpg', N'10.99 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Narayan%20Sanyal&f=Rodin.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (301, N'The Other Side of Midnight - Anish Das Apu', N'The Other Side of Midnight - Anish Das Apu', NULL, N'https://www.amarbooks.org/thumbs/1469540492.jpg', N'10.89 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=The%20Other%20Side%20of%20Midnight%20-%20Anish%20Das%20Apu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (302, N'Massage Gir - Mokbul Hossain', N'Massage Gir - Mokbul Hossain', NULL, N'https://www.amarbooks.org/thumbs/1571978644.jpg', N'2.01 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Massage%20Gir%20-%20Mokbul%20Hossain.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (303, N'Ashlilatar Daaye', N'Ashlilatar Daaye', NULL, N'https://www.amarbooks.org/thumbs/1572839128.jpg', N'7.38 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Narayan%20Sanyal&f=Ashlilatar%20Daaye.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (304, N'Madhuchakra - Shaktipada Rajguru', N'Madhuchakra - Shaktipada Rajguru', NULL, N'https://www.amarbooks.org/thumbs/1572401765.jpg', N'3.62 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Madhuchakra%20-%20Shaktipada%20Rajguru.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (305, N'Dui Nari - Masud Mahmud', N'Dui Nari - Masud Mahmud', NULL, N'https://www.amarbooks.org/thumbs/1541441023.jpg', N'9.45 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Dui%20Nari%20-%20Masud%20Mahmud.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (306, N'Bicharok', N'Bicharok', NULL, N'https://www.amarbooks.org/thumbs/1464946954.jpg', N'1.48 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Bicharok.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (307, N'Milir Jouno Jibon - Bakul Chaudhuri', N'Milir Jouno Jibon - Bakul Chaudhuri', NULL, N'https://www.amarbooks.org/thumbs/1572402749.jpg', N'2.63 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Milir%20Jouno%20Jibon%20-%20Bakul%20Chaudhuri.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (308, N'Onno Jiboner Shad', N'Onno Jiboner Shad', NULL, N'https://www.amarbooks.org/thumbs/1465198880.jpg', N'4.29 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Onno%20Jiboner%20Shad.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (309, N'Rakter Nesha', N'Rakter Nesha', NULL, N'https://www.amarbooks.org/thumbs/1521806310.jpg', N'3.31 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Western%20Series&f=Rakter%20Nesha.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (310, N'Ekoti Rat Tinti Jibon', N'Ekoti Rat Tinti Jibon', NULL, N'https://www.amarbooks.org/thumbs/1464949580.jpg', N'0.16 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Ekoti%20Rat%20Tinti%20Jibon.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (311, N'Karkatkranti - Abu Kaysar', N'Karkatkranti - Abu Kaysar', NULL, N'https://www.amarbooks.org/thumbs/1572405623.jpg', N'4.24 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Karkatkranti%20-%20Abu%20Kaysar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (312, N'Kinnor Mithun - Nihar Ranjan Gupta', N'Kinnor Mithun - Nihar Ranjan Gupta', NULL, N'https://www.amarbooks.org/thumbs/1571931980.jpg', N'7.85 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Kinnor%20Mithun%20-%20Nihar%20Ranjan%20Gupta.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (313, N'Andarmahaler Galpo', N'Andarmahaler Galpo', NULL, N'https://www.amarbooks.org/thumbs/1535504259.jpg', N'12.95 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Samaresh%20Majumdar&f=Andarmahaler%20Galpo.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (314, N'Ganga', N'Ganga', NULL, N'https://www.amarbooks.org/thumbs/1531108810.jpg', N'5.34 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Samaresh%20Basu&f=Ganga.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (315, N'Guha - Sanjib Chattopadhyay', N'Guha - Sanjib Chattopadhyay', NULL, N'https://www.amarbooks.org/thumbs/1572399031.jpg', N'2.09 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Guha%20-%20Sanjib%20Chattopadhyay.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (316, N'Kamini Kanchan - Shudhamoy Kar', N'Kamini Kanchan - Shudhamoy Kar', NULL, N'https://www.amarbooks.org/thumbs/1486357339.jpg', N'14.29 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Kamini%20Kanchan%20-%20Shudhamoy%20Kar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (317, N'Valentine Lover - Abu Azhar', N'Valentine Lover - Abu Azhar', NULL, N'https://www.amarbooks.org/thumbs/1469586905.jpg', N'6.21 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Valentine%20Lover%20-%20Abu%20Azhar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (318, N'Good Night - Nimai Bhattacharya', N'Good Night - Nimai Bhattacharya', NULL, N'https://www.amarbooks.org/thumbs/1572409743.jpg', N'0.75 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Good%20Night%20-%20Nimai%20Bhattacharya.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (319, N'Assegai - Sadequl Ahsan Kollol', N'Assegai - Sadequl Ahsan Kollol', NULL, N'https://www.amarbooks.org/thumbs/1467788716.jpg', N'18.22 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Wilbur%20Smith&f=Assegai%20-%20Sadequl%20Ahsan%20Kollol.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (320, N'Sexas - Abu Kaysar', N'Sexas - Abu Kaysar', NULL, N'https://www.amarbooks.org/thumbs/1572404919.jpg', N'3.78 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Sexas%20-%20Abu%20Kaysar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (321, N'SexBoy', N'SexBoy', NULL, N'https://www.amarbooks.org/thumbs/1468290194.jpg', N'0.85 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Taslima%20Nasrin&f=SexBoy.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (322, N'Chhobi Kake Bole - Ashok Mitra', N'Chhobi Kake Bole - Ashok Mitra', NULL, N'https://www.amarbooks.org/thumbs/1571936793.jpg', N'11.42 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Chhobi%20Kake%20Bole%20-%20Ashok%20Mitra.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (323, N'Sahasra Ak Arabya Rajani-1 - Khitish Sarkar', N'Sahasra Ak Arabya Rajani-1 - Khitish Sarkar', NULL, N'https://www.amarbooks.org/thumbs/1467789238.jpg', N'27.19 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Sahasra%20Ak%20Arabya%20Rajani-1%20-%20Khitish%20Sarkar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (324, N'Parostri - Mustafa Mir', N'Parostri - Mustafa Mir', NULL, N'https://www.amarbooks.org/thumbs/1469411313.jpg', N'11.39 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Parostri%20-%20Mustafa%20Mir.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (325, N'Sammohon - Sangeeta Bandapadhayay', N'Sammohon - Sangeeta Bandapadhayay', NULL, N'https://www.amarbooks.org/thumbs/1573695099.jpg', N'17.21 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Sammohon%20-%20Sangeeta%20Bandapadhayay.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (326, N'Porokiya Prem', N'Porokiya Prem', NULL, N'https://www.amarbooks.org/thumbs/1464949597.jpg', N'7.43 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Porokiya%20Prem.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (327, N'Sweetheart - 2 - Qazi Ehsanullah', N'Sweetheart - 2 - Qazi Ehsanullah', NULL, N'https://www.amarbooks.org/thumbs/1572414053.jpg', N'2.45 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Sweetheart%20-%202%20-%20Qazi%20Ehsanullah.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (328, N'Janmadag', N'Janmadag', NULL, N'https://www.amarbooks.org/thumbs/1532091228.jpg', N'7.77 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Samaresh%20Majumdar&f=Janmadag.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (329, N'Prajapati', N'Prajapati', NULL, N'https://www.amarbooks.org/thumbs/1531021522.jpg', N'5.7 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Samaresh%20Basu&f=Prajapati.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (330, N'Abagahan - Ghanashyam Chowdhury', N'Abagahan - Ghanashyam Chowdhury', NULL, N'https://www.amarbooks.org/thumbs/1571928412.jpg', N'6.96 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Abagahan%20-%20Ghanashyam%20Chowdhury.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (331, N'Secrets of Olympic Village - Mokbul Hossain', N'Secrets of Olympic Village - Mokbul Hossain', NULL, N'https://www.amarbooks.org/thumbs/1571978787.jpg', N'9.56 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Secrets%20of%20Olympic%20Village%20-%20Mokbul%20Hossain.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (332, N'Emonta To Hoyei Thake', N'Emonta To Hoyei Thake', NULL, N'https://www.amarbooks.org/thumbs/1572398669.jpg', N'5.16 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Narayan%20Sanyal&f=Emonta%20To%20Hoyei%20Thake.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (333, N'Jenny-r obak kando - Uttam Ghosh', N'Jenny-r obak kando - Uttam Ghosh', NULL, N'https://www.amarbooks.org/thumbs/1573439275.jpg', N'2.19 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Jenny-r%20obak%20kando%20-%20Uttam%20Ghosh.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (334, N'Nishitho Trisha - Pritthiraj Sen', N'Nishitho Trisha - Pritthiraj Sen', NULL, N'https://www.amarbooks.org/thumbs/1541440877.jpg', N'3.36 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Nishitho%20Trisha%20-%20Pritthiraj%20Sen.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (335, N'Amrapali', N'Amrapali', NULL, N'https://www.amarbooks.org/thumbs/1572838897.jpg', N'5.04 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Narayan%20Sanyal&f=Amrapali.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (336, N'Shorgio Shoja - Chiranjib Sen', N'Shorgio Shoja - Chiranjib Sen', NULL, N'https://www.amarbooks.org/thumbs/1573438418.jpg', N'2.91 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Shorgio%20Shoja%20-%20Chiranjib%20Sen.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (337, N'Bibor', N'Bibor', NULL, N'https://www.amarbooks.org/thumbs/1531029195.jpg', N'6.36 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Samaresh%20Basu&f=Bibor.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (338, N'I Would Rather Stay Poor - Pritthiraj Sen', N'I Would Rather Stay Poor - Pritthiraj Sen', NULL, N'https://www.amarbooks.org/thumbs/1562205249.jpg', N'2.2 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=I%20Would%20Rather%20Stay%20Poor%20-%20Pritthiraj%20Sen.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (339, N'Nishidhha Ongona', N'Nishidhha Ongona', NULL, N'https://www.amarbooks.org/thumbs/1542079461.jpg', N'0.61 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Nishidhha%20Ongona.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (340, N'Parthib', N'Parthib', NULL, N'https://www.amarbooks.org/thumbs/1467536232.jpg', N'30.95 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Parthib.pdf', 9, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (341, N'Night Game - Anisur Rahman', N'Night Game - Anisur Rahman', NULL, N'https://www.amarbooks.org/thumbs/1572407039.jpg', N'5.43 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Night%20Game%20-%20Anisur%20Rahman.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (342, N'Nosto Meye', N'Nosto Meye', NULL, N'https://www.amarbooks.org/thumbs/1465205548.jpg', N'5.86 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Nosto%20Meye.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (343, N'Milane  Birahe - Narendra Mitra', N'Milane  Birahe - Narendra Mitra', NULL, N'https://www.amarbooks.org/thumbs/1572672397.jpg', N'5.06 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Milane%20%20Birahe%20-%20Narendra%20Mitra.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (344, N'Kaliyug - Nrisinghaorasad Bhaduri', N'Kaliyug - Nrisinghaorasad Bhaduri', NULL, N'https://www.amarbooks.org/thumbs/1572672373.jpg', N'8.24 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Kaliyug%20-%20Nrisinghaorasad%20Bhaduri.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (345, N'Sahasra Ak Arabya Rajani-3 - Khitish Sarkar', N'Sahasra Ak Arabya Rajani-3 - Khitish Sarkar', NULL, N'https://www.amarbooks.org/thumbs/1467789286.jpg', N'26.38 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Sahasra%20Ak%20Arabya%20Rajani-3%20-%20Khitish%20Sarkar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (346, N'The Sands of Time - Anish Das Apu', N'The Sands of Time - Anish Das Apu', NULL, N'https://www.amarbooks.org/thumbs/1469540611.jpg', N'8.66 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=The%20Sands%20of%20Time%20-%20Anish%20Das%20Apu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (347, N'Jauno Bigyan O Jauno Byadhi', N'Jauno Bigyan O Jauno Byadhi', NULL, N'https://www.amarbooks.org/thumbs/1572398323.jpg', N'15.84 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Others&f=Jauno%20Bigyan%20O%20Jauno%20Byadhi.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (348, N'Murder on the Highway - Pritthiraj Sen', N'Murder on the Highway - Pritthiraj Sen', NULL, N'https://www.amarbooks.org/thumbs/1552699473.jpg', N'6.17 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Murder%20on%20the%20Highway%20-%20Pritthiraj%20Sen.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (349, N'Sahasra Ak Arabya Rajani-2 - Khitish Sarkar', N'Sahasra Ak Arabya Rajani-2 - Khitish Sarkar', NULL, N'https://www.amarbooks.org/thumbs/1467789263.jpg', N'26.22 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Sahasra%20Ak%20Arabya%20Rajani-2%20-%20Khitish%20Sarkar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (350, N'Makarkranti - Abu Kaysar', N'Makarkranti - Abu Kaysar', NULL, N'https://www.amarbooks.org/thumbs/1572406262.jpg', N'3.3 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Makarkranti%20-%20Abu%20Kaysar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (351, N'Jounota - Charu Haque', N'Jounota - Charu Haque', NULL, N'https://www.amarbooks.org/thumbs/1467788934.jpg', N'0.84 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Jounota%20-%20Charu%20Haque.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (352, N'Vuture Chaya - Ishtiaq Hasan', N'Vuture Chaya - Ishtiaq Hasan', NULL, N'https://www.amarbooks.org/thumbs/1491356295.jpg', N'6.5 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Vuture%20Chaya%20-%20Ishtiaq%20Hasan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (353, N'Pretatmar Chhaya - Afzal Hossain', N'Pretatmar Chhaya - Afzal Hossain', NULL, N'https://www.amarbooks.org/thumbs/1494121419.jpg', N'8.13 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Pretatmar%20Chhaya%20-%20Afzal%20Hossain.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (354, N'Bhoutik Galpa Samagra', N'Bhoutik Galpa Samagra', NULL, N'https://www.amarbooks.org/thumbs/1464949769.jpg', N'20.92 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Bhoutik%20Galpa%20Samagra.pdf', 7, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (355, N'Oshuvo-13 - Anish Das Apu', N'Oshuvo-13 - Anish Das Apu', NULL, N'https://www.amarbooks.org/thumbs/1491296904.jpg', N'5.2 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Oshuvo-13%20-%20Anish%20Das%20Apu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (356, N'Chapakhanai Ekta Bhut Thake', N'Chapakhanai Ekta Bhut Thake', NULL, N'https://www.amarbooks.org/thumbs/1464934258.jpg', N'2.02 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Chapakhanai%20Ekta%20Bhut%20Thake.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (357, N'Vuter Golpo', N'Vuter Golpo', NULL, N'https://www.amarbooks.org/thumbs/1464950300.jpg', N'0.12 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Taslima%20Nasrin&f=Vuter%20Golpo.pdf', 23, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (358, N'Adbhut Sob Golpo', N'Adbhut Sob Golpo', NULL, N'https://www.amarbooks.org/thumbs/1464925146.jpg', N'8.52 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Adbhut%20Sob%20Golpo.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (359, N'Pishacer Pallay - Anish Das Apu', N'Pishacer Pallay - Anish Das Apu', NULL, N'https://www.amarbooks.org/thumbs/1491355869.jpg', N'2.25 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Pishacer%20Pallay%20-%20Anish%20Das%20Apu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (360, N'Danob', N'Danob', NULL, N'https://www.amarbooks.org/thumbs/1464944453.jpg', N'7.17 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Muhammed%20Zafar%20Iqbal&f=Danob.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (361, N'Shob Bhuture - Ishtiaq Hasan', N'Shob Bhuture - Ishtiaq Hasan', NULL, N'https://www.amarbooks.org/thumbs/1529659632.jpg', N'10.69 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Shob%20Bhuture%20-%20Ishtiaq%20Hasan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (362, N'Kutu Mia', N'Kutu Mia', NULL, N'https://www.amarbooks.org/thumbs/1509684828.jpg', N'9.32 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Kutu%20Mia.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (363, N'Megher Upor Bari', N'Megher Upor Bari', NULL, N'https://www.amarbooks.org/thumbs/1542082429.jpg', N'0.65 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Megher%20Upor%20Bari.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (364, N'Okhane Ke - Anish Das Apu', N'Okhane Ke - Anish Das Apu', NULL, N'https://www.amarbooks.org/thumbs/1491296728.jpg', N'2.58 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Okhane%20Ke%20-%20Anish%20Das%20Apu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (365, N'Bhuter Nam Ramakanto Kamar', N'Bhuter Nam Ramakanto Kamar', NULL, N'https://www.amarbooks.org/thumbs/1464941776.jpg', N'7.48 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Imdadul%20Haq%20Milon&f=Bhuter%20Nam%20Ramakanto%20Kamar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (366, N'Bhoy', N'Bhoy', NULL, N'https://www.amarbooks.org/thumbs/1464925373.jpg', N'7.37 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Bhoy.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (367, N'Pichhach Debota - Anish Das Apu', N'Pichhach Debota - Anish Das Apu', NULL, N'https://www.amarbooks.org/thumbs/1545091994.jpg', N'3.2 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Pichhach%20Debota%20-%20Anish%20Das%20Apu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (368, N'Bhoutik Galpo Samagra', N'Bhoutik Galpo Samagra', NULL, N'https://www.amarbooks.org/thumbs/1467535582.jpg', N'22.47 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Bhoutik%20Galpo%20Samagra.pdf', 9, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (369, N'Chayabritto - Anish Das Apu', N'Chayabritto - Anish Das Apu', NULL, N'https://www.amarbooks.org/thumbs/1491208744.jpg', N'5.53 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Chayabritto%20-%20Anish%20Das%20Apu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (370, N'Dhooshar Atanko - Anish Das Apu', N'Dhooshar Atanko - Anish Das Apu', NULL, N'https://www.amarbooks.org/thumbs/1491208834.jpg', N'2.7 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Dhooshar%20Atanko%20-%20Anish%20Das%20Apu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (371, N'Mojar Bhoot', N'Mojar Bhoot', NULL, N'https://www.amarbooks.org/thumbs/1482510611.jpg', N'6.84 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Mojar%20Bhoot.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (372, N'Kishore Horror - Vol-06', N'Kishore Horror - Vol-06', NULL, N'https://www.amarbooks.org/thumbs/1491193327.jpg', N'3.46 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Kishore%20Horror%20-%20Vol-06.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (373, N'Pret Sadhok - Khusru Chowdhury', N'Pret Sadhok - Khusru Chowdhury', NULL, N'https://www.amarbooks.org/thumbs/1491356057.jpg', N'4.17 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Pret%20Sadhok%20-%20Khusru%20Chowdhury.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (374, N'Vuture Ghori', N'Vuture Ghori', NULL, N'https://www.amarbooks.org/thumbs/1485106405.jpg', N'2.09 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Shirshendu%20Mukhopadhyay&f=Vuture%20Ghori.pdf', 9, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (375, N'Horror Seven - Anish Das Apu', N'Horror Seven - Anish Das Apu', NULL, N'https://www.amarbooks.org/thumbs/1569134804.jpg', N'9.31 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Horror%20Seven%20-%20Anish%20Das%20Apu.pdf', 14, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (376, N'Brihonnola', N'Brihonnola', NULL, N'https://www.amarbooks.org/thumbs/1464925392.jpg', N'4.45 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Brihonnola.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (377, N'Pret', N'Pret', NULL, N'https://www.amarbooks.org/thumbs/1489221525.jpg', N'4.3 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Muhammed%20Zafar%20Iqbal&f=Pret.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (378, N'Mrityu Putul - Anish Das Apu', N'Mrityu Putul - Anish Das Apu', NULL, N'https://www.amarbooks.org/thumbs/1491296539.jpg', N'3.89 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sheba%20Mix&f=Mrityu%20Putul%20-%20Anish%20Das%20Apu.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (379, N'Botol Bhut', N'Botol Bhut', NULL, N'https://www.amarbooks.org/thumbs/1542080732.jpg', N'3.29 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Botol%20Bhut.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (380, N'Krishno Pokkho', N'Krishno Pokkho', NULL, N'https://www.amarbooks.org/thumbs/1542090524.jpg', N'0.31 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Krishno%20Pokkho.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (381, N'Voutik', N'Voutik', NULL, N'https://www.amarbooks.org/thumbs/1529645773.jpg', N'1.26 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anubad%20eBooks&f=Voutik.pdf', 14, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (382, N'Galpo Samagra-2', N'Galpo Samagra-2', NULL, N'https://www.amarbooks.org/thumbs/1491441816.jpg', N'8.99 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Syed%20Mustafa%20Siraj&f=Galpo%20Samagra-2.pdf', 7, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (383, N'Kabita Samagra-2', N'Kabita Samagra-2', NULL, N'https://www.amarbooks.org/thumbs/1466761041.jpg', N'6.1 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Kabita%20Samagra-2.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (384, N'Sukanta Samagra', N'Sukanta Samagra', NULL, N'https://www.amarbooks.org/thumbs/1490405425.jpg', N'27.16 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sukanta%20Bhattacharya&f=Sukanta%20Samagra.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (385, N'Sukumar Galpa Samagra', N'Sukumar Galpa Samagra', NULL, N'https://www.amarbooks.org/thumbs/1573556258.jpg', N'1.95 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sukumar%20Ray&f=Sukumar%20Galpa%20Samagra.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (386, N'Nillohit Samagra Vol-4', N'Nillohit Samagra Vol-4', NULL, N'https://www.amarbooks.org/thumbs/1466765509.jpg', N'45.62 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Nillohit%20Samagra%20Vol-4.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (387, N'Arjun Samagra-1', N'Arjun Samagra-1', NULL, N'https://www.amarbooks.org/thumbs/1535597021.jpg', N'44.78 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Samaresh%20Majumdar&f=Arjun%20Samagra-1.pdf', 20, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (388, N'Kakababu Samagra Vol-6', N'Kakababu Samagra Vol-6', NULL, N'https://www.amarbooks.org/thumbs/1466761802.jpg', N'28.99 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Kakababu%20Samagra%20Vol-6.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (389, N'Nillohit Samagra Vol-3', N'Nillohit Samagra Vol-3', NULL, N'https://www.amarbooks.org/thumbs/1466765484.jpg', N'37.29 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Nillohit%20Samagra%20Vol-3.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (390, N'Manik Bandyopadhyay Rachana Samagra-02', N'Manik Bandyopadhyay Rachana Samagra-02', NULL, N'https://www.amarbooks.org/thumbs/1489382316.jpg', N'26.41 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Manik%20Bandopadhyay&f=Manik%20Bandyopadhyay%20Rachana%20Samagra-02.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (391, N'Pyer Talay Sarshe - Vraman Samagra 01', N'Pyer Talay Sarshe - Vraman Samagra 01', NULL, N'https://www.amarbooks.org/thumbs/1465199120.jpg', N'82.39 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Pyer%20Talay%20Sarshe%20-%20Vraman%20Samagra%2001.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (392, N'Kabita Samagra-5', N'Kabita Samagra-5', NULL, N'https://www.amarbooks.org/thumbs/1466761181.jpg', N'7.39 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Kabita%20Samagra-5.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (393, N'Kalkut Rachana Samagra - 5', N'Kalkut Rachana Samagra - 5', NULL, N'https://www.amarbooks.org/thumbs/1530867341.jpg', N'19.93 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Samaresh%20Basu&f=Kalkut%20Rachana%20Samagra%20-%205.pdf', 21, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (394, N'Arjun Samagra-2', N'Arjun Samagra-2', NULL, N'https://www.amarbooks.org/thumbs/1535596943.jpg', N'21.96 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Samaresh%20Majumdar&f=Arjun%20Samagra-2.pdf', 20, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (395, N'Pyer Talay Sarshe - Vraman Samagra 02', N'Pyer Talay Sarshe - Vraman Samagra 02', NULL, N'https://www.amarbooks.org/thumbs/1464949613.jpg', N'12.08 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Pyer%20Talay%20Sarshe%20-%20Vraman%20Samagra%2002.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (396, N'Kakababu Samagra Vol-3', N'Kakababu Samagra Vol-3', NULL, N'https://www.amarbooks.org/thumbs/1465213652.jpg', N'33.37 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Kakababu%20Samagra%20Vol-3.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (397, N'Rachana Samagra-01', N'Rachana Samagra-01', NULL, N'https://www.amarbooks.org/thumbs/1573187910.jpg', N'36.21 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Leela%20Majumdar&f=Rachana%20Samagra-01.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (398, N'Kabita Samagra-3', N'Kabita Samagra-3', NULL, N'https://www.amarbooks.org/thumbs/1466761092.jpg', N'7.26 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Kabita%20Samagra-3.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (399, N'Kakababu Samagra Vol-1', N'Kakababu Samagra Vol-1', NULL, N'https://www.amarbooks.org/thumbs/1465213597.jpg', N'39.01 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Kakababu%20Samagra%20Vol-1.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (400, N'Science Fiction Samogro-01', N'Science Fiction Samogro-01', NULL, N'https://www.amarbooks.org/thumbs/1574404601.jpg', N'8.94 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Science%20Fiction%20Samogro-01.pdf', 25, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (401, N'Nillohit Samagra Vol-2', N'Nillohit Samagra Vol-2', NULL, N'https://www.amarbooks.org/thumbs/1466765459.jpg', N'32.18 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Nillohit%20Samagra%20Vol-2.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (402, N'Rachana Samagra-03', N'Rachana Samagra-03', NULL, N'https://www.amarbooks.org/thumbs/1573187790.jpg', N'20.91 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Leela%20Majumdar&f=Rachana%20Samagra-03.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (403, N'Science Fiction Samogro-02', N'Science Fiction Samogro-02', NULL, N'https://www.amarbooks.org/thumbs/1574399752.jpg', N'3.58 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Science%20Fiction%20Samogro-02.pdf', 25, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (404, N'Science Fiction Samogro-03', N'Science Fiction Samogro-03', NULL, N'https://www.amarbooks.org/thumbs/1569306796.jpg', N'3.48 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Humayun%20Ahmed&f=Science%20Fiction%20Samogro-03.pdf', 25, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (405, N'Nillohit Samagra Vol-1', N'Nillohit Samagra Vol-1', NULL, N'https://www.amarbooks.org/thumbs/1466765437.jpg', N'36.74 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Nillohit%20Samagra%20Vol-1.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (406, N'Nillohit Samagra Vol-5', N'Nillohit Samagra Vol-5', NULL, N'https://www.amarbooks.org/thumbs/1466765538.jpg', N'32.84 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Sunil%20Gangopadhyay&f=Nillohit%20Samagra%20Vol-5.pdf', 18, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (407, N'Asukhlatar Phul', N'Asukhlatar Phul', NULL, N'https://www.amarbooks.org/thumbs/1535504205.jpg', N'5.11 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Samaresh%20Majumdar&f=Asukhlatar%20Phul.pdf', 20, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (408, N'Kabuliwala', N'Kabuliwala', NULL, N'https://www.amarbooks.org/thumbs/1464947638.jpg', N'1.66 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Kabuliwala.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (409, N'Taposwini', N'Taposwini', NULL, N'https://www.amarbooks.org/thumbs/1464948199.jpg', N'0.08 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Taposwini.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (410, N'Sesher Kobita', N'Sesher Kobita', NULL, N'https://www.amarbooks.org/thumbs/1464948070.jpg', N'0.77 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Sesher%20Kobita.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (411, N'Manager Babu', N'Manager Babu', NULL, N'https://www.amarbooks.org/thumbs/1464947771.jpg', N'0.04 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Manager%20Babu.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (412, N'Ichhapuron', N'Ichhapuron', NULL, N'https://www.amarbooks.org/thumbs/1466755035.jpg', N'0.05 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Ichhapuron.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (413, N'Shesher Ratri', N'Shesher Ratri', NULL, N'https://www.amarbooks.org/thumbs/1464948103.jpg', N'0.08 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Shesher%20Ratri.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (414, N'Rabindra Rachanabali - Vol-18', N'Rabindra Rachanabali - Vol-18', NULL, N'https://www.amarbooks.org/thumbs/1466754006.jpg', N'13.21 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-18.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (415, N'Uddhar', N'Uddhar', NULL, N'https://www.amarbooks.org/thumbs/1464948236.jpg', N'0.24 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Uddhar.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (416, N'Noukadubi', N'Noukadubi', NULL, N'https://www.amarbooks.org/thumbs/1464947860.jpg', N'2.77 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Noukadubi.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (417, N'Rabindra Rachanabali - Vol-23', N'Rabindra Rachanabali - Vol-23', NULL, N'https://www.amarbooks.org/thumbs/1466754133.jpg', N'11.76 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-23.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (418, N'Rabindra Rachanabali - Vol-06', N'Rabindra Rachanabali - Vol-06', NULL, N'https://www.amarbooks.org/thumbs/1466753698.jpg', N'22.13 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-06.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (419, N'Ghore Baire', N'Ghore Baire', NULL, N'https://www.amarbooks.org/thumbs/1464947406.jpg', N'1.2 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Ghore%20Baire.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (420, N'Rabindra Rachanabali - Vol-17', N'Rabindra Rachanabali - Vol-17', NULL, N'https://www.amarbooks.org/thumbs/1466753979.jpg', N'25.49 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-17.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (421, N'Drishtidan', N'Drishtidan', NULL, N'https://www.amarbooks.org/thumbs/1464947310.jpg', N'0.09 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Drishtidan.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (422, N'Chuti', N'Chuti', NULL, N'https://www.amarbooks.org/thumbs/1464947157.jpg', N'1.23 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Chuti.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (423, N'Denapawna', N'Denapawna', NULL, N'https://www.amarbooks.org/thumbs/1464947253.jpg', N'1.6 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Denapawna.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (424, N'Chorai Dhon', N'Chorai Dhon', NULL, N'https://www.amarbooks.org/thumbs/1464947100.jpg', N'1.71 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Chorai%20Dhon.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (425, N'Rabindra Rachanabali - Vol-26', N'Rabindra Rachanabali - Vol-26', NULL, N'https://www.amarbooks.org/thumbs/1466754201.jpg', N'15.57 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-26.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (426, N'Rabindra Rachanabali - Vol-16', N'Rabindra Rachanabali - Vol-16', NULL, N'https://www.amarbooks.org/thumbs/1466753956.jpg', N'11.21 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-16.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (427, N'Aadhunik Kabya', N'Aadhunik Kabya', NULL, N'https://www.amarbooks.org/thumbs/1464946768.jpg', N'0.09 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Aadhunik%20Kabya.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (428, N'Roktokorobi', N'Roktokorobi', NULL, N'https://www.amarbooks.org/thumbs/1464948037.jpg', N'0.13 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Roktokorobi.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (429, N'Choto o Boro', N'Choto o Boro', NULL, N'https://www.amarbooks.org/thumbs/1464947120.jpg', N'4.89 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Choto%20o%20Boro.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (430, N'Bou Thakuranir Haat', N'Bou Thakuranir Haat', NULL, N'https://www.amarbooks.org/thumbs/1464947013.jpg', N'23.07 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Bou%20Thakuranir%20Haat.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (431, N'Golpo Somogro', N'Golpo Somogro', NULL, N'https://www.amarbooks.org/thumbs/1466753507.jpg', N'6 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Golpo%20Somogro.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (432, N'Golpo Sholpo', N'Golpo Sholpo', NULL, N'https://www.amarbooks.org/thumbs/1466756885.jpg', N'0.51 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Golpo%20Sholpo.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (433, N'Rabindra Rachanabali - Vol-20', N'Rabindra Rachanabali - Vol-20', NULL, N'https://www.amarbooks.org/thumbs/1466754063.jpg', N'9.18 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-20.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (434, N'Rabindra Rachanabali - Vol-25', N'Rabindra Rachanabali - Vol-25', NULL, N'https://www.amarbooks.org/thumbs/1466754178.jpg', N'8.61 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-25.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (435, N'Kormofol', N'Kormofol', NULL, N'https://www.amarbooks.org/thumbs/1464947720.jpg', N'0.11 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Kormofol.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (436, N'Rabindra Rachanabali - Vol-12', N'Rabindra Rachanabali - Vol-12', NULL, N'https://www.amarbooks.org/thumbs/1466753861.jpg', N'13.49 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-12.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (437, N'Rabindra Rachanabali - Vol-22', N'Rabindra Rachanabali - Vol-22', NULL, N'https://www.amarbooks.org/thumbs/1466754108.jpg', N'10.85 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-22.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (438, N'Srabongatha', N'Srabongatha', NULL, N'https://www.amarbooks.org/thumbs/1464948184.jpg', N'0.07 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Srabongatha.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (439, N'Malancha', N'Malancha', NULL, N'https://www.amarbooks.org/thumbs/1464947752.jpg', N'11 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Malancha.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (440, N'Shapmochan', N'Shapmochan', NULL, N'https://www.amarbooks.org/thumbs/1466755268.jpg', N'0.09 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Shapmochan.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (441, N'Rabindra Rachanabali - Vol-02', N'Rabindra Rachanabali - Vol-02', NULL, N'https://www.amarbooks.org/thumbs/1466753579.jpg', N'14.81 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-02.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (442, N'Ghater Kotha', N'Ghater Kotha', NULL, N'https://www.amarbooks.org/thumbs/1464947391.jpg', N'0.13 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Ghater%20Kotha.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (443, N'Jogesworer Jogyo', N'Jogesworer Jogyo', NULL, N'https://www.amarbooks.org/thumbs/1464947605.jpg', N'0.12 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Jogesworer%20Jogyo.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (444, N'Laboratory', N'Laboratory', NULL, N'https://www.amarbooks.org/thumbs/1464947736.jpg', N'0.16 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Laboratory.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (445, N'Projapotir Nirbondha', N'Projapotir Nirbondha', NULL, N'https://www.amarbooks.org/thumbs/1464947926.jpg', N'1 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Projapotir%20Nirbondha.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (446, N'Jethay Mosha', N'Jethay Mosha', NULL, N'https://www.amarbooks.org/thumbs/1464947588.jpg', N'0.33 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Jethay%20Mosha.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (447, N'Darpaharan', N'Darpaharan', NULL, N'https://www.amarbooks.org/thumbs/1464947238.jpg', N'1.98 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Darpaharan.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (448, N'Anadhikar Probesh', N'Anadhikar Probesh', NULL, N'https://www.amarbooks.org/thumbs/1464946805.jpg', N'0.05 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Anadhikar%20Probesh.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (449, N'Dalia', N'Dalia', NULL, N'https://www.amarbooks.org/thumbs/1464947205.jpg', N'2.07 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Dalia.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (450, N'Didi', N'Didi', NULL, N'https://www.amarbooks.org/thumbs/1464947289.jpg', N'2.19 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Didi.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (451, N'Gupta Dhon', N'Gupta Dhon', NULL, N'https://www.amarbooks.org/thumbs/1464947488.jpg', N'0.14 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Gupta%20Dhon.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (452, N'Japan-Jatri', N'Japan-Jatri', NULL, N'https://www.amarbooks.org/thumbs/1464947563.jpg', N'0.22 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Japan-Jatri.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (453, N'Rabindra Rachanabali - Vol-01', N'Rabindra Rachanabali - Vol-01', NULL, N'https://www.amarbooks.org/thumbs/1466753537.jpg', N'17.66 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-01.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (454, N'Adhayapok', N'Adhayapok', NULL, N'https://www.amarbooks.org/thumbs/1464946786.jpg', N'0.09 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Adhayapok.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (455, N'Somapti', N'Somapti', NULL, N'https://www.amarbooks.org/thumbs/1464948168.jpg', N'0.11 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Somapti.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (456, N'Rabindra Rachanabali - Vol-24', N'Rabindra Rachanabali - Vol-24', NULL, N'https://www.amarbooks.org/thumbs/1466754155.jpg', N'11.65 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-24.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (457, N'Detective', N'Detective', NULL, N'https://www.amarbooks.org/thumbs/1464947270.jpg', N'1.95 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Detective.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (458, N'Tin Songi', N'Tin Songi', NULL, N'https://www.amarbooks.org/thumbs/1552701497.jpg', N'1.59 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Tin%20Songi.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (459, N'Nirob Kobi O Ashikkhito Kobi', N'Nirob Kobi O Ashikkhito Kobi', NULL, N'https://www.amarbooks.org/thumbs/1464947842.jpg', N'0.87 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Nirob%20Kobi%20O%20Ashikkhito%20Kobi.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (460, N'Karuna', N'Karuna', NULL, N'https://www.amarbooks.org/thumbs/1464947655.jpg', N'0.2 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Karuna.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (461, N'Rabindra Rachanabali - Vol-09', N'Rabindra Rachanabali - Vol-09', NULL, N'https://www.amarbooks.org/thumbs/1466753791.jpg', N'11.89 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-09.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (462, N'Ekti Ashare Golpo', N'Ekti Ashare Golpo', NULL, N'https://www.amarbooks.org/thumbs/1464947374.jpg', N'0.25 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Ekti%20Ashare%20Golpo.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (463, N'Rabindra Rachanabali - Vol-10', N'Rabindra Rachanabali - Vol-10', NULL, N'https://www.amarbooks.org/thumbs/1466753814.jpg', N'14.67 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-10.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (464, N'Bauler Gaan', N'Bauler Gaan', NULL, N'https://www.amarbooks.org/thumbs/1464946908.jpg', N'0.11 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Bauler%20Gaan.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (465, N'Joy Porajoy', N'Joy Porajoy', NULL, N'https://www.amarbooks.org/thumbs/1464947623.jpg', N'0.11 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Joy%20Porajoy.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (466, N'Gora', N'Gora', NULL, N'https://www.amarbooks.org/thumbs/1573743950.jpg', N'5.28 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Gora.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (467, N'Rabindra Rachanabali - Vol-08', N'Rabindra Rachanabali - Vol-08', NULL, N'https://www.amarbooks.org/thumbs/1466753746.jpg', N'20.59 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-08.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (468, N'Nari', N'Nari', NULL, N'https://www.amarbooks.org/thumbs/1464947827.jpg', N'0.06 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Nari.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (469, N'Byabodhan', N'Byabodhan', NULL, N'https://www.amarbooks.org/thumbs/1464947030.jpg', N'0.94 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Byabodhan.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (470, N'Choker Bali', N'Choker Bali', NULL, N'https://www.amarbooks.org/thumbs/1464947083.jpg', N'1.91 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Choker%20Bali.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (471, N'Bostomi', N'Bostomi', NULL, N'https://www.amarbooks.org/thumbs/1464946994.jpg', N'3.17 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Bostomi.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (472, N'Rabibar', N'Rabibar', NULL, N'https://www.amarbooks.org/thumbs/1464947990.jpg', N'0.17 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabibar.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (473, N'Protibeshini', N'Protibeshini', NULL, N'https://www.amarbooks.org/thumbs/1464947942.jpg', N'0.1 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Protibeshini.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (474, N'Asombhob Katha', N'Asombhob Katha', NULL, N'https://www.amarbooks.org/thumbs/1464946839.jpg', N'0.06 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Asombhob%20Katha.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (475, N'Sesh Borshon', N'Sesh Borshon', NULL, N'https://www.amarbooks.org/thumbs/1464948054.jpg', N'0.08 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Sesh%20Borshon.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (476, N'Dakghar', N'Dakghar', NULL, N'https://www.amarbooks.org/thumbs/1464947178.jpg', N'8.55 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Dakghar.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (477, N'Rabindra Rachanabali - Vol-13', N'Rabindra Rachanabali - Vol-13', NULL, N'https://www.amarbooks.org/thumbs/1466753883.jpg', N'12.06 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Rabindra%20Rachanabali%20-%20Vol-13.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (478, N'Bhanu Singher Padabali', N'Bhanu Singher Padabali', NULL, N'https://www.amarbooks.org/thumbs/1464946928.jpg', N'3.03 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Bhanu%20Singher%20Padabali.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (479, N'Dui Bon', N'Dui Bon', NULL, N'https://www.amarbooks.org/thumbs/1466754885.jpg', N'0.32 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Dui%20Bon.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (480, N'Post Master', N'Post Master', NULL, N'https://www.amarbooks.org/thumbs/1464947909.jpg', N'0.05 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Rabindranath%20Tagore&f=Post%20Master.pdf', 17, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (481, N'Nazrul Islam Kishor Jiboni - Hayat Mahmud', N'Nazrul Islam Kishor Jiboni - Hayat Mahmud', NULL, N'https://www.amarbooks.org/thumbs/1573883505.jpg', N'1.77 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Life%20History&f=Nazrul%20Islam%20Kishor%20Jiboni%20-%20Hayat%20Mahmud.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (482, N'Atish Dipankar', N'Atish Dipankar', NULL, N'https://www.amarbooks.org/thumbs/1573882640.jpg', N'0.89 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Life%20History&f=Atish%20Dipankar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (483, N'Sher-e-Bangla Fajlul Haque-Bhabesh Roy', N'Sher-e-Bangla Fajlul Haque-Bhabesh Roy', NULL, N'https://www.amarbooks.org/thumbs/1573883585.jpg', N'0.68 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Life%20History&f=Sher-e-Bangla%20Fajlul%20Haque-Bhabesh%20Roy.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (484, N'Indira Gandhi Biography - Liaquat Ali Khan', N'Indira Gandhi Biography - Liaquat Ali Khan', NULL, N'https://www.amarbooks.org/thumbs/1467788904.jpg', N'0 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Life%20History&f=Indira%20Gandhi%20Biography%20-%20Liaquat%20Ali%20Khan.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (485, N'Ausamapta Atmajiboni by Sheikh Mujibur Rahman', N'Ausamapta Atmajiboni by Sheikh Mujibur Rahman', NULL, N'https://www.amarbooks.org/thumbs/1570936715.jpg', N'15.94 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Life%20History&f=Ausamapta%20Atmajiboni%20by%20Sheikh%20Mujibur%20Rahman.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (486, N'Adolf Hitler - Md. Billal Hossain', N'Adolf Hitler - Md. Billal Hossain', NULL, N'https://www.amarbooks.org/thumbs/1469376374.jpg', N'11.29 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Life%20History&f=Adolf%20Hitler%20-%20Md.%20Billal%20Hossain.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (487, N'Lincoln-(4) - Asru Kumar Sikdar', N'Lincoln-(4) - Asru Kumar Sikdar', NULL, N'https://www.amarbooks.org/thumbs/1573883171.jpg', N'0.88 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Life%20History&f=Lincoln-(4)%20-%20Asru%20Kumar%20Sikdar.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (488, N'IBN Sina', N'IBN Sina', NULL, N'https://www.amarbooks.org/thumbs/1573883036.jpg', N'1.04 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Life%20History&f=IBN%20Sina.pdf', 1, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (489, N'Firee Esho Sundoritoma', N'Firee Esho Sundoritoma', NULL, N'https://www.amarbooks.org/thumbs/1464934327.jpg', N'36.51 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Firee%20Esho%20Sundoritoma.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (490, N'Fajil', N'Fajil', NULL, N'https://www.amarbooks.org/thumbs/1464934299.jpg', N'6.07 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Fajil.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (491, N'Nondini', N'Nondini', NULL, N'https://www.amarbooks.org/thumbs/1464934437.jpg', N'6.26 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Nondini.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (492, N'Borno O Shaka Laka Bum Bum', N'Borno O Shaka Laka Bum Bum', NULL, N'https://www.amarbooks.org/thumbs/1555465575.jpg', N'0.89 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Borno%20O%20Shaka%20Laka%20Bum%20Bum.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (493, N'Mon Plus Hridoy', N'Mon Plus Hridoy', NULL, N'https://www.amarbooks.org/thumbs/1464934418.jpg', N'2.43 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Mon%20Plus%20Hridoy.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (494, N'Abar Tora Kipte Ho', N'Abar Tora Kipte Ho', NULL, N'https://www.amarbooks.org/thumbs/1464934087.jpg', N'7.59 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Abar%20Tora%20Kipte%20Ho.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (495, N'Alo Hate Choliyachhe Adharer Jatri', N'Alo Hate Choliyachhe Adharer Jatri', NULL, N'https://www.amarbooks.org/thumbs/1464934129.jpg', N'1.74 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Alo%20Hate%20Choliyachhe%20Adharer%20Jatri.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (496, N'Swapno', N'Swapno', NULL, N'https://www.amarbooks.org/thumbs/1464934524.jpg', N'3.33 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Swapno.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (497, N'Jara Bhor Enechhilo', N'Jara Bhor Enechhilo', NULL, N'https://www.amarbooks.org/thumbs/1464934365.jpg', N'2.64 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Jara%20Bhor%20Enechhilo.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (498, N'Maa', N'Maa', NULL, N'https://www.amarbooks.org/thumbs/1464934401.jpg', N'0.47 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Maa.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (499, N'Amar Ekta Dukkho Ache', N'Amar Ekta Dukkho Ache', NULL, N'https://www.amarbooks.org/thumbs/1464934147.jpg', N'26.74 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Amar%20Ekta%20Dukkho%20Ache.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (500, N'Etodin Kothay Chilen', N'Etodin Kothay Chilen', NULL, N'https://www.amarbooks.org/thumbs/1464934278.jpg', N'8.74 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Etodin%20Kothay%20Chilen.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (501, N'Alo Andhokare Jai', N'Alo Andhokare Jai', NULL, N'https://www.amarbooks.org/thumbs/1464934111.jpg', N'1.05 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Alo%20Andhokare%20Jai.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (502, N'Sei Gumer Por', N'Sei Gumer Por', NULL, N'https://www.amarbooks.org/thumbs/1464934490.jpg', N'30.77 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Sei%20Gumer%20Por.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (503, N'Kheya', N'Kheya', NULL, N'https://www.amarbooks.org/thumbs/1464934382.jpg', N'15.24 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Kheya.pdf', 13, NULL)
GO
INSERT [dbo].[Books] ([Id], [Name], [DisplayName], [Description], [Thumbnails], [DownloadSize], [DownloadLink], [CategoryId], [Status]) VALUES (504, N'Bikel Belar Golpo', N'Bikel Belar Golpo', NULL, N'https://www.amarbooks.org/thumbs/1464934227.jpg', N'0.16 MB
', N'http://www.amarbooks.com/FreeDownload.php?w=Anisul%20Haque&f=Bikel%20Belar%20Golpo.pdf', 13, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (1, N'Bani Basu', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (2, N'Bibhutibhushan Bandopadhyay', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (3, N'Kazi Nazrul Islam', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (4, N'Manik Bandyopadhyay', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (5, N'post_category', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (6, N'Sarat Chandra Chattopadhyay', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (7, N'Syed Mustafa Siraj', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (8, N'Zahir Raihan', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (9, N'Shirshendu Mukhopadhyay', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (10, N'Satyajit Ray', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (11, N'Michael Madhusudan Dutta', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (12, N'Tarashankar Bandopadhyay', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (13, N'Anisul Haque', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (14, N'Anubad eBooks', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (15, N'Narayan Sanyal', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (16, N'Others', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (17, N'Rabindranath Tagore', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (18, N'Sunil Gangopadhyay', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (19, N'Western Series', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (20, N'Samaresh Majumdar', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (21, N'Samaresh Basu', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (22, N'Wilbur Smith', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (23, N'Taslima Nasrin', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (24, N'Sheba Mix', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (25, N'Humayun Ahmed', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (26, N'Muhammed Zafar Iqbal', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (27, N'Imdadul Haq Milon', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (28, N'Sukanta Bhattacharya', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (29, N'Manik Bandopadhyay', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (30, N'Sukumar Ray', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (31, N'Leela Majumdar', NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [Description], [Status]) VALUES (32, N'Life History', NULL, NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Books]    Script Date: 1/27/2021 5:23:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Books] ON [dbo].[Books]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Category]
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_AllCategory]    Script Date: 1/27/2021 5:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_AllCategory]
	
AS
BEGIN

	SELECT [Id]
      ,[Name]
      ,[Description]
      ,[Status]
	FROM [dbo].[Category]


END
GO
/****** Object:  StoredProcedure [dbo].[sp_In_Books]    Script Date: 1/27/2021 5:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_In_Books]
	@Name nvarchar(150),
    @DisplayName nvarchar(150) = '',
    @Description nvarchar(max) = '',
    @Thumbnails nvarchar(150),
    @DownloadSize nvarchar(50),
    @DownloadLink nvarchar(150),
    @CategoryId int,
    @Status int = 1
AS
BEGIN

	declare @Id int
	select  @Id =(isnull(max(Id),0)+1) from Books

	INSERT INTO [dbo].[Books]
           ([Id]
           ,[Name]
           ,[DisplayName]
           ,[Description]
           ,[Thumbnails]
           ,[DownloadSize]
           ,[DownloadLink]
           ,[CategoryId]
           ,[Status])
     VALUES
           (@Id
           ,@Name
           ,@DisplayName
           ,@Description
           ,@Thumbnails
           ,@DownloadSize
           ,@DownloadLink
           ,@CategoryId
           ,@Status)


END
GO
/****** Object:  StoredProcedure [dbo].[sp_In_Category]    Script Date: 1/27/2021 5:23:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_In_Category]
	@Name nvarchar(50),
	@Description nvarchar(MAX) = '',
	@Status int = 1
AS
BEGIN
	
	
	declare @Id int
	select  @Id =(isnull(max(Id),0)+1) from Category


	INSERT INTO [dbo].[Category]
           ([Id]
           ,[Name]
           ,[Description]
           ,[Status])
     VALUES
           (@Id
           ,@Name
           ,@Description
           ,@Status)

	return @Id
	

END
GO
USE [master]
GO
ALTER DATABASE [BookDB] SET  READ_WRITE 
GO
