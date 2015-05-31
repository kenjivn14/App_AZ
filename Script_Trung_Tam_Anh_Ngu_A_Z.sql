USE [master]
GO
/****** Object:  Database [Trung_Tam_Anh_Ngu_A_Z]    Script Date: 5/21/2015 3:52:45 AM ******/
CREATE DATABASE [Trung_Tam_Anh_Ngu_A_Z]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Trung_Tam_Anh_Ngu_A_Z', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Backup\Trung_Tam_Anh_Ngu_A_Z.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Trung_Tam_Anh_Ngu_A_Z_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\Backup\Trung_Tam_Anh_Ngu_A_Z_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trung_Tam_Anh_Ngu_A_Z].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET  MULTI_USER 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Trung_Tam_Anh_Ngu_A_Z', N'ON'
GO
USE [Trung_Tam_Anh_Ngu_A_Z]
GO
/****** Object:  Table [dbo].[Chung_Chi]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chung_Chi](
	[MaChungChi] [int] NOT NULL,
	[TenChungChi] [nvarchar](50) NULL,
	[MaHV] [int] NULL,
	[MaKiThi] [int] NULL,
 CONSTRAINT [PK_Chung_Chi] PRIMARY KEY CLUSTERED 
(
	[MaChungChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doi_Khai_Giang]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doi_Khai_Giang](
	[MaDoiHoc] [int] NOT NULL,
	[TenDoiHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_Doi_Khai_Giang] PRIMARY KEY CLUSTERED 
(
	[MaDoiHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Giang_Vien]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Giang_Vien](
	[MaGV] [int] IDENTITY(1,1) NOT NULL,
	[TenGV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [nchar](10) NULL,
	[MaTD] [int] NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Giang_Vien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hoc_Vien]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hoc_Vien](
	[MaHV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](11) NULL,
	[MaLop] [int] NULL,
	[MaKhoaHoc] [int] NULL,
 CONSTRAINT [PK_Hoc_Vien] PRIMARY KEY CLUSTERED 
(
	[MaHV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Khoa_Hoc]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa_Hoc](
	[MaKhoaHoc] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoaHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoa_Hoc] PRIMARY KEY CLUSTERED 
(
	[MaKhoaHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ky_Thi]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ky_Thi](
	[MaKiThi] [int] NOT NULL,
	[TenKiThi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ky_Thi] PRIMARY KEY CLUSTERED 
(
	[MaKiThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lop_Hoc]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop_Hoc](
	[MaLop] [int] IDENTITY(1,1) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop_Hoc] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nien_Khoa]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nien_Khoa](
	[MaNienKhoa] [int] NOT NULL,
	[TenNienKhoa] [char](10) NULL,
 CONSTRAINT [PK_Nien_Khoa] PRIMARY KEY CLUSTERED 
(
	[MaNienKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temp_LopHoc]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temp_LopHoc](
	[MaLH] [int] NULL,
	[TenLH] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThongTinLop]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinLop](
	[MaLop] [int] NULL,
	[NBT] [date] NULL,
	[NKT] [date] NULL,
	[SS] [int] NULL,
	[SBD] [int] NULL,
	[MaGV] [int] NULL,
	[MaKhoaHoc] [int] NULL,
	[MaNienKhoa] [int] NULL,
	[MaDoiHoc] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrinhDo]    Script Date: 5/21/2015 3:52:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDo](
	[MaTD] [int] IDENTITY(1,1) NOT NULL,
	[TrinhDo] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrinhDo] PRIMARY KEY CLUSTERED 
(
	[MaTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Chung_Chi]  WITH CHECK ADD  CONSTRAINT [FK_Chung_Chi_Hoc_Vien] FOREIGN KEY([MaHV])
REFERENCES [dbo].[Hoc_Vien] ([MaHV])
GO
ALTER TABLE [dbo].[Chung_Chi] CHECK CONSTRAINT [FK_Chung_Chi_Hoc_Vien]
GO
ALTER TABLE [dbo].[Chung_Chi]  WITH CHECK ADD  CONSTRAINT [FK_Chung_Chi_Ky_Thi] FOREIGN KEY([MaKiThi])
REFERENCES [dbo].[Ky_Thi] ([MaKiThi])
GO
ALTER TABLE [dbo].[Chung_Chi] CHECK CONSTRAINT [FK_Chung_Chi_Ky_Thi]
GO
ALTER TABLE [dbo].[Giang_Vien]  WITH CHECK ADD  CONSTRAINT [FK_Giang_Vien_TrinhDo] FOREIGN KEY([MaTD])
REFERENCES [dbo].[TrinhDo] ([MaTD])
GO
ALTER TABLE [dbo].[Giang_Vien] CHECK CONSTRAINT [FK_Giang_Vien_TrinhDo]
GO
ALTER TABLE [dbo].[Hoc_Vien]  WITH CHECK ADD  CONSTRAINT [FK_Hoc_Vien_Khoa_Hoc] FOREIGN KEY([MaKhoaHoc])
REFERENCES [dbo].[Khoa_Hoc] ([MaKhoaHoc])
GO
ALTER TABLE [dbo].[Hoc_Vien] CHECK CONSTRAINT [FK_Hoc_Vien_Khoa_Hoc]
GO
ALTER TABLE [dbo].[Hoc_Vien]  WITH CHECK ADD  CONSTRAINT [FK_Hoc_Vien_Lop_Hoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop_Hoc] ([MaLop])
GO
ALTER TABLE [dbo].[Hoc_Vien] CHECK CONSTRAINT [FK_Hoc_Vien_Lop_Hoc]
GO
ALTER TABLE [dbo].[ThongTinLop]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinLop_Doi_Khai_Giang] FOREIGN KEY([MaDoiHoc])
REFERENCES [dbo].[Doi_Khai_Giang] ([MaDoiHoc])
GO
ALTER TABLE [dbo].[ThongTinLop] CHECK CONSTRAINT [FK_ThongTinLop_Doi_Khai_Giang]
GO
ALTER TABLE [dbo].[ThongTinLop]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinLop_Giang_Vien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[Giang_Vien] ([MaGV])
GO
ALTER TABLE [dbo].[ThongTinLop] CHECK CONSTRAINT [FK_ThongTinLop_Giang_Vien]
GO
ALTER TABLE [dbo].[ThongTinLop]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinLop_Khoa_Hoc] FOREIGN KEY([MaKhoaHoc])
REFERENCES [dbo].[Khoa_Hoc] ([MaKhoaHoc])
GO
ALTER TABLE [dbo].[ThongTinLop] CHECK CONSTRAINT [FK_ThongTinLop_Khoa_Hoc]
GO
ALTER TABLE [dbo].[ThongTinLop]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinLop_Lop_Hoc] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop_Hoc] ([MaLop])
GO
ALTER TABLE [dbo].[ThongTinLop] CHECK CONSTRAINT [FK_ThongTinLop_Lop_Hoc]
GO
ALTER TABLE [dbo].[ThongTinLop]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinLop_Nien_Khoa] FOREIGN KEY([MaNienKhoa])
REFERENCES [dbo].[Nien_Khoa] ([MaNienKhoa])
GO
ALTER TABLE [dbo].[ThongTinLop] CHECK CONSTRAINT [FK_ThongTinLop_Nien_Khoa]
GO
USE [master]
GO
ALTER DATABASE [Trung_Tam_Anh_Ngu_A_Z] SET  READ_WRITE 
GO
