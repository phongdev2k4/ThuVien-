USE [master]
GO
/****** Object:  Database [QuanLiThuVien333]    Script Date: 17/12/2024 12:28:04 SA ******/
CREATE DATABASE [QuanLiThuVien333]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLiThuVien333', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLiThuVien333.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLiThuVien333_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLiThuVien333_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLiThuVien333] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLiThuVien333].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLiThuVien333] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLiThuVien333] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLiThuVien333] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLiThuVien333] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLiThuVien333] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLiThuVien333] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLiThuVien333] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLiThuVien333] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLiThuVien333] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLiThuVien333] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLiThuVien333] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLiThuVien333] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLiThuVien333] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLiThuVien333] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLiThuVien333] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLiThuVien333]
GO
/****** Object:  Table [dbo].[authorities]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorities](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleid] [varchar](255) NULL,
	[username] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ban_sao_sach]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ban_sao_sach](
	[ma_ban_sao_sach] [int] IDENTITY(1,1) NOT NULL,
	[hinh_anh_ma_vach] [nvarchar](255) NULL,
	[ma_vach] [varchar](12) NULL,
	[trang_thai_bao_quan] [nvarchar](100) NULL,
	[trang_thai_muon] [nvarchar](100) NULL,
	[ma_kho] [int] NULL,
	[ma_sach] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_ban_sao_sach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_muon_online]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_muon_online](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ma_ban_sao_sach] [int] NULL,
	[borrow_online_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_phieu_muon]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_phieu_muon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[is_returned] [bit] NULL,
	[ma_ban_sao_sach] [int] NULL,
	[mapm] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_phieu_phat_sach]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_phieu_phat_sach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ly_do] [nvarchar](100) NULL,
	[so_tien_phat] [float] NOT NULL,
	[ma_ban_sao_sach] [int] NULL,
	[ma_phieu_phat] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_phieu_tra]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_phieu_tra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_ban_sao_sach] [int] NULL,
	[mapt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chi_tiet_sach_nhan_vien]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_sach_nhan_vien](
	[ma_sach_nhan_vien] [int] IDENTITY(1,1) NOT NULL,
	[hanh_dong] [nvarchar](255) NULL,
	[thoi_gian_thuc_hien] [datetime] NULL,
	[manv] [varchar](30) NULL,
	[ma_sach] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_sach_nhan_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuc_vu]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuc_vu](
	[id] [varchar](255) NOT NULL,
	[ten_chuc_vu] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hinh_anh_sach]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hinh_anh_sach](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[image_id] [varchar](255) NULL,
	[image_type] [varchar](255) NULL,
	[image_url] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[ma_sach] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoi_vien]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoi_vien](
	[mahv] [varchar](30) NOT NULL,
	[dia_chi] [nvarchar](255) NULL,
	[email] [varchar](255) NULL,
	[ho_ten] [nvarchar](150) NULL,
	[so_dien_thoai] [varchar](20) NULL,
	[thoi_gian_dang_ky] [datetime] NULL,
	[tien_nap] [float] NULL,
	[tinh_trang] [bit] NULL,
	[account_id] [varchar](30) NOT NULL,
	[hinh_anhhv] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[mahv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kho]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kho](
	[ma_kho] [int] IDENTITY(1,1) NOT NULL,
	[dia_diem] [nvarchar](255) NULL,
	[ten_kho] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_kho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[muon_online]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[muon_online](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ngay_hen_lay] [datetime2](6) NOT NULL,
	[ngay_muon] [datetime2](6) NOT NULL,
	[tinh_trang] [bit] NULL,
	[mahv] [varchar](30) NULL,
	[is_picked_up] [bit] NULL,
	[tien_dat_coc] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[manv] [varchar](30) NOT NULL,
	[dia_chi] [nvarchar](255) NULL,
	[email] [varchar](255) NULL,
	[gioi_tinh] [nvarchar](10) NULL,
	[hinh_anhnv] [nvarchar](255) NULL,
	[ho_ten] [nvarchar](150) NULL,
	[ngay_sinh] [date] NULL,
	[so_dien_thoai] [varchar](20) NULL,
	[tinh_trang] [nvarchar](20) NULL,
	[account_id] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieu_muon]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieu_muon](
	[mapm] [int] IDENTITY(1,1) NOT NULL,
	[han_tra_sach] [datetime2](6) NULL,
	[ngay_lap_phieu] [date] NULL,
	[mahv] [varchar](30) NULL,
	[manv] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[mapm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieu_phat]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieu_phat](
	[ma_phieu_phat] [int] IDENTITY(1,1) NOT NULL,
	[ngay_lap_phieu] [date] NULL,
	[so_ngay_qua_han] [int] NULL,
	[tien_phat] [float] NULL,
	[vi_pham_phieu_tra] [nvarchar](150) NULL,
	[mahv] [varchar](30) NULL,
	[manv] [varchar](30) NULL,
	[mapt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phieu_phat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieu_tra]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieu_tra](
	[mapt] [int] IDENTITY(1,1) NOT NULL,
	[is_fine] [varchar](255) NULL,
	[ngay_lap_phieu_tra] [date] NULL,
	[mahv] [varchar](30) NULL,
	[manv] [varchar](30) NULL,
	[mapm] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mapt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sach]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach](
	[ma_sach] [varchar](30) NOT NULL,
	[mo_ta] [nvarchar](max) NULL,
	[namxb] [int] NULL,
	[nxb] [nvarchar](255) NULL,
	[ten_sach] [nvarchar](255) NULL,
	[tien_sach] [float] NULL,
	[ma_tac_gia] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_sach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sach_the_loai]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach_the_loai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_sach] [varchar](30) NULL,
	[ma_the_loai] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tac_gia]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tac_gia](
	[ma_tac_gia] [varchar](30) NOT NULL,
	[ngay_sinh] [datetime2](6) NULL,
	[quoc_gia] [nvarchar](150) NULL,
	[ten_tac_gia] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_tac_gia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[user_name] [varchar](30) NOT NULL,
	[password] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thanh_toan]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thanh_toan](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[url_thanh_toan] [nvarchar](max) NULL,
	[cong_thanh_toan] [nvarchar](150) NULL,
	[ghi_chu] [nvarchar](max) NULL,
	[hinh_thuc_thanh_toan] [nvarchar](150) NULL,
	[loai_thanh_toan] [nvarchar](150) NULL,
	[ma_giao_dich] [varchar](150) NULL,
	[so_tien] [float] NULL,
	[thoi_gian_thanh_toan] [datetime] NULL,
	[trang_thai_giao_dich] [nvarchar](150) NULL,
	[trang_thai_thanh_toan] [nvarchar](150) NULL,
	[mahv] [varchar](30) NOT NULL,
	[manv] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[the_loai]    Script Date: 17/12/2024 12:28:04 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[the_loai](
	[ma_the_loai] [varchar](30) NOT NULL,
	[mo_ta] [nvarchar](150) NULL,
	[ten_the_loai] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_the_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[authorities] ON 

INSERT [dbo].[authorities] ([id], [roleid], [username]) VALUES (16, N'R1', N'haidemo')
INSERT [dbo].[authorities] ([id], [roleid], [username]) VALUES (17, N'R2', N'haidemo')
INSERT [dbo].[authorities] ([id], [roleid], [username]) VALUES (18, N'R3', N'test1')
INSERT [dbo].[authorities] ([id], [roleid], [username]) VALUES (20, N'R3', N'test2')
INSERT [dbo].[authorities] ([id], [roleid], [username]) VALUES (21, N'R2', N'demo3')
INSERT [dbo].[authorities] ([id], [roleid], [username]) VALUES (22, N'R3', N'nhat')
INSERT [dbo].[authorities] ([id], [roleid], [username]) VALUES (24, N'R3', N'kai')
SET IDENTITY_INSERT [dbo].[authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[ban_sao_sach] ON 

INSERT [dbo].[ban_sao_sach] ([ma_ban_sao_sach], [hinh_anh_ma_vach], [ma_vach], [trang_thai_bao_quan], [trang_thai_muon], [ma_kho], [ma_sach]) VALUES (10, N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734325795/Bookland/Barcode/file_j7mdqx.png,Bookland/Barcode/file_j7mdqx', N'000000000017', N'Mới', N'Đang mượn', 1, N'MS04')
INSERT [dbo].[ban_sao_sach] ([ma_ban_sao_sach], [hinh_anh_ma_vach], [ma_vach], [trang_thai_bao_quan], [trang_thai_muon], [ma_kho], [ma_sach]) VALUES (11, N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734325798/Bookland/Barcode/file_iybkhb.png,Bookland/Barcode/file_iybkhb', N'000000000116', N'Mới', N'Có sẵn', 1, N'MS04')
INSERT [dbo].[ban_sao_sach] ([ma_ban_sao_sach], [hinh_anh_ma_vach], [ma_vach], [trang_thai_bao_quan], [trang_thai_muon], [ma_kho], [ma_sach]) VALUES (12, N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734325800/Bookland/Barcode/file_y1h3ur.png,Bookland/Barcode/file_y1h3ur', N'000000000123', N'Mới', N'Có sẵn', 1, N'MS04')
INSERT [dbo].[ban_sao_sach] ([ma_ban_sao_sach], [hinh_anh_ma_vach], [ma_vach], [trang_thai_bao_quan], [trang_thai_muon], [ma_kho], [ma_sach]) VALUES (13, N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734325843/Bookland/Barcode/file_thv7er.png,Bookland/Barcode/file_thv7er', N'000000000130', N'Mới', N'Đang mượn', 1, N'MS05')
INSERT [dbo].[ban_sao_sach] ([ma_ban_sao_sach], [hinh_anh_ma_vach], [ma_vach], [trang_thai_bao_quan], [trang_thai_muon], [ma_kho], [ma_sach]) VALUES (14, N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734325857/Bookland/Barcode/file_s4irwk.png,Bookland/Barcode/file_s4irwk', N'000000000147', N'Mới', N'Đang mượn', 1, N'MS06')
INSERT [dbo].[ban_sao_sach] ([ma_ban_sao_sach], [hinh_anh_ma_vach], [ma_vach], [trang_thai_bao_quan], [trang_thai_muon], [ma_kho], [ma_sach]) VALUES (15, N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734325871/Bookland/Barcode/file_yfcru6.png,Bookland/Barcode/file_yfcru6', N'000000000154', N'Mới', N'Có sẵn', 1, N'MS07')
INSERT [dbo].[ban_sao_sach] ([ma_ban_sao_sach], [hinh_anh_ma_vach], [ma_vach], [trang_thai_bao_quan], [trang_thai_muon], [ma_kho], [ma_sach]) VALUES (16, N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734325886/Bookland/Barcode/file_yf0uo9.png,Bookland/Barcode/file_yf0uo9', N'000000000161', N'Mới', N'Có sẵn', 1, N'MS10')
INSERT [dbo].[ban_sao_sach] ([ma_ban_sao_sach], [hinh_anh_ma_vach], [ma_vach], [trang_thai_bao_quan], [trang_thai_muon], [ma_kho], [ma_sach]) VALUES (17, N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734325900/Bookland/Barcode/file_ljozne.png,Bookland/Barcode/file_ljozne', N'000000000178', N'Mất', N'Có sẵn', 1, N'MS11')
INSERT [dbo].[ban_sao_sach] ([ma_ban_sao_sach], [hinh_anh_ma_vach], [ma_vach], [trang_thai_bao_quan], [trang_thai_muon], [ma_kho], [ma_sach]) VALUES (18, N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734325940/Bookland/Barcode/file_gye2an.png,Bookland/Barcode/file_gye2an', N'000000000185', N'Hỏng', N'Có sẵn', 1, N'MS20')
INSERT [dbo].[ban_sao_sach] ([ma_ban_sao_sach], [hinh_anh_ma_vach], [ma_vach], [trang_thai_bao_quan], [trang_thai_muon], [ma_kho], [ma_sach]) VALUES (19, N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734325962/Bookland/Barcode/file_v27sjg.png,Bookland/Barcode/file_v27sjg', N'000000000192', N'Mới', N'Có sẵn', 1, N'MS23')
SET IDENTITY_INSERT [dbo].[ban_sao_sach] OFF
GO
SET IDENTITY_INSERT [dbo].[chi_tiet_muon_online] ON 

INSERT [dbo].[chi_tiet_muon_online] ([id], [ma_ban_sao_sach], [borrow_online_id]) VALUES (2, 14, 2)
INSERT [dbo].[chi_tiet_muon_online] ([id], [ma_ban_sao_sach], [borrow_online_id]) VALUES (3, 13, 2)
SET IDENTITY_INSERT [dbo].[chi_tiet_muon_online] OFF
GO
SET IDENTITY_INSERT [dbo].[chi_tiet_phieu_muon] ON 

INSERT [dbo].[chi_tiet_phieu_muon] ([id], [is_returned], [ma_ban_sao_sach], [mapm]) VALUES (6, 1, 17, 6)
INSERT [dbo].[chi_tiet_phieu_muon] ([id], [is_returned], [ma_ban_sao_sach], [mapm]) VALUES (7, 0, 10, 6)
SET IDENTITY_INSERT [dbo].[chi_tiet_phieu_muon] OFF
GO
SET IDENTITY_INSERT [dbo].[chi_tiet_phieu_phat_sach] ON 

INSERT [dbo].[chi_tiet_phieu_phat_sach] ([id], [ly_do], [so_tien_phat], [ma_ban_sao_sach], [ma_phieu_phat]) VALUES (4, N'Mất', 50000, 17, 3)
SET IDENTITY_INSERT [dbo].[chi_tiet_phieu_phat_sach] OFF
GO
SET IDENTITY_INSERT [dbo].[chi_tiet_phieu_tra] ON 

INSERT [dbo].[chi_tiet_phieu_tra] ([id], [ma_ban_sao_sach], [mapt]) VALUES (6, 17, 5)
SET IDENTITY_INSERT [dbo].[chi_tiet_phieu_tra] OFF
GO
INSERT [dbo].[chuc_vu] ([id], [ten_chuc_vu]) VALUES (N'R1', N'ADMIN')
INSERT [dbo].[chuc_vu] ([id], [ten_chuc_vu]) VALUES (N'R2', N'EMPLOYEE')
INSERT [dbo].[chuc_vu] ([id], [ten_chuc_vu]) VALUES (N'R3', N'CUS')
GO
SET IDENTITY_INSERT [dbo].[hinh_anh_sach] ON 

INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (19, N'ol3tzvzsh3inv8emewjb', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257056/ol3tzvzsh3inv8emewjb.jpg', N'b97c6d75791803e90c6a96d48df475e5', N'MS04')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (20, N'z5o4cvcgay13u5nyvqym', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257063/z5o4cvcgay13u5nyvqym.jpg', N'b97c6d75791803e90c6a96d48df475e5', N'MS04')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (21, N'f1y5g7p6jkld78tjhyc1', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257065/f1y5g7p6jkld78tjhyc1.jpg', N'66b79d2fa773e2c977524be60166e177', N'MS04')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (22, N'lvmmlrb5jsyxjrbmtmed', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257112/lvmmlrb5jsyxjrbmtmed.jpg', N'6ccd92c6fadd9c67fa67099dfc07aa3d', N'MS05')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (23, N'hzjs8jovzju6kxqmm7ik', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257115/hzjs8jovzju6kxqmm7ik.jpg', N'6ccd92c6fadd9c67fa67099dfc07aa3d', N'MS05')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (24, N'ik1lvoh67zo4wfowysnd', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257117/ik1lvoh67zo4wfowysnd.jpg', N'6ccd92c6fadd9c67fa67099dfc07aa3d', N'MS05')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (25, N'zarasgfrxgkcrzhgnvl8', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257587/zarasgfrxgkcrzhgnvl8.jpg', N'af444433fa572bdd258783b9cec57e57', N'MS06')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (26, N'cvxfunuqaxqf4tvhofd6', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257589/cvxfunuqaxqf4tvhofd6.jpg', N'af444433fa572bdd258783b9cec57e57', N'MS06')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (27, N'eyun6jwza6oawmdiavnw', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257591/eyun6jwza6oawmdiavnw.jpg', N'af444433fa572bdd258783b9cec57e57', N'MS06')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (28, N'pric1apui5oynksocsn3', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257851/pric1apui5oynksocsn3.jpg', N'515998f37d6da48a990cefab71418590', N'MS07')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (29, N'dgsv8qqryfccc5l7hhnd', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257853/dgsv8qqryfccc5l7hhnd.jpg', N'515998f37d6da48a990cefab71418590', N'MS07')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (30, N'sjliltl2tqaspxm7b57k', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734257856/sjliltl2tqaspxm7b57k.jpg', N'515998f37d6da48a990cefab71418590', N'MS07')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (37, N'gpf2tqzevu0f2rbjjck2', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258222/gpf2tqzevu0f2rbjjck2.jpg', N'b068b981626a844f19d18b434a981bde', N'MS10')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (38, N'ipvanazw2jso4zljesg0', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258227/ipvanazw2jso4zljesg0.jpg', N'b068b981626a844f19d18b434a981bde', N'MS10')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (39, N'qaajjokswmslkqforhnn', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258230/qaajjokswmslkqforhnn.jpg', N'b068b981626a844f19d18b434a981bde', N'MS10')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (40, N'rbiivrdz0vj1nh0yyx7f', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258484/rbiivrdz0vj1nh0yyx7f.jpg', N'ab6e0f306a4473c00e3b755729a987c3', N'MS11')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (41, N'kuhhnak6fxqrrma4irif', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258486/kuhhnak6fxqrrma4irif.jpg', N'ab6e0f306a4473c00e3b755729a987c3', N'MS11')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (42, N'ynmfndxtd2wmmmd8lv30', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258488/ynmfndxtd2wmmmd8lv30.jpg', N'ab6e0f306a4473c00e3b755729a987c3', N'MS11')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (43, N'ljpm1zmtcimxxqgbf35p', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258535/ljpm1zmtcimxxqgbf35p.jpg', N'6bb89f36927a42c615a114afcf6a5d63', N'MS12')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (44, N'p3hwogvg7ymevonnmyvz', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258537/p3hwogvg7ymevonnmyvz.jpg', N'6bb89f36927a42c615a114afcf6a5d63', N'MS12')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (45, N'ee6mxewplqss6dyhlqsv', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258539/ee6mxewplqss6dyhlqsv.jpg', N'6bb89f36927a42c615a114afcf6a5d63', N'MS12')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (46, N'o4od9kgugce7gie4mvzg', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258629/o4od9kgugce7gie4mvzg.jpg', N'b9a31a2844d43ebbf1b86d4c67d264ae', N'MS13')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (47, N'gp9pj2d4npgq5ge0zdjj', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258632/gp9pj2d4npgq5ge0zdjj.jpg', N'b9a31a2844d43ebbf1b86d4c67d264ae', N'MS13')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (48, N'rmgwj9vzwcrpj2oiafy7', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258634/rmgwj9vzwcrpj2oiafy7.jpg', N'b9a31a2844d43ebbf1b86d4c67d264ae', N'MS13')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (49, N'yy2o2ks1usgcru4cv23e', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258785/yy2o2ks1usgcru4cv23e.jpg', N'58d0838b50128dae0983593678b35bf6', N'MS14')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (50, N'cbuuijuq8vvskmygnnbx', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258787/cbuuijuq8vvskmygnnbx.jpg', N'58d0838b50128dae0983593678b35bf6', N'MS14')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (51, N'izjqchmxjmdd1j8psogp', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258790/izjqchmxjmdd1j8psogp.jpg', N'58d0838b50128dae0983593678b35bf6', N'MS14')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (52, N'd1mdan0a7bivxl0ixjwz', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258869/d1mdan0a7bivxl0ixjwz.jpg', N'92209382f76ab4015e36d7628e7dd583', N'MS15')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (53, N'vmtonzahz8bwvk90dydn', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258871/vmtonzahz8bwvk90dydn.jpg', N'92209382f76ab4015e36d7628e7dd583', N'MS15')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (54, N'oew8wnvxyiviso8nfqzh', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258872/oew8wnvxyiviso8nfqzh.jpg', N'92209382f76ab4015e36d7628e7dd583', N'MS15')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (55, N'agbh4pmsr8p8ks8bsw2p', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258930/agbh4pmsr8p8ks8bsw2p.jpg', N'5b30268921cc0869115039c7c79291ac', N'MS16')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (56, N'poxpyu8hmqpyxpogju6g', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258932/poxpyu8hmqpyxpogju6g.jpg', N'5b30268921cc0869115039c7c79291ac', N'MS16')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (57, N'rkyrmn70xq4xzyr2kvyn', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258934/rkyrmn70xq4xzyr2kvyn.jpg', N'5b30268921cc0869115039c7c79291ac', N'MS16')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (58, N'j9jgla2a1k8jtazhqblp', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258991/j9jgla2a1k8jtazhqblp.jpg', N'46932d00cf2dc066cf41a198aea100ca', N'MS17')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (59, N'gfhdffiha4e2btxdf7lb', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258993/gfhdffiha4e2btxdf7lb.jpg', N'46932d00cf2dc066cf41a198aea100ca', N'MS17')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (60, N'eoswmt07revnayv7fd40', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734258994/eoswmt07revnayv7fd40.jpg', N'46932d00cf2dc066cf41a198aea100ca', N'MS17')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (61, N'b4edikm2k96ruhvbjzqg', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259047/b4edikm2k96ruhvbjzqg.png', N'76bf3f60ae9bb44da39d7834ad0b4a18', N'MS18')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (62, N'o3hwqofwufq9uq1vuxzf', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259050/o3hwqofwufq9uq1vuxzf.png', N'76bf3f60ae9bb44da39d7834ad0b4a18', N'MS18')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (63, N'ab7znvg6y8zgmde3ffjf', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259053/ab7znvg6y8zgmde3ffjf.png', N'76bf3f60ae9bb44da39d7834ad0b4a18', N'MS18')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (64, N'oakpb2xftwcgcbacx1xh', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259187/oakpb2xftwcgcbacx1xh.jpg', N'5be5a89c0b5361d2599a65eb45a286d8', N'MS19')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (65, N'q69u0w1ui2ojybinhf1i', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259190/q69u0w1ui2ojybinhf1i.jpg', N'5be5a89c0b5361d2599a65eb45a286d8', N'MS19')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (66, N'cni6rac0wv4tyjl2njwf', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259192/cni6rac0wv4tyjl2njwf.jpg', N'5be5a89c0b5361d2599a65eb45a286d8', N'MS19')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (67, N'd5j5es7ukyeftfar4men', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259248/d5j5es7ukyeftfar4men.jpg', N'aa81d0a534b45706ae1eee1e344e80d9', N'MS20')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (68, N'qkoaiwxdzy46nd95apxb', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259250/qkoaiwxdzy46nd95apxb.jpg', N'aa81d0a534b45706ae1eee1e344e80d9', N'MS20')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (69, N'yptas1gucxrlaslummlq', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259253/yptas1gucxrlaslummlq.jpg', N'aa81d0a534b45706ae1eee1e344e80d9', N'MS20')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (70, N'gmndfusbbgd30zrhuth3', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259297/gmndfusbbgd30zrhuth3.png', N'aebabbf88c7b92f7f495aa9d798f5a4d', N'MS21')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (71, N'txq8fuqu4nm4wg3ffppr', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259300/txq8fuqu4nm4wg3ffppr.png', N'aebabbf88c7b92f7f495aa9d798f5a4d', N'MS21')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (72, N'biu6cw6apmhm3xtvvg80', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259303/biu6cw6apmhm3xtvvg80.png', N'aebabbf88c7b92f7f495aa9d798f5a4d', N'MS21')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (73, N'jjy5txokwzbrfrogb4ea', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259356/jjy5txokwzbrfrogb4ea.jpg', N'b23586292aa7019e802bd2a115d47645', N'MS22')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (74, N'cp4kygycnqlgix7mampf', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259358/cp4kygycnqlgix7mampf.jpg', N'b23586292aa7019e802bd2a115d47645', N'MS22')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (75, N'g1isymvkpizunc7m5mfk', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259361/g1isymvkpizunc7m5mfk.jpg', N'b23586292aa7019e802bd2a115d47645', N'MS22')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (76, N'rolcfhmvj6ojwy6txmjf', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259415/rolcfhmvj6ojwy6txmjf.jpg', N'f4646aacc269d010c6c1dfc3fec552d0', N'MS23')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (77, N'dzpdgfbhx4ues1pokq6f', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259418/dzpdgfbhx4ues1pokq6f.jpg', N'f4646aacc269d010c6c1dfc3fec552d0', N'MS23')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (78, N'cxrkzq1qfaqe3sqalf8a', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259420/cxrkzq1qfaqe3sqalf8a.jpg', N'f4646aacc269d010c6c1dfc3fec552d0', N'MS23')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (79, N'puermdk5sbglcfq9mbws', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259474/puermdk5sbglcfq9mbws.png', N'7c374f0951cf835e224cfa218dd33747', N'MS24')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (80, N'srmywvlcpjo2124iv1xs', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259477/srmywvlcpjo2124iv1xs.png', N'7c374f0951cf835e224cfa218dd33747', N'MS24')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (81, N'ikxow8klbj2omoibceva', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259480/ikxow8klbj2omoibceva.png', N'7c374f0951cf835e224cfa218dd33747', N'MS24')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (82, N'guqu3vguygjj9hspkyzm', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259612/guqu3vguygjj9hspkyzm.jpg', N'd165f3ce4eecf71703c50b67c383459f', N'MS25')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (83, N'dnfsulh4grcoyt1wca7b', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259614/dnfsulh4grcoyt1wca7b.jpg', N'd165f3ce4eecf71703c50b67c383459f', N'MS25')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (84, N'gzbehjmswdm6tw6ulvkf', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259617/gzbehjmswdm6tw6ulvkf.jpg', N'd165f3ce4eecf71703c50b67c383459f', N'MS25')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (85, N'z8gzd7axdmftjmzxbgsj', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259677/z8gzd7axdmftjmzxbgsj.jpg', N'85cab74dbb2058d2019b7271efade17f', N'MS26')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (86, N'kuuuh8aaxhni4xylchyy', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259680/kuuuh8aaxhni4xylchyy.jpg', N'85cab74dbb2058d2019b7271efade17f', N'MS26')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (87, N'a3fr9zp3vi4yb6zmrlby', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259685/a3fr9zp3vi4yb6zmrlby.jpg', N'85cab74dbb2058d2019b7271efade17f', N'MS26')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (88, N'qnrnsqpps0ifgzbfnwsx', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259742/qnrnsqpps0ifgzbfnwsx.jpg', N'086fb0ca4e3d93ad0b08f6de037e9cf3', N'MS27')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (89, N'be5ua1qsyhvtgbugu5qh', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259744/be5ua1qsyhvtgbugu5qh.jpg', N'086fb0ca4e3d93ad0b08f6de037e9cf3', N'MS27')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (90, N'sdedqly6lvtdqdt2wlax', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259746/sdedqly6lvtdqdt2wlax.jpg', N'086fb0ca4e3d93ad0b08f6de037e9cf3', N'MS27')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (91, N'fekiunobc0qpy4ud2lnf', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259828/fekiunobc0qpy4ud2lnf.jpg', N'e1ceae0b9e3452f81beb12df92726129', N'MS28')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (92, N'mty33vtbvonxtgshmsfh', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259830/mty33vtbvonxtgshmsfh.jpg', N'e1ceae0b9e3452f81beb12df92726129', N'MS28')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (93, N'cfz0hsgqqfcfxppy0080', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259832/cfz0hsgqqfcfxppy0080.jpg', N'e1ceae0b9e3452f81beb12df92726129', N'MS28')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (94, N'fekiunobc0qpy4ud2lnf', N'COVER', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259828/fekiunobc0qpy4ud2lnf.jpg', N'e1ceae0b9e3452f81beb12df92726129', N'MS30')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (95, N'mty33vtbvonxtgshmsfh', N'BACKSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259830/mty33vtbvonxtgshmsfh.jpg', N'e1ceae0b9e3452f81beb12df92726129', N'MS30')
INSERT [dbo].[hinh_anh_sach] ([id], [image_id], [image_type], [image_url], [name], [ma_sach]) VALUES (96, N'cfz0hsgqqfcfxppy0080', N'FRONTSIDE', N'http://res.cloudinary.com/dfoikuprv/image/upload/v1734259832/cfz0hsgqqfcfxppy0080.jpg', N'e1ceae0b9e3452f81beb12df92726129', N'MS30')
SET IDENTITY_INSERT [dbo].[hinh_anh_sach] OFF
GO
INSERT [dbo].[hoi_vien] ([mahv], [dia_chi], [email], [ho_ten], [so_dien_thoai], [thoi_gian_dang_ky], [tien_nap], [tinh_trang], [account_id], [hinh_anhhv]) VALUES (N'hv1', N'Hà Nội', N'haics@', N'Dần', N'114', CAST(N'2024-12-10T14:36:02.427' AS DateTime), 55000, 1, N'test1', N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734367314/Bookland/HoiVien/file_pkxudq.jpg,Bookland/HoiVien/file_pkxudq')
INSERT [dbo].[hoi_vien] ([mahv], [dia_chi], [email], [ho_ten], [so_dien_thoai], [thoi_gian_dang_ky], [tien_nap], [tinh_trang], [account_id], [hinh_anhhv]) VALUES (N'hv2', N'hcm city', N'ssdfggg@', N'SS', N'114', CAST(N'2024-12-10T15:04:13.000' AS DateTime), 10000, 1, N'test2', N'https://res.cloudinary.com/dwubujpjt/image/upload/v1733817972/Bookland/HoiVien/file_mery6k.jpg,Bookland/HoiVien/file_mery6k')
INSERT [dbo].[hoi_vien] ([mahv], [dia_chi], [email], [ho_ten], [so_dien_thoai], [thoi_gian_dang_ky], [tien_nap], [tinh_trang], [account_id], [hinh_anhhv]) VALUES (N'ps22062', N'123,hcm', NULL, N'nhat', N'0369210105', CAST(N'2024-12-15T14:23:13.587' AS DateTime), 0, 0, N'nhat', N'')
INSERT [dbo].[hoi_vien] ([mahv], [dia_chi], [email], [ho_ten], [so_dien_thoai], [thoi_gian_dang_ky], [tien_nap], [tinh_trang], [account_id], [hinh_anhhv]) VALUES (N'ps4394', N'123,hcm', NULL, N'nhat', N'0369210105', CAST(N'2024-12-15T14:23:35.627' AS DateTime), 9990000, 1, N'kai', N'')
GO
SET IDENTITY_INSERT [dbo].[kho] ON 

INSERT [dbo].[kho] ([ma_kho], [dia_diem], [ten_kho]) VALUES (1, N'123', N'Kho1')
SET IDENTITY_INSERT [dbo].[kho] OFF
GO
SET IDENTITY_INSERT [dbo].[muon_online] ON 

INSERT [dbo].[muon_online] ([id], [ngay_hen_lay], [ngay_muon], [tinh_trang], [mahv], [is_picked_up], [tien_dat_coc]) VALUES (2, CAST(N'2024-12-17T07:00:00.0000000' AS DateTime2), CAST(N'2024-12-16T20:13:24.8600000' AS DateTime2), 0, N'ps4394', NULL, NULL)
SET IDENTITY_INSERT [dbo].[muon_online] OFF
GO
INSERT [dbo].[nhan_vien] ([manv], [dia_chi], [email], [gioi_tinh], [hinh_anhnv], [ho_ten], [ngay_sinh], [so_dien_thoai], [tinh_trang], [account_id]) VALUES (N'nv1', N'VHN', N'ss@', N'Nam', N'https://res.cloudinary.com/dwubujpjt/image/upload/v1733814717/Bookland/NhanVien/file_nrjn6c.jpg,Bookland/NhanVien/file_nrjn6c', N'SS', CAST(N'2024-12-28' AS Date), N'114', N'Đang làm việc', N'demo3')
INSERT [dbo].[nhan_vien] ([manv], [dia_chi], [email], [gioi_tinh], [hinh_anhnv], [ho_ten], [ngay_sinh], [so_dien_thoai], [tinh_trang], [account_id]) VALUES (N'nv2', N'VHN', N'ssdfggg@', N'Nam', N'https://res.cloudinary.com/dwubujpjt/image/upload/v1734251010/Bookland/NhanVien/file_z7ghji.png,Bookland/NhanVien/file_z7ghji', N'Dần', CAST(N'2024-12-04' AS Date), N'114', N'Đang làm việc', N'haidemo')
GO
SET IDENTITY_INSERT [dbo].[phieu_muon] ON 

INSERT [dbo].[phieu_muon] ([mapm], [han_tra_sach], [ngay_lap_phieu], [mahv], [manv]) VALUES (6, CAST(N'2024-12-31T07:00:00.0000000' AS DateTime2), CAST(N'2024-12-16' AS Date), N'hv1', N'nv2')
SET IDENTITY_INSERT [dbo].[phieu_muon] OFF
GO
SET IDENTITY_INSERT [dbo].[phieu_phat] ON 

INSERT [dbo].[phieu_phat] ([ma_phieu_phat], [ngay_lap_phieu], [so_ngay_qua_han], [tien_phat], [vi_pham_phieu_tra], [mahv], [manv], [mapt]) VALUES (3, CAST(N'2024-12-16' AS Date), 0, 50000, N'lỗi mất sách', N'hv1', N'nv2', 5)
SET IDENTITY_INSERT [dbo].[phieu_phat] OFF
GO
SET IDENTITY_INSERT [dbo].[phieu_tra] ON 

INSERT [dbo].[phieu_tra] ([mapt], [is_fine], [ngay_lap_phieu_tra], [mahv], [manv], [mapm]) VALUES (5, N'DA_PHAT', CAST(N'2024-12-16' AS Date), N'hv1', N'nv2', 6)
SET IDENTITY_INSERT [dbo].[phieu_tra] OFF
GO
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS04', N'Một ngày nọ, thủ lĩnh đàn sói nhặt được một chú cún nhỏ xíu, tròn vo đang rúc vào người mình tìm hơi ấm. Sau một hồi đấu tranh nội tâm không biết nên ăn thịt nó, vứt nó đi hay là nuôi nó, chiếc sói nhìn mặt hổ báo tưởng chừng gian ác đã không cưỡng lại được sự cute hột me của cún con mà quyết định nuôi luôn chú ta.Rồi một ngày cún nhỏ lớn dần lớn dần hóa cún to…', 0, N'Kim Đồng', N'Sói Đầu Đàn Và Cún Nhỏ - Tập 2', 135000, N'TS06')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS05', N'Một ngày nọ, thủ lĩnh đàn sói nhặt được một chú cún nhỏ xíu, tròn vo đang rúc vào người mình tìm hơi ấm. Sau một hồi đấu tranh nội tâm không biết nên ăn thịt nó, vứt nó đi hay là nuôi nó, chiếc sói nhìn mặt hổ báo tưởng chừng gian ác đã không cưỡng lại được sự cute hột me của cún con mà quyết định nuôi luôn chú ta.Rồi một ngày cún nhỏ lớn dần lớn dần hóa cún to…', 0, N'Kim Đồng', N'Sói Đầu Đàn Và Cún Nhỏ - Tập 1', 135000, N'TS06')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS06', N'Tớ là Edogawa Conan. Nhưng có một điều các bạn nên biết, thực chất tớ là Kudo Shinichi, thám tử học sinh cấp 3. Phải mất công lắm mới tìm thấy bọn người áo đen đã biến m.ình trở thành cậu bé cấp 1, vậy mà Không hiểu sao, lần này tớ linh cảm có chuyện không hay sắp xảy', 0, N'Kim Đồng', N'Thám Tử Lừng Danh Conan - Tập 12', 98000, N'TS08')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS07', N'Những vụ án nối tiếp nhau, không mời mà đến. Cứ như vậy thì sao tớ có thể một lúc gánh hết đây? Ơ, sao tự dưng người tớ cứ nóng dần, nóng dần... sắp không chịu nổi nữa rồi! Đúng lúc ấy, một anh chàng thám tử mới xuất hiện!', 0, N'Kim Đồng', N'Truyện tranh - Thám tử lừng danh conan tập 10', 20000, N'TS09')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS10', N'Những vụ án nối tiếp nhau, không mời mà đến. Cứ như vậy thì sao tớ có thể một lúc gánh hết đây? Ơ, sao tự dưng người tớ cứ nóng dần, nóng dần... sắp không chịu nổi nữa rồi! Đúng lúc ấy, một anh chàng thám tử mới xuất hiện!', 0, N'Kim Đồng', N'Cún Bự Nơi Phòng Nhỏ – Tập 1', 50000, N'MS03')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS11', N'Cô gái văn chương là một series light novel nổi tiếng của nữ tác giả Nomura Mizuki, một trong những hiện tượng light novel đuợc nhắc đến nhiều nhất tại Nhật Bản cũng như trên thế giới. Lượng tiêu thụ của bộ sách này lên tới vài triệu bản, những diễn đàn và cộng đồng mạng tại Nhật đánh giá nó như là một trong những series hay nhất từ trước đến giờ, đặc biệt là giải thưởng Kono Light Novel ga Sugoi! danh giá của Nhật đã xếp Cô gái văn chương lên vị trí thứ 8 vào năm 2007, thứ 3 vào năm 2008 và thứ nhất vào năm 2009 trong bảng xếp hạng light novel của mình. Amano Tooko – nhân vật chính trong Cô gái văn chương – cũng đã đoạt giải Nhân vật nữ hay nhất của năm 2009. Bộ light novel này đã được chuyển thể thành cả truyện tranh và phim hoạt hình.', 0, N'Kim Đồng', N'Cô Gái Văn Chương Và Tuyển Tập Tình Yêu', 50000, N'TS03')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS12', N'Cô gái văn chương là một series light novel nổi tiếng của nữ tác giả Nomura Mizuki, một trong những hiện tượng light novel đuợc nhắc đến nhiều nhất tại Nhật Bản cũng như trên thế giới. Lượng tiêu thụ của bộ sách này lên tới vài triệu bản, những diễn đàn và cộng đồng mạng tại Nhật đánh giá nó như là một trong những series hay nhất từ trước đến giờ, đặc biệt là giải thưởng Kono Light Novel ga Sugoi! danh giá của Nhật đã xếp Cô gái văn chương lên vị trí thứ 8 vào năm 2007, thứ 3 vào năm 2008 và thứ nhất vào năm 2009 trong bảng xếp hạng light novel của mình. Amano Tooko – nhân vật chính trong Cô gái văn chương – cũng đã đoạt giải Nhân vật nữ hay nhất của năm 2009. Bộ light novel này đã được chuyển thể thành cả truyện tranh và phim hoạt hình.', 0, N'Kim Đồng', N'Cô Gái Văn Chương Và Tuyển Tập Tình Yêu 4', 50000, N'TS03')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS13', N'Cô gái văn chương là một series light novel nổi tiếng của nữ tác giả Nomura Mizuki, một trong những hiện tượng light novel đuợc nhắc đến nhiều nhất tại Nhật Bản cũng như trên thế giới. Lượng tiêu thụ của bộ sách này lên tới vài triệu bản, những diễn đàn và cộng đồng mạng tại Nhật đánh giá nó như là một trong những series hay nhất từ trước đến giờ, đặc biệt là giải thưởng Kono Light Novel ga Sugoi! danh giá của Nhật đã xếp Cô gái văn chương lên vị trí thứ 8 vào năm 2007, thứ 3 vào năm 2008 và thứ nhất vào năm 2009 trong bảng xếp hạng light novel của mình. Amano Tooko – nhân vật chính trong Cô gái văn chương – cũng đã đoạt giải Nhân vật nữ hay nhất của năm 2009. Bộ light novel này đã được chuyển thể thành cả truyện tranh và phim hoạt hình.', 0, N'Kim Đồng', N'Chàng Thẩm Định Viên Và Nữ Tác Giả Tập Sự', 73000, N'TS03')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS14', N'“Những đồ vật tồn tại ở cõi nhân gian qua nhiều năm sẽ có thần linh hoặc linh hồn đến trú ngụ.” – Bạn có tin không?
“Cây dừa cao thật là cao
Đi qua không chào lộn cổ chết tươi…”', 0, N'Kim Đồng', N'Những Đồ Vật Có Linh Hồn', 154000, N'TS07')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS15', N'ĐỒNG LINH DỊ TRUYỆN - QUỶ TRIỀN THÂN - Thế giới trong con mắt một nạn nhân của bạo lực học đường. “Thầy chẳng hiểu gì cả. Chúng mới chính là quỷ dữ, em chỉ đối xử với chúng như cách chúng đã...', 0, N'Kim Đồng', N'Quỷ Triền Thân', 154000, N'TS07')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS16', N'Giếng Độc GIỚI THIỆU TÁC GIẢ TỐNG NGỌC Tống Ngọc là cái tên không còn xa lạ với những ai yêu thích thể loại truyện kinh dị, tâm linh. Xuất thân là một tác giả mạng và trải qua nhiều năm...', 0, N'Kim Đồng', N'Giếng Độc', 0, N'TS07')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS17', N'THÔNG BÁO PHÁT HÀNH GIẢI NGẢI KÝ (Tập 1+2) - TỐNG NGỌC Nếu không vì năm đó, một người cả tin, một người do dự, một người mưu mô, vô tình va vào nhau giữa cuộc đời thì có lẽ câu chuyện...', 0, N'Kim Đồng', N'Giải Ngải Ký', 100000, N'TS07')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS18', N'THÔNG BÁO PHÁT HÀNH GIẢI NGẢI KÝ (Tập 1+2) - TỐNG NGỌC Nếu không vì năm đó, một người cả tin, một người do dự, một người mưu mô, vô tình va vào nhau giữa cuộc đời thì có lẽ câu chuyện...', 0, N'Kim Đồng', N'Đi đêm lắm có ngày gặp ma', 100000, N'TS07')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS19', N'50 Sắc thái được coi là bộ tiểu thuyết kỳ diệu, đã làm chao đảo cả ngành xuất bản trên toàn thế giới. Tính đến nay, bộ tiểu thuyết có mặt ở 37 quốc gia và đã tiêu thụ khoảng 70 triệu bản trên toàn cầu...', 0, N'Kim Đồng', N'50 Sắc Thái', 149000, N'TS10')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS20', N'Sơ lược về tác phẩmTất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.Tiểu ...', 0, N'Kim Đồng', N'Nhà Giả Kim', 149000, N'TS10')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS21', N'Mô tả sản phẩmI. MÔ TẢ SẢN PHẨM: Sách - Tiểu Sử Elon Musk: Cuốn tiểu sử duy nhất được Elon Musk CÔNG KHAI XÁC NHẬN trên Twitter (Alpha Books)- Nhà phát hành: Alpha Books- Tác giả: Walter Isaacs...', 0, N'Kim Đồng', N'Tiểu Sử Elon Musk', 149000, N'TS10')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS22', N'NGƯỜI GIÀU CÓ NHẤT THÀNH BABYLONNgười giàu có nhất thành Babylon (tiếng Anh: The Richest Man in Babylon) được xem là một trong những tác phẩm truyền cảm hứng lớn nhất về chủ đề tiết kiệm, kế hoạch tài...', 0, N'Kim Đồng', N'Người Giàu Có Nhất Thành Babylon', 149000, N'TS10')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS23', N'Khuyến học không phải là tác phẩm đồ sộ và sâu sắc nhất của ông nhưng lại là tác phẩm có ảnh hưởng sâu rộng nhất đến công chúng Nhật Bản. Khi mới đựơc in lần đầu, cuốn sách này có một số lượng ấn bản ...', 0, N'Kim Đồng', N'Khuyến Học - Nhã Nam', 149000, N'TS10')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS24', N'Là chủ chương trình Buổi sáng của Steve Harvey nổi tiếng khắp nước Mỹ, Steve Harvey đã được tiếp xúc với vô số phụ nữ trong suốt nhiều năm, thông qua chuyên mục Lá thư Dâu tây mà ông phụ trách hoặc qu...', 0, N'Kim Đồng', N'Cư Xử Như Đàn Bà Suy Nghĩ Như Đàn Ông', 9000, N'TS10')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS25', N'Một nửa thế kỷ đã trôi qua, thế giới trẻ thơ của Trần Đăng Khoa với cánh diều chao lượn, với cây đa mái đình cùng góc sân với bao trò tinh nghịch, hồn nhiên đã chinh phục không biết bao nhiêu thế hệ độc giả trong và ngoài nước. Để tiếp nối khoảng trời tươi đẹp từ góc sân nhỏ với bao cảm xúc tuyệt vời ấy, Huy Hoàng Bookstore trân trọng mang tới cho bạn đọc một chương trình sách đặc biệt ấn bản mới nhất của tập thơ Góc sân và khoảng trời qua một lăng kính cực kỳ mới lạ, lần đầu có mặt ở Việt Nam, đó là bộ sách tranh gồm 5 cuốn với những bức tranh minh họa đặc sắc.', 0, N'Kim Đồng', N'Góc Sân Và Khoảng Trời - Con Bướm Vàng', 199000, N'TS11')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS26', N'Một nửa thế kỷ đã trôi qua, thế giới trẻ thơ của Trần Đăng Khoa với cánh diều chao lượn, với cây đa mái đình cùng góc sân với bao trò tinh nghịch, hồn nhiên đã chinh phục không biết bao nhiêu thế hệ độc giả trong và ngoài nước. Để tiếp nối khoảng trời tươi đẹp từ góc sân nhỏ với bao cảm xúc tuyệt vời ấy, Huy Hoàng Bookstore trân trọng mang tới cho bạn đọc một chương trình sách đặc biệt ấn bản mới nhất của tập thơ Góc sân và khoảng trời qua một lăng kính cực kỳ mới lạ, lần đầu có mặt ở Việt Nam, đó là bộ sách tranh gồm 5 cuốn với những bức tranh minh họa đặc sắc.', 0, N'Kim Đồng', N'Góc Sân Và Khoảng Trời - Mang Biển Về Quê', 99000, N'TS11')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS27', N'Một nửa thế kỷ đã trôi qua, thế giới trẻ thơ của Trần Đăng Khoa với cánh diều chao lượn, với cây đa mái đình cùng góc sân với bao trò tinh nghịch, hồn nhiên đã chinh phục không biết bao nhiêu thế hệ độc giả trong và ngoài nước. Để tiếp nối khoảng trời tươi đẹp từ góc sân nhỏ với bao cảm xúc tuyệt vời ấy, Huy Hoàng Bookstore trân trọng mang tới cho bạn đọc một chương trình sách đặc biệt ấn bản mới nhất của tập thơ Góc sân và khoảng trời qua một lăng kính cực kỳ mới lạ, lần đầu có mặt ở Việt Nam, đó là bộ sách tranh gồm 5 cuốn với những bức tranh minh họa đặc sắc.', 0, N'Kim Đồng', N'Góc Sân Và Khoảng Trời', 99000, N'TS11')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS28', N'Một nửa thế kỷ đã trôi qua, thế giới trẻ thơ của Trần Đăng Khoa với cánh diều chao lượn, với cây đa mái đình cùng góc sân với bao trò tinh nghịch, hồn nhiên đã chinh phục không biết bao nhiêu thế hệ độc giả trong và ngoài nước. Để tiếp nối khoảng trời tươi đẹp từ góc sân nhỏ với bao cảm xúc tuyệt vời ấy, Huy Hoàng Bookstore trân trọng mang tới cho bạn đọc một chương trình sách đặc biệt ấn bản mới nhất của tập thơ Góc sân và khoảng trời qua một lăng kính cực kỳ mới lạ, lần đầu có mặt ở Việt Nam, đó là bộ sách tranh gồm 5 cuốn với những bức tranh minh họa đặc sắc.', 0, N'Kim Đồng', N'Đảo Chìm', 99000, N'TS11')
INSERT [dbo].[sach] ([ma_sach], [mo_ta], [namxb], [nxb], [ten_sach], [tien_sach], [ma_tac_gia]) VALUES (N'MS30', N'ss', 0, N'Kim Đồng', N'Thám Tử Lừng Danh Conan', 20000, N'TS08')
GO
SET IDENTITY_INSERT [dbo].[sach_the_loai] ON 

INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (6, N'MS04', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (7, N'MS05', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (8, N'MS06', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (9, N'MS07', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (12, N'MS10', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (13, N'MS11', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (14, N'MS12', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (15, N'MS13', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (16, N'MS14', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (17, N'MS15', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (18, N'MS16', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (19, N'MS17', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (20, N'MS18', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (21, N'MS19', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (22, N'MS20', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (23, N'MS21', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (24, N'MS22', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (25, N'MS23', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (26, N'MS24', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (27, N'MS25', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (28, N'MS26', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (29, N'MS27', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (30, N'MS28', N'TL03')
INSERT [dbo].[sach_the_loai] ([id], [ma_sach], [ma_the_loai]) VALUES (31, N'MS30', N'TL03')
SET IDENTITY_INSERT [dbo].[sach_the_loai] OFF
GO
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'MS02', CAST(N'1993-02-12T07:00:00.0000000' AS DateTime2), N'Trung Quốc', N'Ma Vĩ')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'MS03', CAST(N'1993-02-12T07:00:00.0000000' AS DateTime2), N'Nhật Bản', N'Nomura Mizuki')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'TG01', CAST(N'2024-12-20T07:00:00.0000000' AS DateTime2), N'VietNam', N'Trần Văn Bình')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'TS02', CAST(N'1993-02-12T07:00:00.0000000' AS DateTime2), N'Trung Quốc', N'Ma Vĩ')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'TS03', CAST(N'1993-02-12T07:00:00.0000000' AS DateTime2), N'Nhật Bản', N'Nomura Mizuki')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'TS04', CAST(N'2024-12-19T07:00:00.0000000' AS DateTime2), N'không rõ', N'Isaac Asimov')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'TS06', CAST(N'2024-12-19T07:00:00.0000000' AS DateTime2), N'Việt Nam', N'Văng Lang')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'TS07', CAST(N'2024-12-15T17:31:18.1420000' AS DateTime2), N'không rõ', N'Tống Ngọc')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'TS08', CAST(N'2024-12-19T07:00:00.0000000' AS DateTime2), N'Nhật Bản', N'Daisuke Aizawa')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'TS09', CAST(N'2024-12-19T07:00:00.0000000' AS DateTime2), N'Nhật Bản', N'Nhiều Tác Giả')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'TS10', CAST(N'2024-12-15T17:38:21.4280000' AS DateTime2), N'không rõ', N'Phillip Kerr')
INSERT [dbo].[tac_gia] ([ma_tac_gia], [ngay_sinh], [quoc_gia], [ten_tac_gia]) VALUES (N'TS11', CAST(N'2024-12-15T17:45:04.2350000' AS DateTime2), N'Việt Nam', N'Trần Đăng Khoa')
GO
INSERT [dbo].[tai_khoan] ([user_name], [password]) VALUES (N'demo3', N'$2a$10$ciwiFB.NMSDP4dgd/ZgSPeXEnpCTuzH42gYiexqxo9uMrh7DH.ROC')
INSERT [dbo].[tai_khoan] ([user_name], [password]) VALUES (N'haidemo', N'$2a$10$qGW9MhDOdBj0vkRR.To./..P2w1cez3GONH/TvE5UGlLKYLTcICrm')
INSERT [dbo].[tai_khoan] ([user_name], [password]) VALUES (N'kai', N'$2a$10$9e8reug8jt4AVLP3nYsHtekCbLDquLgDYX.WcWSRDtixMVDwTprYi')
INSERT [dbo].[tai_khoan] ([user_name], [password]) VALUES (N'nhat', N'$2a$10$UyLdGAHw2/lw9hQyUkWTE.gk9077PUBfcDYaBZh5Fa0Vd2O4Xfo8C')
INSERT [dbo].[tai_khoan] ([user_name], [password]) VALUES (N'test1', N'$2a$10$O1niiXpNlqm67/3CC/HY2.Ceio4lLmCaYwJfbQ/mhq5Z3Nkk5gWjW')
INSERT [dbo].[tai_khoan] ([user_name], [password]) VALUES (N'test2', N'$2a$10$DEZ4CUd4KGTOL4RtyfNgdOnpec1x/daWbAkkgLclQmefM5OgdgYeG')
INSERT [dbo].[tai_khoan] ([user_name], [password]) VALUES (N'test3', N'$2a$10$qGW9MhDOdBj0vkRR.To./..P2w1cez3GONH/TvE5UGlLKYLTcICrm')
GO
SET IDENTITY_INSERT [dbo].[thanh_toan] ON 

INSERT [dbo].[thanh_toan] ([id], [url_thanh_toan], [cong_thanh_toan], [ghi_chu], [hinh_thuc_thanh_toan], [loai_thanh_toan], [ma_giao_dich], [so_tien], [thoi_gian_thanh_toan], [trang_thai_giao_dich], [trang_thai_thanh_toan], [mahv], [manv]) VALUES (1, N'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=1000000&vnp_Command=pay&vnp_CreateDate=20241210153323&vnp_CurrCode=VND&vnp_ExpireDate=20241210154823&vnp_IpAddr=192.168.1.100&vnp_Locale=vn&vnp_OrderInfo=Nap+Tien+&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A8080%2Fapi%2Fpaymen%2Fcallback&vnp_TmnCode=STU8FN8I&vnp_TxnRef=99495675&vnp_Version=2.1.0&vnp_SecureHash=1ed7049e486ac3ac4aef4292a9c560c80e5c2eeeca7a4fcb0aa17b8ab1ce4d50d18b6605af840e7b9fa64fc90111a281399e9d29aecba68d3f6c853b10d40e39', N'VNPay', N'Nạp tiền hội viên', N'ATM', N'Nạp tiền', N'99495675', 10000, CAST(N'2024-12-10T15:33:23.730' AS DateTime), N'Thành công', N'Tự động', N'hv2', NULL)
INSERT [dbo].[thanh_toan] ([id], [url_thanh_toan], [cong_thanh_toan], [ghi_chu], [hinh_thuc_thanh_toan], [loai_thanh_toan], [ma_giao_dich], [so_tien], [thoi_gian_thanh_toan], [trang_thai_giao_dich], [trang_thai_thanh_toan], [mahv], [manv]) VALUES (2, NULL, N'', N'', N'Tiền mặt', N'Nạp Tiền', N'88840949', 20000, CAST(N'2024-12-10T15:42:40.830' AS DateTime), N'Thành công', N'Thủ công', N'hv1', N'nv2')
INSERT [dbo].[thanh_toan] ([id], [url_thanh_toan], [cong_thanh_toan], [ghi_chu], [hinh_thuc_thanh_toan], [loai_thanh_toan], [ma_giao_dich], [so_tien], [thoi_gian_thanh_toan], [trang_thai_giao_dich], [trang_thai_thanh_toan], [mahv], [manv]) VALUES (3, NULL, N'', N'', N'Tiền mặt', N'Rút Tiền', N'94571493', 10000, CAST(N'2024-12-10T15:57:46.610' AS DateTime), N'Thành công', N'Thủ công', N'hv1', N'nv2')
INSERT [dbo].[thanh_toan] ([id], [url_thanh_toan], [cong_thanh_toan], [ghi_chu], [hinh_thuc_thanh_toan], [loai_thanh_toan], [ma_giao_dich], [so_tien], [thoi_gian_thanh_toan], [trang_thai_giao_dich], [trang_thai_thanh_toan], [mahv], [manv]) VALUES (4, N'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=2500000&vnp_Command=pay&vnp_CreateDate=20241210164810&vnp_CurrCode=VND&vnp_ExpireDate=20241210170310&vnp_IpAddr=192.168.1.100&vnp_Locale=vn&vnp_OrderInfo=Nap+Tien+&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A8080%2Fapi%2Fpaymen%2Fcallback&vnp_TmnCode=STU8FN8I&vnp_TxnRef=57495764&vnp_Version=2.1.0&vnp_SecureHash=b4a66f8ff5971e9eeec1b29bade3add19db4a8325bacb4adaa3ac9a343f1df1a2931e7289b925ae1f7662cf7d1fe64f30bb702ab61efec5bd3b54ec778d4ba65', N'VNPay', N'Nạp tiền hội viên', N'ATM', N'Nạp tiền', N'57495764', 25000, CAST(N'2024-12-10T16:48:10.727' AS DateTime), N'Thành công', N'Tự động', N'hv1', NULL)
INSERT [dbo].[thanh_toan] ([id], [url_thanh_toan], [cong_thanh_toan], [ghi_chu], [hinh_thuc_thanh_toan], [loai_thanh_toan], [ma_giao_dich], [so_tien], [thoi_gian_thanh_toan], [trang_thai_giao_dich], [trang_thai_thanh_toan], [mahv], [manv]) VALUES (5, N'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=1000000000&vnp_Command=pay&vnp_CreateDate=20241216201458&vnp_CurrCode=VND&vnp_ExpireDate=20241216202958&vnp_IpAddr=192.168.1.100&vnp_Locale=vn&vnp_OrderInfo=Nap+Tien+&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A8080%2Fapi%2Fpaymen%2Fcallback&vnp_TmnCode=STU8FN8I&vnp_TxnRef=14329612&vnp_Version=2.1.0&vnp_SecureHash=1499d7e764caad81a5d71b07f2e656a3928319627226b4b7bfcf94730bf9af4eaea520748e774172087e457450e3cde3ab005c2dacc19fa2053682122ced990d', N'VNPay', N'Nạp tiền hội viên', N'ATM', N'Nạp tiền', N'14329612', 10000000, CAST(N'2024-12-16T20:14:58.193' AS DateTime), N'Thành công', N'Tự động', N'ps4394', NULL)
INSERT [dbo].[thanh_toan] ([id], [url_thanh_toan], [cong_thanh_toan], [ghi_chu], [hinh_thuc_thanh_toan], [loai_thanh_toan], [ma_giao_dich], [so_tien], [thoi_gian_thanh_toan], [trang_thai_giao_dich], [trang_thai_thanh_toan], [mahv], [manv]) VALUES (6, NULL, N'', N'', N'Chuyển khoản', N'Rút Tiền', N'44390868', 10000, CAST(N'2024-12-16T22:30:13.463' AS DateTime), N'Thành công', N'Thủ công', N'ps4394', N'nv2')
INSERT [dbo].[thanh_toan] ([id], [url_thanh_toan], [cong_thanh_toan], [ghi_chu], [hinh_thuc_thanh_toan], [loai_thanh_toan], [ma_giao_dich], [so_tien], [thoi_gian_thanh_toan], [trang_thai_giao_dich], [trang_thai_thanh_toan], [mahv], [manv]) VALUES (7, N'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html?vnp_Amount=2000000&vnp_Command=pay&vnp_CreateDate=20241216233936&vnp_CurrCode=VND&vnp_ExpireDate=20241216235436&vnp_IpAddr=192.168.1.100&vnp_Locale=vn&vnp_OrderInfo=Nap+Tien+&vnp_OrderType=other&vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A8080%2Fapi%2Fpaymen%2Fcallback&vnp_TmnCode=STU8FN8I&vnp_TxnRef=88998907&vnp_Version=2.1.0&vnp_SecureHash=e710f19bed836c1edf1f211f66085135128b0781a36943ad6ed6e9fbee356625c2260635c6c98ce54e33f2452f92c76aa9401fbf539931442212591eb933a6d6', N'VNPay', N'Nạp tiền hội viên', N'ATM', N'Nạp tiền', N'88998907', 20000, CAST(N'2024-12-16T23:39:36.097' AS DateTime), N'Thành công', N'Tự động', N'hv1', NULL)
SET IDENTITY_INSERT [dbo].[thanh_toan] OFF
GO
INSERT [dbo].[the_loai] ([ma_the_loai], [mo_ta], [ten_the_loai]) VALUES (N'TL01', N'as', N'cc')
INSERT [dbo].[the_loai] ([ma_the_loai], [mo_ta], [ten_the_loai]) VALUES (N'TL03', N'as', N'Siêu nhiên')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKhnsoo80p160e65akif97e921p]    Script Date: 17/12/2024 12:28:04 SA ******/
ALTER TABLE [dbo].[ban_sao_sach] ADD  CONSTRAINT [UKhnsoo80p160e65akif97e921p] UNIQUE NONCLUSTERED 
(
	[ma_vach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK50gxvyrhcdep61v0tmc2e6vo4]    Script Date: 17/12/2024 12:28:04 SA ******/
ALTER TABLE [dbo].[hoi_vien] ADD  CONSTRAINT [UK50gxvyrhcdep61v0tmc2e6vo4] UNIQUE NONCLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKcsook5xnk32xw1bokdpox0wdb]    Script Date: 17/12/2024 12:28:04 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [UKcsook5xnk32xw1bokdpox0wdb] ON [dbo].[hoi_vien]
(
	[email] ASC
)
WHERE ([email] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK12waxxsiniyddv2lt9ianfh8a]    Script Date: 17/12/2024 12:28:04 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK12waxxsiniyddv2lt9ianfh8a] ON [dbo].[nhan_vien]
(
	[email] ASC
)
WHERE ([email] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK5n9lbijsdl4qn33dqr58cf1cb]    Script Date: 17/12/2024 12:28:04 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [UK5n9lbijsdl4qn33dqr58cf1cb] ON [dbo].[nhan_vien]
(
	[account_id] ASC
)
WHERE ([account_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKjf6hlg2708jccb7vtkngfji48]    Script Date: 17/12/2024 12:28:04 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [UKjf6hlg2708jccb7vtkngfji48] ON [dbo].[thanh_toan]
(
	[ma_giao_dich] ASC
)
WHERE ([ma_giao_dich] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chi_tiet_sach_nhan_vien] ADD  DEFAULT (getdate()) FOR [thoi_gian_thuc_hien]
GO
ALTER TABLE [dbo].[hoi_vien] ADD  DEFAULT (getdate()) FOR [thoi_gian_dang_ky]
GO
ALTER TABLE [dbo].[authorities]  WITH CHECK ADD  CONSTRAINT [FK2fhqg5y4yi0vymkkhot8xa124] FOREIGN KEY([username])
REFERENCES [dbo].[tai_khoan] ([user_name])
GO
ALTER TABLE [dbo].[authorities] CHECK CONSTRAINT [FK2fhqg5y4yi0vymkkhot8xa124]
GO
ALTER TABLE [dbo].[authorities]  WITH CHECK ADD  CONSTRAINT [FKo0cvcawa408pf1upbv52doyd5] FOREIGN KEY([roleid])
REFERENCES [dbo].[chuc_vu] ([id])
GO
ALTER TABLE [dbo].[authorities] CHECK CONSTRAINT [FKo0cvcawa408pf1upbv52doyd5]
GO
ALTER TABLE [dbo].[ban_sao_sach]  WITH CHECK ADD  CONSTRAINT [FKbhe95oshs48fasmeq13b1end5] FOREIGN KEY([ma_kho])
REFERENCES [dbo].[kho] ([ma_kho])
GO
ALTER TABLE [dbo].[ban_sao_sach] CHECK CONSTRAINT [FKbhe95oshs48fasmeq13b1end5]
GO
ALTER TABLE [dbo].[ban_sao_sach]  WITH CHECK ADD  CONSTRAINT [FKr4kaaqymo4ha37c0xjproj8an] FOREIGN KEY([ma_sach])
REFERENCES [dbo].[sach] ([ma_sach])
GO
ALTER TABLE [dbo].[ban_sao_sach] CHECK CONSTRAINT [FKr4kaaqymo4ha37c0xjproj8an]
GO
ALTER TABLE [dbo].[chi_tiet_muon_online]  WITH CHECK ADD  CONSTRAINT [FK8hmfts70v5hib6chkf92t7h5b] FOREIGN KEY([borrow_online_id])
REFERENCES [dbo].[muon_online] ([id])
GO
ALTER TABLE [dbo].[chi_tiet_muon_online] CHECK CONSTRAINT [FK8hmfts70v5hib6chkf92t7h5b]
GO
ALTER TABLE [dbo].[chi_tiet_muon_online]  WITH CHECK ADD  CONSTRAINT [FKm67tpuj1qinkct8l3rrv47e3] FOREIGN KEY([ma_ban_sao_sach])
REFERENCES [dbo].[ban_sao_sach] ([ma_ban_sao_sach])
GO
ALTER TABLE [dbo].[chi_tiet_muon_online] CHECK CONSTRAINT [FKm67tpuj1qinkct8l3rrv47e3]
GO
ALTER TABLE [dbo].[chi_tiet_phieu_muon]  WITH CHECK ADD  CONSTRAINT [FK3iqttlcuxsu9sgw4a4cgb3or6] FOREIGN KEY([ma_ban_sao_sach])
REFERENCES [dbo].[ban_sao_sach] ([ma_ban_sao_sach])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_muon] CHECK CONSTRAINT [FK3iqttlcuxsu9sgw4a4cgb3or6]
GO
ALTER TABLE [dbo].[chi_tiet_phieu_muon]  WITH CHECK ADD  CONSTRAINT [FK70ldppgg1o2g9hto4mdfagkal] FOREIGN KEY([mapm])
REFERENCES [dbo].[phieu_muon] ([mapm])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_muon] CHECK CONSTRAINT [FK70ldppgg1o2g9hto4mdfagkal]
GO
ALTER TABLE [dbo].[chi_tiet_phieu_phat_sach]  WITH CHECK ADD  CONSTRAINT [FK82mxcd5of0gyw7gk2yilnd6s4] FOREIGN KEY([ma_phieu_phat])
REFERENCES [dbo].[phieu_phat] ([ma_phieu_phat])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_phat_sach] CHECK CONSTRAINT [FK82mxcd5of0gyw7gk2yilnd6s4]
GO
ALTER TABLE [dbo].[chi_tiet_phieu_phat_sach]  WITH CHECK ADD  CONSTRAINT [FKaaygtgx2dsls4sx5uwhmgrxwd] FOREIGN KEY([ma_ban_sao_sach])
REFERENCES [dbo].[ban_sao_sach] ([ma_ban_sao_sach])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_phat_sach] CHECK CONSTRAINT [FKaaygtgx2dsls4sx5uwhmgrxwd]
GO
ALTER TABLE [dbo].[chi_tiet_phieu_tra]  WITH CHECK ADD  CONSTRAINT [FK2o8mtngfwqn61lto4bm7fqn0h] FOREIGN KEY([ma_ban_sao_sach])
REFERENCES [dbo].[ban_sao_sach] ([ma_ban_sao_sach])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_tra] CHECK CONSTRAINT [FK2o8mtngfwqn61lto4bm7fqn0h]
GO
ALTER TABLE [dbo].[chi_tiet_phieu_tra]  WITH CHECK ADD  CONSTRAINT [FKdhbiqlo2aamjxy8cgiisfkfmj] FOREIGN KEY([mapt])
REFERENCES [dbo].[phieu_tra] ([mapt])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_tra] CHECK CONSTRAINT [FKdhbiqlo2aamjxy8cgiisfkfmj]
GO
ALTER TABLE [dbo].[chi_tiet_sach_nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK6oqyw2vte98br78lw2idb5pbs] FOREIGN KEY([ma_sach])
REFERENCES [dbo].[sach] ([ma_sach])
GO
ALTER TABLE [dbo].[chi_tiet_sach_nhan_vien] CHECK CONSTRAINT [FK6oqyw2vte98br78lw2idb5pbs]
GO
ALTER TABLE [dbo].[chi_tiet_sach_nhan_vien]  WITH CHECK ADD  CONSTRAINT [FKdc2furs86mme2ubqn1pwraojj] FOREIGN KEY([manv])
REFERENCES [dbo].[nhan_vien] ([manv])
GO
ALTER TABLE [dbo].[chi_tiet_sach_nhan_vien] CHECK CONSTRAINT [FKdc2furs86mme2ubqn1pwraojj]
GO
ALTER TABLE [dbo].[hinh_anh_sach]  WITH CHECK ADD  CONSTRAINT [FKn54rt5w2kaule66b6289xq09w] FOREIGN KEY([ma_sach])
REFERENCES [dbo].[sach] ([ma_sach])
GO
ALTER TABLE [dbo].[hinh_anh_sach] CHECK CONSTRAINT [FKn54rt5w2kaule66b6289xq09w]
GO
ALTER TABLE [dbo].[hoi_vien]  WITH CHECK ADD  CONSTRAINT [FKj4mhuj34syn6ai9hh97b1tabr] FOREIGN KEY([account_id])
REFERENCES [dbo].[tai_khoan] ([user_name])
GO
ALTER TABLE [dbo].[hoi_vien] CHECK CONSTRAINT [FKj4mhuj34syn6ai9hh97b1tabr]
GO
ALTER TABLE [dbo].[muon_online]  WITH CHECK ADD  CONSTRAINT [FKailf4apdur9l127j85iwvl49b] FOREIGN KEY([mahv])
REFERENCES [dbo].[hoi_vien] ([mahv])
GO
ALTER TABLE [dbo].[muon_online] CHECK CONSTRAINT [FKailf4apdur9l127j85iwvl49b]
GO
ALTER TABLE [dbo].[nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK7xcfk5162aojymgcmeuypddb3] FOREIGN KEY([account_id])
REFERENCES [dbo].[tai_khoan] ([user_name])
GO
ALTER TABLE [dbo].[nhan_vien] CHECK CONSTRAINT [FK7xcfk5162aojymgcmeuypddb3]
GO
ALTER TABLE [dbo].[phieu_muon]  WITH CHECK ADD  CONSTRAINT [FKdsd1kls9xx1joghsn98sjujkj] FOREIGN KEY([mahv])
REFERENCES [dbo].[hoi_vien] ([mahv])
GO
ALTER TABLE [dbo].[phieu_muon] CHECK CONSTRAINT [FKdsd1kls9xx1joghsn98sjujkj]
GO
ALTER TABLE [dbo].[phieu_muon]  WITH CHECK ADD  CONSTRAINT [FKf81vv5lc1vbkbwpmkgwynq5do] FOREIGN KEY([manv])
REFERENCES [dbo].[nhan_vien] ([manv])
GO
ALTER TABLE [dbo].[phieu_muon] CHECK CONSTRAINT [FKf81vv5lc1vbkbwpmkgwynq5do]
GO
ALTER TABLE [dbo].[phieu_phat]  WITH CHECK ADD  CONSTRAINT [FKgef1t3dyhcy1t8jqucuot843w] FOREIGN KEY([manv])
REFERENCES [dbo].[nhan_vien] ([manv])
GO
ALTER TABLE [dbo].[phieu_phat] CHECK CONSTRAINT [FKgef1t3dyhcy1t8jqucuot843w]
GO
ALTER TABLE [dbo].[phieu_phat]  WITH CHECK ADD  CONSTRAINT [FKr0dtfd8k86ducrgbsy5dks2oh] FOREIGN KEY([mapt])
REFERENCES [dbo].[phieu_tra] ([mapt])
GO
ALTER TABLE [dbo].[phieu_phat] CHECK CONSTRAINT [FKr0dtfd8k86ducrgbsy5dks2oh]
GO
ALTER TABLE [dbo].[phieu_phat]  WITH CHECK ADD  CONSTRAINT [FKsbu8csx79nnhvct7tygprscq9] FOREIGN KEY([mahv])
REFERENCES [dbo].[hoi_vien] ([mahv])
GO
ALTER TABLE [dbo].[phieu_phat] CHECK CONSTRAINT [FKsbu8csx79nnhvct7tygprscq9]
GO
ALTER TABLE [dbo].[phieu_tra]  WITH CHECK ADD  CONSTRAINT [FK9lmwseb1ddd3b3fqccgvy7f85] FOREIGN KEY([mahv])
REFERENCES [dbo].[hoi_vien] ([mahv])
GO
ALTER TABLE [dbo].[phieu_tra] CHECK CONSTRAINT [FK9lmwseb1ddd3b3fqccgvy7f85]
GO
ALTER TABLE [dbo].[phieu_tra]  WITH CHECK ADD  CONSTRAINT [FKilr05s9vu6k47qp9qan67b6yv] FOREIGN KEY([mapm])
REFERENCES [dbo].[phieu_muon] ([mapm])
GO
ALTER TABLE [dbo].[phieu_tra] CHECK CONSTRAINT [FKilr05s9vu6k47qp9qan67b6yv]
GO
ALTER TABLE [dbo].[phieu_tra]  WITH CHECK ADD  CONSTRAINT [FKtjd1258o1ym2waxccb8rfv5ba] FOREIGN KEY([manv])
REFERENCES [dbo].[nhan_vien] ([manv])
GO
ALTER TABLE [dbo].[phieu_tra] CHECK CONSTRAINT [FKtjd1258o1ym2waxccb8rfv5ba]
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD  CONSTRAINT [FKishs1rthjbrkjs1t5cl1a3l5p] FOREIGN KEY([ma_tac_gia])
REFERENCES [dbo].[tac_gia] ([ma_tac_gia])
GO
ALTER TABLE [dbo].[sach] CHECK CONSTRAINT [FKishs1rthjbrkjs1t5cl1a3l5p]
GO
ALTER TABLE [dbo].[sach_the_loai]  WITH CHECK ADD  CONSTRAINT [FK4afcnhtirmn90cao02qeva21t] FOREIGN KEY([ma_sach])
REFERENCES [dbo].[sach] ([ma_sach])
GO
ALTER TABLE [dbo].[sach_the_loai] CHECK CONSTRAINT [FK4afcnhtirmn90cao02qeva21t]
GO
ALTER TABLE [dbo].[sach_the_loai]  WITH CHECK ADD  CONSTRAINT [FK7x0ku5f8jq22anikt567nxb74] FOREIGN KEY([ma_the_loai])
REFERENCES [dbo].[the_loai] ([ma_the_loai])
GO
ALTER TABLE [dbo].[sach_the_loai] CHECK CONSTRAINT [FK7x0ku5f8jq22anikt567nxb74]
GO
ALTER TABLE [dbo].[thanh_toan]  WITH CHECK ADD  CONSTRAINT [FKhn991xebjr6wrkc4ro7su1tg2] FOREIGN KEY([mahv])
REFERENCES [dbo].[hoi_vien] ([mahv])
GO
ALTER TABLE [dbo].[thanh_toan] CHECK CONSTRAINT [FKhn991xebjr6wrkc4ro7su1tg2]
GO
ALTER TABLE [dbo].[thanh_toan]  WITH CHECK ADD  CONSTRAINT [FKsc5m1oxyiuj1xov68cexhqjn5] FOREIGN KEY([manv])
REFERENCES [dbo].[nhan_vien] ([manv])
GO
ALTER TABLE [dbo].[thanh_toan] CHECK CONSTRAINT [FKsc5m1oxyiuj1xov68cexhqjn5]
GO
USE [master]
GO
ALTER DATABASE [QuanLiThuVien333] SET  READ_WRITE 
GO
