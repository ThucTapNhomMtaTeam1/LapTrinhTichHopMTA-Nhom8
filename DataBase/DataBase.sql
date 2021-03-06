USE [BamMayTinhMVC]
GO
/****** Object:  Table [dbo].[CT_PhieuXuat]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PhieuXuat](
	[MaPhieuXuat] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[GiaKhuyenMai] [money] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[HienThi] [bit] NULL,
 CONSTRAINT [PK_CT_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [char](100) NULL,
	[SoDienThoai] [char](20) NULL,
	[HienThi] [bit] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](100) NULL,
	[DonViTinh] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[HienThi] [bit] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [char](20) NULL,
	[HienThi] [bit] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__NhaCungC__C6818DB259C9AADD] UNIQUE NONCLUSTERED 
(
	[TenNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[ChungMinhThu] [char](20) NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [char](20) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[TienLuong] [money] NULL,
	[HienThi] [bit] NULL,
	[HinhAnh] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaSanXuat] [nvarchar](100) NULL,
	[QuocGia] [nvarchar](100) NULL,
	[HienThi] [bit] NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaNhanVien] [int] NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[NgayGiaoHang] [datetime] NULL,
	[SoCong] [nchar](10) NULL,
	[SoTienNop] [decimal](18, 2) NULL,
	[NguoiTao] [varchar](50) NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC,
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MaPhieuXuat] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NOT NULL,
	[TinhTrangGiaoHang] [int] NULL,
	[NgayDatHang] [datetime] NULL,
	[HienThi] [bit] NULL,
 CONSTRAINT [PK_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[SoLuongTon] [int] NULL,
	[DonGia] [decimal](18, 2) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](100) NULL,
	[MaNhaCungCap] [int] NULL,
	[MaNhaSanXuat] [int] NULL,
	[MaLoaiSanPham] [int] NULL,
	[HienThi] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](100) NULL,
	[MaNguoiDung] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayCapNhap] [datetime] NULL,
	[HienThi] [bit] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThongSoKyThuat]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongSoKyThuat](
	[MaMay] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Ram] [nvarchar](100) NULL,
	[ManHinh] [nvarchar](100) NULL,
	[CPU] [nvarchar](100) NULL,
	[HeDieuHanh] [nvarchar](100) NULL,
	[OCung] [nvarchar](100) NULL,
	[KichThuoc] [nvarchar](100) NULL,
	[CongKetNoi] [nvarchar](100) NULL,
	[CacManHinh] [nvarchar](100) NULL,
	[HienThi] [bit] NULL,
 CONSTRAINT [PK_ThongSoKyThuat] PRIMARY KEY CLUSTERED 
(
	[MaMay] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CT_PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuXuat_PhieuXuat] FOREIGN KEY([MaPhieuXuat])
REFERENCES [dbo].[PhieuXuat] ([MaPhieuXuat])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_PhieuXuat] CHECK CONSTRAINT [FK_CT_PhieuXuat_PhieuXuat]
GO
ALTER TABLE [dbo].[CT_PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuXuat_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_PhieuXuat] CHECK CONSTRAINT [FK_CT_PhieuXuat_SanPham]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_NhanVien]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_PhieuXuat] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[PhieuXuat] ([MaPhieuXuat])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_PhieuXuat]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_TaiKhoan] FOREIGN KEY([NguoiTao])
REFERENCES [dbo].[TaiKhoan] ([TaiKhoan])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_TaiKhoan]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_KhachHang] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_KhachHang]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
ALTER TABLE [dbo].[ThongSoKyThuat]  WITH CHECK ADD  CONSTRAINT [FK_ThongSoKyThuat_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThongSoKyThuat] CHECK CONSTRAINT [FK_ThongSoKyThuat_SanPham]
GO
/****** Object:  StoredProcedure [dbo].[HienThiLoaiSanPham]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[HienThiLoaiSanPham] 
as
begin 
	select MaLoaiSanPham,TenLoaiSanPham,DonViTinh,GhiChu from LoaiSanPham
end 
GO
/****** Object:  StoredProcedure [dbo].[HienThiLoaiSanPhamTheoTen]    Script Date: 5/4/2018 8:57:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[HienThiLoaiSanPhamTheoTen] 
 @TenLoaiSanPham nvarchar(100)
as
begin 
	select MaLoaiSanPham,TenLoaiSanPham,DonViTinh,GhiChu 
	from LoaiSanPham
	where TenLoaiSanPham = @TenLoaiSanPham; 
end 
GO
