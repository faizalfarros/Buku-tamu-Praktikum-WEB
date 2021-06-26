-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.5.9-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for akademik
CREATE DATABASE IF NOT EXISTS `akademik` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `akademik`;

-- Dumping structure for table akademik.bukutamu
CREATE TABLE IF NOT EXISTS `bukutamu` (
  `Id_bukutamu` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  PRIMARY KEY (`Id_bukutamu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table akademik.bukutamu: ~5 rows (approximately)
/*!40000 ALTER TABLE `bukutamu` DISABLE KEYS */;
INSERT INTO `bukutamu` (`Id_bukutamu`, `Nama`, `email`, `komentar`) VALUES
	(1, 'Pejon Maulana', 'Pejon@gmail.com', 'Aku Fakboy'),
	(2, 'Faiz', 'fai123@gmail.com', 'Aku Tampan'),
	(3, 'Sadad', 'sadad21@gmail.com', 'Aku Pintar'),
	(4, 'lsds,', 'ksldmskmd', 'skmdsd'),
	(5, '', '', ''),
	(6, 'Faiz', 'n', 'n');
/*!40000 ALTER TABLE `bukutamu` ENABLE KEYS */;

-- Dumping structure for table akademik.matkul
CREATE TABLE IF NOT EXISTS `matkul` (
  `Id_matkul` int(11) NOT NULL AUTO_INCREMENT,
  `nm_matkul` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_matkul`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table akademik.matkul: ~2 rows (approximately)
/*!40000 ALTER TABLE `matkul` DISABLE KEYS */;
INSERT INTO `matkul` (`Id_matkul`, `nm_matkul`) VALUES
	(1, 'Pemrograman WEB'),
	(2, 'Metode Numerik');
/*!40000 ALTER TABLE `matkul` ENABLE KEYS */;

-- Dumping structure for table akademik.matkul2
CREATE TABLE IF NOT EXISTS `matkul2` (
  `Id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `Id_matkul` int(11) DEFAULT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_jadwal`),
  KEY `Id_matkul` (`Id_matkul`),
  CONSTRAINT `FK_matkul2_matkul` FOREIGN KEY (`Id_matkul`) REFERENCES `matkul` (`Id_matkul`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table akademik.matkul2: ~2 rows (approximately)
/*!40000 ALTER TABLE `matkul2` DISABLE KEYS */;
INSERT INTO `matkul2` (`Id_jadwal`, `Id_matkul`, `hari`, `jam`, `ruang`) VALUES
	(5, 2, 'senin', '6.30', 'Lab. Jarkom'),
	(6, 2, 'senin', '8.00', 'Lab. Jarkom'),
	(8, 1, 'kamis', '9.00', 'B.209');
/*!40000 ALTER TABLE `matkul2` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
