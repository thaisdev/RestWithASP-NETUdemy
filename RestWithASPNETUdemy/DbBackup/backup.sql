-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: rest_with_asp_net_udemy
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Author` longtext,
  `LaunchDate` datetime(6) NOT NULL,
  `Price` decimal(65,2) NOT NULL,
  `Title` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Michael C. Feathers','2017-11-29 13:50:05.878000',49.00,'Working effectively with legacy code'),(2,'Ralph Johnson, Erich Gamma, John Vlissides e Richard Helm','2017-11-29 15:15:13.636000',45.00,'Design Patterns'),(3,'Robert C. Martin','2009-01-10 00:00:00.000000',77.00,'Clean Code'),(4,'Crockford','2017-11-07 15:09:01.674000',67.00,'JavaScript'),(5,'Steve McConnell','2017-11-07 15:09:01.674000',58.00,'Code complete'),(6,'Martin Fowler e Kent Beck','2017-11-07 15:09:01.674000',88.00,'Refactoring'),(7,'Eric Freeman, Elisabeth Freeman, Kathy Sierra, Bert Bates','2017-11-07 15:09:01.674000',110.00,'Head First Design Patterns'),(8,'Eric Evans','2017-11-07 15:09:01.674000',92.00,'Domain Driven Design'),(9,'Brian Goetz e Tim Peierls','2017-11-07 15:09:01.674000',80.00,'Java Concurrency in Practice'),(10,'Susan Cain','2017-11-07 15:09:01.674000',123.00,'O poder dos quietos'),(11,'Roger S. Pressman','2017-11-07 15:09:01.674000',56.00,'Engenharia de Software: uma abordagem profissional'),(12,'Viktor Mayer-Schonberger e Kenneth Kukier','2017-11-07 15:09:01.674000',54.00,'Big Data: como extrair volume, variedade, velocidade e valor da avalanche de informação cotidiana'),(13,'Richard Hunter e George Westerman','2017-11-07 15:09:01.674000',95.00,'O verdadeiro valor de TI'),(14,'Marc J. Schiller','2017-11-07 15:09:01.674000',45.00,'Os 11 segredos de líderes de TI altamente influentes'),(15,'Aguinaldo Aragon Fernandes e Vladimir Ferraz de Abreu','2017-11-07 15:09:01.674000',54.00,'Implantando a governança de TI');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changelog`
--

DROP TABLE IF EXISTS `changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `version` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin NOT NULL,
  `name` varchar(300) COLLATE utf8_bin NOT NULL,
  `checksum` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `installed_by` varchar(100) COLLATE utf8_bin NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changelog`
--

LOCK TABLES `changelog` WRITE;
/*!40000 ALTER TABLE `changelog` DISABLE KEYS */;
INSERT INTO `changelog` VALUES (1,2,'0','Empty schema found: rest_with_asp_net_udemy.','rest_with_asp_net_udemy','','root','2020-02-14 14:24:04',1),(2,0,'1.0.1','Create Table Persons','V1_0_1__Create_Table_Persons.sql','5C57601C086E1B99BBB04D07959D0F8D','root','2020-02-14 14:24:04',1),(3,0,'1.0.2','Alter Table Persons','V1_0_2__Alter_Table_Persons.sql','CD743A62C549732597DD40FB2A37EAEA','root','2020-02-14 14:24:04',1),(4,0,'1.0.3','Create table books','V1_0_3__Create_table_books.sql','F549A23CB0D53684731DC7BCBD1C2CD2','root','2020-02-14 14:24:04',1),(5,0,'1.0.4','Insert data in books','V1_0_4__Insert_data_in_books.sql','176BED6692EB72483D6293F87630A8EE','root','2020-02-14 14:28:19',1),(6,0,'1.0.5','Insert data in persons','V1_0_5__Insert_data_in_persons.sql','9C8C00723D8DE4E5A4AC745F484C1DF2','root','2020-02-14 14:28:19',1),(7,0,'1.0.6','Drop table books','V1_0_6__Drop_table_books.sql','996116D4AC3B9566301DE7B869018E5E','root','2020-02-19 12:35:40',1),(8,0,'1.0.7','Recreate table books','V1_0_7__Recreate_table_books.sql','A24695A9F3D42357BCC78C08BF2FFD6C','root','2020-02-19 12:35:41',1),(9,0,'1.0.8','Reinsert data in books','V1_0_8__Reinsert_data_in_books.sql','3AA7D3B32D6D452A58B268467172E07E','root','2020-02-19 12:35:41',1),(10,0,'1.0.9','Create table users','V1_0_9__Create_table_users.sql','21A098BE693C455B76FD57CA6ACE1D5F','root','2020-07-31 21:12:08',1),(11,0,'1.0.10','Insert data in users','V1_0_10__Insert_data_in_users.sql','D5A73E85F99502520B2CA1E89600EF4E','root','2020-07-31 21:12:08',1),(12,0,'1.0.11','Insert data in persons','V1_0_11__Insert_data_in_persons.sql','DB82F61579D7EEAA3E4A0EDCC31B6050','root','2020-07-31 21:12:08',1);
/*!40000 ALTER TABLE `changelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `LastName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Address` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Gender` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'Leandro','Costa','Uberlândia - Minas Gerais - Brasil','Male'),(2,'Flávio','Costa','Patos de Minas - Minas Gerais - Brasil','Male'),(4,'Augustina','Dudderidge','6183 Linden Road','Female'),(5,'Nessa','Basketter','896 Gerald Park','Female'),(6,'Lurlene','Raywood','3893 Mitchell Drive','Female'),(7,'Winifield','Dilleway','7765 Burrows Pass','Male'),(8,'Matilda','Vinker','96342 Oxford Lane','Female'),(9,'Elvyn','Jenny','87 Bunting Plaza','Male'),(10,'Ailbert','Gorke','43842 Veith Circle','Male'),(11,'Chantal','Taillard','7899 Bultman Avenue','Female'),(12,'Virgina','Surplice','755 Ludington Center','Female'),(13,'Ferguson','Mosedill','6 Ilene Crossing','Male'),(14,'Vinita','Foote','96 Rigney Parkway','Female'),(15,'Carmella','Manwell','199 Mcbride Hill','Female'),(16,'Wolfgang','Libero','3 Division Center','Male'),(17,'Carlos','Mildenhall','7759 Lakewood Gardens Lane','Male'),(18,'Rodie','Coultass','9716 Holy Cross Park','Female'),(19,'Creight','Gawthorpe','81331 Melody Alley','Male'),(20,'Clarice','McClean','9657 Basil Park','Female'),(21,'Johnathan','Keig','0307 Holmberg Junction','Male'),(22,'Dynah','Wardhough','522 4th Terrace','Female'),(23,'Elwira','Curnnokk','5852 Gateway Alley','Female'),(24,'Weber','Bathurst','4 Spaight Parkway','Male'),(25,'Enrico','Hinkensen','6 Fair Oaks Way','Male'),(26,'Skipper','Cobbled','53803 Gateway Park','Male'),(27,'Shepperd','Hallitt','72 Forest Run Parkway','Male'),(28,'Obie','Upstone','4 Russell Parkway','Male'),(29,'Nikki','Astell','81957 Roth Lane','Female'),(30,'Clarisse','Heliet','25125 Independence Crossing','Female'),(31,'Jackie','Puttick','95 Fuller Junction','Female'),(32,'Binni','Searight','5163 Acker Center','Female'),(33,'Stu','Maybury','8 Lyons Junction','Male'),(34,'Aleece','Branwhite','19067 Stuart Avenue','Female'),(35,'Dorey','Pimm','54 Cascade Lane','Female'),(36,'Leena','Geely','5 Spohn Crossing','Female'),(37,'Ricardo','Easey','2519 Starling Point','Male'),(38,'Sheila','Beardsdale','23351 Basil Crossing','Female'),(39,'Nevins','Ossenna','14163 Mcguire Junction','Male'),(40,'Boniface','Strowan','6 Onsgard Point','Male'),(41,'Jeth','Matthews','75163 Carberry Way','Male'),(42,'Angelita','Dobson','08944 Twin Pines Alley','Female'),(43,'Janessa','Ost','2 Londonderry Trail','Female'),(44,'Klarrisa','Gillan','100 Iowa Point','Female'),(45,'Rozella','Grimsditch','98800 Russell Point','Female'),(46,'Christina','Djorevic','112 Blackbird Place','Female'),(47,'Rees','Minshall','54 Novick Way','Male'),(48,'Gerhardt','Oldcroft','2577 Surrey Pass','Male'),(49,'Guthrie','Dy','5102 Gina Way','Male'),(50,'Aguistin','Trodden','59 Reindahl Circle','Male'),(51,'Cecile','Staddon','3 Northridge Trail','Female'),(52,'Aylmar','Garwell','321 Mallard Plaza','Male'),(53,'Essy','Catanheira','425 Farwell Place','Female'),(54,'Jeannine','McGeoch','24175 Barby Place','Female'),(55,'Nissie','Abendroth','82255 Burning Wood Center','Female'),(56,'Radcliffe','O\'Donnelly','45 3rd Junction','Male'),(57,'Eada','Pedwell','4 Marquette Crossing','Female'),(58,'Ruddie','Minghetti','58279 Merrick Alley','Male'),(59,'Eduino','Darycott','67035 Buena Vista Way','Male'),(60,'Fergus','Eddins','93941 Melvin Parkway','Male'),(61,'Wakefield','Schwandner','95 Sycamore Avenue','Male'),(62,'Cammy','McIlveen','028 Westerfield Terrace','Male'),(63,'Jerry','O\'Sheeryne','4 Tennessee Point','Male'),(64,'Michele','Wartnaby','51 Oakridge Court','Male'),(65,'Gawen','Visco','1304 Armistice Court','Male'),(66,'Pebrook','MacKowle','7 Miller Avenue','Male'),(67,'Wang','Grinham','475 Fordem Street','Male'),(68,'Skyler','Capozzi','26 Bonner Way','Male'),(69,'Sabina','Hanshawe','9601 Golden Leaf Circle','Female'),(70,'Gawen','Napoleone','2 Express Crossing','Male'),(71,'Emelda','Enderson','29 Hoepker Pass','Female'),(72,'Fidole','Skentelbery','550 Columbus Way','Male'),(73,'Jessie','Dowsey','47383 Londonderry Pass','Male'),(74,'Kerwinn','Gooke','9226 Welch Plaza','Male'),(75,'Linus','Brumbie','69308 Lake View Center','Male'),(76,'Karoly','Loraine','322 Helena Junction','Male'),(77,'Adaline','Rudwell','4 Buell Alley','Female'),(78,'Lewie','Wartonby','95905 Wayridge Point','Male'),(79,'Elsy','Fairham','9763 Vahlen Lane','Female'),(80,'Corie','Glassford','27388 Dwight Point','Female'),(81,'Massimo','Saggs','7 Doe Crossing Circle','Male'),(82,'Deeyn','Parkin','451 Tennessee Circle','Female'),(83,'Walton','Jukubczak','460 Hoepker Park','Male'),(84,'Tomasine','Skehens','7147 Gulseth Park','Female'),(85,'Juli','Gentle','5 Prairieview Avenue','Female'),(86,'Melba','Penelli','7900 Upham Drive','Female'),(87,'Kipp','Harford','74 Springview Hill','Female'),(88,'Selia','Averay','647 Loeprich Plaza','Female'),(89,'Kelley','Yeomans','4267 Fair Oaks Lane','Male'),(90,'Sharron','Borris','671 Spenser Parkway','Female'),(91,'Kerk','Klimochkin','84 Dovetail Drive','Male'),(92,'Van','Laxson','605 Gale Lane','Male'),(93,'Aldrich','Desouza','6 Farragut Parkway','Male'),(94,'Demetre','Ruperti','24659 Sauthoff Road','Male'),(95,'Rianon','Tringham','5 Marcy Terrace','Female'),(96,'Darda','Humbell','0 Towne Terrace','Female'),(97,'Iorgo','Dobkin','3 Bobwhite Point','Male'),(98,'Becky','Borrell','55 Mcbride Court','Female'),(99,'Libbey','Bradneck','8 Thompson Lane','Female'),(100,'Kaleb','Ainsley','70173 Ridgeview Hill','Male'),(101,'Imogene','Doman','1 Dorton Court','Female'),(102,'Floyd','Shawe','79385 Esker Trail','Male'),(103,'Franchot','Leach','15006 Eagan Place','Male'),(104,'Evonne','Garfield','2421 Northland Hill','Female'),(105,'Syman','Thunnercliff','8 Pearson Road','Male'),(106,'Georgi','Vergo','7 Florence Court','Male'),(107,'Eddie','Lesser','09187 Dapin Crossing','Female'),(108,'Godart','Siddaley','5225 Upham Alley','Male'),(109,'Mic','Bricksey','399 Mallory Point','Male'),(110,'Martelle','Deehan','46808 Rieder Plaza','Female'),(111,'Meridith','Lindeboom','23 Ruskin Street','Female'),(112,'Bev','Commusso','677 Meadow Vale Crossing','Male'),(113,'Adelaida','Banes','64022 Hoard Plaza','Female'),(114,'Chaddy','Ratazzi','41 Northport Crossing','Male'),(115,'Elysia','Gounin','5 Helena Crossing','Female'),(116,'Graham','Firebrace','68 Sutteridge Street','Male'),(117,'Salvidor','Domniney','53203 Sutteridge Circle','Male'),(118,'Rice','Slayny','70615 Farmco Park','Male'),(119,'Renelle','Laird','2 Mosinee Hill','Female'),(120,'Ag','Dentith','4332 Pepper Wood Park','Female'),(121,'Jacintha','Capon','0 Crowley Lane','Female'),(122,'Tommi','Botfield','559 John Wall Alley','Female'),(123,'Sherwood','Awdry','18397 Sage Center','Male'),(124,'Michel','Fairholme','68853 Kennedy Avenue','Male'),(125,'Even','Leonarde','6445 Autumn Leaf Center','Male'),(126,'Vaughn','Gerty','96 Sage Center','Male'),(127,'Luz','Schenfisch','2826 Browning Crossing','Female'),(128,'Oliver','Van Arsdale','5368 Johnson Avenue','Male'),(129,'Thedric','Winslett','4747 Gerald Point','Male'),(130,'Cristiano','Cast','60992 Bonner Drive','Male'),(131,'Kaylil','Kamena','1 Roxbury Parkway','Female'),(132,'Elisabetta','Hallor','03267 Jenifer Place','Female'),(133,'Cinnamon','Sockell','67794 Glacier Hill Point','Female'),(134,'Rowney','Kiljan','662 Colorado Circle','Male'),(135,'Antonio','Redit','5 Parkside Parkway','Male'),(136,'Giordano','Postgate','6 Lindbergh Terrace','Male'),(137,'Donetta','Eustice','6 Becker Trail','Female'),(138,'Alyssa','Ackland','28 Merrick Trail','Female'),(139,'Nikoletta','Geri','7345 Sunfield Terrace','Female'),(140,'Reinwald','Paolicchi','55 Mifflin Circle','Male'),(141,'Adrea','Darragh','9 Fair Oaks Plaza','Female'),(142,'Normie','McFarland','22846 South Hill','Male'),(143,'Georgie','Mealand','65 Kenwood Plaza','Female'),(144,'Bat','Chandlar','288 Buell Crossing','Male'),(145,'Rockwell','Beverstock','2131 Moland Lane','Male'),(146,'Genevieve','Morgue','8 Schurz Terrace','Female'),(147,'Kalle','Ortells','771 Kenwood Parkway','Male'),(148,'Letisha','Balls','2131 Hallows Alley','Female'),(149,'Belita','Parradice','0 Mosinee Park','Female'),(150,'Sutherlan','Woliter','76 Oak Plaza','Male'),(151,'Tory','Brittles','12 Maple Alley','Female'),(152,'Ezekiel','Jaggi','79 Starling Court','Male'),(153,'Libby','Goodburn','12235 Grasskamp Hill','Female'),(154,'Janos','Knevett','94528 Spaight Plaza','Male'),(155,'Darnall','Eilhersen','27630 Columbus Hill','Male'),(156,'Valma','Scurry','00 Northport Trail','Female'),(157,'Mike','Dusey','6 Ryan Terrace','Male'),(158,'Kathryn','Okill','46 Chive Junction','Female'),(159,'Alessandra','Valenti','2777 Blackbird Park','Female'),(160,'Tabby','Rattery','30 Stephen Parkway','Male'),(161,'Eveleen','Colbertson','27684 Vahlen Court','Female'),(162,'Cori','Wilshin','01954 Stephen Terrace','Female'),(163,'Tracie','Band','38944 Londonderry Point','Male'),(164,'Baron','Trigwell','87 Florence Drive','Male'),(165,'Fred','Gianotti','81 Mayfield Parkway','Male'),(166,'Fredrika','Sent','17489 Hazelcrest Trail','Female'),(167,'Stanly','Meir','8182 Ridge Oak Plaza','Male'),(168,'Nicole','Arrowsmith','378 International Trail','Female'),(169,'Cati','Burwin','0 Fulton Point','Female'),(170,'Michail','Gallard','68336 Parkside Center','Male'),(171,'Egan','Stallen','58551 Ludington Circle','Male'),(172,'Adelheid','Reichhardt','8548 Fuller Park','Female'),(173,'Clarance','Corke','8441 Hermina Terrace','Male'),(174,'Brigg','Walkey','2901 Darwin Street','Male'),(175,'Marty','Winkless','42 Rusk Park','Male'),(176,'Melodee','Chessill','706 Butterfield Alley','Female'),(177,'Lorant','Nendick','55 Redwing Park','Male'),(178,'Janey','Sherrott','271 Stuart Lane','Female'),(179,'Merell','Hindsberg','51 Johnson Drive','Male'),(180,'Ab','Hannond','42 Fair Oaks Junction','Male'),(181,'Chicky','Vel','44 Rowland Avenue','Female'),(182,'Cecily','Quinsee','6242 Florence Lane','Female'),(183,'Ronny','Stolli','27813 Oneill Way','Female'),(184,'Robinson','Hurlestone','1499 Maple Center','Male'),(185,'Florinda','Pinare','2089 2nd Lane','Female'),(186,'Andra','Caghan','1 Kinsman Crossing','Female'),(187,'Britte','Sisley','554 Memorial Lane','Female'),(188,'Abram','Ambrosoni','1 Sunnyside Lane','Male'),(189,'Maudie','Jerisch','20 Morrow Court','Female'),(190,'Maddi','Heymann','9 Randy Crossing','Female'),(191,'Amalita','Ingrem','8 Steensland Circle','Female'),(192,'Nataniel','Zeal','136 Sage Street','Male'),(193,'Salome','Bachnic','04677 Haas Junction','Female'),(194,'Sonja','Oram','43439 Surrey Junction','Female'),(195,'Adolphe','Gritland','71 Jenifer Avenue','Male'),(196,'Aeriel','Webland','60837 Dorton Terrace','Female'),(197,'Allie','Heinzler','33543 Merchant Center','Male'),(198,'Dode','Lydiatt','30 Summer Ridge Circle','Female'),(199,'Tabatha','Dalliston','6438 Anzinger Pass','Female'),(200,'Hurleigh','Speaks','71 4th Road','Male'),(201,'Tallie','Bark','316 Esker Drive','Male'),(202,'Zacharia','Graysmark','3867 Becker Lane','Male'),(203,'Ula','Franzolini','4 Wayridge Alley','Female'),(204,'Dannel','Aslett','957 Schurz Alley','Male'),(205,'Cleve','Betjeman','9117 Granby Point','Male'),(206,'Kelci','Bodker','07 Cardinal Park','Female'),(207,'Baron','Dikles','1513 Ridgeview Parkway','Male'),(208,'Dottie','Horrigan','53527 Riverside Road','Female'),(209,'Dalis','Emloch','1 School Plaza','Male'),(210,'Edgardo','Readman','85 Alpine Point','Male'),(211,'Christal','McCusker','24 Eagle Crest Lane','Female'),(212,'Kathye','Sharman','5 Independence Crossing','Female'),(213,'Cindee','Vale','12 Evergreen Court','Female'),(214,'Kelcey','Chevis','5 School Lane','Female'),(215,'Cecily','Tansill','55 Summerview Alley','Female'),(216,'Cybill','Riddiough','9 Wayridge Drive','Female'),(217,'Lynnelle','Fasler','97418 Elmside Street','Female'),(218,'Elysia','Guiel','297 Shelley Court','Female'),(219,'Philippine','Sangwine','1 Stoughton Point','Female'),(220,'Miles','Cornier','523 Logan Point','Male'),(221,'Ervin','Warhurst','7852 Bunker Hill Plaza','Male'),(222,'Harp','Quinnette','7 Myrtle Avenue','Male'),(223,'Kimberley','Jailler','64324 Nancy Crossing','Female'),(224,'Millisent','Wilcocks','415 Linden Way','Female'),(225,'Darius','Braley','8 Bashford Road','Male'),(226,'Kanya','Makeswell','399 Ridgeview Drive','Female'),(227,'Louise','Stamp','47 Anniversary Plaza','Female'),(228,'Agathe','Lapworth','251 Bellgrove Street','Female'),(229,'Deva','Schruyer','83 Schiller Road','Female'),(230,'Yurik','Wallworth','2504 Bobwhite Trail','Male'),(231,'Arv','Kuhle','277 Macpherson Alley','Male'),(232,'Shae','Mingardo','4643 Jackson Avenue','Female'),(233,'Adeline','Marvin','9611 Del Sol Place','Female'),(234,'Cross','Ferraron','02 Delladonna Drive','Male'),(235,'Kayla','des Remedios','22261 Morrow Circle','Female'),(236,'Pascale','Easlea','7 Roxbury Terrace','Male'),(237,'Austen','Keaysell','4629 Gale Terrace','Male'),(238,'Quentin','Dullaghan','30145 Alpine Alley','Male'),(239,'Bear','Eake','2299 Lindbergh Alley','Male'),(240,'Kevan','Oyley','8 Bobwhite Center','Male'),(241,'Barny','Carlow','180 Rusk Trail','Male'),(242,'Lothaire','Gatward','4 Petterle Avenue','Male'),(243,'Chicky','Lope','2 Drewry Junction','Female'),(244,'Linet','Mundall','322 Ohio Park','Female'),(245,'Jessika','Boumphrey','19934 Morrow Circle','Female'),(246,'Edd','Adam','36689 Bunker Hill Place','Male'),(247,'Dimitri','Sellar','838 Prairieview Hill','Male'),(248,'Leonie','O\'Bradane','2040 Corry Circle','Female'),(249,'Eolande','Lathbury','9520 Prentice Place','Female'),(250,'Lydie','Gothrup','7244 Havey Place','Female'),(251,'Dario','Joliffe','7969 Heath Street','Male'),(252,'Gale','Wasson','40 Westport Hill','Male'),(253,'Carrissa','Le Port','85 Gateway Lane','Female'),(254,'Yolande','Abbey','55 Texas Terrace','Female'),(255,'Claire','Broadbear','1 Service Circle','Male'),(256,'Sybilla','Pevreal','0431 Canary Circle','Female'),(257,'Agustin','Rosborough','18780 Farwell Avenue','Male'),(258,'Somerset','Lamort','341 Moose Parkway','Male'),(259,'Werner','Boissier','81283 Ridgeview Circle','Male'),(260,'Cad','Walak','48997 Walton Way','Male'),(261,'Terri','Sheer','0440 Bobwhite Lane','Male'),(262,'Anastasie','Aveline','57 Shopko Street','Female'),(263,'Marcelia','Van Der Weedenburg','4 Heffernan Junction','Female'),(264,'Clint','Germain','268 Springview Trail','Male'),(265,'Josy','Fransseni','41 Nevada Drive','Female'),(266,'Ellette','Bilby','52 Elgar Court','Female'),(267,'Wenona','Othen','04720 Gale Terrace','Female'),(268,'Jacintha','Nern','9844 Lakeland Way','Female'),(269,'Gretchen','Childers','2 Holy Cross Pass','Female'),(270,'Granger','Waye','439 Blue Bill Park Drive','Male'),(271,'Vernice','Harnor','195 Toban Parkway','Female'),(272,'Wenda','Eddie','7115 Buhler Road','Female'),(273,'Inna','Brinklow','91545 Drewry Parkway','Female'),(274,'Rubia','Sondland','95977 Gina Drive','Female'),(275,'Anna-diana','Switland','735 Nova Point','Female'),(276,'Boy','Hedgeman','44983 David Way','Male'),(277,'Lisha','Brum','3229 Pennsylvania Hill','Female'),(278,'Dillon','Hammill','16393 Susan Pass','Male'),(279,'Ginger','Hinchcliffe','6 Jenna Circle','Male'),(280,'Karalynn','Glynn','17951 Hermina Court','Female'),(281,'Kerr','Brodeur','197 Sheridan Road','Male'),(282,'Shelbi','Denver','68 Porter Lane','Female'),(283,'Aida','Clearley','14422 Montana Hill','Female'),(284,'Blane','Roff','768 Summer Ridge Hill','Male'),(285,'Jordanna','Pigford','8 Spenser Park','Female'),(286,'Marcellina','Fenelon','94 Ruskin Circle','Female'),(287,'Roby','Buttwell','84150 Mcbride Lane','Female'),(288,'Charmion','Crowcum','74624 Paget Junction','Female'),(289,'Thor','Brimicombe','1671 Grim Drive','Male'),(290,'Milly','Pentecost','66571 High Crossing Court','Female'),(291,'Brnaba','Oxbrow','5 Pleasure Alley','Male'),(292,'Forest','Brouard','7 Fulton Terrace','Male'),(293,'Brianne','McCathy','6 Mccormick Road','Female'),(294,'Cordey','Dampier','94119 New Castle Trail','Female'),(295,'Berry','Markel','8017 Northland Avenue','Female'),(296,'Dagmar','MacPaden','67881 Express Circle','Female'),(297,'Kenton','Moger','619 Londonderry Avenue','Male'),(298,'Bernadina','Bosden','47 Judy Junction','Female'),(299,'Penn','Ciementini','578 Fordem Drive','Male'),(300,'Zacharias','MacSweeney','725 Meadow Valley Hill','Male'),(301,'Sherilyn','Scullion','8 Springview Junction','Female'),(302,'Dane','Mocquer','5316 Amoth Way','Male'),(303,'Donnie','Clapperton','852 Grasskamp Court','Female');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Login` varchar(50) NOT NULL,
  `AccessKey` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Login` (`Login`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'leandro','admin123'),(2,'flavio','user123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'rest_with_asp_net_udemy'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-31 18:30:09
