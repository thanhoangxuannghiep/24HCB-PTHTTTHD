USE [DrinkMilk]
GO
/****** Object:  Table [dbo].[BO]    Script Date: 20/03/2017 10:29:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BO](
	[MaSoChip] [int] NOT NULL,
	[NgayNhap] [date] NULL,
	[CanNang] [int] NULL,
	[MauSac] [nvarchar](20) NULL,
	[DacDiemNhanDien] [nvarchar](200) NULL,
	[DiTat] [bit] NULL,
 CONSTRAINT [PK_BO] PRIMARY KEY CLUSTERED 
(
	[MaSoChip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COSO]    Script Date: 20/03/2017 10:29:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COSO](
	[MaCS] [int] NOT NULL,
	[DiaChiCS] [nvarchar](100) NULL,
	[MaTruSo] [int] NULL,
	[NguoiQuanLy] [int] NULL,
 CONSTRAINT [PK_COSO] PRIMARY KEY CLUSTERED 
(
	[MaCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietQuyTrinh]    Script Date: 20/03/2017 10:29:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietQuyTrinh](
	[MaQuyTrinh] [int] NOT NULL,
	[MaSoChip] [int] NOT NULL,
	[SoLuongSua] [int] NULL,
	[TinhTrangBauVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChiTietQuyTrinh] PRIMARY KEY CLUSTERED 
(
	[MaQuyTrinh] ASC,
	[MaSoChip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietSucKhoeBo]    Script Date: 20/03/2017 10:29:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSucKhoeBo](
	[MaSoChip] [int] NULL,
	[NgayGhiNhan] [date] NULL,
	[GioGhiNhan] [time](7) NULL,
	[CanNang] [int] NULL,
	[NhietDo] [int] NULL,
	[Protit] [int] NULL,
	[Gluxit] [int] NULL,
	[Lipit] [int] NULL,
	[TTSucKhoe] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUONG]    Script Date: 20/03/2017 10:29:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUONG](
	[MaSoChuong] [int] NOT NULL,
	[MaCoSo] [int] NULL,
	[DiaChiChuong] [nvarchar](100) NULL,
 CONSTRAINT [PK_CHUONG] PRIMARY KEY CLUSTERED 
(
	[MaSoChuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 20/03/2017 10:29:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [int] NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[CMND] [char](12) NULL,
	[SoDienThoai] [char](12) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QUYTRINHVATSUA]    Script Date: 20/03/2017 10:29:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYTRINHVATSUA](
	[MaQuyTrinh] [int] NOT NULL,
	[MaSoChuong] [int] NULL,
	[MaNhanVien] [int] NULL,
	[NgayThucHien] [date] NULL,
	[GioBatDau] [time](7) NULL,
	[GioKetThuc] [time](7) NULL,
 CONSTRAINT [PK_QUYTRINHVATSUA] PRIMARY KEY CLUSTERED 
(
	[MaQuyTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TRUSO]    Script Date: 20/03/2017 10:29:09 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRUSO](
	[MaTruSo] [int] NOT NULL,
	[DiaChiTruSo] [nchar](10) NULL,
 CONSTRAINT [PK_TRUSO] PRIMARY KEY CLUSTERED 
(
	[MaTruSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[COSO]  WITH CHECK ADD  CONSTRAINT [FK_COSO_NHANVIEN] FOREIGN KEY([NguoiQuanLy])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[COSO] CHECK CONSTRAINT [FK_COSO_NHANVIEN]
GO
ALTER TABLE [dbo].[COSO]  WITH CHECK ADD  CONSTRAINT [FK_COSO_TRUSO] FOREIGN KEY([MaTruSo])
REFERENCES [dbo].[TRUSO] ([MaTruSo])
GO
ALTER TABLE [dbo].[COSO] CHECK CONSTRAINT [FK_COSO_TRUSO]
GO
ALTER TABLE [dbo].[ChiTietQuyTrinh]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietQuyTrinh_BO] FOREIGN KEY([MaSoChip])
REFERENCES [dbo].[BO] ([MaSoChip])
GO
ALTER TABLE [dbo].[ChiTietQuyTrinh] CHECK CONSTRAINT [FK_ChiTietQuyTrinh_BO]
GO
ALTER TABLE [dbo].[ChiTietQuyTrinh]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietQuyTrinh_QUYTRINHVATSUA] FOREIGN KEY([MaQuyTrinh])
REFERENCES [dbo].[QUYTRINHVATSUA] ([MaQuyTrinh])
GO
ALTER TABLE [dbo].[ChiTietQuyTrinh] CHECK CONSTRAINT [FK_ChiTietQuyTrinh_QUYTRINHVATSUA]
GO
ALTER TABLE [dbo].[ChiTietSucKhoeBo]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSucKhoeBo_BO] FOREIGN KEY([MaSoChip])
REFERENCES [dbo].[BO] ([MaSoChip])
GO
ALTER TABLE [dbo].[ChiTietSucKhoeBo] CHECK CONSTRAINT [FK_ChiTietSucKhoeBo_BO]
GO
ALTER TABLE [dbo].[CHUONG]  WITH CHECK ADD  CONSTRAINT [FK_CHUONG_COSO] FOREIGN KEY([MaCoSo])
REFERENCES [dbo].[COSO] ([MaCS])
GO
ALTER TABLE [dbo].[CHUONG] CHECK CONSTRAINT [FK_CHUONG_COSO]
GO
ALTER TABLE [dbo].[QUYTRINHVATSUA]  WITH CHECK ADD  CONSTRAINT [FK_QUYTRINHVATSUA_CHUONG] FOREIGN KEY([MaSoChuong])
REFERENCES [dbo].[CHUONG] ([MaSoChuong])
GO
ALTER TABLE [dbo].[QUYTRINHVATSUA] CHECK CONSTRAINT [FK_QUYTRINHVATSUA_CHUONG]
GO
ALTER TABLE [dbo].[QUYTRINHVATSUA]  WITH CHECK ADD  CONSTRAINT [FK_QUYTRINHVATSUA_NHANVIEN] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[QUYTRINHVATSUA] CHECK CONSTRAINT [FK_QUYTRINHVATSUA_NHANVIEN]
GO
