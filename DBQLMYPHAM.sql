create database DBQLMYPHAM
GO
use DBQLMYPHAM
GO
CREATE TABLE KHACHHANG
(
MaKH INT IDENTITY(1,1),
HoTen NVARCHAR(50) NOT NULL,
Taikhoan Varchar(50) UNIQUE,
Matkhau Varchar(50) NOT NULL,
Email Varchar(100) UNIQUE,
DiachiKH NVARCHAR(200),
DienthoaiKH Varchar(50),
Ngaysinh DATETIME
CONSTRAINT PK_Khachhang PRIMARY KEY(MaKH)
)

GO
CREATE TABLE LoaiSP
(
MaLoai INT IDENTITY(1,1),
TenLoai NVARCHAR(50) NOT NULL,
CONSTRAINT PK_Loai PRIMARY KEY(MaLoai)
)

INSERT INTO LoaiSP (TenLoai) 
VALUES 
(N'Trang Ði?m'), 
(N'Son Môi'), 
(N'Ný?c Hoa');

select * from LoaiSP;

GO
CREATE TABLE SanPham
(
MaSP INT IDENTITY(1,1),
TenSP NVARCHAR(100) NOT NULL,
Giaban Decimal(18,0) CHECK (Giaban>=0),
Mota NVARCHAR(Max),
Anhbia VARCHAR(50),
Ngaycapnhat DATETIME,
Soluongton INT,
MaLoai INT,
Constraint PK_SanPham Primary Key(MaSP),
Constraint FK_Loai Foreign Key(MaLoai) References LoaiSP(MaLoai),
)
INSERT INTO SanPham (TenSP, Giaban, Mota, Anhbia, Ngaycapnhat, Soluongton, MaLoai) 
VALUES 
(N'Son Kem L? Black Rouge A12', 150000, N'Son kem l? lâu trôi', 'sanpham1.jpg', '2023-09-15', 100, 1),
(N'Ph?n n?n Maybelline Fit Me', 200000, N'Ph?n n?n ki?m d?u', 'sanpham2.png', '2023-09-15', 150, 2),
(N'Ný?c hoa Versace', 300000, N'Ný?c hoa', 'sanpham3.png', '2023-09-15', 150, 3),
(N'Son Black Rouge A22', 220000, N'Son kem l? lâu trôi', 'sanpham4.jpg', '2023-09-15', 150, 3);

Select * from SanPham;
DELETE SanPham where MaSP = 5

GO
CREATE TABLE DONDATHANG
(
MaDonHang INT IDENTITY(1,1),
Dathanhtoan BIT,
Tinhtranggiaohang BIT,
Ngaydat DATETIME,
Ngaygiao DATETIME,
MaKH INT,
CONSTRAINT PK_DonDatHang PRIMARY KEY (MaDonHang),
CONSTRAINT FK_Khachhang FOREIGN KEY (MaKH) REFERENCES Khachhang(MaKH)
)

GO
CREATE TABLE CHITIETDONHANG
(
MaDonHang INT,
MaSP INT,
Soluong Int Check(Soluong>0),
Dongia Decimal(18,0) Check(Dongia>=0),
CONSTRAINT PK_CTDatHang PRIMARY KEY(MaDonHang,MaSP),
CONSTRAINT FK_Donhang FOREIGN KEY (MaDonHang) REFERENCES Dondathang(MaDonHang),
CONSTRAINT FK_SanPham FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
)
GO
CREATE TABLE Admin (
UserAdmin VARCHAR (30)  NOT NULL,
PassAdmin VARCHAR (30)  NOT NULL,
Hoten     NVARCHAR (50) NULL,
CONSTRAINT PK_Admin PRIMARY KEY(UserAdmin)
)

select * from KHACHHANG