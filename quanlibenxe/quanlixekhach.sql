-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 07, 2020 lúc 04:01 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlixekhach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luans`
--

CREATE TABLE `binh_luans` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calamviec`
--

CREATE TABLE `calamviec` (
  `CLV_Ngay` date NOT NULL,
  `CLV_Gio` time NOT NULL,
  `CLV_Thu` varchar(10) NOT NULL,
  `CLV_Buoi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calamviecnhanvien`
--

CREATE TABLE `calamviecnhanvien` (
  `CLV_Ngay` date NOT NULL,
  `NV_Ma` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_phieudatve`
--

CREATE TABLE `chitiet_phieudatve` (
  `TK_Username` varchar(40) NOT NULL,
  `Ve_STT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `CV_Ma` char(10) NOT NULL,
  `CV_Ten` varchar(30) NOT NULL,
  `Luong_Ma` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenxe`
--

CREATE TABLE `chuyenxe` (
  `CX_STT` int(11) NOT NULL,
  `Tuyen_Ma` char(10) NOT NULL,
  `Xe_BienSo` char(10) NOT NULL,
  `CX_GioDi` time NOT NULL,
  `CX_GioDen` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadiem`
--

CREATE TABLE `diadiem` (
  `DD_NoiDi` varchar(100) NOT NULL,
  `DD_NoiDen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe`
--

CREATE TABLE `ghe` (
  `Ghe_Ma` char(10) NOT NULL,
  `Tuyen_Ma` char(10) NOT NULL,
  `CX_STT` int(11) NOT NULL,
  `Ve_STT` int(11) NOT NULL,
  `Ghe_So` int(11) NOT NULL,
  `Ghe_TinhTrang` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `KH_Ma` char(10) NOT NULL,
  `LKH_Ma` char(10) NOT NULL,
  `KH_Ten` varchar(40) NOT NULL,
  `KH_SDT` char(10) NOT NULL,
  `KH_GioiTinh` varchar(5) NOT NULL,
  `KH_DiaChi` varchar(100) NOT NULL,
  `KH_Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `KM_Ma` char(10) NOT NULL,
  `LKH_Ma` char(10) NOT NULL,
  `KM_Ten` varchar(40) NOT NULL,
  `KM_HinhThuc` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai_chuyenxe`
--

CREATE TABLE `khuyenmai_chuyenxe` (
  `KM_Ma` char(10) NOT NULL,
  `Tuyen_Ma` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaixe`
--

CREATE TABLE `loaixe` (
  `LX_Ma` char(10) NOT NULL,
  `LX_Ten` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_kh`
--

CREATE TABLE `loai_kh` (
  `LKH_Ma` char(10) NOT NULL,
  `LKH_Ten` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luong`
--

CREATE TABLE `luong` (
  `Luong_Ma` char(10) NOT NULL,
  `Luong_HeSo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_27_003809_create_vai_tros_table', 1),
(4, '2019_11_27_003810_create_nguoi_dungs_table', 1),
(5, '2019_11_28_003719_create_binh_luans_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dungs`
--

CREATE TABLE `nguoi_dungs` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `phone` int(11) NOT NULL,
  `dia_chi` text COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `create` datetime NOT NULL,
  `vai_tro` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dungs`
--

INSERT INTO `nguoi_dungs` (`id`, `username`, `name`, `password`, `email`, `ngay_sinh`, `phone`, `dia_chi`, `trang_thai`, `create`, `vai_tro`) VALUES
(1, 'admin', 'Thành Đức', '$2y$10$Fx89DSv4bKkVC3xIQYjZ7u70Xj9ki5M38t/dVgVXOhU/OtaB1jCzO', 'ntkd@gmail.com', '1998-01-01', 762999994, 'Vĩnh Long', 1, '2020-05-04 20:21:48', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `NV_Ma` char(10) NOT NULL,
  `CV_Ma` char(10) NOT NULL,
  `NV_Ten` varchar(40) NOT NULL,
  `NV_NamSinh` char(5) NOT NULL,
  `NV_SDT` char(10) NOT NULL,
  `NV_GioiTinh` varchar(5) NOT NULL,
  `NV_DiaChi` varchar(100) NOT NULL,
  `NV_Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudatve`
--

CREATE TABLE `phieudatve` (
  `TK_Username` char(40) NOT NULL,
  `Ve_STT` int(11) NOT NULL,
  `TT_Ma` char(10) NOT NULL,
  `PDV_NgayDat` date NOT NULL,
  `KH_Ma` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `TK_Username` varchar(40) NOT NULL,
  `TK_Password` varchar(40) NOT NULL,
  `NV_Ma` char(10) NOT NULL,
  `KH_Ma` char(10) NOT NULL,
  `TK_Loai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taixe`
--

CREATE TABLE `taixe` (
  `Tuyen_Ma` char(10) NOT NULL,
  `CV_Ma` char(10) NOT NULL,
  `CX_STT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `TT_Ma` char(10) NOT NULL,
  `TT_HinhThuc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `Xe_BienSo` char(10) NOT NULL,
  `TT_Ma` char(10) NOT NULL,
  `TT_Ten` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuyen`
--

CREATE TABLE `tuyen` (
  `Tuyen_Ma` char(10) NOT NULL,
  `Tuyen_Ten` varchar(50) NOT NULL,
  `Tuyen_GioDuKien` time NOT NULL,
  `Tuyen_GiaVe` float NOT NULL,
  `Tuyen_CuocChay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuyendiadiem`
--

CREATE TABLE `tuyendiadiem` (
  `Tuyen_Ma` char(10) NOT NULL,
  `DD_NoiDi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_user` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vai_tros`
--

CREATE TABLE `vai_tros` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_vai_tro` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vai_tros`
--

INSERT INTO `vai_tros` (`id`, `ten_vai_tro`) VALUES
(1, 'Admin'),
(2, 'Thành viên'),
(3, 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `Ve_STT` int(11) NOT NULL,
  `Tuyen_Ma` char(10) NOT NULL,
  `CX_STT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xe`
--

CREATE TABLE `xe` (
  `Xe_BienSo` char(10) NOT NULL,
  `LX_Ma` char(10) NOT NULL,
  `Xe_SLGhe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calamviec`
--
ALTER TABLE `calamviec`
  ADD PRIMARY KEY (`CLV_Ngay`);

--
-- Chỉ mục cho bảng `calamviecnhanvien`
--
ALTER TABLE `calamviecnhanvien`
  ADD KEY `FK_CVL_Ngay` (`CLV_Ngay`),
  ADD KEY `FK_NV_Ma` (`NV_Ma`);

--
-- Chỉ mục cho bảng `chitiet_phieudatve`
--
ALTER TABLE `chitiet_phieudatve`
  ADD PRIMARY KEY (`TK_Username`,`Ve_STT`),
  ADD KEY `TK_Username` (`TK_Username`),
  ADD KEY `Ve_STT` (`Ve_STT`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`CV_Ma`),
  ADD KEY `FK_Luong_ChucVu` (`Luong_Ma`);

--
-- Chỉ mục cho bảng `chuyenxe`
--
ALTER TABLE `chuyenxe`
  ADD PRIMARY KEY (`Tuyen_Ma`,`CX_STT`),
  ADD KEY `FK_ChuyenXe_Xe` (`Xe_BienSo`),
  ADD KEY `CX_STT` (`CX_STT`),
  ADD KEY `Tuyen_Ma` (`Tuyen_Ma`);

--
-- Chỉ mục cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`DD_NoiDi`);

--
-- Chỉ mục cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`Ghe_Ma`),
  ADD KEY `FK_Ghe_CX_STT` (`CX_STT`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`KH_Ma`),
  ADD KEY `FK_LKH_KH` (`LKH_Ma`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`KM_Ma`),
  ADD KEY `FK_KM_LoaiKhachHang` (`LKH_Ma`);

--
-- Chỉ mục cho bảng `khuyenmai_chuyenxe`
--
ALTER TABLE `khuyenmai_chuyenxe`
  ADD PRIMARY KEY (`Tuyen_Ma`,`KM_Ma`),
  ADD KEY `KH_Ma` (`KM_Ma`),
  ADD KEY `Tuyen_Ma` (`Tuyen_Ma`);

--
-- Chỉ mục cho bảng `loaixe`
--
ALTER TABLE `loaixe`
  ADD PRIMARY KEY (`LX_Ma`);

--
-- Chỉ mục cho bảng `loai_kh`
--
ALTER TABLE `loai_kh`
  ADD PRIMARY KEY (`LKH_Ma`);

--
-- Chỉ mục cho bảng `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`Luong_Ma`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoi_dungs`
--
ALTER TABLE `nguoi_dungs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoi_dungs_vai_tro_foreign` (`vai_tro`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`NV_Ma`),
  ADD KEY `FK_ChucVu_NhanVien` (`CV_Ma`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `phieudatve`
--
ALTER TABLE `phieudatve`
  ADD PRIMARY KEY (`TK_Username`,`Ve_STT`,`TT_Ma`,`KH_Ma`),
  ADD KEY `TK_Username` (`TK_Username`),
  ADD KEY `Ve_STT` (`Ve_STT`),
  ADD KEY `TT_Ma` (`TT_Ma`),
  ADD KEY `KH_Ma` (`KH_Ma`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TK_Username`),
  ADD KEY `FK_TaiKhoan_NhanVien` (`NV_Ma`),
  ADD KEY `Fk_TaiKhoan_KhachHang` (`KH_Ma`);

--
-- Chỉ mục cho bảng `taixe`
--
ALTER TABLE `taixe`
  ADD KEY `FK_ChucVu_TaiXe` (`CV_Ma`),
  ADD KEY `FK_ChuyenXe_TaiXe` (`Tuyen_Ma`),
  ADD KEY `FK_ChuyenXe1_TaiXe` (`CX_STT`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`TT_Ma`);

--
-- Chỉ mục cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`TT_Ma`),
  ADD KEY `FK_Xe_TinhTrang` (`Xe_BienSo`);

--
-- Chỉ mục cho bảng `tuyen`
--
ALTER TABLE `tuyen`
  ADD PRIMARY KEY (`Tuyen_Ma`);

--
-- Chỉ mục cho bảng `tuyendiadiem`
--
ALTER TABLE `tuyendiadiem`
  ADD PRIMARY KEY (`Tuyen_Ma`,`DD_NoiDi`),
  ADD KEY `Tuyen_Ma` (`Tuyen_Ma`),
  ADD KEY `DD_NoiDi` (`DD_NoiDi`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vai_tros`
--
ALTER TABLE `vai_tros`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`Ve_STT`),
  ADD KEY `FK_Ve_ChuyenXe` (`Tuyen_Ma`),
  ADD KEY `FK_ChuyenXe_Ve` (`CX_STT`);

--
-- Chỉ mục cho bảng `xe`
--
ALTER TABLE `xe`
  ADD PRIMARY KEY (`Xe_BienSo`),
  ADD KEY `FK_Loaixe_Xe` (`LX_Ma`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nguoi_dungs`
--
ALTER TABLE `nguoi_dungs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vai_tros`
--
ALTER TABLE `vai_tros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `calamviecnhanvien`
--
ALTER TABLE `calamviecnhanvien`
  ADD CONSTRAINT `FK_CVL_Ngay` FOREIGN KEY (`CLV_Ngay`) REFERENCES `calamviec` (`CLV_Ngay`),
  ADD CONSTRAINT `FK_NV_Ma` FOREIGN KEY (`NV_Ma`) REFERENCES `nhanvien` (`NV_Ma`);

--
-- Các ràng buộc cho bảng `chitiet_phieudatve`
--
ALTER TABLE `chitiet_phieudatve`
  ADD CONSTRAINT `FK_CTPDV_VE_STT` FOREIGN KEY (`Ve_STT`) REFERENCES `ve` (`Ve_STT`),
  ADD CONSTRAINT `FK_CTPDV_VE_TuyenMa` FOREIGN KEY (`TK_Username`) REFERENCES `taikhoan` (`TK_Username`);

--
-- Các ràng buộc cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD CONSTRAINT `FK_Luong_ChucVu` FOREIGN KEY (`Luong_Ma`) REFERENCES `luong` (`Luong_Ma`);

--
-- Các ràng buộc cho bảng `chuyenxe`
--
ALTER TABLE `chuyenxe`
  ADD CONSTRAINT `FK_ChuyenXe_Tuyen` FOREIGN KEY (`Tuyen_Ma`) REFERENCES `tuyen` (`Tuyen_Ma`),
  ADD CONSTRAINT `FK_ChuyenXe_Xe` FOREIGN KEY (`Xe_BienSo`) REFERENCES `xe` (`Xe_BienSo`);

--
-- Các ràng buộc cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD CONSTRAINT `FK_Ghe_CX_STT` FOREIGN KEY (`CX_STT`) REFERENCES `chuyenxe` (`CX_STT`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `FK_LKH_KH` FOREIGN KEY (`LKH_Ma`) REFERENCES `loai_kh` (`LKH_Ma`);

--
-- Các ràng buộc cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD CONSTRAINT `FK_KM_LoaiKhachHang` FOREIGN KEY (`LKH_Ma`) REFERENCES `loai_kh` (`LKH_Ma`);

--
-- Các ràng buộc cho bảng `khuyenmai_chuyenxe`
--
ALTER TABLE `khuyenmai_chuyenxe`
  ADD CONSTRAINT `FK_KM_CX_Tuyen_Ma` FOREIGN KEY (`Tuyen_Ma`) REFERENCES `chuyenxe` (`Tuyen_Ma`),
  ADD CONSTRAINT `FK_KM_KhuyenMai` FOREIGN KEY (`KM_Ma`) REFERENCES `khuyenmai` (`KM_Ma`);

--
-- Các ràng buộc cho bảng `nguoi_dungs`
--
ALTER TABLE `nguoi_dungs`
  ADD CONSTRAINT `nguoi_dungs_vai_tro_foreign` FOREIGN KEY (`vai_tro`) REFERENCES `vai_tros` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `FK_ChucVu_NhanVien` FOREIGN KEY (`CV_Ma`) REFERENCES `chucvu` (`CV_Ma`);

--
-- Các ràng buộc cho bảng `phieudatve`
--
ALTER TABLE `phieudatve`
  ADD CONSTRAINT `FK_PDV_KH_Ma` FOREIGN KEY (`KH_Ma`) REFERENCES `khachhang` (`KH_Ma`),
  ADD CONSTRAINT `FK_PDV_TT_Ma` FOREIGN KEY (`TT_Ma`) REFERENCES `thanhtoan` (`TT_Ma`),
  ADD CONSTRAINT `FK_PDV_Tuyen_Ma` FOREIGN KEY (`TK_Username`) REFERENCES `chitiet_phieudatve` (`TK_Username`),
  ADD CONSTRAINT `FK_PDV_VE_STT` FOREIGN KEY (`Ve_STT`) REFERENCES `chitiet_phieudatve` (`Ve_STT`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_TaiKhoan_NhanVien` FOREIGN KEY (`NV_Ma`) REFERENCES `nhanvien` (`NV_Ma`),
  ADD CONSTRAINT `Fk_TaiKhoan_KhachHang` FOREIGN KEY (`KH_Ma`) REFERENCES `khachhang` (`KH_Ma`);

--
-- Các ràng buộc cho bảng `taixe`
--
ALTER TABLE `taixe`
  ADD CONSTRAINT `FK_ChucVu_TaiXe` FOREIGN KEY (`CV_Ma`) REFERENCES `chucvu` (`CV_Ma`),
  ADD CONSTRAINT `FK_ChuyenXe1_TaiXe` FOREIGN KEY (`CX_STT`) REFERENCES `chuyenxe` (`CX_STT`),
  ADD CONSTRAINT `FK_ChuyenXe_TaiXe` FOREIGN KEY (`Tuyen_Ma`) REFERENCES `chuyenxe` (`Tuyen_Ma`);

--
-- Các ràng buộc cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD CONSTRAINT `FK_Xe_TinhTrang` FOREIGN KEY (`Xe_BienSo`) REFERENCES `xe` (`Xe_BienSo`);

--
-- Các ràng buộc cho bảng `tuyendiadiem`
--
ALTER TABLE `tuyendiadiem`
  ADD CONSTRAINT `FK_TDD_Tuyen` FOREIGN KEY (`Tuyen_Ma`) REFERENCES `tuyen` (`Tuyen_Ma`),
  ADD CONSTRAINT `Fk_TDD_DiaDiem` FOREIGN KEY (`DD_NoiDi`) REFERENCES `diadiem` (`DD_NoiDi`);

--
-- Các ràng buộc cho bảng `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `FK_ChuyenXe_Ve` FOREIGN KEY (`CX_STT`) REFERENCES `chuyenxe` (`CX_STT`),
  ADD CONSTRAINT `FK_Ve_ChuyenXe` FOREIGN KEY (`Tuyen_Ma`) REFERENCES `tuyen` (`Tuyen_Ma`);

--
-- Các ràng buộc cho bảng `xe`
--
ALTER TABLE `xe`
  ADD CONSTRAINT `FK_Loaixe_Xe` FOREIGN KEY (`LX_Ma`) REFERENCES `loaixe` (`LX_Ma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
