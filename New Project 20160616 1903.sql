-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema health_information
--

CREATE DATABASE IF NOT EXISTS health_information;
USE health_information;

--
-- Definition of table `integrate`
--

DROP TABLE IF EXISTS `integrate`;
CREATE TABLE `integrate` (
  `doc_info` varchar(45) NOT NULL,
  `file` longblob NOT NULL,
  `time` varchar(45) NOT NULL,
  `patient_info` varchar(45) NOT NULL,
  `patient_id` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `pdob` varchar(45) NOT NULL,
  `pmail` varchar(45) NOT NULL,
  `doctor_info` varchar(45) NOT NULL,
  `doctor_id` varchar(45) NOT NULL,
  `doctor_name` varchar(45) NOT NULL,
  `poci` longtext NOT NULL,
  `rfv` longtext NOT NULL,
  `medications` longtext NOT NULL,
  `immunizations` longtext NOT NULL,
  `spatient_info` varchar(45) NOT NULL,
  `spatient_id` varchar(45) NOT NULL,
  `spname` varchar(45) NOT NULL,
  `sgender` varchar(45) NOT NULL,
  `sage` varchar(45) NOT NULL,
  `spdob` varchar(45) NOT NULL,
  `spmail` varchar(45) NOT NULL,
  `sdoctor_info` varchar(45) NOT NULL,
  `sdoctor_id` varchar(45) NOT NULL,
  `sdoctor_name` varchar(45) NOT NULL,
  `spoci` longtext NOT NULL,
  `srfv` longtext NOT NULL,
  `smedications` longtext NOT NULL,
  `simmunizations` longtext NOT NULL,
  `secret_key` varchar(45) NOT NULL,
  PRIMARY KEY  (`pmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `integrate`
--

/*!40000 ALTER TABLE `integrate` DISABLE KEYS */;
/*!40000 ALTER TABLE `integrate` ENABLE KEYS */;


--
-- Definition of table `reg`
--

DROP TABLE IF EXISTS `reg`;
CREATE TABLE `reg` (
  `id` int(11) NOT NULL default '0',
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mob` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;


--
-- Definition of table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `sspatient_id` varchar(45) NOT NULL,
  `sspname` varchar(45) NOT NULL,
  `ssdoctor_id` varchar(45) NOT NULL,
  `ssdoctor_name` varchar(45) NOT NULL,
  `secret_key` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;


--
-- Definition of table `upload`
--

DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL default '0',
  `doc_info` varchar(45) NOT NULL,
  `file` longtext NOT NULL,
  `time` varchar(45) NOT NULL,
  `patient_info` varchar(45) NOT NULL,
  `patient_id` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `pdob` varchar(45) NOT NULL,
  `pmail` varchar(45) NOT NULL,
  `doctor_info` varchar(45) NOT NULL,
  `doctor_id` varchar(45) NOT NULL,
  `doctor_name` varchar(45) NOT NULL,
  `poci` longtext NOT NULL,
  `rfv` longtext NOT NULL,
  `medications` longtext NOT NULL,
  `immunizations` longtext NOT NULL,
  `secret_key` longtext NOT NULL,
  PRIMARY KEY  (`pmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;


--
-- Definition of table `uploadb`
--

DROP TABLE IF EXISTS `uploadb`;
CREATE TABLE `uploadb` (
  `id` int(11) NOT NULL default '0',
  `doc_info` varchar(45) NOT NULL,
  `file` longtext NOT NULL,
  `time` varchar(45) NOT NULL,
  `patient_info` varchar(45) NOT NULL,
  `patient_id` varchar(45) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `pdob` varchar(45) NOT NULL,
  `pmail` varchar(45) NOT NULL,
  `doctor_info` varchar(45) NOT NULL,
  `doctor_id` varchar(45) NOT NULL,
  `doctor_name` varchar(45) NOT NULL,
  `poci` longtext NOT NULL,
  `rfv` longtext NOT NULL,
  `medications` longtext NOT NULL,
  `immunizations` longtext NOT NULL,
  `secret_key` longtext NOT NULL,
  PRIMARY KEY  (`pmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadb`
--

/*!40000 ALTER TABLE `uploadb` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploadb` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
