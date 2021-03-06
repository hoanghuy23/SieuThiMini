USE [QuanLySieuThi]
GO
ALTER TABLE [dbo].[SANPHAM] DROP CONSTRAINT [FK__SANPHAM__MaLH__6E01572D]
GO
ALTER TABLE [dbo].[SANPHAM] DROP CONSTRAINT [FK__SANPHAM__MaLH__08B54D69]
GO
ALTER TABLE [dbo].[PHIEUXUAT] DROP CONSTRAINT [FK__PHIEUXUAT__MaNV__6D0D32F4]
GO
ALTER TABLE [dbo].[PHIEUXUAT] DROP CONSTRAINT [FK__PHIEUXUAT__MaNV__07C12930]
GO
ALTER TABLE [dbo].[PHIEUNHAP] DROP CONSTRAINT [FK__PHIEUNHAP__MaNV__6C190EBB]
GO
ALTER TABLE [dbo].[PHIEUNHAP] DROP CONSTRAINT [FK__PHIEUNHAP__MaNV__06CD04F7]
GO
ALTER TABLE [dbo].[PHIEUKKCHITIET] DROP CONSTRAINT [FK__PHIEUKKCHI__MaSP__6B24EA82]
GO
ALTER TABLE [dbo].[PHIEUKKCHITIET] DROP CONSTRAINT [FK__PHIEUKKCHI__MaSP__05D8E0BE]
GO
ALTER TABLE [dbo].[PHIEUKKCHITIET] DROP CONSTRAINT [FK__PHIEUKKCH__MaPhi__6A30C649]
GO
ALTER TABLE [dbo].[PHIEUKKCHITIET] DROP CONSTRAINT [FK__PHIEUKKCH__MaPhi__04E4BC85]
GO
ALTER TABLE [dbo].[PHIEUKIEMKE] DROP CONSTRAINT [FK__PHIEUKIEMK__MaNV__693CA210]
GO
ALTER TABLE [dbo].[PHIEUKIEMKE] DROP CONSTRAINT [FK__PHIEUKIEMK__MaNV__03F0984C]
GO
ALTER TABLE [dbo].[HOADONCHITIET] DROP CONSTRAINT [FK__HOADONCHIT__MaSP__68487DD7]
GO
ALTER TABLE [dbo].[HOADONCHITIET] DROP CONSTRAINT [FK__HOADONCHIT__MaSP__02FC7413]
GO
ALTER TABLE [dbo].[HOADONCHITIET] DROP CONSTRAINT [FK__HOADONCHIT__MaHD__6754599E]
GO
ALTER TABLE [dbo].[HOADONCHITIET] DROP CONSTRAINT [FK__HOADONCHIT__MaHD__02084FDA]
GO
ALTER TABLE [dbo].[HOADON] DROP CONSTRAINT [FK__HOADON__MaNV__656C112C]
GO
ALTER TABLE [dbo].[HOADON] DROP CONSTRAINT [FK__HOADON__MaNV__00200768]
GO
ALTER TABLE [dbo].[HOADON] DROP CONSTRAINT [FK__HOADON__MaKH__66603565]
GO
ALTER TABLE [dbo].[HOADON] DROP CONSTRAINT [FK__HOADON__MaKH__01142BA1]
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] DROP CONSTRAINT [FK__CHITIETPHI__MaSP__7F2BE32F]
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] DROP CONSTRAINT [FK__CHITIETPHI__MaSP__6477ECF3]
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] DROP CONSTRAINT [FK__CHITIETPHI__MaPX__7E37BEF6]
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT] DROP CONSTRAINT [FK__CHITIETPHI__MaPX__6383C8BA]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] DROP CONSTRAINT [FK__CHITIETPHI__MaSP__7D439ABD]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] DROP CONSTRAINT [FK__CHITIETPHI__MaSP__628FA481]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] DROP CONSTRAINT [FK__CHITIETPHI__MaPN__7C4F7684]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] DROP CONSTRAINT [FK__CHITIETPHI__MaPN__619B8048]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] DROP CONSTRAINT [FK__CHITIETPH__MaNCC__7B5B524B]
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP] DROP CONSTRAINT [FK__CHITIETPH__MaNCC__60A75C0F]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[SANPHAM]
GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[PHIEUXUAT]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[PHIEUNHAP]
GO
/****** Object:  Table [dbo].[PHIEUKKCHITIET]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[PHIEUKKCHITIET]
GO
/****** Object:  Table [dbo].[PHIEUKIEMKE]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[PHIEUKIEMKE]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[NHANVIEN]
GO
/****** Object:  Table [dbo].[NHACC]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[NHACC]
GO
/****** Object:  Table [dbo].[LOAIHANG]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[LOAIHANG]
GO
/****** Object:  Table [dbo].[KHTT]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[KHTT]
GO
/****** Object:  Table [dbo].[HOADONCHITIET]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[HOADONCHITIET]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[HOADON]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUXUAT]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[CHITIETPHIEUXUAT]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP TABLE [dbo].[CHITIETPHIEUNHAP]
GO
USE [master]
GO
/****** Object:  Database [QuanLySieuThi]    Script Date: 11/18/2020 9:32:54 PM ******/
DROP DATABASE [QuanLySieuThi]
GO
/****** Object:  Database [QuanLySieuThi]    Script Date: 11/18/2020 9:32:54 PM ******/
CREATE DATABASE [QuanLySieuThi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLySieuThi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLySieuThi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLySieuThi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLySieuThi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuanLySieuThi] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLySieuThi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLySieuThi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLySieuThi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLySieuThi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLySieuThi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLySieuThi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLySieuThi] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLySieuThi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLySieuThi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLySieuThi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLySieuThi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLySieuThi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLySieuThi] SET QUERY_STORE = OFF
GO
USE [QuanLySieuThi]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUNHAP]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUNHAP](
	[MaPN] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[MaNCC] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[NgaySX] [date] NULL,
	[NgayNhap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC,
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUXUAT]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUXUAT](
	[MaPX] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongBan] [int] NULL,
	[NgayXuat] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[ThoiDiemLap] [date] NULL,
	[TongTienTra] [float] NULL,
	[MucGiam] [float] NULL,
	[DiemThuong] [float] NULL,
	[MaNV] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[GioMua] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONCHITIET]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONCHITIET](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHTT]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHTT](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[NgayCapThe] [date] NULL,
	[NgayMuaGanNhat] [date] NULL,
	[DiemThuong] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIHANG]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIHANG](
	[MaLH] [int] IDENTITY(1,1) NOT NULL,
	[TenLH] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACC]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACC](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](255) NULL,
	[CMND] [varchar](10) NULL,
	[DienThoai] [varchar](20) NULL,
	[NgayVaoLam] [date] NULL,
	[ChucVu] [int] NULL,
	[TaiKhoan] [varchar](20) NULL,
	[MatKhau] [varchar](20) NULL,
	[img] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUKIEMKE]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUKIEMKE](
	[MaPhieuKK] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[ThoiDiemLap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuKK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUKKCHITIET]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUKKCHITIET](
	[MaPhieuKK] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SLTonKho] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuKK] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[ThoiDiemLap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MaPX] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[ThoiDiemLap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 11/18/2020 9:32:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[GiaMua] [float] NOT NULL,
	[GiaBan] [float] NOT NULL,
	[HSD] [nvarchar](100) NULL,
	[VAT] [float] NULL,
	[MaLH] [int] NULL,
	[DonVi] [nvarchar](50) NULL,
	[img] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (1, 1, 6, 200, CAST(N'2019-04-04' AS Date), CAST(N'2019-10-10' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (2, 3, 9, 500, CAST(N'2019-07-09' AS Date), CAST(N'2019-09-10' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (3, 2, 5, 700, CAST(N'2018-06-04' AS Date), CAST(N'2018-06-05' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (4, 1, 6, 300, CAST(N'2017-09-10' AS Date), CAST(N'2017-09-11' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (7, 30, 3, 100, CAST(N'2019-01-01' AS Date), CAST(N'2019-01-23' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (7, 35, 5, 200, CAST(N'2019-01-10' AS Date), CAST(N'2019-01-23' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (7, 41, 4, 30, CAST(N'2019-01-15' AS Date), CAST(N'2019-01-23' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (8, 40, 1, 120, CAST(N'2018-05-01' AS Date), CAST(N'2018-11-19' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (8, 47, 8, 70, CAST(N'2018-09-01' AS Date), CAST(N'2018-11-19' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (9, 35, 5, 200, CAST(N'2018-12-28' AS Date), CAST(N'2019-02-02' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (9, 40, 1, 80, CAST(N'2018-12-25' AS Date), CAST(N'2019-02-02' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (9, 50, 8, 100, CAST(N'2018-07-15' AS Date), CAST(N'2019-02-02' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (9, 53, 1, 150, CAST(N'2018-12-15' AS Date), CAST(N'2019-02-02' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (10, 35, 5, 200, CAST(N'2018-12-01' AS Date), CAST(N'2019-02-02' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (10, 38, 5, 150, CAST(N'2018-12-25' AS Date), CAST(N'2019-02-02' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (10, 45, 8, 600, CAST(N'2019-01-01' AS Date), CAST(N'2019-02-02' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (11, 31, 3, 90, CAST(N'2019-03-15' AS Date), CAST(N'2019-04-13' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (11, 33, 5, 600, CAST(N'2019-03-09' AS Date), CAST(N'2019-04-13' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (11, 45, 8, 600, CAST(N'2019-04-09' AS Date), CAST(N'2019-04-13' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (12, 33, 5, 750, CAST(N'2020-01-01' AS Date), CAST(N'2020-01-02' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (13, 31, 3, 90, CAST(N'2019-11-19' AS Date), CAST(N'2020-01-12' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (14, 29, 1, 300, CAST(N'2019-12-01' AS Date), CAST(N'2020-01-12' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (15, 32, 3, 70, CAST(N'2019-01-01' AS Date), CAST(N'2019-05-08' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (16, 34, 5, 700, CAST(N'2019-01-16' AS Date), CAST(N'2019-03-15' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (16, 38, 5, 200, CAST(N'2019-01-20' AS Date), CAST(N'2019-03-15' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (16, 42, 2, 70, CAST(N'2019-02-18' AS Date), CAST(N'2019-03-15' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (16, 51, 2, 50, CAST(N'2019-01-20' AS Date), CAST(N'2019-03-15' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (17, 48, 8, 100, CAST(N'2019-01-08' AS Date), CAST(N'2019-03-15' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (18, 30, 3, 100, CAST(N'2019-02-01' AS Date), CAST(N'2019-03-20' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (18, 38, 5, 100, CAST(N'2019-01-01' AS Date), CAST(N'2019-03-20' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (18, 39, 5, 400, CAST(N'2019-02-15' AS Date), CAST(N'2019-03-20' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (19, 41, 4, 20, CAST(N'2019-04-10' AS Date), CAST(N'2019-05-04' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (20, 47, 8, 80, CAST(N'2019-01-29' AS Date), CAST(N'2019-02-06' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (21, 36, 3, 100, CAST(N'2018-12-29' AS Date), CAST(N'2019-02-12' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (22, 52, 1, 100, CAST(N'2019-04-15' AS Date), CAST(N'2019-05-10' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (23, 46, 8, 100, CAST(N'2018-09-15' AS Date), CAST(N'2018-12-22' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (23, 52, 1, 150, CAST(N'2018-10-10' AS Date), CAST(N'2018-12-22' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (23, 53, 1, 200, CAST(N'2018-09-10' AS Date), CAST(N'2018-12-22' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (24, 3, 9, 50, CAST(N'2018-09-22' AS Date), CAST(N'2018-12-22' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (24, 29, 1, 200, CAST(N'2018-10-20' AS Date), CAST(N'2018-12-22' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (24, 52, 1, 100, CAST(N'2018-09-25' AS Date), CAST(N'2018-12-22' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (25, 37, 5, 100, CAST(N'2018-11-01' AS Date), CAST(N'2018-12-29' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (26, 47, 8, 50, CAST(N'2019-02-06' AS Date), CAST(N'2019-02-16' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (27, 37, 5, 100, CAST(N'2019-01-16' AS Date), CAST(N'2019-02-16' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (27, 39, 5, 400, CAST(N'2019-01-01' AS Date), CAST(N'2019-02-16' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (28, 38, 5, 100, CAST(N'2019-01-15' AS Date), CAST(N'2019-02-16' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (29, 42, 2, 50, CAST(N'2019-01-20' AS Date), CAST(N'2019-02-25' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (30, 46, 8, 70, CAST(N'2019-02-01' AS Date), CAST(N'2019-03-20' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (31, 2, 5, 500, CAST(N'2019-01-10' AS Date), CAST(N'2019-02-01' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (32, 1, 1, 100, CAST(N'2019-02-28' AS Date), CAST(N'2019-04-11' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (33, 48, 8, 55, CAST(N'2019-03-20' AS Date), CAST(N'2019-04-11' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (34, 33, 5, 700, CAST(N'2019-03-23' AS Date), CAST(N'2019-04-18' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (35, 35, 5, 200, CAST(N'2017-10-10' AS Date), CAST(N'2017-12-27' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (35, 39, 5, 400, CAST(N'2017-10-19' AS Date), CAST(N'2017-12-27' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (35, 49, 4, 50, CAST(N'2017-11-19' AS Date), CAST(N'2017-12-27' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (36, 41, 4, 50, CAST(N'2017-09-23' AS Date), CAST(N'2017-12-27' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (36, 44, 9, 50, CAST(N'2017-10-04' AS Date), CAST(N'2017-12-27' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (36, 51, 2, 50, CAST(N'2017-11-04' AS Date), CAST(N'2017-12-27' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (37, 43, 2, 100, CAST(N'2017-10-30' AS Date), CAST(N'2017-12-27' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (38, 32, 3, 50, CAST(N'2018-01-01' AS Date), CAST(N'2018-01-24' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (39, 38, 5, 200, CAST(N'2019-01-01' AS Date), CAST(N'2019-01-03' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (40, 31, 3, 100, CAST(N'2018-12-20' AS Date), CAST(N'2019-01-03' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (40, 32, 3, 100, CAST(N'2018-12-16' AS Date), CAST(N'2019-01-03' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (40, 34, 5, 500, CAST(N'2018-12-05' AS Date), CAST(N'2019-01-03' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (41, 41, 4, 50, CAST(N'2019-01-10' AS Date), CAST(N'2019-02-09' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (41, 47, 8, 50, CAST(N'2019-01-01' AS Date), CAST(N'2019-02-09' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (41, 49, 4, 50, CAST(N'2019-01-01' AS Date), CAST(N'2019-02-09' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (42, 44, 9, 30, CAST(N'2019-01-15' AS Date), CAST(N'2019-02-27' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (43, 40, 1, 50, CAST(N'2019-02-01' AS Date), CAST(N'2019-04-03' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (44, 36, 8, 100, CAST(N'2019-01-18' AS Date), CAST(N'2019-02-27' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (45, 31, 3, 45, CAST(N'2018-10-01' AS Date), CAST(N'2018-11-20' AS Date))
INSERT [dbo].[CHITIETPHIEUNHAP] ([MaPN], [MaSP], [MaNCC], [SoLuong], [NgaySX], [NgayNhap]) VALUES (46, 49, 4, 30, CAST(N'2018-11-03' AS Date), CAST(N'2018-11-20' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (1, 1, 150, CAST(N'2019-05-06' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (2, 2, 500, CAST(N'2018-07-08' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (3, 3, 456, CAST(N'2019-12-12' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (4, 1, 270, CAST(N'2017-10-10' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (5, 31, 66, CAST(N'2019-09-15' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (5, 41, 75, CAST(N'2019-09-15' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (5, 45, 59, CAST(N'2019-09-15' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (6, 32, 102, CAST(N'2018-12-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (6, 35, 88, CAST(N'2018-12-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (7, 51, 54, CAST(N'2019-10-04' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (8, 50, 79, CAST(N'2020-02-02' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (9, 42, 66, CAST(N'2020-01-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (10, 31, 141, CAST(N'2019-07-15' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (10, 48, 302, CAST(N'2019-07-15' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (11, 38, 467, CAST(N'2019-09-05' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (12, 34, 105, CAST(N'2019-10-27' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (12, 39, 95, CAST(N'2019-10-27' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (12, 42, 125, CAST(N'2019-10-27' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (12, 44, 120, CAST(N'2019-10-27' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (12, 51, 64, CAST(N'2019-10-27' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (13, 50, 100, CAST(N'2018-12-29' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (14, 31, 134, CAST(N'2018-11-04' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (14, 35, 104, CAST(N'2018-11-04' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (14, 39, 94, CAST(N'2018-11-04' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (14, 41, 120, CAST(N'2018-11-04' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (14, 48, 130, CAST(N'2018-11-04' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (15, 30, 237, CAST(N'2020-02-01' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (16, 39, 146, CAST(N'2020-01-02' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (16, 47, 89, CAST(N'2020-01-02' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (16, 49, 109, CAST(N'2020-01-02' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (17, 46, 107, CAST(N'2020-01-02' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (18, 49, 78, CAST(N'2019-05-18' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (19, 48, 98, CAST(N'2018-12-02' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (20, 33, 200, CAST(N'2019-06-16' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (20, 37, 105, CAST(N'2019-06-16' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (20, 38, 378, CAST(N'2019-06-16' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (21, 35, 207, CAST(N'2019-06-18' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (22, 30, 100, CAST(N'2020-01-01' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (23, 29, 145, CAST(N'2018-11-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (23, 30, 105, CAST(N'2018-11-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (23, 38, 79, CAST(N'2018-11-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (23, 41, 125, CAST(N'2018-11-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (23, 43, 88, CAST(N'2018-11-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (23, 51, 51, CAST(N'2018-11-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (24, 53, 378, CAST(N'2018-11-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (25, 52, 170, CAST(N'2019-04-10' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (26, 30, 189, CAST(N'2018-10-10' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (27, 29, 91, CAST(N'2018-10-12' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (27, 39, 591, CAST(N'2018-10-12' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (27, 49, 101, CAST(N'2018-10-12' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (27, 52, 300, CAST(N'2018-10-12' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (28, 42, 70, CAST(N'2018-12-26' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (29, 51, 49, CAST(N'2018-11-03' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (30, 32, 201, CAST(N'2019-07-07' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (31, 36, 120, CAST(N'2020-02-22' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (32, 41, 45, CAST(N'2020-01-10' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (33, 33, 578, CAST(N'2019-07-15' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (33, 37, 208, CAST(N'2019-07-15' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (33, 43, 99, CAST(N'2019-07-15' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (34, 35, 100, CAST(N'2020-02-28' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (35, 30, 165, CAST(N'2020-01-15' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (36, 40, 125, CAST(N'2018-12-14' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (37, 35, 107, CAST(N'2019-11-04' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (37, 37, 98, CAST(N'2019-11-04' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (37, 41, 115, CAST(N'2019-11-04' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (37, 45, 97, CAST(N'2019-11-04' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (38, 35, 78, CAST(N'2019-12-15' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (39, 2, 307, CAST(N'2020-01-05' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (40, 32, 100, CAST(N'2019-06-16' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (40, 37, 101, CAST(N'2019-06-16' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (40, 47, 210, CAST(N'2019-06-16' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (41, 48, 100, CAST(N'2018-12-30' AS Date))
INSERT [dbo].[CHITIETPHIEUXUAT] ([MaPX], [MaSP], [SoLuongBan], [NgayXuat]) VALUES (42, 50, 85, CAST(N'2019-09-19' AS Date))
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (3, CAST(N'2017-04-03' AS Date), 200000, 5, 4, 5, 1, N'9:30')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (4, CAST(N'2017-05-03' AS Date), 300000, 3, 6, 5, 2, N'09:33')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (5, CAST(N'2017-07-09' AS Date), 599000, 7, 12, 5, 5, N'13:00')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (7, CAST(N'2019-09-05' AS Date), 400000, 3, 10, 5, 1, N'19:23')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (8, CAST(N'2018-04-15' AS Date), 250000, 4, 5, 9, 12, N'15:15')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (9, CAST(N'2018-05-10' AS Date), 300000, 3, 6, 9, 9, N'21:03')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (10, CAST(N'2018-02-13' AS Date), 200000, 5, 4, 9, 15, N'21:20')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (11, CAST(N'2017-09-24' AS Date), 500000, 7, 11, 9, 21, N'09:44')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (12, CAST(N'2018-01-29' AS Date), 475000, 3, 9, 11, 16, N'09:51')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (13, CAST(N'2018-04-16' AS Date), 12000, 1, 0, 8, 2, N'08:06')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (14, CAST(N'2018-04-16' AS Date), 259000, 4, 5, 9, 8, N'20:05')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (15, CAST(N'2018-06-02' AS Date), 320000, 4, 6, 9, 5, N'11:15')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (16, CAST(N'2018-02-01' AS Date), 751000, 6, 9, 8, 12, N'10:19')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (17, CAST(N'2018-02-09' AS Date), 652000, 6, 7, 11, 17, N'18:30')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (18, CAST(N'2018-02-09' AS Date), 312000, 3, 6, 11, 13, N'18:35')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (19, CAST(N'2017-03-20' AS Date), 477000, 4, 8, 11, 16, N'19:02')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (20, CAST(N'2018-03-20' AS Date), 520000, 6, 8, 8, 21, N'20:10')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (21, CAST(N'2020-04-15' AS Date), 658700, 5, 9, 5, 16, N'07:55')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (22, CAST(N'2019-12-15' AS Date), 150000, 0, 0, 5, 22, N'10:16')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (23, CAST(N'2020-04-01' AS Date), 259000, 4, 5, 5, 24, N'10:25')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (24, CAST(N'2020-05-07' AS Date), 348700, 5, 6, 9, 15, N'21:55')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (25, CAST(N'2020-05-07' AS Date), 987200, 5, 15, 11, 14, N'11:20')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (26, CAST(N'2020-04-27' AS Date), 456900, 4, 8, 5, 12, N'12:10')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (27, CAST(N'2019-12-28' AS Date), 658700, 5, 10, 5, 11, N'11:02')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (28, CAST(N'2019-12-26' AS Date), 458000, 4, 8, 5, 22, N'10:46')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (29, CAST(N'2019-11-16' AS Date), 345800, 3, 6, 11, 21, N'20:32')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (30, CAST(N'2018-04-22' AS Date), 258000, 4, 5, 11, 20, N'20:00')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (31, CAST(N'2020-05-10' AS Date), 450800, 4, 7, 8, 16, N'16:50')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (32, CAST(N'2020-04-15' AS Date), 658000, 5, 8, 8, 19, N'17:58')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (33, CAST(N'2020-05-01' AS Date), 345800, 4, 6, 9, 17, N'08:25')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (34, CAST(N'2020-03-04' AS Date), 252000, 4, 5, 9, 19, N'20:32')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (35, CAST(N'2019-12-20' AS Date), 458700, 4, 7, 11, 13, N'13:00')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (36, CAST(N'2020-01-12' AS Date), 654800, 1, 8, 11, 14, N'21:09')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (37, CAST(N'2020-02-20' AS Date), 459822, 4, 7, 11, 10, N'09:17')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (38, CAST(N'2020-03-19' AS Date), 322000, 3, 6, 9, 21, N'10:01')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (39, CAST(N'2020-03-02' AS Date), 120800, 0, 0, 8, 22, N'14:50')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (40, CAST(N'2020-05-01' AS Date), 789200, 5, 10, 8, 4, N'13:20')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (41, CAST(N'2020-01-23' AS Date), 587000, 4, 8, 9, 6, N'11:47')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (42, CAST(N'2020-03-28' AS Date), 654700, 5, 10, 9, 18, N'20:50')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (43, CAST(N'2020-02-12' AS Date), 92000, 0, 0, 9, 18, N'21:00')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (44, CAST(N'2020-02-12' AS Date), 489300, 4, 8, 8, 13, N'17:06')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (45, CAST(N'2020-05-02' AS Date), 1098000, 5, 20, 9, 12, N'18:11')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (46, CAST(N'2020-03-02' AS Date), 487200, 4, 10, 11, 14, N'18:59')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (47, CAST(N'2020-01-27' AS Date), 788000, 4, 11, 11, 16, N'18:32')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (48, CAST(N'2020-05-08' AS Date), 1204000, 5, 20, 11, 24, N'19:09')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (49, CAST(N'2020-01-17' AS Date), 33000, 0, 0, 9, 20, N'14:25')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (50, CAST(N'2019-11-27' AS Date), 256000, 4, 5, 9, 6, N'10:05')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (51, CAST(N'2020-10-16' AS Date), 345000, 3, 6, 8, 7, N'20:01')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (52, CAST(N'2020-03-21' AS Date), 568700, 4, 10, 9, 15, N'15:14')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (53, CAST(N'2020-04-22' AS Date), 185600, 0, 0, 8, 10, N'16:00')
INSERT [dbo].[HOADON] ([MaHD], [ThoiDiemLap], [TongTienTra], [MucGiam], [DiemThuong], [MaNV], [MaKH], [GioMua]) VALUES (54, CAST(N'2019-10-29' AS Date), 890000, 5, 12, 8, 24, N'08:19')
SET IDENTITY_INSERT [dbo].[HOADON] OFF
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (3, 1, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (3, 2, 3)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (3, 3, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (4, 1, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (4, 3, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (5, 1, 3)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (5, 2, 10)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (5, 3, 3)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (7, 1, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (7, 3, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (7, 46, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (7, 47, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (8, 1, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (8, 34, 8)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (8, 48, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (9, 1, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (9, 32, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (9, 33, 3)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (9, 46, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (10, 30, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (10, 35, 3)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (12, 1, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (12, 32, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (12, 45, 4)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (13, 35, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (15, 29, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (15, 36, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (15, 39, 5)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (16, 34, 10)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (16, 41, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (16, 50, 3)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (17, 31, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (17, 35, 3)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (17, 37, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (17, 38, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (18, 49, 7)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (25, 45, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (25, 46, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (25, 47, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (27, 42, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (27, 48, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (27, 50, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (27, 51, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (27, 52, 5)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (35, 29, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (35, 33, 10)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (35, 41, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (36, 41, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (36, 43, 3)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (36, 45, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (36, 47, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (38, 3, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (38, 31, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (38, 38, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (38, 40, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (38, 46, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (38, 51, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (43, 40, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (43, 53, 5)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (44, 30, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (44, 31, 4)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (44, 35, 4)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (44, 40, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (44, 51, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (46, 3, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (46, 36, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (46, 45, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (46, 52, 5)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (46, 53, 6)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (48, 1, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (48, 29, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (48, 30, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (48, 31, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (48, 39, 10)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (48, 44, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (48, 50, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (51, 2, 10)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (51, 32, 3)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (51, 37, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (51, 40, 2)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (53, 30, 5)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (53, 36, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (53, 38, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (54, 35, 4)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (54, 36, 5)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (54, 37, 1)
INSERT [dbo].[HOADONCHITIET] ([MaHD], [MaSP], [SoLuong]) VALUES (54, 43, 2)
SET IDENTITY_INSERT [dbo].[KHTT] ON 

INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (1, N'Nguyễn Hoàng Minh Nhật', N'222 Kha Vạn Cân, Thủ Đức', CAST(N'2018-02-01' AS Date), CAST(N'2019-09-05' AS Date), 14)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (2, N'Lê Văn Thịnh', N'90 Mã Lò, Bình Tân', CAST(N'2018-04-05' AS Date), CAST(N'2020-09-07' AS Date), 50)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (3, N'Lê Nhật Khang', N'44 Phan Văn Trị, Gò Vấp', CAST(N'2017-03-09' AS Date), CAST(N'2020-09-10' AS Date), 55)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (4, N'Huỳnh Nguyễn Phúc ', N'22 Quang Trung, Q12', CAST(N'2019-04-05' AS Date), CAST(N'2020-07-05' AS Date), 45)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (5, N'Lê Nhật Huy', N'876 Phạm Văn Đồng, Thủ Đức', CAST(N'2019-05-06' AS Date), CAST(N'2020-08-15' AS Date), 20)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (6, N'Hoàng Huy', N'99 Quang Trung, Q12', CAST(N'2017-07-06' AS Date), CAST(N'2020-09-20' AS Date), 99)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (7, N'Phạm Ngọc Hoàng', N'Tân Chánh Hiệp 36, Q12', CAST(N'2020-06-12' AS Date), CAST(N'2020-06-12' AS Date), 0)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (8, N'Nguyễn Ánh Ngọc', N'Tân Hiệp Thành, Q12', CAST(N'2020-03-10' AS Date), CAST(N'2020-03-10' AS Date), 0)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (9, N'Huỳnh Như Thảo', N'70 Quang Vĩnh, Gò Vấp', CAST(N'2020-02-17' AS Date), CAST(N'2020-05-02' AS Date), 21)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (10, N'Đặng Hoàng Long', N'23 Nghĩa Sĩ, Thủ Đức', CAST(N'2020-05-10' AS Date), CAST(N'2020-05-10' AS Date), 10)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (11, N'Huỳnh Như Thảo', N'23 Nghĩa Sĩ, Thủ Đức', CAST(N'2020-05-12' AS Date), CAST(N'2020-05-12' AS Date), 0)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (12, N'Nguyễn Ánh Hào', N'Tân Chánh Hiệp 36, Q12', CAST(N'2020-06-23' AS Date), CAST(N'2020-06-28' AS Date), 10)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (13, N'Nguyễn A Thư', N'Hoành Thành Hiệp, Q12', CAST(N'2020-06-20' AS Date), CAST(N'2020-06-20' AS Date), 0)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (14, N'Đặng Hoài Tâm', N'32 Hoàng Hoa Thám, Gò Vấp', CAST(N'2020-04-02' AS Date), CAST(N'2020-07-02' AS Date), 18)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (15, N'Trương Thị Ngọc Thư', N'Tân Chánh Hiệp 36, Q12', CAST(N'2020-04-20' AS Date), CAST(N'2020-04-20' AS Date), 0)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (16, N'Nguyễn Thị Ngọc Trân', N'Quang trung, Q12', CAST(N'2020-03-12' AS Date), CAST(N'2020-06-10' AS Date), 6)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (17, N'Đàm Văn Long', N'12 Hoàng Anh, Q12', CAST(N'2020-04-04' AS Date), CAST(N'2020-05-01' AS Date), 2)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (18, N'Thái Anh', N'Ngọc Văn Vân 12, Q12', CAST(N'2020-05-23' AS Date), CAST(N'2020-05-23' AS Date), 0)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (19, N'Trần Nghĩa Sĩ', N'Tô Ký, Q12', CAST(N'2020-04-28' AS Date), CAST(N'2020-06-02' AS Date), 6)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (20, N'Nguyễn Thị Thảo', N'Tân Chánh Hiệp 36, Q12', CAST(N'2020-05-12' AS Date), CAST(N'2020-06-04' AS Date), 0)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (21, N'Trương Ngọc Ánh', N'12 Lâm Ngọc Hoàng, Gò Vấp', CAST(N'2020-04-23' AS Date), CAST(N'2020-06-01' AS Date), 5)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (22, N'Nguyễn Ngọc Thảo', N'16 Phạm Ngũ Lão', CAST(N'2020-03-25' AS Date), CAST(N'2020-05-27' AS Date), 10)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (23, N'Nguyễn Thị Hoàng Ý', N'Tô Ký, Q12', CAST(N'2020-05-21' AS Date), CAST(N'2020-06-12' AS Date), 2)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (24, N'Nguyễn Ánh Thư', N'Ngô Văn Hoàng, Gò Vấp', CAST(N'2020-05-29' AS Date), CAST(N'2020-06-01' AS Date), 0)
INSERT [dbo].[KHTT] ([MaKH], [HoTen], [DiaChi], [NgayCapThe], [NgayMuaGanNhat], [DiemThuong]) VALUES (25, N'Ngô Võ Khánh Duy', N'Tân Chánh Hiệp 36, Q12', CAST(N'2020-05-05' AS Date), CAST(N'2020-05-28' AS Date), 0)
SET IDENTITY_INSERT [dbo].[KHTT] OFF
SET IDENTITY_INSERT [dbo].[LOAIHANG] ON 

INSERT [dbo].[LOAIHANG] ([MaLH], [TenLH]) VALUES (1, N'Hàng điện máy ')
INSERT [dbo].[LOAIHANG] ([MaLH], [TenLH]) VALUES (2, N'Hàng gia dụng')
INSERT [dbo].[LOAIHANG] ([MaLH], [TenLH]) VALUES (3, N'Mỹ phẩm')
INSERT [dbo].[LOAIHANG] ([MaLH], [TenLH]) VALUES (4, N'Hàng tiêu dùng')
INSERT [dbo].[LOAIHANG] ([MaLH], [TenLH]) VALUES (5, N'Thực phẩm đông lạnh')
INSERT [dbo].[LOAIHANG] ([MaLH], [TenLH]) VALUES (6, N'Thực phẩm dùng nhanh')
INSERT [dbo].[LOAIHANG] ([MaLH], [TenLH]) VALUES (7, N'Văn phòng phẩm')
SET IDENTITY_INSERT [dbo].[LOAIHANG] OFF
SET IDENTITY_INSERT [dbo].[NHACC] ON 

INSERT [dbo].[NHACC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (1, N'TH True Milk', N'22 Long Thành, Đồng Nai', N'092827424')
INSERT [dbo].[NHACC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (2, N'Long Thành', N'99 Long Thành, Đồng Nai', N'0918272442')
INSERT [dbo].[NHACC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (3, N'Lucky Toy', N'20 Đặng Thuỳ Trâm, Bình Thạnh', N'026358835')
INSERT [dbo].[NHACC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (4, N'Kim Phát Computer', N'99 Bến Nghé, Q1', N'092847244')
INSERT [dbo].[NHACC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (5, N'Hảo Hảo', N'1097 Phạm Văn Đồng', N'097662882')
INSERT [dbo].[NHACC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (6, N'Omo ', N'897 Nguyễn Văn Nghi, Gò Vấp', N'092762644')
INSERT [dbo].[NHACC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (7, N'PhucLong', N'789 Kha Vạn Cân, Thủ Đức', N'099922233')
INSERT [dbo].[NHACC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (8, N'Huyen Tran Fashion', N'98 Võ Văn Ngân, Thủ Đức', N'073773331')
INSERT [dbo].[NHACC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (9, N'PS ', N'09 Nguyễn Đình Chiểu', N'028482424')
INSERT [dbo].[NHACC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (10, N'GoDaddy', N'100 Phạm Văn Đồng, Quận 12', N'0284 458 1371')
SET IDENTITY_INSERT [dbo].[NHACC] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [DienThoai], [NgayVaoLam], [ChucVu], [TaiKhoan], [MatKhau], [img]) VALUES (1, N'Nguyễn Nhật Tân', CAST(N'2001-04-20' AS Date), 1, N'30 Kha Vạn Cân, Thủ Đức', N'225768242', N'0366335835', CAST(N'2018-10-20' AS Date), 1, N'TanNHN', N'123', NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [DienThoai], [NgayVaoLam], [ChucVu], [TaiKhoan], [MatKhau], [img]) VALUES (4, N'Huỳnh Nguyễn Phúc', CAST(N'2001-09-02' AS Date), 1, N'22 Phạm Văn Đồng,Gò Vấp', N'224982742', N'092847242', CAST(N'2017-12-20' AS Date), 1, N'PhucHN', N'123', NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [DienThoai], [NgayVaoLam], [ChucVu], [TaiKhoan], [MatKhau], [img]) VALUES (5, N'Trương Hoàng Huy', CAST(N'2001-08-04' AS Date), 1, N'09 Quang Trung ,Q12', N'089824724', N'026462488', CAST(N'2018-12-12' AS Date), 2, N'HuyTH', N'345', NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [DienThoai], [NgayVaoLam], [ChucVu], [TaiKhoan], [MatKhau], [img]) VALUES (6, N'Đặng Hoàng Trâm', CAST(N'2002-09-01' AS Date), 0, N'90 Linh Tây , Thủ Đức', N'098127247', N'082472472', CAST(N'2019-01-04' AS Date), 3, N'TramDH', N'456', NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [DienThoai], [NgayVaoLam], [ChucVu], [TaiKhoan], [MatKhau], [img]) VALUES (7, N'Nguyễn Văn Chí ', CAST(N'1999-07-09' AS Date), 1, N'99 Phan Văn Trị, Gò Vấp', N'0892842448', N'0924724724', CAST(N'2017-10-20' AS Date), 3, N'ChiNV', N'678', NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [DienThoai], [NgayVaoLam], [ChucVu], [TaiKhoan], [MatKhau], [img]) VALUES (8, N'Nguyễn Văn Thịnh', CAST(N'2000-09-12' AS Date), 1, N'90 Hoàng Ngọc Lãm, Vĩnh Long', N'285256481', N'0348665421', CAST(N'2019-10-23' AS Date), 2, N'ThinhNV', N'456', NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [DienThoai], [NgayVaoLam], [ChucVu], [TaiKhoan], [MatKhau], [img]) VALUES (9, N'Trần Ngọc Ánh', CAST(N'2001-04-02' AS Date), 1, N'Thị Xã Vĩnh Hậu, Bạc Liêu', N'285410456', N'0421556781', CAST(N'2019-03-13' AS Date), 2, N'AnhTN', N'456', NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [DienThoai], [NgayVaoLam], [ChucVu], [TaiKhoan], [MatKhau], [img]) VALUES (10, N'Phan Đình Tùng', CAST(N'1997-05-11' AS Date), 1, N'82 Nguyễn Văn Hữu, TP HCM', N'285665421', N'0377237998', CAST(N'2017-10-20' AS Date), 3, N'TungPD', N'789', NULL)
INSERT [dbo].[NHANVIEN] ([MaNV], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [CMND], [DienThoai], [NgayVaoLam], [ChucVu], [TaiKhoan], [MatKhau], [img]) VALUES (11, N'Nguyễn Hoàng Anh', CAST(N'2000-01-20' AS Date), 1, N'Châu Thành, An Giang', N'285258446', N'0521443222', CAST(N'2019-11-20' AS Date), 2, N'AnhNH', N'456', NULL)
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[PHIEUKIEMKE] ON 

INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (1, 6, CAST(N'2019-04-20' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (2, 7, CAST(N'2019-05-06' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (3, 6, CAST(N'2019-07-08' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (4, 7, CAST(N'2020-09-01' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (6, 6, CAST(N'2020-07-06' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (7, 7, CAST(N'2020-10-10' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (8, 10, CAST(N'2019-05-10' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (9, 10, CAST(N'2019-09-16' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (10, 6, CAST(N'2019-12-22' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (11, 6, CAST(N'2019-08-29' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (12, 7, CAST(N'2019-08-20' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (13, 6, CAST(N'2019-12-04' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (14, 7, CAST(N'2019-10-09' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (15, 7, CAST(N'2019-10-09' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (16, 7, CAST(N'2019-11-02' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (17, 10, CAST(N'2019-11-23' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (18, 6, CAST(N'2019-09-23' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (19, 10, CAST(N'2019-08-29' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (20, 10, CAST(N'2019-08-30' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (21, 7, CAST(N'2019-10-02' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (22, 7, CAST(N'2019-10-08' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (23, 6, CAST(N'2019-11-05' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (24, 6, CAST(N'2019-12-10' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (25, 10, CAST(N'2019-11-19' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (26, 7, CAST(N'2019-09-22' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (27, 10, CAST(N'2019-10-21' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (28, 6, CAST(N'2019-11-06' AS Date))
INSERT [dbo].[PHIEUKIEMKE] ([MaPhieuKK], [MaNV], [ThoiDiemLap]) VALUES (29, 10, CAST(N'2019-12-13' AS Date))
SET IDENTITY_INSERT [dbo].[PHIEUKIEMKE] OFF
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (1, 1, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (2, 2, 30)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (3, 3, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (4, 2, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (6, 2, 2)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (7, 3, 30)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (8, 29, 15)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (8, 35, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (8, 41, 18)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (9, 30, 13)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (10, 31, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (10, 33, 21)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (10, 44, 13)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (10, 50, 23)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (11, 43, 5)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (12, 32, 30)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (12, 33, 45)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (12, 38, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (13, 37, 11)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (14, 35, 25)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (15, 36, 15)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (16, 34, 47)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (17, 38, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (17, 42, 22)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (17, 46, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (17, 51, 30)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (18, 39, 3)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (19, 37, 7)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (19, 40, 18)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (19, 42, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (20, 31, 22)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (20, 41, 14)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (20, 51, 32)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (21, 2, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (21, 32, 20)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (21, 40, 20)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (21, 42, 30)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (22, 31, 27)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (22, 33, 9)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (22, 44, 36)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (22, 45, 16)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (22, 49, 12)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (23, 50, 14)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (24, 45, 25)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (25, 46, 33)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (26, 41, 5)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (27, 48, 10)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (28, 29, 6)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (28, 49, 45)
INSERT [dbo].[PHIEUKKCHITIET] ([MaPhieuKK], [MaSP], [SLTonKho]) VALUES (29, 32, 15)
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] ON 

INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (1, 6, CAST(N'2019-09-12' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (2, 7, CAST(N'2018-04-03' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (3, 6, CAST(N'2019-04-05' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (4, 6, CAST(N'2019-04-05' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (5, 7, CAST(N'2019-01-10' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (6, 6, CAST(N'2017-12-05' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (7, 6, CAST(N'2019-01-23' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (8, 10, CAST(N'2018-11-19' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (9, 6, CAST(N'2019-02-02' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (10, 6, CAST(N'2019-02-02' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (11, 6, CAST(N'2019-04-13' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (12, 7, CAST(N'2020-01-02' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (13, 7, CAST(N'2020-01-12' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (14, 7, CAST(N'2020-01-12' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (15, 10, CAST(N'2019-05-08' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (16, 10, CAST(N'2019-03-15' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (17, 10, CAST(N'2019-03-15' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (18, 10, CAST(N'2019-03-20' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (19, 6, CAST(N'2019-05-04' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (20, 6, CAST(N'2019-02-06' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (21, 7, CAST(N'2019-02-12' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (22, 6, CAST(N'2019-05-10' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (23, 10, CAST(N'2018-12-22' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (24, 10, CAST(N'2018-12-22' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (25, 10, CAST(N'2018-12-29' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (26, 7, CAST(N'2019-02-16' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (27, 7, CAST(N'2019-02-16' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (28, 7, CAST(N'2019-02-16' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (29, 7, CAST(N'2019-02-25' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (30, 6, CAST(N'2019-03-20' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (31, 10, CAST(N'2019-02-01' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (32, 6, CAST(N'2019-04-11' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (33, 6, CAST(N'2019-04-11' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (34, 6, CAST(N'2019-04-18' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (35, 10, CAST(N'2017-12-27' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (36, 10, CAST(N'2017-12-27' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (37, 10, CAST(N'2017-12-27' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (38, 10, CAST(N'2018-01-24' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (39, 7, CAST(N'2019-01-03' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (40, 7, CAST(N'2019-01-03' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (41, 6, CAST(N'2019-02-09' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (42, 7, CAST(N'2019-02-27' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (43, 10, CAST(N'2019-04-03' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (44, 7, CAST(N'2019-02-27' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (45, 6, CAST(N'2018-11-20' AS Date))
INSERT [dbo].[PHIEUNHAP] ([MaPN], [MaNV], [ThoiDiemLap]) VALUES (46, 6, CAST(N'2018-11-20' AS Date))
SET IDENTITY_INSERT [dbo].[PHIEUNHAP] OFF
SET IDENTITY_INSERT [dbo].[PHIEUXUAT] ON 

INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (1, 6, CAST(N'2019-04-06' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (2, 7, CAST(N'2019-04-20' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (3, 6, CAST(N'2019-05-06' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (4, 7, CAST(N'2019-05-07' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (5, 7, CAST(N'2019-05-08' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (6, 6, CAST(N'2019-05-09' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (7, 6, CAST(N'2020-03-12' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (8, 7, CAST(N'2020-05-23' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (9, 7, CAST(N'2020-08-09' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (10, 6, CAST(N'2020-09-10' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (11, 6, CAST(N'2020-10-10' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (12, 10, CAST(N'2019-09-03' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (13, 6, CAST(N'2019-08-21' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (14, 6, CAST(N'2020-03-29' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (15, 7, CAST(N'2019-09-01' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (16, 7, CAST(N'2020-01-20' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (17, 10, CAST(N'2020-01-12' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (18, 7, CAST(N'2020-02-03' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (19, 7, CAST(N'2019-10-28' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (20, 6, CAST(N'2019-11-21' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (21, 6, CAST(N'2019-11-21' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (22, 6, CAST(N'2019-12-28' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (23, 10, CAST(N'2019-07-01' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (24, 10, CAST(N'2020-03-09' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (25, 10, CAST(N'2020-02-05' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (26, 7, CAST(N'2019-12-23' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (27, 7, CAST(N'2019-12-23' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (28, 6, CAST(N'2019-12-23' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (29, 10, CAST(N'2019-10-12' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (30, 10, CAST(N'2019-11-29' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (31, 6, CAST(N'2020-01-03' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (32, 6, CAST(N'2020-03-06' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (33, 7, CAST(N'2019-12-02' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (34, 10, CAST(N'2020-01-10' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (35, 7, CAST(N'2019-09-29' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (36, 7, CAST(N'2019-11-15' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (37, 7, CAST(N'2019-11-15' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (38, 10, CAST(N'2019-10-27' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (39, 10, CAST(N'2019-12-02' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (40, 6, CAST(N'2020-02-04' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (41, 7, CAST(N'2019-10-27' AS Date))
INSERT [dbo].[PHIEUXUAT] ([MaPX], [MaNV], [ThoiDiemLap]) VALUES (42, 10, CAST(N'2020-01-16' AS Date))
SET IDENTITY_INSERT [dbo].[PHIEUXUAT] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (1, N'Bột Giặt Omo', 70000, 120000, N'1 năm', 2, 4, N'Gói 5L', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (2, N'Mì gói hảo hảo', 1500, 3000, N'5 tháng kể từ ngày sx', 4, 6, N'Gói', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (3, N'Kem đánh răng PS', 30000, 60000, N'1 năm', 3, 4, N'Tuýp', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (29, N'Kem', 15000, 19000, N'5 tháng kể từ ngày sx', 2, 5, N'Bịt', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (30, N'Tôm', 28000, 33500, N'2 tháng', 3, 5, N'Kg', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (31, N'Cá', 37000, 43700, N'2 tháng', 3, 5, N'Kg', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (32, N'Thịt hộp', 32000, 37000, N'4 tháng kể từ ngày sx', 4, 6, N'Hộp', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (33, N'Mì Ba Miền', 2500, 3000, N'8 tháng kể từ ngày sx', 2, 6, N'Gói', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (34, N'Mì Việt Bắc', 3000, 4500, N'6 tháng kể từ ngày sx', 2, 6, N'Gói', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (35, N'Rong biển', 8000, 12000, N'3 tháng kể từ ngày sx', 3, 6, N'Bịt', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (36, N'Thịt cấp đông', 32000, 40500, N'4 tháng', 4, 5, N'Kg', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (37, N'Nước tương', 10000, 15000, N'1 năm', 3, 4, N'Chai', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (38, N'Dầu hào', 12000, 16200, N'8 tháng kể từ ngày sx', 3, 4, N'Chai', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (39, N'Cháo ăn liền', 3000, 5000, N'7 tháng kể từ ngày sx', 2, 6, N'Bịt', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (40, N'Sữa Ông Thọ', 15000, 19000, N'1 năm', 3, 4, N'Lon', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (41, N'Giấy Photo', 65000, 72900, N'Vĩnh Viễn', 3, 7, N'Hộp 700 tờ', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (42, N'Áo mưa', 7000, 10000, N'Vĩnh viễn', 2, 7, N'Cái', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (43, N'Khẩu trang', 20000, 27800, N'3 năm', 3, 7, N'Hộp', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (44, N'Kem đánh răng ajona', 25000, 32600, N'8 tháng từ ngày sx', 3, 4, N'Tuýp', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (45, N'Lăn khửa mùi', 18000, 23000, N'2 năm', 2, 3, N'Chai', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (46, N'Chăm sóc da', 30000, 33500, N'16 tháng kể từ ngày sx', 3, 3, N'Tuýp', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (47, N'Giấy vệ sinh', 8000, 12000, N'Vĩnh viễn', 2, 2, N'Bịt', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (48, N'Diệt côn trùng', 23000, 28900, N'2 năm', 3, 2, N'Lon', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (49, N'Bút thử điện', 29000, 35000, N'Vĩnh viễn', 4, 1, N'Cái', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (50, N'Chăm sóc răng miệng', 23000, 27800, N'9 tháng kể từ ngày sx', 4, 3, N'Lon', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (51, N'Dao 2 lưỡi', 20000, 23700, N'Vĩnh viễn', 3, 2, N'Cây', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (52, N'Kẹo và socola', 25000, 32000, N'14 tháng kể từ ngày sx', 2, 4, N'Bịt', NULL)
INSERT [dbo].[SANPHAM] ([MaSP], [TenSP], [GiaMua], [GiaBan], [HSD], [VAT], [MaLH], [DonVi], [img]) VALUES (53, N'Nước giải khát', 7000, 9000, N'8 tháng kể từ ngày sx', 2, 4, N'Chai', NULL)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACC] ([MaNCC])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACC] ([MaNCC])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PHIEUNHAP] ([MaPN])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PHIEUNHAP] ([MaPN])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MaPX])
REFERENCES [dbo].[PHIEUXUAT] ([MaPX])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MaPX])
REFERENCES [dbo].[PHIEUXUAT] ([MaPX])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[CHITIETPHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHTT] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHTT] ([MaKH])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADONCHITIET]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[HOADONCHITIET]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HOADON] ([MaHD])
GO
ALTER TABLE [dbo].[HOADONCHITIET]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[HOADONCHITIET]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[PHIEUKIEMKE]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUKIEMKE]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUKKCHITIET]  WITH CHECK ADD FOREIGN KEY([MaPhieuKK])
REFERENCES [dbo].[PHIEUKIEMKE] ([MaPhieuKK])
GO
ALTER TABLE [dbo].[PHIEUKKCHITIET]  WITH CHECK ADD FOREIGN KEY([MaPhieuKK])
REFERENCES [dbo].[PHIEUKIEMKE] ([MaPhieuKK])
GO
ALTER TABLE [dbo].[PHIEUKKCHITIET]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[PHIEUKKCHITIET]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SANPHAM] ([MaSP])
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MaLH])
REFERENCES [dbo].[LOAIHANG] ([MaLH])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([MaLH])
REFERENCES [dbo].[LOAIHANG] ([MaLH])
GO
USE [master]
GO
ALTER DATABASE [QuanLySieuThi] SET  READ_WRITE 
GO


create procedure SP_MAXID 
@MaSP int
as
begin
	SELECT MAX(MaSP) MaxID FROM SANPHAM
end

drop procedure SP_MAXID
go
create procedure [SP_MAXHD] 
@MaHD int
as
begin
	SELECT MAX(MaHD) MaxHD FROM HOADON
end
drop procedure [SP_MAXHD]

--exec SP_MAXID 2
GO
ALTER PROCEDURE [dbo].[SP_MAXID]
AS
BEGIN
	SELECT MAX(MaSP) MaxID FROM SANPHAM
END;

GO
ALTER PROCEDURE [dbo].[SP_MAXHD]
AS
BEGIN
	SELECT MAX(MaHD) MaxHD FROM HOADON
END;

--proc kho hàng
go
create proc getKhoHang
as
begin
select CHITIETPHIEUNHAP.MaSP, SUM(SOLUONG) SoLuongHang,MAX(NGAYNHAP) NgayNhapGN FROM CHITIETPHIEUNHAP
GROUP BY  CHITIETPHIEUNHAP.MaSP
end
exec getKhoHang

  -- PROCEDURE CHI PHÍ SẢN PHẨM
  GO
  CREATE PROC SP_ChiPhi @from date ,@to date
 AS
 BEGIN
	select DISTINCT SANPHAM.MaSP, SUM(SANPHAM.GiaMua * CHITIETPHIEUNHAP.SoLuong )as 'ChiPhi'
 from [QuanLySieuThi].[dbo].[SANPHAM] inner join CHITIETPHIEUNHAP on SANPHAM.MaSP = CHITIETPHIEUNHAP.MaSP
WHERE CHITIETPHIEUNHAP.NgayNhap BETWEEN @from AND @to
  group by SANPHAM.MaSP
 END
	
 EXEC SP_CHIPHI '2018-01-01','2020-05-05';


 -- SP Doanh thu
 GO
 CREATE PROC SP_DoanhThu @from date, @to date 
 AS
 BEGIN
	SELECT DISTINCT SANPHAM.MaSP, SUM(SANPHAM.GiaBan * CHITIETPHIEUXUAT.SoLuongBan )+(SUM(SANPHAM.GiaBan * CHITIETPHIEUXUAT.SoLuongBan *(SANPHAM.VAT/100))) as 'Doanhthu'
	from [QuanLySieuThi].[dbo].[SANPHAM] inner join CHITIETPHIEUXUAT ON SANPHAM.MaSP = CHITIETPHIEUXUAT.MaSP
	WHERE CHITIETPHIEUXUAT.NgayXuat BETWEEN @from AND @to
	group by SANPHAM.MaSP,SANPHAM.VAT
 END
  -- SP ton kho
  go
create proc getTonKho
as
begin
select PHIEUKKCHITIET.MaSP,SUM(SLTonKho)	 FROM PHIEUKKCHITIET
GROUP BY PHIEUKKCHITIET.MaSP
end

-- SP Lợi nhuận
  GO
 CREATE PROC SP_LoiNhuan @from date, @to date 
 AS
 BEGIN
	  SELECT DISTINCT SP.MaSP,SUM(SP.GiaBan * CTPX.SoLuongBan ) +SUM(SP.GiaBan * CTPX.SoLuongBan *(SP.VAT/100)) 
	  - SUM(SP.GiaMua * CTPN.SoLuong) as 'Loi nhuan'  FROM SANPHAM SP
	  INNER JOIN CHITIETPHIEUNHAP CTPN ON SP.MaSP = CTPN.MaSP
	  INNER JOIN CHITIETPHIEUXUAT CTPX ON SP.MaSP = CTPX.MaSP
	  WHERE (CTPN.NgayNhap BETWEEN @from AND @to) and (CTPX.NgayXuat BETWEEN @from AND @to)
	  GROUP BY SP.MaSP
 END

 EXEC SP_LoiNhuan'2018-01-01','2020-05-05';

 go
  CREATE PROC SP_getMaxIDPN @maPN int
  as
  begin
	select MAX(MaPN) MaxIDPN FROM PHIEUNHAP
  end

GO
ALTER PROCEDURE [dbo].SP_getMaxIDPN
AS
BEGIN
	SELECT MAX(MaPN) MaxIDPN FROM PHIEUNHAP
END;

 go
  CREATE PROC SP_getMaxIDPX @maPX int
  as
  begin
	select MAX(MaPX) MaxIDPX FROM PHIEUXUAT
  end

GO
ALTER PROCEDURE [dbo].SP_getMaxIDPX
AS
BEGIN
	SELECT MAX(MaPX) MaxIDPX FROM PHIEUXUAT
END;