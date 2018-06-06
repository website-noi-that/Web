-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: noithat1
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `loaisp`
--

DROP TABLE IF EXISTS `loaisp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loaisp` (
  `MaLoaiSP` int(10) NOT NULL,
  `TenLoaiSP` varchar(100) NOT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaLoaiSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisp`
--

LOCK TABLES `loaisp` WRITE;
/*!40000 ALTER TABLE `loaisp` DISABLE KEYS */;
INSERT INTO `loaisp` VALUES (1,'Bàn gỗ','fsdgsdfg'),(2,'Ghế nhựa','');
/*!40000 ALTER TABLE `loaisp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanpham` (
  `MaSP` int(10) NOT NULL AUTO_INCREMENT,
  `TenSP` varchar(225) NOT NULL,
  `XuatXu` varchar(100) NOT NULL,
  `Soluong` int(11) NOT NULL,
  `DonViTinh` varchar(45) NOT NULL,
  `GiaNhap` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `GiaBan` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `TinhTrang` set('Còn Hàng','Hàng Mới','Hết Hàng') NOT NULL,
  `Hinh` varchar(200) DEFAULT NULL,
  `TieuDe` longtext NOT NULL,
  `ChiTiet` longtext NOT NULL,
  `LoaiSP` int(11) NOT NULL,
  `GhiChu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaSP`),
  KEY `LoaiSP_idx` (`LoaiSP`),
  CONSTRAINT `LoaiSP` FOREIGN KEY (`LoaiSP`) REFERENCES `loaisp` (`MaLoaiSP`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'Ghế nhựa Pica','Việt Nam',300,'cái',30000.0000,50000.0000,'Còn Hàng','','Ghế nhựa','a',2,''),(2,'Bàn gỗ Pica','Việt Nam',300,'cái',300000.0000,400000.0000,'Còn Hàng','','Bàn Gỗ','b',1,''),(3,'Ghế nhựa Pica','Việt Nam',300,'cái',30000.0000,50000.0000,'Còn Hàng','','Ghế Nhựa','a',2,'');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `MaUsers` int(10) NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(45) NOT NULL,
  `MaQuyen` set('admin','khachhang','nhanvien') NOT NULL,
  `TrangThai` set('chuakichhoat','dakichhoat','dakhoa') NOT NULL,
  PRIMARY KEY (`MaUsers`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'nhandh','4297f44b13955235245b2497399d7a93','admin','dakichhoat'),(2,'khiemvm','4297f44b13955235245b2497399d7a93','khachhang','dakichhoat');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-06 21:21:34
