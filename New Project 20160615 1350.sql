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
  `doc_info` int(11) NOT NULL,
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
  PRIMARY KEY  (`spmail`)
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
INSERT INTO `reg` (`id`,`name`,`pass`,`email`,`mob`,`state`,`country`,`role`) VALUES 
 (0,'ajay','123','ajaykavi777@gmail.com','9787279591','Pondy','India','User'),
 (0,'kavi','123456','kaviarasanjpinfotech@gmail.com','9787279591','Pondy','India','Doctor');
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;


--
-- Definition of table `upload`
--

DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `id` int(10) unsigned NOT NULL auto_increment,
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
  `poci` varchar(100) NOT NULL,
  `rfv` varchar(100) NOT NULL,
  `medications` varchar(100) NOT NULL,
  `immunizations` varchar(100) NOT NULL,
  `secret_key` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` (`id`,`doc_info`,`file`,`time`,`patient_info`,`patient_id`,`pname`,`gender`,`age`,`pdob`,`pmail`,`doctor_info`,`doctor_id`,`doctor_name`,`poci`,`rfv`,`medications`,`immunizations`,`secret_key`) VALUES 
 (1,'DOCUMENT_INFIRMATION','migugmX97J0hBmTNLYvqTZoAh4wHv+IgRT5qHYZ2tJj80UMuSWUIsw9FvnLBG6xANOLFlhgyBSatYTareOKmQTeQ3SfIadyjtx/H98SswVM/fFMxoNkuypDYSzMsQh1HKf9fFlN4C+PPcX4IyM88XmjLnKBFW3+vrgffQbikBRKS1D8wZQZyUFtj1m+/8BzCHfqPtT4u4FGfiDtJb3HS+SJw+mNvnJ4oUs0226Sr42+36Vq9FIhtllodIJYh5Ho0dykYdnW2WYXqARdaib2NAHQsrkBSqc63kdWy4cIDvInYTy9a+PnYxphd7Yj1xZ0VyD7lK7opPIYz92F/DKDj1bXl28B1n9AMbP8RyUN+vXzDQrBthvXcrEG5sVz9nZpfg4htZruM4VPOu1ATMRd6eoOIbWa7jOFTndRCfpdv16w5WFHb8peup9evTHskKFwfFPwwa55lmF/UCbGJhs9epJw98GS/oRKFOkIYBliiTAuRT1uCbreZanxHt0PnfeZx2E8vWvj52MZ8R7dD533mcc8NZDEY65hRnD3wZL+hEoVUGvF3AF4uDUH4l4sEnNZl6sJTDuGLJSi/cwhxKmxrqPrvEodSEuzYQfiXiwSc1mXqwlMO4YslKNhPL1r4+djGWyLEpxsmQFuKf4EKQ6MkBZ7/YiN3Dcmo5R4y/qIvikgYmHJe+9VNHJfUQUYp7E3FvYrnjoGFyFOj1FHmrL0UH6b6EsRCpFmD9oLNJxRJzHZblWPB9LeJGY7FH31fSGUyjgXLtFOCGt//HF+uyYlEDmpvitL/Jopr0PNyOiK0gdfiZ3lvGscXOhZ8aCEkGBxpam+K0v8mimvF2aiCjlMwXDEIUqatBLXiJnC9JzQP4/vTZDkuPMJyjxlT84+MF+W0N7WtzTZt21Lp4h+88Ea9fVWT7Sjd1CB5OxMF8NVUNMiqSG3cvfJOBg5OPP25MbIQP1Es0395fGuhFSQwReIcBuM73bLmONneTQd3JR6YekqCTRBBf1prHERjTkgsXJKb/IMFi9opEpEYQzQqMKdXpgm6Y1jFXa/mGdZZGrPoR3t9qDoHn7cgD5UGl94egngfUV2juqnBmva6Pk9zjZo3o/yk/FCICwZUiGD/CYwYuoFtEmoo5xfleQOXLUuT7yThgl/5nXU57EG8vhf4tHoqlarM+cKF4jInbRJqKOcX5XlK+CdmQE7R3Kij1w0N9yvlCjLJ6uzSLl+YwrbfceaP0Q==','2016-06-14','PATIENT_INFORMATION','p23','kavi','Male','22','2016-06-01','kavi@gmail.com','DOCTOR_INFORMATION','D2241','Dr.kavi',' Get Well Clinic, 1002 Healthcare','Mild Fever, 2 days','Albuterol 0.09 MG','virus vaccine, 11/1/2009','virus vaccine, 11/1/2009'),
 (2,'DOCUMENT_INFIRMATION','migugmX97J0hBmTNLYvqTZoAh4wHv+IgRT5qHYZ2tJj80UMuSWUIsw9FvnLBG6xANOLFlhgyBSatYTareOKmQTeQ3SfIadyjtx/H98SswVM/fFMxoNkuypDYSzMsQh1HKf9fFlN4C+PPcX4IyM88XmjLnKBFW3+vrgffQbikBRKS1D8wZQZyUFtj1m+/8BzCHfqPtT4u4FGfiDtJb3HS+SJw+mNvnJ4oUs0226Sr42+36Vq9FIhtllodIJYh5Ho0dykYdnW2WYXqARdaib2NAHQsrkBSqc63kdWy4cIDvInYTy9a+PnYxphd7Yj1xZ0VyD7lK7opPIYz92F/DKDj1bXl28B1n9AMbP8RyUN+vXzDQrBthvXcrEG5sVz9nZpfg4htZruM4VMbRXOVinNAn5FPW4Jut5lq0WPTPc8Bf253bXmiifLSSdtd8OjCQ85vyfztRniWZ+YR6p9bsxN0mlu7n2lzVcTdZZzS49Iuu66MKie46d35vXpalbDoTiIwVR7G8miCOHh6WpWw6E4iMG7+zCKVE7D3W7ufaXNVxN3aEsQgzQfiz1WOLewfQ8gHjz3zz/erot+1pKb/q0qFFAFi12//EsC2VY4t7B9DyAePPfPP96ui38WO7HvxJxrHMKnX71OTjnsR+SmJPdUNY5qmTNMZvLPdVb3KI2SmBXjJ/O1GeJZn5j6vINRV/Z1+XiOekUwU46XjO92y5jjZ3srdFCEKfnxzqAJePVJLhsgh4Fx3SjGAvJfUQUYp7E3FvYrnjoGFyFPbHonGdBfOBHQOX0iyvb99aztfsrJoLUQvzCMypvI+nwRaAWaBH8SdAglXGAkN5lh4WZxJE4YfCJgZvc4tnP3BMg7XldGo6MeLVr6s7xm+QJarL0xz/fU4ktQ/MGUGclCJG1bJwfL3TbE0XZKeyVaUlF0qphKKRihLMGjpr2xh6avCE7Mfe4N6MQhSpq0EteImcL0nNA/j+9NkOS48wnKPGVPzj4wX5bS48ya6iZB8QlcKntIE3hn1vc+YgCmEZlT/ytmGLz9K+C+lSWav60hUrbRI49J1FMnRqPPWJVUAMTkwVfDyWHtY6b7vti6krJN+VcC1OPPhh9Qi0syf7NnEkFKpE4ndX4Uy1Lc13iPUT4rE2nrlXKBI+dctzM2gjs6uKY2h2FmVmPvujiC4RSPrDLcInuGq1RGKxNp65VygSFghHlTpQmzO5mDymBPvQzR2X7+337+5DjNU4gKf++aG','2016-06-14','PATIENT_INFORMATION','P1222','ajay','Male','22','2016-06-01','ajaykavi777@gmail.com','DOCTOR_INFORMATION','D2241','Dr.kavi',' Get Well Clinic, 1002 Healthcare','Mild Fever, 2 days','Albuterol 0.09 MG','virus vaccine, 11/1/2009','virus vaccine, 11/1/2009');
INSERT INTO `upload` (`id`,`doc_info`,`file`,`time`,`patient_info`,`patient_id`,`pname`,`gender`,`age`,`pdob`,`pmail`,`doctor_info`,`doctor_id`,`doctor_name`,`poci`,`rfv`,`medications`,`immunizations`,`secret_key`) VALUES 
 (3,'DOCUMENT_INFIRMATION','migugmX97J0hBmTNLYvqTZoAh4wHv+IgRT5qHYZ2tJj80UMuSWUIsw9FvnLBG6xANOLFlhgyBSatYTareOKmQTeQ3SfIadyjtx/H98SswVM/fFMxoNkuypDYSzMsQh1HKf9fFlN4C+PPcX4IyM88XmjLnKBFW3+vrgffQbikBRKS1D8wZQZyUFtj1m+/8BzCHfqPtT4u4FGfiDtJb3HS+SJw+mNvnJ4oUs0226Sr42+36Vq9FIhtllodIJYh5Ho0dykYdnW2WYULhh67TwcJdXQsrkBSqc63kdWy4cIDvInYTy9a+PnYxphd7Yj1xZ0VyD7lK7opPIYz92F/DKDj1bXl28B1n9AMbP8RyUN+vXzDQrBthvXcrEG5sVz9nZpfg4htZruM4VMbRXOVinNAn5FPW4Jut5lq0WPTPc8Bf253bXmiifLSSUXtBOv7aZk1kU9bgm63mWrF2aiCjlMwXI9kViswhQyUzaOIFy3C4U38+4CheF9NrZw98GS/oRKFVBrxdwBeLg2cPfBkv6EShcQRPRAUPXmYj2RWKzCFDJTgPtlsgvNAwjwlVmLcBOTwaetNFzgrLTgGmLhYv/b5KBkLb5P3bLoTPCVWYtwE5PBp600XOCstOHTnF6S04mbKDX6SvKB9s/ITSxhkx0ogF2O24RqLE8Dj8hEDrzvtLlSRT1uCbreZajcy7YMOD5MhRcYf/GmE/44ZU/OPjBfltL0Jf4kR1fLYznrQAWAA3PWR3q6t/tet5V4jnpFMFOOl4zvdsuY42d4i3BMWhgW2nq8z7lCX816XYIcQ8Q0lWrT1UvMv5ay9Yxb4dBzhP2VfzBTqGMQ6JyFJMma+CVx20Hi+x/JqaHU0yyl0YScWcDkMKlVPjX/ifzi8ekWMEfE/mF3tiPXFnRVUSTUeQmVhtryHx6zIdBaNHEpM2qLvbplkwjeMyqwLzrE34zlnoADaMg7XldGo6MeLVr6s7xm+QJarL0xz/fU4ktQ/MGUGclANwBJPWspnk558wGC0gyWmCIGXXEhigc/JBiwbxPbIYCno9OEfLbYyx9/ewbfhMrJR5hx0oEu9dAuqv3NnvKYFW2ggTzfxevlmxjuyEPB4YZbDV2Slo5pvIzRhfGn3oXa2Sb59TE4XeLlXgIiPiACjuDndJZ1uSBOV8q09f3gHTyCS1MtL4lXutcgsaxUpvz65V4CIj4gAo1UkZNeCN/f84UrWg4QzTPYUHxcNmmCuzA0b2KCnP9Zw','2016-06-15','PATIENT_INFORMATION','P1222','sanji','Male','28','2016-06-07','ajaykavi777@gmail.com','DOCTOR_INFORMATION','D2241','Dr.kavi',' Get Well Clinic, 1002 Healthcare','Mild Fever, 2 days','Albuterol 0.09 MG','virus vaccine, 11/1/2009','virus vaccine, 11/1/2009');
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;


--
-- Definition of table `uploadb`
--

DROP TABLE IF EXISTS `uploadb`;
CREATE TABLE `uploadb` (
  `id` int(10) unsigned NOT NULL auto_increment,
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
  `poci` varchar(100) NOT NULL,
  `rfv` varchar(100) NOT NULL,
  `medications` varchar(100) NOT NULL,
  `immunizations` varchar(100) NOT NULL,
  `secret_key` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadb`
--

/*!40000 ALTER TABLE `uploadb` DISABLE KEYS */;
INSERT INTO `uploadb` (`id`,`doc_info`,`file`,`time`,`patient_info`,`patient_id`,`pname`,`gender`,`age`,`pdob`,`pmail`,`doctor_info`,`doctor_id`,`doctor_name`,`poci`,`rfv`,`medications`,`immunizations`,`secret_key`) VALUES 
 (1,'DOCUMENT_INFIRMATION','migugmX97J0hBmTNLYvqTZoAh4wHv+IgRT5qHYZ2tJj80UMuSWUIsw9FvnLBG6xANOLFlhgyBSatYTareOKmQTeQ3SfIadyjtx/H98SswVM/fFMxoNkuyg/J9B8yqfQeKf9fFlN4C+PL1SuRItSLCmjLnKBFW3+vrgffQbikBRKS1D8wZQZyUFtj1m+/8BzCHfqPtT4u4FGfiDtJb3HS+SJw+mNvnJ4oUs0226Sr42+36Vq9FIhtllodIJYh5Ho0dykYdnW2WYXqARdaib2NAHQsrkBSqc63kdWy4cIDvInYTy9a+PnYxphd7Yj1xZ0VyD7lK7opPIYz92F/DKDj1bXl28B1n9AMbP8RyUN+vXzDQrBthvXcrEG5sVz9nZpfg4htZruM4VMbRXOVinNAn5FPW4Jut5lq0WPTPc8Bf253bXmiifLSSdtd8OjCQ85vyfztRniWZ+YR6p9bsxN0mlu7n2lzVcTdZZzS49Iuu66MKie46d35vXpalbDoTiIwVR7G8miCOHh6WpWw6E4iMNterjuzspacW7ufaXNVxN3aEsQgzQfiz1WOLewfQ8gHjz3zz/erot+1pKb/q0qFFF60Ay8T/4DWVY4t7B9DyAePPfPP96ui38WO7HvxJxrHMKnX71OTjnsR+SmJPdUNY5qmTNMZvLPdVb3KI2SmBXjJ/O1GeJZn5j6vINRV/Z1+XiOekUwU46XjO92y5jjZ3srdFCEKfnxzqAJePVJLhsgh4Fx3SjGAvJfUQUYp7E3FvYrnjoGFyFPbHonGdBfOBHQOX0iyvb99aztfsrJoLUQvzCMypvI+nwRaAWaBH8SdAglXGAkN5lh4WZxJE4YfCJgZvc4tnP3BMg7XldGo6MeLVr6s7xm+QJarL0xz/fU4ktQ/MGUGclCJG1bJwfL3TbE0XZKeyVaUlF0qphKKRihLMGjpr2xh6avCE7Mfe4N6MQhSpq0EteImcL0nNA/j+9NkOS48wnKPGVPzj4wX5bS48ya6iZB8QlcKntIE3hn1vc+YgCmEZlT/ytmGLz9K+C+lSWav60hUrbRI49J1FMnRqPPWJVUAMTkwVfDyWHtY6b7vti6krJN+VcC1OPPhh9Qi0syf7NnEkFKpE4ndX4Uy1Lc13iPUT4rE2nrlXKBI+dctzM2gjs6uKY2h2FmVmPvujiC4RSPrDLcInuGq1RGKxNp65VygSFghHlTpQmzO5mDymBPvQzQzpY5EgEV6dzNU4gKf++aG','2016-06-14','PATIENT_INFORMATION','P1222','ajay','Male','28','2016-06-08','ajaykavi777@gmail.com','DOCTOR_INFORMATION','D2241','Dr.kavi',' Get Well Clinic, 1002 Healthcare','Mild Fever, 2 days','Albuterol 0.09 MG','virus vaccine, 11/1/2009','virus vaccine, 11/1/2009'),
 (2,'DOCUMENT_INFIRMATION','migugmX97J0hBmTNLYvqTZoAh4wHv+IgRT5qHYZ2tJj80UMuSWUIsw9FvnLBG6xANOLFlhgyBSatYTareOKmQTeQ3SfIadyjtx/H98SswVM/fFMxoNkuyg/J9B8yqfQeKf9fFlN4C+PL1SuRItSLCmjLnKBFW3+vrgffQbikBRKS1D8wZQZyUFtj1m+/8BzCHfqPtT4u4FGfiDtJb3HS+SJw+mNvnJ4oUs0226Sr42+36Vq9FIhtllodIJYh5Ho0dykYdnW2WYXqARdaib2NAHQsrkBSqc63kdWy4cIDvInYTy9a+PnYxphd7Yj1xZ0VyD7lK7opPIYz92F/DKDj1bXl28B1n9AMbP8RyUN+vXzDQrBthvXcrEG5sVz9nZpfg4htZruM4VMbRXOVinNAn5FPW4Jut5lq0WPTPc8Bf253bXmiifLSSaPkNEEixhQ5yfztRniWZ+YR6p9bsxN0mlu7n2lzVcTdZZzS49Iuu66MKie46d35vXpalbDoTiIwVR7G8miCOHh6WpWw6E4iMNterjuzspacW7ufaXNVxN3aEsQgzQfiz1WOLewfQ8gHjz3zz/erot+1pKb/q0qFFHYPO0OxHW3TVY4t7B9DyAePPfPP96ui38WO7HvxJxrHMKnX71OTjnt2fefIvU3UzfIRA6877S5UkU9bgm63mWo3Mu2DDg+TIUXGH/xphP+OGVPzj4wX5bS9CX+JEdXy2M560AFgANz1kd6urf7XreVeI56RTBTjpeM73bLmONneItwTFoYFtp6vM+5Ql/Nel2CHEPENJVq09VLzL+WsvWMW+HQc4T9lX8wU6hjEOichSTJmvglcdtB4vsfyamh1NMspdGEnFnA5DCpVT41/4n84vHpFjBHxP5hd7Yj1xZ0VVEk1HkJlYba8h8esyHQWjRxKTNqi726ZZMI3jMqsC86xN+M5Z6AA2jIO15XRqOjHi1a+rO8ZvkCWqy9Mc/31OJLUPzBlBnJQDcAST1rKZ5OefMBgtIMlpgiBl1xIYoHPyQYsG8T2yGAp6PThHy22Msff3sG34TKyUeYcdKBLvXQLqr9zZ7ymBVtoIE838Xr5ZsY7shDweGGWw1dkpaOabyM0YXxp96F2tkm+fUxOF3i5V4CIj4gAo7g53SWdbkgTlfKtPX94B08gktTLS+JV7rXILGsVKb8+uVeAiI+IAKNVJGTXgjf3/OFK1oOEM0z24vXSX12Z1W0NG9igpz/WcA==','2016-06-14','PATIENT_INFORMATION','P1222','kavi','Male','28','2016-06-07','kavi@gmail.com','DOCTOR_INFORMATION','D2241','Dr.kavi',' Get Well Clinic, 1002 Healthcare','Mild Fever, 2 days','Albuterol 0.09 MG','virus vaccine, 11/1/2009','virus vaccine, 11/1/2009');
/*!40000 ALTER TABLE `uploadb` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
