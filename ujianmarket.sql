-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: marketplace
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category_penjual`
--

DROP TABLE IF EXISTS `category_penjual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_penjual` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `deleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_penjual`
--

LOCK TABLES `category_penjual` WRITE;
/*!40000 ALTER TABLE `category_penjual` DISABLE KEYS */;
INSERT INTO `category_penjual` VALUES (1,'pertanian',0),(2,'peternakan',0),(3,'perikanan',0),(4,'tambak13',1);
/*!40000 ALTER TABLE `category_penjual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_products`
--

DROP TABLE IF EXISTS `category_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `namacategory` varchar(45) NOT NULL,
  `parentid` int DEFAULT NULL,
  `catpenjualid` int NOT NULL,
  `deleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_products`
--

LOCK TABLES `category_products` WRITE;
/*!40000 ALTER TABLE `category_products` DISABLE KEYS */;
INSERT INTO `category_products` VALUES (1,'Karbo/biji',NULL,1,0),(2,'Seafood',NULL,3,0),(3,'Tambak',NULL,3,0),(4,'Daging',NULL,2,0),(5,'Unggas',NULL,2,0),(6,'Sayur-mayur',NULL,1,0),(7,'Buah',NULL,1,0),(8,'Air Tawar',NULL,3,0),(9,'Umbi-umbian',NULL,1,0),(10,'lele1',NULL,4,1);
/*!40000 ALTER TABLE `category_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home` (
  `id` int NOT NULL AUTO_INCREMENT,
  `homeimage` varchar(500) DEFAULT NULL,
  `maintext` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (1,'/admin/home/images/HOME1568718131114.jpg','Roli adalah Platform untuk Membantu Petani, Peternak, Nelayan, dan profesi terkait untuk Memasarkan dan Menjual Produknya dalam Partai Besar');
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iklan`
--

DROP TABLE IF EXISTS `iklan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iklan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iklanimage` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iklan`
--

LOCK TABLES `iklan` WRITE;
/*!40000 ALTER TABLE `iklan` DISABLE KEYS */;
INSERT INTO `iklan` VALUES (1,'/Iklan/images/IKL1568723754598.jpg'),(2,'/admin/Iklan/images/IKL1568864812700.jpg'),(3,'/admin/Iklan/images/IKL1568863627882.jpg'),(4,'/Iklan/images/IKL1568723786518.jpg'),(5,'/Iklan/images/IKL1568723795450.jpg'),(6,'/admin/Iklan/images/IKL1568863614509.jpg'),(9,'/admin/Iklan/images/IKL1568793657646.jpg');
/*!40000 ALTER TABLE `iklan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jumbotron`
--

DROP TABLE IF EXISTS `jumbotron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jumbotron` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jumbotronimage` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jumbotron`
--

LOCK TABLES `jumbotron` WRITE;
/*!40000 ALTER TABLE `jumbotron` DISABLE KEYS */;
INSERT INTO `jumbotron` VALUES (1,'/admin/jumbotron/images/JUMBO1568725529953.png'),(2,'/admin/jumbotron/images/JUMBO1568863183371.jpg');
/*!40000 ALTER TABLE `jumbotron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notif`
--

DROP TABLE IF EXISTS `notif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notif` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(200) DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `paymentid` int DEFAULT NULL,
  `transaksiid` int DEFAULT NULL,
  `opened` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notif`
--

LOCK TABLES `notif` WRITE;
/*!40000 ALTER TABLE `notif` DISABLE KEYS */;
INSERT INTO `notif` VALUES (1,'Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,1,NULL,1),(2,'Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,15,NULL,1),(3,'Pesanan dengan nomer transaksi = 15 sudah diproses di penjual',5,1,15,1),(4,'Pesanan dengan nomer transaksi = 14 sudah diproses di penjual',5,1,14,1),(5,'Pembayaran dengan nomer 13 dibatalkan karena uang yang dikirimkan kurang/foto tidak jelas mohon untuk berbelanja lagi',5,13,NULL,1),(6,'Pesanan dengan nomer transaksi = 1 sudah diproses di penjual',5,1,1,1),(7,'Pesanan dengan nomer transaksi = 11 sudah diproses di penjual',5,1,11,1),(8,'Pesanan dengan nomer transaksi = 9 tidak diproses oleh penjual dan uang akan dikembalikan ke rekening pengiriman',5,1,9,1),(9,'Pesanan dengan nomer transaksi = 15 sudah dalam pengiriman dari penjual',5,1,15,1),(10,'Pembayaran dengan nomer 2 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,2,NULL,1),(11,'Pesanan dengan nomer transaksi = 20 sudah diproses di penjual',5,2,20,1),(12,'Pesanan dengan nomer transaksi = 1 sudah dalam pengiriman dari penjual',5,1,1,1),(13,'Pembayaran dengan nomer 17 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,17,NULL,1),(14,'Pesanan dengan nomer transaksi = 27 sudah diproses di penjual',5,17,27,1),(15,'Pesanan dengan nomer transaksi = 27 sudah dalam pengiriman dari penjual',5,17,27,1),(16,'Pembayaran dengan nomer 16 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,16,NULL,1),(17,'Pembayaran dengan nomer 19 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,19,NULL,1),(18,'Pesanan dengan nomer transaksi = 16 sudah diproses di penjual',5,2,16,1),(19,'Pesanan dengan nomer transaksi = 20 sudah dalam pengiriman dari penjual',5,2,20,1),(20,'Pesanan dengan nomer transaksi = 16 sudah dalam pengiriman dari penjual',5,2,16,1),(21,'Pesanan dengan nomer transaksi = 11 sudah dalam pengiriman dari penjual',5,1,11,1),(22,'Pembayaran dengan nomer 21 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',4,21,NULL,1),(23,'Pesanan dengan nomer transaksi = 38 sudah diproses di penjual',4,21,38,1),(24,'Pesanan dengan nomer transaksi = 39 sudah diproses di penjual',4,21,39,1),(25,'Pesanan dengan nomer transaksi = 38 sudah dalam pengiriman dari penjual',4,21,38,1),(26,'Pesanan dengan nomer transaksi = 39 sudah dalam pengiriman dari penjual',4,21,39,1),(27,'Pembayaran dengan id 12 dibatalkan karena sudah melebihi batas waktu',5,12,NULL,1),(28,'Pembayaran dengan id 18 dibatalkan karena sudah melebihi batas waktu',5,18,NULL,1),(29,'Pembayaran dengan nomer 23 dibatalkan karena uang yang dikirimkan kurang/foto tidak jelas mohon untuk berbelanja lagi',9,23,NULL,1),(30,'Pembayaran dengan nomer 24 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',9,24,NULL,1),(31,'Pesanan dengan nomer transaksi = 26 sudah diproses di penjual',5,16,26,1),(32,'Pesanan dengan nomer transaksi = 42 sudah diproses di penjual',9,24,42,1),(33,'Pesanan dengan nomer transaksi = 14 sudah dalam pengiriman dari penjual',5,1,14,1),(34,'Pesanan dengan nomer transaksi = 26 sudah dalam pengiriman dari penjual',5,16,26,1),(35,'Pesanan dengan nomer transaksi = 42 sudah dalam pengiriman dari penjual',9,24,42,1),(36,'Pembayaran dengan nomer 20 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,20,NULL,1),(37,'Pembayaran dengan nomer 25 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',9,25,NULL,0),(38,'Pembayaran dengan nomer 26 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',14,26,NULL,1),(39,'Pesanan dengan nomer transaksi = 44 sudah diproses di penjual',14,26,44,1),(40,'Pesanan dengan nomer transaksi = 44 sudah dalam pengiriman dari penjual',14,26,44,1),(41,'Pembayaran dengan nomer 27 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',15,27,NULL,1),(42,'Pesanan dengan nomer transaksi = 45 sudah diproses di penjual',15,27,45,1),(43,'Pesanan dengan nomer transaksi = 45 sudah dalam pengiriman dari penjual',15,27,45,1),(44,'Pembayaran dengan nomer 28 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',16,28,NULL,1),(45,'Pesanan dengan nomer transaksi = 46 sudah diproses di penjual',16,28,46,1),(46,'Pesanan dengan nomer transaksi = 47 tidak diproses oleh penjual dan uang akan dikembalikan ke rekening pengiriman',16,28,47,1),(47,'Pesanan dengan nomer transaksi = 46 sudah dalam pengiriman dari penjual',16,28,46,1),(48,'Pembayaran dengan id 22 dibatalkan karena sudah melebihi batas waktu',5,22,NULL,1),(49,'Pembayaran dengan nomer 29 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',17,29,NULL,1),(50,'Pesanan dengan nomer transaksi = 48 sudah diproses di penjual',17,29,48,1),(51,'Pesanan dengan nomer transaksi = 48 sudah dalam pengiriman dari penjual',17,29,48,0),(52,'Pembayaran dengan nomer 30 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',17,30,NULL,0),(53,'Pesanan dengan nomer transaksi = 49 sudah diproses di penjual',17,29,49,0),(54,'Pembayaran dengan nomer 31 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,31,NULL,1),(55,'Pesanan dengan nomer transaksi = 50 sudah diproses di penjual',17,30,50,0),(56,'Pesanan dengan nomer paymentid = 31 sudah diproses di penjual',5,31,53,1),(57,'Pembayaran dengan nomer 32 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,32,NULL,1),(58,'Pesanan dengan nomer paymentid = 30 sudah diproses di penjual',17,30,51,0),(59,'Pesanan dengan nomer paymentid = 32 sudah diproses di penjual',5,32,54,1),(60,'Pembayaran dengan nomer 33 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,33,NULL,1),(61,'Pembayaran dengan nomer 34 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,34,NULL,1),(62,'Pesanan dengan nomer paymentid = 33 sudah diproses di penjual',5,33,56,1),(63,'Pembayaran dengan nomer 35 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,35,NULL,1),(64,'Pesanan dengan nomer paymentid = 35 tidak diproses oleh penjual dan uang akan dikembalikan ke rekening pengiriman',5,35,60,1),(65,'Pembayaran dengan nomer 36 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,36,NULL,1),(66,'Pesanan dengan nomer paymentid = 34 sudah diproses di penjual',5,34,58,1),(67,'Pesanan dengan nomer paymentid = 36 tidak diproses oleh penjual dan uang akan dikembalikan ke rekening pengiriman',5,36,62,1),(68,'Pembayaran dengan nomer 37 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,37,NULL,1),(69,'Pembayaran dengan nomer 38 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,38,NULL,1),(70,'Pesanan dengan nomer paymentid = 37 sudah diproses di penjual',5,37,64,1),(71,'Pembayaran dengan nomer 39 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',1,39,NULL,1),(72,'Pembayaran dengan nomer 39 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',1,39,NULL,1),(73,'Pesanan dengan nomer paymentid = 39 sudah diproses di penjual',1,39,70,1),(74,'Pembayaran dengan nomer 40 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',1,40,NULL,1),(75,'Pembayaran dengan nomer 41 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',1,41,NULL,1),(76,'Pembayaran dengan nomer 42 dibatalkan karena uang yang dikirimkan kurang/foto tidak jelas mohon untuk berbelanja lagi',1,42,NULL,1),(77,'Pembayaran dengan nomer 43 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',1,43,NULL,1),(78,'Pesanan dengan nomer paymentid = 40 sudah diproses di penjual',1,40,71,1),(79,'Pembayaran dengan nomer 44 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',1,44,NULL,1),(80,'Pesanan dengan nomer paymentid = 38 sudah diproses di penjual',5,38,66,1),(81,'Pesanan dengan nomer trasaksi = 64 sudah dalam pengiriman dari penjual',5,37,64,1),(82,'Pembayaran dengan nomer 45 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',18,45,NULL,1);
/*!40000 ALTER TABLE `notif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penjual`
--

DROP TABLE IF EXISTS `penjual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penjual` (
  `id` int NOT NULL AUTO_INCREMENT,
  `namatoko` varchar(45) NOT NULL,
  `alamattoko` varchar(500) NOT NULL,
  `kategoritoko` varchar(45) NOT NULL,
  `userid` int DEFAULT NULL,
  `imageprofile` varchar(500) DEFAULT NULL,
  `imagebackground` varchar(500) DEFAULT NULL,
  `abouttoko` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penjual`
--

LOCK TABLES `penjual` WRITE;
/*!40000 ALTER TABLE `penjual` DISABLE KEYS */;
INSERT INTO `penjual` VALUES (1,'narto','jl. bogor kecamatan depok','1',4,'/penjual/narto1/images/PENPROF1568687929236.jpg','/penjual/narto1/images/BGPROF1568687935294.jpg','Toko organik Bersertifikat'),(19,'asaadasdasd','asads','1',1,NULL,NULL,NULL),(20,'hati hari','jl. pesanggrahan meruya','2',6,'/penjual/hati hari20/images/PENPROF1568687443124.jpg','/penjual/hati hari20/images/BGPROF1568687444151.jpg','Toko daging sertifikasi halal '),(25,'toko awe','jl. kirigakure','3',3,'/penjual/toko awe25/images/PENPROF1568699772866.jpg','/penjual/toko awe25/images/BGPROF1568699781304.jpg','Toko Mantap'),(26,'dsad','jl. perapatan desa penari kecamatan sunagakure','1',5,'/penjual/dsad26/images/PENPROF1568686356871.jpg','/penjual/dsad26/images/BGPROF1568686390188.jpg','Toko Kece Di desa sunagakure'),(27,'toko uhuy','jl. kirigakure','3',9,'/penjual/toko uhuy27/images/PENPROF1568695486914.jpg','/penjual/toko uhuy27/images/BGPROF1568695504821.jpg','Seafood Segar nomer 1'),(28,'wakwak','jl.wakwak','2',7,NULL,NULL,NULL),(29,'sasukeninja','jl. konohagakure','1',10,NULL,NULL,NULL),(30,'Toko Daging Uci','jl. srengseng','2',14,NULL,NULL,NULL),(31,'bobishope1','jl. sunagakure sebelahan imagakure','3',18,'/penjual/bobishope131/images/PENPROF1576041892752.jpg','/penjual/bobishope131/images/BGPROF1576041942895.jpg','menjual barang bm asli coy');
/*!40000 ALTER TABLE `penjual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `harga` int NOT NULL,
  `stok` int NOT NULL,
  `satuanorder` varchar(45) NOT NULL,
  `informasiproduct` varchar(300) DEFAULT NULL,
  `penjualid` int NOT NULL,
  `waktuupload` datetime DEFAULT NULL,
  `categoryprodid` int NOT NULL,
  `deleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Beras Organik','/product/images/PROD1568687856881.jpg',200000,20,'10 kg','Beras organik sehat 100%',1,'2019-09-17 09:41:14',1,0),(2,'Wortel Organik','/product/images/PROD1568687913574.jpg',50000,20,'5kg','Wortel yang di tanam menggunakan teknik organik dan sudah bersertifikasi',1,'2019-09-17 12:20:22',9,0),(4,'Ayam Kampung','/product/images/PROD1568687103274.jpeg',400000,100,'10 pcs','Ayam Kampung Alami',20,'2019-09-17 09:25:03',5,0),(6,'Bayam unyu','/product/images/PROD1568685686465.jpg',20000,15,'10 kg','Makan Bayam ini akan kuat sepeti popaye',26,'2019-09-17 09:01:26',6,0),(13,'Daging Sapi','/product/images/PROD1568687219935.jpg',600000,100,'5kg','Daging kualitas A5',20,'2019-09-17 09:27:00',4,0),(14,'Buntut sapi ','/product/images/PROD1568687326566.jpg',500000,20,'5 kg','Buntut sapi organik',20,'2019-09-17 09:28:47',4,0),(15,'adsad','/product/images/PROD1568685333101.jpg',121,1223,'123 kg','dasdasd',26,'2019-09-17 08:55:33',1,1),(16,'Kangkung organik','/product/images/PROD1568685772096.jpg',50000,100,'10 kg','Kangkung sehat sekali',26,'2019-09-17 09:02:52',6,0),(17,'Tuna fillet','/product/images/PROD1568695673957.jpg',300000,20,'10 kg','Tuna Segar',27,'2019-09-17 11:47:53',2,0),(18,'dori fillet','/product/images/PROD1568695860918.jpg',250000,20,'5 kg','Dori fillet frozen',27,'2019-09-17 11:51:00',2,0),(19,'Lele','/product/images/PROD1568695934871.jpg',200000,15,'5 kg','lele Jumbo mantap',27,'2019-09-17 11:52:14',3,0),(20,'Ikan kakap','/product/images/PROD1568696019134.jpg',500000,10,'5 kg','kakap mantap',27,'2019-09-17 11:53:39',8,0),(21,'Cumi laut','/product/images/PROD1568696123411.jpg',500000,20,'7 kg','Cumi ggwp',27,'2019-09-17 11:55:23',2,0),(22,'Kepiting Laut','/product/images/PROD1568696184084.jpg',500000,10,'5 kg','Kepiting Laut Segar',27,'2019-09-17 11:56:24',2,0),(23,'Kalkun','/product/images/PROD1568696695272.jpg',500000,10,'2pcs','Kalkun lokal kualitas impor',20,'2019-09-17 12:04:55',5,0),(24,'Tomahawk','/product/images/PROD1568696756575.jpg',600000,5,'2','Tomahawk primium quality',20,'2019-09-17 12:05:56',4,0),(25,'Tenderloin','/product/images/PROD1568697011753.jpg',600000,10,'10 kg','Tender paling TENDER',20,'2019-09-17 12:10:11',4,0),(26,'Manggis','/product/images/PROD1568697727014.jpg',100000,20,'5 kg','manggis sehat',1,'2019-09-17 12:22:07',7,0),(27,'Singkong','/product/images/PROD1568698012621.jpg',90000,10,'5 kg','Singkong bagong',1,'2019-09-17 12:26:52',9,0),(28,'Almond','/product/images/PROD1568698193577.jpg',125000,10,'2 kg','Almond Import',1,'2019-09-17 12:29:53',1,0),(29,'Cabai merah','/product/images/PROD1568698278748.jpg',5000000,10,'10 kg','Cabai paling hot',1,'2019-09-17 12:31:18',7,0),(30,'Beras Hitam organik','/product/images/PROD1568698563484.jpg',200000,10,'20 kg','beras sehat',26,'2019-09-17 12:36:03',1,0),(31,'Pare','/product/images/PROD1568698893705.jpg',125000,10,'10 kg','Pare tidak pahit',26,'2019-09-17 12:41:33',6,0),(32,'Biji wijen','/product/images/PROD1568698958258.jpg',200000,10,'2 kg','Wijen kualitas Import',26,'2019-09-17 12:42:38',1,0),(33,'Bawang merah organik','/product/images/PROD1568699045331.jpg',300000,10,'5 kg','Rasa Asli brebes',26,'2019-09-17 12:44:05',9,0),(34,'Lobster air tawar','/product/images/PROD1568700014947.jpg',500000,10,'3 kg','lobster tawar segar',25,'2019-09-17 13:00:14',8,0),(35,'lobster Laut','/product/images/PROD1568700088257.jpg',500000,10,'2 kg','Lobster Segar',25,'2019-09-17 13:01:28',2,0),(36,'Kepiting Soka','/product/images/PROD1568700150925.jpg',600000,20,'5 kg','Kepiting Nikmat',25,'2019-09-17 13:02:30',2,0),(37,'Udang Galah tambak Pantura','/product/images/PROD1568700373141.jpg',300000,20,'5 kg','Tambak Pantura cihuy',25,'2019-09-17 13:06:13',3,0),(38,'Patin Tambak','/product/images/PROD1568700665987.jpg',200000,20,'8 kg','Ikan tambak patin mantap',25,'2019-09-17 13:11:06',3,0),(39,'Ikan Nila','/product/images/PROD1568700758603.jpg',300000,20,'10 kg','Ikan Nila Tidak bau tanah',25,'2019-09-17 13:12:38',3,0),(40,'IkAN SAPU','/product/images/PROD1576042082041.jpg',2000000,10,'10 kg','dijual murahh terpisah',31,'2019-12-11 12:28:02',8,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'superadmin'),(2,'admin'),(3,'user');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `productid` int NOT NULL,
  `penjualid` int NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `quantity` int NOT NULL,
  `deleted` int NOT NULL DEFAULT '0',
  `hargabeli` int DEFAULT NULL,
  `paymentid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (1,5,13,20,'Finished','2019-08-27 13:39:20',9,0,211,1),(9,5,14,20,'CanceledProses','2019-08-29 15:18:28',1,0,20000,1),(10,5,2,1,'admin confirmed','2019-08-30 14:10:00',1,0,1212,1),(11,5,14,20,'Finished','2019-08-30 15:05:15',1,0,20000,1),(12,5,6,26,'admin confirmed','2019-08-30 15:11:57',1,0,1213,1),(14,5,14,20,'Finished','2019-08-30 15:14:45',1,0,20000,1),(15,5,4,20,'Finished','2019-08-30 15:17:28',1,0,121231,1),(16,5,13,20,'onSent','2019-08-30 15:19:19',1,0,211,2),(17,5,2,1,'admin confirmed','2019-08-30 15:21:03',1,0,1212,2),(18,5,1,1,'admin confirmed','2019-08-30 15:21:53',1,0,123,2),(19,5,1,1,'admin confirmed','2019-08-30 15:26:25',1,0,123,2),(20,5,14,20,'onSent','2019-08-30 22:49:30',1,0,20000,2),(21,5,1,1,'CanceledPayment','2019-08-31 13:00:07',1,0,123,12),(22,5,1,1,'CanceledPayment','2019-08-31 13:26:52',1,0,123,13),(23,5,2,1,'CanceledPayment','2019-08-31 13:26:59',1,0,1212,13),(24,5,1,1,'admin confirmed','2019-08-31 13:33:07',1,0,123,15),(25,5,1,1,'oncart','2019-09-16 15:39:48',2,1,NULL,NULL),(26,5,14,20,'onSent','2019-09-03 13:18:19',2,0,20000,16),(27,5,4,20,'Finished','2019-09-04 12:49:34',1,0,121231,17),(28,5,2,1,'admin confirmed','2019-09-04 12:49:34',1,0,1212,17),(29,5,1,1,'admin confirmed','2019-09-04 12:49:34',1,0,123,17),(30,5,1,1,'oncart','2019-09-16 15:39:48',2,1,NULL,NULL),(31,5,2,1,'CanceledPayment','2019-09-13 22:19:16',1,0,1212,18),(32,13,4,20,'oncart','2019-09-13 20:47:38',1,0,NULL,NULL),(33,13,1,1,'oncart','2019-09-13 21:51:47',2,0,NULL,NULL),(34,13,6,26,'oncart','2019-09-13 21:52:11',1,0,NULL,NULL),(35,13,13,20,'oncart','2019-09-14 20:57:20',2,0,NULL,NULL),(36,5,1,1,'admin confirmed','2019-09-16 13:44:48',1,0,123,19),(37,5,1,1,'admin confirmed','2019-09-16 15:39:57',2,0,123,20),(38,4,4,20,'Finished','2019-09-17 09:50:44',1,0,400000,21),(39,4,14,20,'Finished','2019-09-17 09:50:44',1,0,500000,21),(40,5,13,20,'CanceledPayment','2019-09-17 15:27:40',1,0,600000,22),(41,9,6,26,'CanceledPayment','2019-09-18 10:39:02',3,0,20000,23),(42,9,4,20,'Finished','2019-09-18 10:40:26',1,0,400000,24),(43,9,2,1,'admin confirmed','2019-09-18 11:58:27',1,0,50000,25),(44,14,4,20,'Finished','2019-09-18 20:13:51',1,0,400000,26),(45,15,13,20,'Finished','2019-09-18 20:39:44',4,0,600000,27),(46,16,14,20,'Finished','2019-09-19 09:03:44',4,0,500000,28),(47,16,13,20,'CanceledProses','2019-09-19 09:03:44',2,0,600000,28),(48,17,6,26,'onSent','2019-09-19 11:06:06',2,0,20000,29),(49,17,13,20,'Onproses','2019-09-19 11:06:06',2,0,600000,29),(50,17,13,20,'Onproses','2019-09-19 11:15:34',1,0,600000,30),(51,17,14,20,'Onproses','2019-09-19 11:15:34',1,0,500000,30),(52,17,16,26,'Onproses','2019-09-19 11:15:34',1,0,50000,30),(53,5,13,20,'Onproses','2019-09-19 12:03:58',1,0,600000,31),(54,5,4,20,'Onproses','2019-09-19 12:07:29',1,0,400000,32),(55,5,14,20,'Onproses','2019-09-19 12:07:29',1,0,500000,32),(56,5,14,20,'Onproses','2019-09-19 12:11:09',1,0,500000,33),(57,5,4,20,'Onproses','2019-09-19 12:11:09',1,0,400000,33),(58,5,4,20,'Onproses','2019-09-19 12:11:36',1,0,400000,34),(59,5,14,20,'Onproses','2019-09-19 12:11:36',1,0,500000,34),(60,5,4,20,'CanceledProses','2019-09-19 12:17:41',1,0,400000,35),(61,5,13,20,'CanceledProses','2019-09-19 12:17:42',1,0,600000,35),(62,5,13,20,'CanceledProses','2019-09-19 12:19:35',1,0,600000,36),(63,5,4,20,'CanceledProses','2019-09-19 12:19:35',1,0,400000,36),(64,5,4,20,'onSent','2019-09-19 12:30:23',1,0,400000,37),(65,5,13,20,'Onproses','2019-09-19 12:30:23',1,0,600000,37),(66,5,14,20,'Onproses','2019-09-19 12:30:47',1,0,500000,38),(67,5,13,20,'Onproses','2019-09-19 12:30:47',1,0,600000,38),(68,5,2,1,'oncart','2019-09-19 12:34:04',1,0,NULL,NULL),(69,5,13,20,'oncart','2019-09-19 12:34:22',1,0,NULL,NULL),(70,1,13,20,'Onproses','2019-10-04 15:00:49',1,0,600000,39),(71,1,13,20,'Onproses','2019-10-04 15:29:35',1,0,600000,40),(72,1,4,20,'admin confirmed','2019-10-04 15:32:06',1,0,400000,41),(73,1,4,20,'CanceledPayment','2019-10-04 15:41:42',1,0,400000,42),(74,1,4,20,'admin confirmed','2019-10-04 15:42:34',1,0,400000,43),(75,1,4,20,'admin confirmed','2019-10-04 15:45:25',1,0,400000,44),(76,18,6,26,'admin confirmed','2019-12-11 12:31:57',1,0,20000,45);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpayment`
--

DROP TABLE IF EXISTS `userpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userpayment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tanggaltransaksi` datetime DEFAULT NULL,
  `totalharga` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `tglexp` datetime DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpayment`
--

LOCK TABLES `userpayment` WRITE;
/*!40000 ALTER TABLE `userpayment` DISABLE KEYS */;
INSERT INTO `userpayment` VALUES (1,'2019-08-30 15:26:29',185555,5,'2019-08-31 15:26:29','/payment/images/PAYMENT1567256189478.jpg','admin confirmed'),(2,'2019-08-30 22:49:49',21669,5,'2019-08-31 22:49:49','/payment/images/PAYMENT1567396040747.jpg','admin confirmed'),(12,'2019-08-31 13:23:45',123,5,'2019-09-01 13:23:45',NULL,'CanceledPayment'),(13,'2019-08-31 13:27:06',1335,5,'2019-09-01 13:27:06','/payment/images/PAYMENT1567265872176.jpeg','CanceledPayment'),(15,'2019-08-31 13:33:06',123,5,'2019-09-01 13:33:06','/payment/images/PAYMENT1567265540947.jpg','admin confirmed'),(16,'2019-09-03 13:18:19',40000,5,'2019-09-04 13:18:19','/payment/images/PAYMENT1567491640724.jpg','admin confirmed'),(17,'2019-09-04 12:49:33',122566,5,'2019-09-05 12:49:33','/payment/images/PAYMENT1567576219509.jpg','admin confirmed'),(18,'2019-09-13 22:19:15',1212,5,'2019-09-14 22:19:16',NULL,'CanceledPayment'),(19,'2019-09-16 13:44:48',123,5,'2019-09-17 13:44:48','/payment/images/PAYMENT1568623245658.jpg','admin confirmed'),(20,'2019-09-16 15:39:56',246,5,'2019-09-17 15:39:56','/payment/images/PAYMENT1568623210549.jpg','admin confirmed'),(21,'2019-09-17 09:50:44',900000,4,'2019-09-18 09:50:44','/payment/images/PAYMENT1568688686204.jpg','admin confirmed'),(22,'2019-09-17 15:27:40',600000,5,'2019-09-18 15:27:40',NULL,'CanceledPayment'),(23,'2019-09-18 10:39:02',60000,9,'2019-09-19 10:39:02',NULL,'CanceledPayment'),(24,'2019-09-18 10:40:25',400000,9,'2019-09-19 10:40:25','/payment/images/PAYMENT1568779684429.jpg','admin confirmed'),(25,'2019-09-18 11:58:26',50000,9,'2019-09-19 11:58:26','/payment/images/PAYMENT1568782722184.jpg','admin confirmed'),(26,'2019-09-18 20:13:51',400000,14,'2019-09-19 20:13:51','/payment/images/PAYMENT1568812443246.jpg','admin confirmed'),(27,'2019-09-18 20:39:44',2400000,15,'2019-09-19 20:39:44','/payment/images/PAYMENT1568814012727.jpg','admin confirmed'),(28,'2019-09-19 09:03:44',3200000,16,'2019-09-20 09:03:44','/payment/images/PAYMENT1568858638557.jpg','admin confirmed'),(29,'2019-09-19 11:06:06',1240000,17,'2019-09-20 11:06:06','/payment/images/PAYMENT1568866057132.jpg','admin confirmed'),(30,'2019-09-19 11:15:34',1150000,17,'2019-09-20 11:15:34','/payment/images/PAYMENT1568866590569.jpg','admin confirmed'),(31,'2019-09-19 12:03:58',600000,5,'2019-09-20 12:03:58','/payment/images/PAYMENT1568869447045.jpg','admin confirmed'),(32,'2019-09-19 12:07:29',900000,5,'2019-09-20 12:07:29','/payment/images/PAYMENT1568869657749.jpg','admin confirmed'),(33,'2019-09-19 12:11:09',900000,5,'2019-09-20 12:11:09','/payment/images/PAYMENT1568869905553.jpg','admin confirmed'),(34,'2019-09-19 12:11:36',900000,5,'2019-09-20 12:11:36','/payment/images/PAYMENT1568869912691.jpg','admin confirmed'),(35,'2019-09-19 12:17:41',1000000,5,'2019-09-20 12:17:41','/payment/images/PAYMENT1568870281776.jpg','admin confirmed'),(36,'2019-09-19 12:19:35',1000000,5,'2019-09-20 12:19:35','/payment/images/PAYMENT1568870386924.jpg','admin confirmed'),(37,'2019-09-19 12:30:23',1000000,5,'2019-09-20 12:30:23','/payment/images/PAYMENT1568871056047.jpg','admin confirmed'),(38,'2019-09-19 12:30:47',1100000,5,'2019-09-20 12:30:47','/payment/images/PAYMENT1568871061937.jpg','admin confirmed'),(39,'2019-10-04 15:00:49',600000,1,'2019-10-05 15:00:49','/payment/images/PAYMENT1570176066948.png','admin confirmed'),(40,'2019-10-04 15:29:35',600000,1,'2019-10-05 15:29:35','/payment/images/PAYMENT1570177783263.png','admin confirmed'),(41,'2019-10-04 15:32:06',400000,1,'2019-10-05 15:32:06','/payment/images/PAYMENT1570177941888.png','admin confirmed'),(42,'2019-10-04 15:41:42',400000,1,'2019-10-05 15:41:42',NULL,'CanceledPayment'),(43,'2019-10-04 15:42:34',400000,1,'2019-10-05 15:42:34','/payment/images/PAYMENT1570178565809.png','admin confirmed'),(44,'2019-10-04 15:45:25',400000,1,'2019-10-05 15:45:25','/payment/images/PAYMENT1570178741207.png','admin confirmed'),(45,'2019-12-11 12:31:57',20000,18,'2019-12-12 12:31:57','/payment/images/PAYMENT1576042365253.jpg','admin confirmed');
/*!40000 ALTER TABLE `userpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roleid` int NOT NULL,
  `statusver` varchar(45) NOT NULL DEFAULT 'unverified',
  `lastlogin` datetime NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `otp` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dino','dino@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',1,'verified','2019-12-11 12:33:20','jl. sunagakure',NULL),(2,'deni','deni@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',2,'verified','0000-00-00 00:00:00',NULL,NULL),(3,'dono','dono@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'unverified','2019-09-17 20:56:07',NULL,NULL),(4,'dini','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-09-17 12:33:50',NULL,NULL),(5,'uci','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-10-12 17:34:57','jl. Bsd kecamatan gerlong bandung indonesia',NULL),(6,'ucok','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-10-12 17:32:36',NULL,NULL),(7,'axe1','axe@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'unverified','0000-00-00 00:00:00',NULL,NULL),(8,'jijo','jijo@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'unverified','0000-00-00 00:00:00',NULL,NULL),(9,'zidan','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-09-18 11:58:07','jl. sunagakure kecamatan bsd',NULL),(10,'sasuke','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-08-20 13:12:22',NULL,NULL),(11,'ciko1','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-08-20 13:12:57',NULL,NULL),(12,'tretan12','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-08-17 14:38:08',NULL,NULL),(13,'ucok1','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-09-14 20:45:06',NULL,NULL),(14,'uci12','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-09-18 20:18:57','j;l. panjang kebayoran jakarta',NULL),(15,'kevin','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-09-18 20:43:28','jl. meruya jakbar',NULL),(16,'firly1','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-09-19 09:06:36','jl. konohagakure kecamatan sunagakure',NULL),(17,'ucok123','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-09-19 11:14:56','jl. bsd ',NULL),(18,'bobi','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-12-11 12:34:05','jl. pim ',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-21 10:36:25
