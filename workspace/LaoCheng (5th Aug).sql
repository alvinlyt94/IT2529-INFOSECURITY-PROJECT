CREATE DATABASE  IF NOT EXISTS `laocheng` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laocheng`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: laocheng
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `nric` varchar(9) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `DOB` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  `postal` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `bankAcctNum` varchar(30) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `pinPassword` varchar(45) DEFAULT NULL,
  `sgdAmount` double DEFAULT NULL,
  `eurAmount` double DEFAULT NULL,
  `usdAmount` double DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `verifyCode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcustomer`),
  UNIQUE KEY `idcustomer_UNIQUE` (`idcustomer`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `bankAcctNum_UNIQUE` (`bankAcctNum`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (22,'Oneal','Samuel','J1M 2I2','root','purus.Maecenas.libero@quisdiam.org',NULL,'P.O. Box 510, 7092 Nulla. Street','RUSSIA','59327','83423536','73571','root','4',754,657,962,'Female',NULL),(23,'Fitzpatrick','Florence','M0S 9T3','tanamos','alvinlyt94@hotmail.com','27/06/1993','877-2551 Amet Ave','SINGAPORE','55658','83922912','94139','4b0b26f828a13051a2c0dddee3919600','123654789',100.44,139.24,766.13,'Male','Verified'),(24,'Daugherty','Herence','T7L 9P4','Karyn','convallis@nec.ca',NULL,'Ap #942-6487 Arcu Avenue','ROMANIA','A9G 3I9','83532532','99375','PFM82NXF5XV','5',702,460,1028,'Male',NULL),(25,'Marshall','Reuben','H4H 0V2','Xenos','tellus@Phasellus.com',NULL,'P.O. Box 382, 4934 A, St.','NEW ZEALAND','93078','92143124','82810','CDD31EWL2JN','3',474,848,754,'Female',NULL),(26,'Hart','Hector','T2D 2Z7','Colton','congue@eueleifendnec.org',NULL,'Ap #277-5988 Facilisis Rd.','OMAN','H7D 1E5','84214211','79885','BKJ27CGX6IJ','4',524,956,378,'Male',NULL),(27,'Sawyer','Paloma','H5U 6V0','Hamish','sit.amet.ante@eutellus.ca',NULL,'3557 Suspendisse St.','YEMEN','N4G 9E9','95324421','21864','VOV24ZTY8SA','9',60,491,153,'Female',NULL),(28,'Brewer','Alma','Q0G 4I7','Ronan','pellentesque.massa@Uttinciduntorci.ca',NULL,'Ap #314-2200 Ultrices. Road','TAIWAN','41052','95845355','73372','FXG05YZC8RM','6',927,677,526,'Male',NULL),(29,'Mosley','Simon','F3Y 5A9','Addison','auctor@nonbibendum.org',NULL,'114 Sit Avenue','MALAYSIA','N6T 1F6','95736264','26138','WNL87LKD1MB','1',487,189,46,'Female',NULL),(30,'Workman','Dorian','Z5F 6R7','Channing','risus.Duis@tortorInteger.edu',NULL,'4520 Ornare Rd.','SINGAPORE','S2O 7C8','83462536','73442','JJU57PYU6WI','6',294,326,314.01,'Female',NULL),(31,'James','Quemby','L8J 0E0','Colette','nunc.In.at@id.org',NULL,'3959 Quisque Rd.','INDIA','F5O 5Z3','96464644','99114','CZU27PQH1QX','1',41,347,495,'Female',NULL),(32,'Conrad','Graiden','W1A 0J2','Lynn','luctus.aliquet.odio@atauctor.ca',NULL,'3635 Fringilla St.','CHINA','O5Q 1R9','86464633','93612','AEG61AGK7QK','7',999,189,795,'Male',NULL),(33,'Bentley','Lacy','O4C 9R6','Jamal','at@nisl.org',NULL,'Ap #157-5617 In Street','CHINA','F2V 3T3','85235436','70909','KMV72YAW8IO','10',866,895,98,'Female',NULL),(35,'Moon','Chandler','D6U 9C6','Casey','quis.tristique.ac@malesuadamalesuada.com',NULL,'P.O. Box 650, 7420 Ligula. St.','CHINA','54626','96436346','80331','UZB97LQH8AI','10',614,77,744,'Male',NULL),(36,'Battle','Dolan','L4D 1R7','Nelle','porttitor@Loremipsumdolor.com',NULL,'P.O. Box 835, 2975 Feugiat St.','CHINA','22235','94747544','71508','VMM56XLK1HP','3',95,904,728,'Male',NULL),(37,'Morris','Mallory','X4F 5R7','Ray','laoreet.posuere.enim@in.org',NULL,'Ap #412-5728 Nibh. St.','CHINA','88155','84646544','1688','OQL35LLZ1HC','7',651,673,731,'Female',NULL),(38,'Mcpherson','Candace','F9V 9Y7','Shay','metus.In.lorem@necdiam.ca',NULL,'996-4982 At, St.','CHINA','71357','85654633','49154','ITQ05LWY7SH','8',96,283,269,'Female',NULL),(39,'Scott','Serena','F9K 3L0','Branden','turpis.Nulla@risusDonec.ca',NULL,'P.O. Box 205, 5920 Quisque Avenue','CHINA','82760','82222245','1288','ICN46XCY7MX','10',591,493,197,'Female',NULL),(40,'Fitzpatrick','Kaitlin','G9G 0W7','Sheila','tincidunt@magnaSed.org',NULL,'2991 Curabitur Rd.','CHINA','77529','98888888','83105','TBF68BRL5UB','8',374,1,79,'Male',NULL),(41,'Hudson','Hayden','A4W 9F8','Octavius','risus.Morbi.metus@nunc.edu',NULL,'8707 Elit St.','CHINA','W4G 9X6','97547475','95699','WOH65RPM8KR','8',288,48,364,'Female',NULL),(42,'Alvarez','Kaitlin','Q1O 6L4','Brady','rhoncus.Nullam.velit@ornare.com',NULL,'P.O. Box 887, 1066 Dis Av.','CHINA','40671','82352353','11379','RBT01KLE7TN','5',920,381,591,'Male',NULL),(43,'Page','Rebecca','J0R 9X2','Gisela','et.netus.et@nunc.ca',NULL,'Ap #607-1514 Fusce Road','CHINA','88355','94636523','68484','QNN95JDQ3QB','10',181,186,733,'Male',NULL),(44,'Vasquez','Orlando','X8Z 8G7','Nathaniel','habitant@neque.org',NULL,'470-4656 Tincidunt Avenue','CHINA','12882','84525233','53840','NRI23JIP0BM','10',451,884,425,'Male',NULL),(45,'Sharpe','Sade','G3K 4L0','Lewis','pharetra.felis.eget@gravidamauris.com',NULL,'9652 Eros St.','CHINA','S9H 2U0','84545245','39242','VPN43IXI7FI','6',183,676,732,'Female',NULL),(46,'Kirby','Hayes','E4D 6V8','Meghan','vitae@antedictum.com',NULL,'P.O. Box 270, 2056 Est Ave','CHINA','98542','95234523','75725','LRF17FOX5EP','8',365,798,373,'Male',NULL),(47,'Terrell','Gannon','X7P 6X4','Lee','Integer.aliquam.adipiscing@Etiam.ca',NULL,'P.O. Box 578, 6270 Sit Road','CHINA','14553','83252353','93172','NBA96UYR8SN','3',944,63,831,'Female',NULL),(48,'Ewing','Gail','Q1N 0H3','Carissa','ut.dolor.dapibus@habitantmorbi.ca',NULL,'220-1616 Ut St.','CHINA','99072','92352533','36946','XLR26KDH4AJ','7',376,487,773,'Female',NULL),(49,'Park','Devin','S9S 4A6','Hedwig','consectetuer.euismod.est@dictum.edu',NULL,'635 Facilisis, Rd.','CHINA','U7U 6L0','85235335','27491','SLL13DHO2XE','2',947,474,390,'Male',NULL),(50,'Melendez','Chaim','T5J 1W1','Selma','quam.dignissim@rhoncus.ca',NULL,'Ap #210-8758 Velit Rd.','CHINA','Z7U 6X5','95124312','13830','ZKM61TIC4UV','6',664,655,76,'Female',NULL),(51,'Nieves','Raja','D8U 4H7','Brianna','arcu@cursus.com',NULL,'718-6976 Sapien St.','CHINA','X4O 6E6','95235324','45701','TSF70GJN5PZ','3',291,115,16,'Male',NULL),(52,'Porter','Lamar','Y6V 6C7','Ariel','ornare.lectus@condimentum.ca',NULL,'931-6185 Aliquam Road','CHINA','55662','86253353','19326','AFZ72PAN9US','4',268,628,944,'Female',NULL),(53,'Lopez','Lucas','U1D 1L6','Prescott','Cras.lorem.lorem@rhoncusProin.com',NULL,'187-1284 Commodo St.','CHINA','22978','84652523','72603','XLO63UAQ2XU','7',12,893,868,'Female',NULL),(54,'Haley','Madeson','B2H 0V2','Eve','ipsum@ipsum.ca',NULL,'5189 Orci. Ave','CHINA','I1L 2X8','95325233','83377','CAW33WOL7MN','5',313,48,770,'Female',NULL),(55,'Romero','Willow','W2N 2S8','Deanna','Ut@lectus.ca',NULL,'1638 Amet Avenue','CHINA','X7N 6N4','84521343','53701','TNU06VEO6HO','7',441,378,33,'Male',NULL),(56,'Wall','Bell','Z8N 3I4','Brett','Nam.interdum.enim@disparturient.org',NULL,'988-1109 Dui. Street','CHINA','22132','97854756','22089','TRK18GGL5WX','10',253,910,3,'Female',NULL),(57,'Montoya','Kerry','Y1T 5A4','Sigourney','at@sed.ca',NULL,'Ap #250-9486 Hendrerit Rd.','CHINA','12778','97968765','64700','FYB02RGR4TF','1',909,166,834,'Female',NULL),(58,'Strong','Hanna','V3E 7R9','Sierra','ullamcorper.Duis.cursus@Intincidunt.com',NULL,'563-3133 Enim Street','CHINA','54733','86457664','17247','JYH27FWK9DZ','2',610,502,498,'Male',NULL),(59,'Cardenas','Dacey','L9Q 9L2','Jakeem','aliquam.eu.accumsan@nonduinec.edu',NULL,'Ap #975-1436 At, Av.','CHINA','M6Y 6X4','84526464','56023','AUU98QDC6ZR','7',123,526,396,'Female',NULL),(60,'Hurst','Derek','O7D 7E6','Hillary','placerat@sed.ca',NULL,'6321 Metus. Av.','CHINA','P1T 9M0','96436346','55329','HJU65AZB8VY','7',460,615,431,'Female',NULL),(61,'Walter','Theodore','I4W 2S4','Clio','Integer.in@semperduilectus.ca',NULL,'318-4265 Ultrices. Rd.','CHINA','23312','86235235','72148','YKO18ZVK9RA','3',922,453,184,'Male',NULL),(62,'Nolan','Taylor','D4F 9G1','Charles','eget.nisi@enimmi.com',NULL,'P.O. Box 529, 5882 Tristique St.','CHINA','72941','94523432','8004','ADM27BPQ3QR','6',118,245,875,'Female',NULL),(63,'Justice','Ross','A2I 8A0','Lucius','Nulla@Cras.edu',NULL,'P.O. Box 191, 2489 Non, Ave','CHINA','R4A 2G0','85464564','39585','LRN67OCV5WY','7',100,285,468,'Male',NULL),(64,'Harrell','Chester','Z0T 1E4','Kyra','magna@rhoncusProinnisl.ca',NULL,'144-6739 Urna. St.','CHINA','D8U 5A7','96253454','54928','SEM97HDR6HB','8',964,146,469,'Female',NULL),(65,'Collins','Gage','B9K 5G5','Hoyt','aliquet@variusultrices.org',NULL,'416-2499 Interdum. Ave','CHINA','69383','84562524','41639','AZF40HWW9AP','3',387,858,482,'Male',NULL),(66,'Hutchinson','Hasad','W2O 5B4','Candace','metus@ornarefacilisiseget.edu',NULL,'734-2353 Nam St.','CHINA','90144','84525444','2240','ORN76IRA5KA','9',106,241,519,'Female',NULL),(67,'Simon','Priscilla','B4F 6R8','Kiona','Nunc.sed.orci@ligulaAeneaneuismod.edu',NULL,'Ap #344-7530 Tincidunt Street','CHINA','52039','96553454','7837','RMB22CFL1UR','9',63,435,128,'Female',NULL),(68,'Austin','Katelyn','D9F 5Z7','Anastasia','elit@elitdictum.ca',NULL,'Ap #728-4372 Nec Road','CHINA','74680','96435433','79616','IUX39RUE4AN','10',716,960,736,'Male',NULL),(69,'Moreno','Justine','R0G 4B7','Chiquita','in.consequat@ultricies.edu',NULL,'Ap #641-6514 Ut Ave','CHINA','42517','98979699','19352','PET77EUG4QZ','10',224,640,940,'Female',NULL),(70,'Rutledge','Walter','S5T 4V5','Wayne','egestas@mollis.edu',NULL,'4021 Mauris Ave','CHINA','C3A 1C9','95234235','73159','FLF15GFH4LB','4',832,578,945,'Male',NULL),(81,'Alvin','Lee','S9412039E','alvin','alvinlyt94@hotmail.com','1994/09/26','4021 Mauris Ave','SINGAPORE','528192','87654356','12345','9753fe594481233c667e457ef9ffdcdc','',NULL,1000,1000,'Male','Verified'),(82,'haha','haha','haha','hahaha','haha','hah/ah/ha',NULL,'SINGAPORE',NULL,'haha',NULL,'219bb9ce32ee1610d6f5fe133b9500b9',NULL,NULL,NULL,NULL,'Male',NULL),(83,'fwefew','fwefwe','fwefew','fewfwe','fwefewf','fewf/fw/fe',NULL,'SINGAPORE',NULL,'fwefwfe',NULL,'d5aec5836fd0c6a66fc982f3d70359a6',NULL,NULL,NULL,NULL,'Male',NULL),(85,'fhwhfwef','fwefewfwef','wewe','yahahah','fwefwefwefwf','fwfw/ff/we',NULL,'SINGAPORE',NULL,'fwfwefwe',NULL,'ade9ad9584a89e177e8d17426f809318',NULL,NULL,NULL,NULL,'Male',NULL),(86,'ewfef','wefwewef','ewfewfew','fwefewfwe','fewfwefewfwe','fwef/we/fw',NULL,'SINGAPORE',NULL,'fwefwfwe',NULL,'5eab523943bd093a1b596254ceba29f0',NULL,NULL,NULL,NULL,'Male',NULL),(87,'fewfew','fewfew','fwefwe','fwefwef','fwefewfwe','fwef/fw/fe','fwefew','SINGAPORE','fwef','wefewfw','efewfwe','ae840126e5aabddf911a1d8a10723a78',NULL,NULL,NULL,NULL,'Male',NULL),(88,'LOL','LOL@','S99292E','alvin2','alvinlyt94@hotmail.com','geu/u/g','ruwurewu','SINGAPORE','uwuueru','83664422','8218281','4e9c238677f2d9dc2cf1ef8d7c553030','123654789',NULL,NULL,NULL,'Male','Verified');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giftcoupon`
--

DROP TABLE IF EXISTS `giftcoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcoupon` (
  `idgiftcoupon` int(11) NOT NULL,
  `idcustomer` int(11) NOT NULL,
  `giftid` varchar(45) NOT NULL,
  `expire_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgiftcoupon`),
  UNIQUE KEY `giftid_UNIQUE` (`giftid`),
  KEY `giftid` (`giftid`),
  CONSTRAINT `giftid` FOREIGN KEY (`giftid`) REFERENCES `orders` (`giftid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcoupon`
--

LOCK TABLES `giftcoupon` WRITE;
/*!40000 ALTER TABLE `giftcoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `giftcoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_table`
--

DROP TABLE IF EXISTS `group_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_table` (
  `Group_ID` int(11) NOT NULL DEFAULT '0',
  `Group_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Group_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_table`
--

LOCK TABLES `group_table` WRITE;
/*!40000 ALTER TABLE `group_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_table`
--

DROP TABLE IF EXISTS `permission_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_table` (
  `Permission_ID` int(11) NOT NULL DEFAULT '0',
  `Accessing` varchar(50) NOT NULL,
  `Action_Taken` varchar(50) NOT NULL,
  `Group_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Permission_ID`),
  KEY `Permission_Table_FK` (`Group_ID`),
  CONSTRAINT `Permission_Table_FK` FOREIGN KEY (`Group_ID`) REFERENCES `group_table` (`Group_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_table`
--

LOCK TABLES `permission_table` WRITE;
/*!40000 ALTER TABLE `permission_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `prod_title` varchar(45) DEFAULT NULL,
  `prod_desc` varchar(45) DEFAULT NULL,
  `prod_price` decimal(10,2) DEFAULT NULL,
  `prod_owner` varchar(45) DEFAULT NULL,
  `prod_ca` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `idproductView` int(11) DEFAULT NULL,
  `prod_images` blob,
  PRIMARY KEY (`idproduct`),
  UNIQUE KEY `idproductView_UNIQUE` (`idproductView`),
  KEY `idproduct` (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (27,'AAAAAAA','AA',111.00,'tanamos','Shoes',11,NULL,'ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0ú|\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0üðÏ„.|Vgû;ÀžFÝÞcœçÀ>•»Àí^`žÃžywÿ\0âj×Áß6 1‘˜¿özõ+H29åbq•)ÔqŽÇU*Q”nÏ*O€\ZË‹7ŸYÿ\0ˆ§§ìñ­ÉÒçK?öÒOþ\"½šÖØ/<óïS!8 c¥r¼Æ·CO«Äñ&ýŸ5•\'7ZXÇý4“ÿ\0ˆ¦7À-esþ‘¦œÓGÿ\0â+ÚçÐÁ9ª“ÉÎ§Õ?ÚUü‡õhØñ³ð\'XSƒq§ßÇÿ\0âj9~	ê°õ¸ÓÏâGÿ\0âk×ø\0U9äøqSý§_È^Â”Ið{S9žÇößÿ\0‰¦ÿ\0Â¢Ô¿ç½ýöÿ\0üMzmÁ0zµ@q¸b¥æ•íÐ=„7„úŒgk/ÁÛÿ\0‰¤o…ZŠŒùÖ÷Óÿ\0ñ5è2>öã#hçŠcLXž	ô£ûN¿V¾àXxÿ\0\n»PÆ|ë?ûí¿øšXþêŒ‰¬‡ÕÛÿ\0‰®é”ŒõÁëHÒ¬K€OåT³*þEýZ\n~ß©9žËö›ÿ\0‰¨dø{yí3Zÿ\0ßMÿ\0Ä×o-ÆÜžqíTä˜™	ëŒV°Ì+=Ét rRxî>³Z~ßüM4xìç÷¶Ü´ßá][á›8Å$mŒÕýz©>Â-ÿ\0%ßüöµÿ\0¾›ü)WÀ7œKkÇûMÿ\0Ä×TXmõÍ	(AÞ¯V±Ë‡×±æÚýw7ÿ\0R\'Ãké:Mgø»ñ5Ó7ÏÏJ|S²	È©xúÝýŒgþ…öNn,†=]¿øšQð»P=&³?ð&ÿ\0âk±Žç#°*cpBp~µ“Ìq×Ü?a‡_…÷ìp&³ÿ\0¾Ûÿ\0‰¦ËðÎú Ïg‘þÛñ5Ü}£`-ÓúÕ[«0“ÀïïDsC}>á{lŸob82Úžÿ\0y¿Âš|x?å­¯?í7øWU4žaäûTM)\0­n±ÕŒÝ(œØø}zÃ‰mHÿ\0y¿ÂøðõÖ¿÷ÓsúWL.	_JzÈqœƒ‘éG×«ÙÀæáíá?ë­ü	¿øš_øWW¿óÚÓþúoþ&ºu|àç8©W¡Ï®j^>·qû8¢ü8¾n“ZßMÿ\0ÄÒ‡w¬ûDÖ™ÿ\0y¿øšêÂíì)¼E&ÏJ>·ÀJœPü>½6×Ÿö›ü(?ïÿ\0­µÿ\0¾›ÿ\0‰®¢Iþr@éÞ‘ï7‘ŒzæŸ×k	ÒC™?/@Ï›k]Íÿ\0ÄÒÂ¿¼Ïúë_ûé¿øšéÍöáÛ\'Ò;78ÏÖŸ×kw³‰Ì7ÃûÅÿ\0–¶¿÷Ó…!ðàómï¦ÿ\0\néÚ_;“Ò”Jc\\åG×kw$NXx\nìÿ\0Ë[n?Úoþ&šþºCÌ¶ß÷Ó…u%ùëøÔ21”ú\n¨ãj½ÁÓ‰Í\\ƒþ¶Øÿ\0À›ü)Á×1õ’Ìÿ\0…tžPO9¦\\‚@Ï9àÖ‹P\\ˆæÿ\0á¸Ïß‡ó?áCxZáF|ÈâÂº\0F)$ŒH9ªúÔÃ‘ôÞžBð•KØgÒ³«­ÔÝ:áGüóoäk’®¼=IM7\"\'‰ð\rÚ©ôòözõK(~Uœ~5åß³ê	$ÕAÿ\0Sÿ\0³×¬XÇû°HëÓ>µããÿ\0Œþ_‘ÙCàE¨“jp;RI\"Ä98ÏðÁWžÕRösÀ#æ¸Y¼Hî\'ºãÓFâ|ƒÍ-Ä¹äzúý*œ÷!U€ÃqÖ¥j´an/ð§$ñ“ÅTyù<Ž¾•÷~o­S{ÂÌqÏÖš†—$žix<Ö«Ëq¹Ž	ãð¨¤—{ä•Ò¢’àd´ûÔÊ*ÀJHQ×\'ëQK.Üä¨ü*¼×!NN:útªò^c Ï¾}¨TÛìZ–äÃŠ¯%îã€AÅV’`I\'ŒóPÉ8\0\ZÞ4’!Í¼„¶IÀ5Jàçð¨$Ÿ¥0M½H©­•2\\Û&7=©ù#¨5˜°p)>Ò¡±ÓÞ©@Ï˜œ»däRFçAP½Þ†>ôÁrsÊŠ¥\nM–bO\'Ô‰7Aß×I®=H§Ç0-Æx÷¤é6hÇ!#ñ9º8bOåT`“ŽMI¿ÔX8jRš\'k’sÜûÔ/\'±×—npZ­-É\n@<š¨ÀR˜æ”†$Ž¼õ¤’|Œ°xªÒKŸ¼IÏjo˜ qõÅt*f.we´\0=>€Ó–@Ø#š¬²rr\0 ¹\'°=&[YŠ\Z“í!R¦;óNó8Ïó¨tÊLµ%Èè0\ZŒÎ\\“ÏçUÞNzâ™æàòÙ>Æ©SÉþÑœò9¡.÷±È>µ_í qÅ5§1øU(Ùe¦:ÀRyì:üê¿ÚrqÄRý Ïòªä‘`Ü9bxçëJ·L cñªÑÊp\0 ñR$™àã4œ@œ\\óŽ9ö4ìqéUúš| äžqÚ§•\0õ•K`g4—t}hu\nÛ¾î8¤™ÃFlÐ·”R–¨\n×þ‡už†\'Çäk”®ªéÐ.?ë‹è&¹Zô03©ÐôÙù¶Éªã¯îOþŒ¯[±à\0}¿­y/ìö¹“U>žOþÔ¯Z¶”`ŒŒ~<W•Žþ<¾_‘×GàD³0rx¬ëÉ89ëW.ß	Î9¬ËÙ6³œç\0ŽµÉc[•®¥Ø<ŸzÍ¸¹ùNtî{Ô·W%²ryç¯JËº¸É\0\0ÿ\0\ZqˆÅÉ¿UyŽãÉàÑ<Ù\'‘Ï½Qžs!!N9ëZr‘)%±bKÒª	Ï8¨&ºÈ ƒŽÕUçÚpONµ·{\0ç¯N”{0æv%’bW$Žµ·@)Á®jn\n°÷ïQMŸ(@?­k\Z}Ìœ»’5À åŽÞ¨ÚàÅ@ÇhÏQQFìîpØ·TÉr,Håó“‘M\\rA\" 3eñœúv»É8Ü*ùIs%i9È$šã·_ZhBÞŽÙ¦%¶îÎ8Í\n\"ç±3W#·4ŠýºûÔM»ûÇ©<àÑb\\îO‘ê)AÇJ®¬ÍÑÉ©Â•úRq°”‹Lv’3×š—Í}ãøÕEb˜äàv§;_×­dà‚ä³NŽsÛ­Vš]Íè=+ªIª¯1\'©­!9<¬ùOôÏ9ð·çL-žô„ßj¢J“&œ\r$räƒQ[ø³øÒƒ´`tô¡Ä9™ag g9úšWœ0ˆüj©\'=zÑ¼“ŽF{æ§‘\Z)™ìãÒ£(`NE0¿Ä:MÀwñªQ\'°ã1-ÐýiK’1Ç9\rÁP³ò>Qs	ëÇ=})|ÂÏÁ\'Ž¦£ß–ÆqïNö<þXWDÉ +œ‘Å>#¸ç\'¥@ŸêÇdT±\rŽ2Ýª$‡rxÎ	4ìÜãÓ4ÔRXJyäzgô¬bBrsŠ¯“µˆÈÍ!}Ê;ÑI .vÅvŒÒÓd-0+ÞœØÜ×&þF¹Zê®ÆËƒÏ1¿þ‚k•¯Cð³:‡£þÏ¯µµa×\"ý©^¡Î\0é‘Á¯\'ør-¥Ô³üB/ýž½*;ù;±ÎkÊÇ/ßKåùT>_žälçñYš„Ä)ç9íÖ5à+Œ‚}‡JÏ½¹¶OA\\©.åÚ¸Èç ÍgM/§×ùÔ“Nøb³îîÃ7ËëÍj¢Kdw—Xm óÔÕ¿\0ø_ø«ã­#ÂþÒ5wÄ> »ŽÃNÓ¬`i®/\'vÂÆŠ ’Oè=dÜ¾Þ„Â¾²ÿ\0‚K|WÐ¿fˆ¾0ø¿«EÞ«á- é>µ2yrK©ßBÈÝU–Ò+¡¼r†PÃ\nëÃPujªk©„ä ¹™Õé¿ðDh:\"_øãÄVž¶Ì!0*Dã!Ñ%¹’(î*þS‘«FÄ:²®}ßüßÀLROŠzÂ²œ&ÇH¸Ïà5!XŸ\Zþ4ø£öŽñ­ßˆ<U©Ë©ÞÝqÈÇÈ²@0‘Å;U`\01À®MÒ®l´˜\"Ô^«ØÓMAS“Èã•}¥<Ž‚ŠOï<Éc\'}EÔ¿à”º=Ë¤üWrÊ¥ÿ\0‡bR=‰†öAŸ~•Íë_ðIßÆvé~;ð~§éZß¬§þ3ÿ\0×­ÿ\0„_¼Mñ?GšóÃ·:-ºý´Ù´W‹Lˆ±9lË©P“#vÃ#6©=8ý˜þ,XßÜ[f=éµ–H¦[+›;6\\²BûI%ZNà\0¤‘ò2žOE; X¦õ<Äÿ\0ðMOŠ¾¸òãOj%þìkâ‹+‰}6AzðLÄö\n„×•üQøã¿—QGã?x«ÂFå¶ÂÚ¶—5¤wÕ»¨WpTkÝ›âßŽ<¬\\égTñU¬–·SZL²J^Ñm\r¸`bTd•oJ“Eý¦5ïxSQÓf\'ìHöÓÛIjÃwŒdÉ\0Lªs’#9ÊƒXÔÉRWƒ)bSzŸ. Ëœã·­{Çìÿ\0Þø£ÿ\0ø“y¢|=ÒM?G1lk3ÆÆÇJówùHì>ô²l}‘ƒ¹Ê9¯ñ†Š|-â›«pž\\!ƒÄ¹$*0È\0žN3Œ’Oœ×ôKÿ\0Ñ,ÿ\0gø&7‡,ü<‹kâ\ZHÞ Ö¯ã!einyhOPRØB©Œ$“ûÆ¼hPjn2èoÍØùsMÿ\0ƒN£Ðí?|ik=D*™b±Ó`p„ö!¥Ü§¶J¯}ÿ\0­ø|E\"ÙürÕ#Ÿ¤~nƒjéŸ|\\©ü«ôúëH¿ºhZ\"•›tÅ¢-æ¯9Ç?Ê’Kv‰ñµ“¡ü9®eÁsò/Ä¿ðj÷-awÑ>/xSR#î­æ”ö¹üRy+É<cÿ\0ß~Ò>ŽV²Áþ!Tÿ\0C½¸R{ð^\0£ñjý\"¼ý®|u«¼ãÆü95ûI1„Ei5¼$Ä.ôpª\0#‚GÈÜž§½øûJè>0ñ=Æ—§üC×|_¨Ind·±ºÒÒÒDó3DPÇpqÐ÷4¥F Ãˆÿ\0ðIßÚ/á2J÷ÿ\0	üK©ÇÌ ˆµ£»%£I\"vQ^{o.u-­Ì3[][¶Éa™rDÃøYN>ÄWôãûMþÖÚì·ð¾ßÅ~\'±ñ­¦>µi¢ˆl¬VòxÞâS\ZÌQˆýØÁ$ç\'å\0e…|¹ÿ\0«ÿ\0‚lèÿ\0´—Á-{â†´»k/ˆ¾²›QÚÄâui\n—šVTRè9\0«`î_\Z¸hÚñ\Zgáh¸Í<ñQÄw€ÃXdcÐòåOs‘^s]~¤SLG§Z©!Žpy©egz,rx+h\"yˆüÃÔgëšk9<3tý)Ì6¶J®í½óë[¤˜®Z¶`3–ýjF•Wø…T6/Aºœî€ÒpM‚eŸ9OzBà£ŸÒ«<æZå³Œ­\n™\\Ö\'/¹ùaùÒÁ dâ«yœð(ó[üâ´ä1;MÆ3ƒêHâ…”ã’O½@d\'§«àðr(åÑd€2\rL¹jµ»{(¡ïS,¿5”¢$S´cò§«dõÆ8¦R†pO5“*åˆ®	p95*ÈçŠ¨²ìÇ¨§´üŒïÅC‰ªe¬â“p¨DŠü“CË’Oÿ\0ª£”w&gÜÔ2±“Ç¥ ›ÓŸ¥1¤.FNzb©!‰}/úÂõýÛ*åë¤½pÖSñÿ\0,ÛŸÀ×7]ø]™”ÎËá›$¿ã ùyÿ\0Ç«¾Šÿ\0w?yÏÃ¡l÷³†Ùÿ\0³W]ØV\'¨<×Œê¿ë¡½&ùM£~d¶?\Z¥szÎO\\^õOíÃÔUk‹ÒO®kDÓ˜uåÞÜcóŽjŒ²m\\÷è=©g—<TngÁ>§µmô6%õÉT#’Mwÿ\0Ü·ƒ¢yõ·8ÿ\0ilÊ©Ç¨ó+Íä˜,œþ&½á¨|)jÊpµ1<vÐýš½¬š	â ž×9q’µ&wúüGÇ2ìÿ\0è’€8ód»„ÿ\0ã¨Ãõª3~Ât…ÿ\0Fñ&‘vV}$E¯·eMªÄs“š¶|\'«\r®´tTh¯pmR6R‹œ.ãŸo—æmÁÙ»v8Ç5û¯ú—–YYÊ7þöçâKóE&½×o#àMKöSøé§|ÿ\0a²ÔFÐË5”ìF}[š‰~þÐPáÕ“’¦Ü&W!À‰ÇPÍŸ\\ŸZûéì¦·¶‚y`š8.IXexÙcœŽ¡XŒ19ÁíUîîã·\0;¤Lzn núf¹åÁ9+Â´×Í?Ðêc¢ýú1ûŸùŸ|*ðWÄüPÓôÏé¾Ò¯åi5\roSÒ.Ì6ÑŒ»¹*§|‚tga’£$z¡ðOÃñßXZÇñSÁö3]hºv©2jð½ªAqqn²MiæoÞC\'™G*7Ü+ê¸T}›þsÑsÍv?ü¨üCšé£¿³²°°ŒËws{¨%¼è?‰‹ãýÐIè8‡À®UV*QŠ½ÓŠw½­Ö÷^]ÎªyR¬Ô~®Ÿý½oÑŸ—ÿ\0´•„:5Œ\\éºŒº^±©éÆþÂO6Úýcx‘eŠL\rñ1BèqÊÉšý$øû=ÝþÑðFŸ…º\r¾¼þhuÝ.ÿ\0ÏX\Zo0G¢$a‡«œŸ»Ó½|ÿ\0	ƒO³ø­â(t‹©/´ËßGiq$f3p#fÃÊ†Æ@<€Fkõ;át&/ø%ŸÃ\0FÛ,Ïå¥Ä?˜5ðø<\r:¹Ìpµµ‹•ŸKè}¾?RžY,]-%ËuÖÛ}çÀ‹û|eðcøFþ7^[ìû€jz•‘÷ïxÐiší­àVÒ~<x‚ácù–4ñ…ã#}Vu\n_MÊ¤¿Ê€’jö½ámgÃúÐÒ5-ZÒõQµ~Á§Ïkx¨òdU“,9o#‘Ç5ú=NÊok5ÿ\0oŸ©ùÝ.4Ígÿ\0nÿ\0‘óÃ~×¿ðPÚâÖáRîÇBÔ‹Bg‰üêÎ•ÿ\05ýµ|\ruíçÃÏë)U¹ÿ\0„>ÐLŒ\r›Fp}«Ùïm$Óof¶º‚kK›gÙ43FÑËu•°Tò88ª¯p³)HäŒÈ„îPà•ÿ\0>õÃ>ÀËXNKæ¿Èîcbÿ\0yN?ŠýN¿övÿ\0‚»ü[ñ†óâo…¼á›™Mø[OìZ	bû-„÷É31h•gºŽÞÃË³q…Ï³þËßðU\röƒøÁáßÝÜÏâ]EtÑik}q¢Êñ†.meVpNåd*¶Nå)_6YÈR4es•ç(z~_‡ã_CþÉøËàCXÕâŠòöó~™`·\"yî¾VÊ©>\\j7Ï‚NÐ äíðó¥„LJÄI«i•®®Þ·ë}}[+ã*¸šñ¦é-Z[íø†|0žø‹â]*Ù•«ÞÙF\0à,W ’Ö’¤õü+Ñ?h›sí\rñy_jëÁé‹é«‡0aŽ2+òª–çivÌ™T:§QÔ†>¾•­q1ýïçY×o}ÜŽÕTØŠ’Øâ«˜Ú1Ï¯iÓhaŽjNTŸC]1d\\Œ±cÏzC€2iX€9¦1Ýì*Ò\Z›¸àR9¡›“Í_ò*¬w¤\ZZa™TR‰C>”X¡ÇšL{š3ZÏj£$±‚>ðïR	û·QÐP#a³Æ\r)“ž*ZËË1-øóíJ_?QŽa;ñÈéO8Æ¾˜¨tËLµTã¨÷§¬›ÏÕ33ÜýiVãxýj\\\nL»½€ NóK7§z\'y?Jp™XdsøVM<ËÎGOjrÉÎi€†m”Å¸ÃXÜzˆÛùW7[³gìóóÆÆþF°«¯´dÈßð0ÝrŸç]$s¸ý+•ð”þIŸ=	_ýš·ëob==«Þ3z	£ö‚W¨žqžùÇ<ÕSx;søSLÁt?Zæä,’âç\0vàš¨îBóÚ”¾æäõéUîkäŒÖ€2;™÷ÏPqÅzÁhƒø.ÍŽ~mnásÿ\0nöÕå¬à±$ðqŠö†’%¿Àí\rÑQ&ojJdÊ,ôì}\'›­{YF˜¨z£‡ïN^Œý™v3ÆÓ]_‚±Âˆ…˜¢4\Za|ƒ‹äŽ\rrsI´°9É4×Ô\'ŠÖ{tšd·»\n³Æ®BLîPÃ£a€#=5ý1R“©—tþæ™üÕN«…FßšûÏJñÄ)¾øWÄ>Ö<]â¯kš¦‘o§\\i^Êú.†	·¸E&iKKunˆª(¾IåÊË®üOñGÂ…M}¥É\'5KïkK©ÚØ[5’\"ËJh­d‰ËMq1ÈYGœù& ·ñg‰~%|;¼‚÷â4,aO²¶“­]ûE´p3¯•)Å¿tQ‚•ùÀ½ð£Ã*¸Ð•|7âï\\Ë©OÀÒ5–±¹žKÉ …ƒÆ—i*	ÌïVWc´€«âTöTÿ\0Œãu-o{=-Ù$¾OÔöR«RKÙsZÚ=.µ¿ó6þõé±ØX[é6¿´Š<Úþ‰¦øzk:e·„_Ã²L÷‘ù³¬EuöcnÏ±Inchv©aTùŸ>ê^¾uUQãû]¬…r³D@*èÝ\\’;V>ñ·_Ò€šÚóI¸¹ó&5It{»ÿ\02fgy’òHLû™˜9}À¶T©Á®‹áoíyã†zŸáïø•x‹Ã\Zf÷ƒJÖ¬ÖêwmŽ1Üm#¶8ªŽJN¥Y¥¥÷·]_;¿1ýkU{:×V¾¶z_£×§‘ùûoµ¨!¢Ö®Øóœ\r‹Ò¿Yü~Ïÿ\0¼ø`\0çí6™ÿ\0Ár\nüŸý¿|PÞ7øÝã-ZK;\r:MG^¼¹6ÖQùvöû”¨½”WëÎ´‘ÚÁ<<1GoZÄh‹\ZíUQb\0\0zb¿,Às¬qrßœýO2Œ°d£·\"ý “k¬Vã§Zîµ\r:æmOÁÆÇX>‡KðbÏs¨C,ðý‚Õ&¼ä~ô–#XÐ|í*¡Ú¬Ì¾s<ØÎOæM[Ñüq­x{T†ûOÕ¯í.­­ÚÒ)b”ïŽÎè€þáÜÙ^œž™¯×ñ4e=cºOñ?$ÃN0ºw³¶ÞF×Åˆíã/}ŸN]o_ƒ@ðô¶’êÚôhÔ¡¯þîæ•m•D7M2…–A»2ª§¡üUñ¶£­|HøÁ¡Ýê->‹àén®t;ˆÖ{m­¼Aci	‚&V‰m<Ñ˜Õv²¾X…ÇñIÔµ«Ëy.üc£ø‚ÂæÖhãž)c†eD„\\4W0!Âå€Q—‘K	 \nßø¡Ž¼!£¥î£®x_YÓo/bõ\r8i·_Ï<‘%ËˆD÷êZM³‡G1Û™8òíJ^Î)«½•Ý÷O²íkYnz–ª¹åg¦úy?7ÝufÍß‚ã_ÃÖ–Ï]Ò¼i®iWÓ;]iúLºd–¶¦ÜBë5½¼“d™ÔˆÝ#àIó?eO7‡?joÉµOüL$bÊ1œE(Ï¾zç¶9®\Z_‹ºêÜØÉ§Ï§h2é·BöÑ´Ë}8›€»DÏå ÞÁr\0o”`nlûgìÅûOjŸþ2ø_M×¼?á«­NûTf\ZÔv¢¸×lŒ\0ò’znÆìÉÏ™†GV1K•©i¥Õý_q×—WÃVÅS»jWŽºÙþ§ãGí5¦„ý¦þ\'( ãg§oôùø¯?º²ó	è\n÷ÅzíIk¿öžø˜zãgñÿ\0Ož¸‹O-zçŽõüñ(µ\'~çìos›¹‹å-ŒzÍž\0_®8üë£Ô-Šä¨õÍvŸ²àð}·Æ{øM$ðä2Ø^Ç§Ïâ8n&Ñ-õ#nâÑï’\0Òµ¸—Â²†Ø\\ÃŠÚ’¾Œ–®xäñy<‘TîqÐç5ö6£û\0ê5‹þ ½Ðáøc\'…t™õ½2ÇGžÇRðÎ ÖºöÅÒ[]=ð™ãžßÊžiÒ¢ßB¤xsoãoüçÁ^øu¬Üèßµû¿èW:¥Í®«áh­4¹K‡G›Pe¹ŠîYB,zÄM4??Ùå#%uÆ›‹>&9~´›1__þÔ_ðLm#àuÏ‹ÛGñgŠo­|\'£ÙêK6¯áÄ²‡[Yõ´ÒÖæÆx§š›)UÄñÏÑ£`¬¹7>1ÿ\0Á+ô†š7Œt«OˆzÎ¡ãÿ\0¾¿ya§ËáèâÒµ+\r+Ä2h²n»FHn\\Æ÷\nžCG…ØdÉ´åF|`Ï·ß R	=E{¿í™û(ø[ötÒtËÏ\nøÃZñtkâ}wÁš´š†‰˜©©i`n$¶<Í%¬ŸoO-äHvÑ¡8¯\0çªÃµ…ßºœ½3iPI¥Y@¤ö½†,qŸÒœ#ïSg×Š]ä÷6\'U°í§ sÞ˜€Æ\r#ÈYh°•É P’äã<\n¤ÏJPÿ\0/9Í>STËh\'ŒÒ£ndéU·gäûÓ÷ÆF=j\\Nå4Ž§§JzÊ\'¨íPDÛ—éN ç½CKbÓèYŽ|9õö©#ŸyëÇÓP8#ÃSË¸à\Z‡‰î¥¼þèãô¬\ZØgÿ\0G›ÓcÐÖ=oAY2djøaÏ¦ßë[#åP;Ö/†›i›œ}ßëZáˆïÅrâ¾Ê‹iuïHËÓÐR)ÝŽ@\"œœgŠÀÓ\ri™xZWÜØëš|ìU¸Ï~•ãëZEÌÆ9Ã@+×~\Z\r¿´ëÿ\0V¤?òSN¯™¹#Ö½‡áÌ€þÏÚo+Ôxpm4ïð¯W+Óæsbu§/F~„NA•˜žõ9eéŠ}ÆZWÈ@ö©lt+ÝB2ðZ\\É\Zcs$e•rp9¹â¿§½¢QGó[ƒæv+0ú{Se„\\)CÈqŽy©æ°’ÙŠÈ…z†R¦ÅæÁp¯dt!••°Tö\"¡Í½Ä£g©¥¢ü<Õ<E2ÅiË$Âô>ç\'°îzOJÂÂ»0 ¯\0ü]N_Ò½+\\ý¥¼]ªøbM\Z)4}&ÖîÕ¬îåÓ4È­nobÈÊI2ø89\nTœƒšà-í[c3¯%ˆé÷pp?AŸÆ¹©T¬åûÄ­ätÖ§C—÷MùÜüüý²äÛñGÄ)œ¨\\ncZý“ñ…·Ù¿àŸ¾Ü´¦1hÃúWãoí¢\n|^ñ@ ãûFào‘+ö[Çø\'Ç_øžíÙ«ñ¬,­Ä«ülý›\ZŸú¾×ý;_¡à÷l#§aþ*gšïÒ‰­ä¸`±†,Xt\\þ~?ßRF³œ+(`Åx#Ö¿drHüu)=QQvO|v¦Á•äsŽžßçëEå¥Å¥À(#®‡Àž$ê¿kŠËLÔT®×µ¿žÞofÊÙ÷R1JU%ËxêÇ®d¥¢)jÞ¾Ñ4¶ËnÂÂ5r0rp=ð§éø×uû\ZÃ¿ö˜ðDn\0){Ê\'®kÇßµ‰b‚ö+;;-5Lvy6Öªì¶9gn„»³1\0×]û#(ö™ðk 9Ç¯ýszòóÔ–\n·:³å“=<`±ô½›ºæ_™ùûK[ûIüJ\'’|_¬ñéþŸ=pù$ÁèŸ´¦Wö“ø’£§ü%úÈü?´\'®\Zâ,88ã­4Ïâw?v–ç9{\nAVÿ\0ìý}âoŒ>ðvñXñÉ¤Cá»Í&MN=`N¸1be—xÀexJä0\0Ö]ún—à^­ûÍ.“ãÏ‰×vÎð\\[|&ñƒÃ2¯&T%Hä¬Ë‘Ù­iEj„‘×þÒ_¿h¯Ù—C½‹âwÂ-Âv>6µÔ´ÏËªxdÂš3hvúÔ\Z\\«/Ê™\rœ%eiJù1¹ùË3p?¿j_ŽZ}®–|Sá›]%>%Ã©ø‹F7:5«}f=:ÒiàWb²DßØöÊ™¹ä0|á‡ì}âÿ\0ŒöÞ\n›D°µ]7âŽ\"øy¥\\ˆ‹¶­\"Û0ŒÂ˜%Ü-¼€¤’È8û³þ\nMà¯Šÿ\0§ñ–¯àMoCø9ñnÓIð¢xkÆZWˆ&´ðmÝ¥®™b.RÎY$·H[B²ÍÛ™57ãvúï…Ø-O–<{ÿ\0øð»â¦±á½SáwÂ¿Ùhÿ\0Ãº÷Ãÿ\0øG%FûgöŒwW-4\r;KÂ^ZBG•*,bÝcEXË#cøãö¶øáñoÁ>\'ø¥sáûfðÍÜš·…µ=zÓHxìm®µ­F}fhD¶¤æg‘£\0ü±¨=N7üVBŸðT/ÚPtâ§Š?ø›ÝWÝ?eÍrïöð¯ÀÛmSÀmañ+á¯ã+­ ø×J‡__Ïo­é>V–ó}®G–ÃCÑm×dg)¨ÊFŠˆÖçÊßðS‰Ãâ\'Áƒ÷e<5©ÝøŽóÄ0¾ñ…ü/¡hZåÝãØÛ\\l‰OwÚtŸh’£€4‘¤`„,~uø‘û7|@ø3¡GÅ^ñ‡ì\rÜV}ý“Â‹q%œÑÂÄ•ÚÖæ	‚œ’;ãí/ø\"ï­?i_‡6ðW<\'cã	ü;Ôí¼yàË+Ë˜-£Õ¼`ñ˜m|3ºQûÈµ¤¶	,+ó8Òã*Wi\'Ï¿aßx‡þ\nñâÏÁOëÖ÷~.ý£.‡ˆôMOU‘b|ki4·Ò;p±}ªJÌí_½{)¡µ}Ï”<Gà\rsÂžðþ¯©éW¶\ZgŠíe½Ñîgˆ¤z”\\Im$±÷‘g†XË7Æãªœz†¿e½áŸñâ |àítIÿ\0úI«x´ÆåØ[dfpUî¥)•uV–Uò®üOý¢¾ü@ÿ\0‚ø>óÅ6šßˆf¯†7Úg…4ë\r>0·:†ô¼D¯±ŠÞ:Ëu:‚¬Zò}¥X©¿ðQ¿‹þ\rý®¿à ž/ñ‚üNKßëÚšC¡][xjæÝ|;£¨Xíl…“l¥¬c	`ÞYa’Ô!%cÂ<ðÃXøûñ&×Ã_¼3ªjš¦ XépIö»Û‘\Z4Žr‡`ŠÄìETñÔ[ïÙGâFá	5û¿kVú$^ƒÅozñÒgºû$7Û³þ¢KaWèÒ|£-Å}Áû9Á?uÿ\0ø&§ü_á§Ãø‹Ã~(¼[)µx¯´id14:MãÆ$ŽEY!—&7ÚQ¹\rküc\0Á=¯¸òhÞÿ\0Õ¡\rÌ†˜±)¤–94ØþaÏ4ê›d†oæçÚ€Š)±±àîô}Ùö¨sŠTc“ƒéI«‚\'FØÄð;Ô‹.îx¡‰·§½(ÈÀ›E“qÖž¯êqýjcÏ\'¡§à`÷æ¦Å¢gæÖ_M­ü«\"µÙÇØ¤õØEdV´–â‘¡ Ê#2ç¾?­l@~_n+EÆé?ë[ÅsW^ó\ZØ”O­#>ÑïMÙÀäÒ˜Á$÷5‚HdnG\0TQž	ô©ä@ÍEåíã±¢D¶Uš2Ž8?*ô‡Öÿ\04àIÀ×îp¾æÚÛ§½yÝÔxF98\\þ<W¢ü4\"o‡\ZS?OøHç\'ÿ\0í«ÒË¥jÑf5UàÑýþÊðK\r7Âúë¿-RMJfÿ\0F°y¤A×p	çæ1»‘‘Çµø£ÃþèñØXZi±» 	\r¾öyBd(,s†ïéé]/Æ_kút’\\B…f–e°BÌ^óä#)\nxƒƒ¼ÅyEÖ³%Î‡kw¨ùZtrÜì¹cmågd¢NÅ‚àƒ‚ÅOL?RU«â=ihû›N:téGn§œ|løá/\Z-ÌÙ¶ßk1ò[/—µÁùð1ÁÉú+ãü!ºðeÓ¹}¹‘•r@ŒŸ\\WÖÿ\0¡:1¼He¿{‹»ˆßOˆ\n[ª)sŸàvÈéÁ=kÉ<yig¨ {¤·@:È¥š3ÎG;NAîAw¯¡ÀW©I+»Äð3\nê»ÚÒ>y}!™Ð„\0)äwÆh—N0à0 ž+²ŸÃ¢FÝSä‚¤­&º—šÚÂnZ9LµXB‘»V*ãîr}ëß[»÷>jTìœYù{ûe®~8ø²3ÎÝNqô;¿h~\r|0¾øÅÿ\0ñøm¦Ù$ò½½Ì732/˜á~Ì©»HÝ Î9ÆM~2~Ù±ãö‹ñ¬xå5)¿=‘×ôÿ\0¨»‹Mý‘¼<°™Çö`l.>SåÛüÄöšü6¥iSÎåR©³÷Ò\\¢4ç³‚ü‘·ðŸöðÞáû­^ÙEÃ=á‰™rîþ àÖÇŽþøZIŸN±·ÓÐÛÆ‘›s®vgñü÷{U¯ˆõCU®ŸÙðÊ¢„¬‘È¥önÎFXnîœóŒäx¦Ýu->õˆh¦ŽAg‡q*G\nß_˜}}rž*ræœ÷>_“òSŠÐñ‹ß4˜ü.öñA½Þ^ÁÁçžFOzùÛVð|ÞÔÞÞ|4kÈ‘NDƒÚ¾ªø†òj&ëM²žIÓJ‰`’vnwd.yõ<B9¯ñö›g\r˜¶ó7É!ÊŸ˜±ÎúÒ¾‹œR„ÝÏ›Ì(B^ô™çÃNÃ4 §>½«Ðÿ\0d»ÿ\0†“ðƒmÛ¶ø¹ü#sXšLgOt‘#‰ÎÒ¬’®åažõÛ~ÊvÚ3ÂÌT„NOýú~•ÕšÕQ«þùyZ¾6•ÿ\0™~gå_í6¿ñ’ÿ\0ã1ÖþT.+…º‡ñÎ»Úv`?i¿‰]ÃxÇZùP¸®,ò=«ùª¢´™û¡‘w`@N\ro|øÝsû=üL\Zô:>“âK;>÷FÕtmLÊ¶šÆŸym%µÍ´$©º9	Y#`ÈêŒ3·\"x÷g<sý+S„–#v«¦íªÞÓþ\n=§|/°ð¶›ðËá…à]+ÁúŽ³âqâ+íjìkúPÓRûÎ›hfTŠh£T½…K62üøïðEñî•i§YêzÄ??†ï¢¸‘ã6¤][^Û^FTñ<6º“Ôo^7XÚµ¾Ù8<+hÌ2ìGô®•Qî>ý¤?m¿…¿´Î‰âÝsÄ³¶—gñÆm%ö¥ã\r\'Æº­œš”²šøil¯i[{:y›7ÊÄQçž2ý·<M­þÞ–ÿ\0l4ý7E×ôŸYkÚ>—nXØéqX´BÊÁyÐEÁÔ‰ÏZòKÉKÈNOý*”²6ñž•ª›Ïfø§ûcjzÿ\0ÃŸøWÁZ,ôxªÿ\0ÆÉ‹?Ú.5iæÍ½ÃK•Ûö+d†ÞÜ(<LàîëGMý»/4_ø(Ž…ûFØx/Ãºf¹¥ø’ÇÅ·Z£É™w©Bc’âDzî.å1©\"3)UÂ…ÁÞré·5ÌUvöúÕ©0û:këˆ­íâ{‰å!R8×,äöÀ¯søâoþÈÚíŸŒüAe¥üKø‡¥0ºÐ¼-¸Máý\"íNè®µY—å¼òÈYÊcv*\'˜–ÖOÞXÓµ<ŽAÆ8¦®%¹î¿ÿ\0o?xöåã÷Œ\r×Ä_\ZµÝÞ¡{&£z`:„÷ò@K²¡ÚŠ’¨UBª®ÕPµÔx¿þ\n4|Yð\ZçÀà¤··›ávŸð¹nÓX&E¶³×Æ»ÙS­r¨Œ£åï/ý¥Çz<òÇ“Nì«±\0ÀÇ¶iIÀ œóíLs“Å	\\HhæŒAKÒŠ²ÄÅ,cçü(¥O¿øR`;<qÅ:3ž£‘IH8äT\r\"eÉNùæ¥ˆ|¾ýê(rzTŠÛOµfÑhkä,„çOãÅP«ø,’dÿ\0?N*…iL™´D.ïŽØ?Î¶Aù\0ÆÒ±ô6*d#=º~5­›È\"¹êüLW%ˆ3Œæœ£ž)bùWM:Q²<É5—-Øsºî\\wíQJàæ¬H2ü¨\'^_º\rh ú“rÏ™Ð×ðýÌ_tÌãþFŽ§òím\\€‚AJî¼%0ƒáÆ˜OÊˆ§ôÍ½°®ì}»™Ô•¢ÙýUx«Z¼Õ¼}h\'Ä×º{—I³Å®÷,Hä0	Rü§Êê9¯h/Ú;HøQáùujÖ62ßB÷³ÜL ŠòVQ†<FŠ›×qaµ“œ€G_ñ¿ÅZ¯Âß†>!ñLo¨‘¢èÍw%Í×Úâ´DL³4Ÿ<™ÁóE Ç\n7Ëø©ñ¿öšñ\'íÞ?ñ$k³>™kw\nÖâáE¹ŠŠ¹ˆLçï0fÎ@\0×êp©\nqÛSóšXy×›“Ñ_þýoƒÆ–Þ/ñ:ÝÛÛÅ.#´³¸B1æJˆò¤N06!”C’I&#ÆFO	â½Hø—@ˆÛ£¬1L!›lw!•Š¡ï‚Ûq·“ªq’ßÁ6<yãÛ_‰zO…÷ø§Sðýî—öûa{wk¦Do¦1‡{X¤Xƒ»Ÿ0¶t;ýÖO½üYkk¥Cq4Ö:ÕéŠâ5A,>Do#H6¤Œxëƒ^–²©ž^a…t\'i3Â¼\r¦½ö³¬Ù¤²ÞÙÙÎrIÐîòø\'‘‚0íœWI\'„IDAÏt­\nø*}?â5ÌPB‘Z˜›r\'Ê§\r´’£<îòÞ†»§ð™*+ÛåÆkÜf•ÑóUé·;Ÿˆ¶õ¹µýª~ §MšÍÀéŒ|©_¼ðNË‹ØÂ-o:[ÝI¦˜âvéŸ&ŒwÈÝÇ~ƒ’ü-ÿ\0‚Åö?ÛâœD`Ã¯Ý)EZýÀý/ä·ýˆ<	4ª/mÅ¼›`ó×i‚2w®	ÛÀäc×ã36nüäÏÙV™bÿ\0\nü‘éí§Ã£è—-­ç“QÅo¾èíîÃmîŒ‚9¯ñOí[pŸ´|ÞšÖia¸ÑaÔ’N0$7’Æ›p\nÅ$±?2c¾jÿ\0í)ñJÿ\0ö{ø/«xòaößhp»…HÚº•å’[’Oš¬Ù\nÄGe•þOÌoþÚ6ÿ\0†›_\ZÜ­ÜÚÍžë[‹)	JDJ²ZexlÈÒ†ZB¡AÆ+î¡R0ø—£„”âÜOÓ»}b×@ðÖØÑ£™„ozY‹—— c=	ÀÇù9¯-øËá÷¹±ÔgV[9£\r4N±CÂ¶ÖïC0FGqþüNºø³ãˆ¯a°ñM¶ªÚÈïomÚÚÁ‰Ueò–P¦ã´,†R1ó6Ž×âLšn«ý‚Ç«Ox±,Ê\'·‘»`€¬ qœn÷éá§«&*”©Ë•œ¦‹¤6£¡YÜHˆ¯,+!Æ0ÙG±ë]¯ìá¤½·ÇŸKµ•Vå»p?tõ‚¼?p|3j.Çï9ÎW\'†+¸ø+áæ´ø±¡¸AòÜòà-ZfURÁÕ_Ý‘Ã–Åýv¿™~gâ‡í23ûL|Lÿ\0™Ë[?ùPœÿ\0#\\lO¹\0ç#ÜþÔ–Ÿfý©>(EýÏkC>¸Ô\'Ò¸AÓ’­Ô×óüÕÛ?lJÈ‚S¸1Ç5ŸuõlœÖ¤°0\'*9ªÓÂdzô©JÀsš±‘c‘øV-õ¹tãõÔßÛüäv“ŠÆ½´\nO7Z®nƒHånaòÁuª·¤œ\nÜ¾³²F2}+:ksÅ\\f>S,§Úô«2Ú€2	Ï¥A$MÉèy­Ô…fE\"ääg­G \'žØ©¥\0 ò*‰þéç¨­\"ÁnEESù1@¤\'4¹ª‰h(¢ŒdãÖ¨a×§4õP£ßÖ‘e(lÔ6\0x\'ŠQBM\"Œ¿=ªB	èqRÙqˆ…	þª“8Q‘šljvu•I\ZdàÔ6RO©$¨mOojË­)Xù2¸k6®–ÄÌÒððÏœqŸ»ýkJ3Žyàÿ\0ZÍðéÃKéýkIAa[âdbá·gÅI/ÞZnÑëŠ“ÌÞøì;ÒŠÔOa®þ:b˜Sjc\"§#4×MØÇ©Y#,Àók¸ðÊƒð×Lè?â¢œFy6ÖÕÆºõ®ÇÃq©øg¦îbª<NêHëƒmOáŠèÂ¶ªÆÝÉŸÂÏé·ö¾ý•ô¯xÆêÎ–V·ZT£P/cµ¼q0IKH&Ñ…é4dc‚r~üTøe¨ü#Òµ=UÓ®6YÞYµœÖÆ+»É\Z‡NÒ$\nÑn~B9Pë±¤oèân³3>élb\r$‘8%dt\\p{eC€ÃÇ¦¿8ÿ\0à²ÿ\0²†üAð\Zÿ\0Å7qYË,\ZÄ~MËüÒ	åšÖÍsÈRQáŸô¦¾`ß£Ò¬¥O™î|\ZŽ•NWðÜù+þ	û>ëëºv«yn÷¶¶v×p±º¸SŽcq#Fªa–4g%¦·‘Ä«ö¨Ûanûâÿ\0Bh´ú~£y{n·–øwÊ¯6àÞY—c8làaÕz¯:ú^©û8ØxOÆÿ\0ÛZ~™ˆ›ÏÔg8X¯˜™Üw-,“ùœâìC\"2ax†áì®¾Ó%¾£§j1¹»Žhs²D1.Ü!;È‘°$WŒàœ\nöpŽ0VG‹Ž¬ëÔæhó\0èú—Š¾-]Ü$¢K+8IihÍ#bpp~ë6@ÇÍß¯R¶ðžö$Œ~5KöTøw¨êZF§â-AöG¯H­gŒÄ#)’A\'wSÓð¯c´ð(P	\n~£Šî•d´G—*”®‘üÜÁK!ò?oOŒ‘`f/ÝdÃjWîügÃrx§ö:ðœQ†–KUþa\r0ÄP,ÙÀ\n\n’OQ_‰ÿ\0ðTm<Ûÿ\0ÁG~:ÀOÜñUÚÀ ¯Ý?ø$f¸4OØóÃ7|\Z:¢÷l²Ú—ý®N+ò©Éÿ\0hÊKùÖ#õ*ü‘ð_üSàßÆ+ÚKÄ¶ºÎ ú·…n^ÚîÒÇRý‚ìÇ+D3DSÌ)uEOàDøëÅZ³âÏiÚ}½¡šþçPÓ¥µ¶xöÍ£¿Ú&bOL±‹ƒ“æºç\0Šýúøíû;ÁñPCâX`ñU‚Ic£ÞM3„²IJ©UÁÛwÀwQ¼ª…ÉV*ß)ü9ø>ÿ\0ÁGüi O¤i6vúÿ\0Ã¤‡Ëx’PFµó”¸„ŠbÜœwö:M&|Ý<R¥ucÍb€²ü0Ô´õ¼Ñô=[Òôµ·ûl^Ó¾ÛzÒÊÇªB‰,œ\0²#¡”¿Þf,V½ÇâÍÔ\ZmÅÚ­µÌ\rnëñ•\"Rd\\®Ccq+×±\'©8‡~EáiÚœSÏ`÷kr÷Ž’Éœ[Èíü2:˜—~\0i£|åç`xOÚZ›NÒ\"·†h¯LÅÊÌÐ˜åœ.@V à¿Þ8-Î\Z½Z\rFÊ,ðñ’u*9³Sá.©j>Ú›Ër°±S¯Ó\'ô¯Gøyáæ³ñ®™.2e9ÏN)~x.ú…šji·P{a,ÉÈòËÁO¸Â»­#@wv“mÁŠTÿ\0Ð€®lÎ²xz©v²ì?ûU9y~góÓûUN—µ?ÅB?Œµ¢î?´.+‚Ý‚}½+¼ý£l×í)ñ-ÆänÖ	·üL\'®7ìã¦x_AÖ¿¶¶gêÌªX‘÷N*)b2¯‘øUÿ\0²zr>•–d¸+9>Å¨˜·Ö¬FÆ;ÖF£`Tä‘Üt5ÕÏk¹qùt¬ëí;?B0x¨lµ,Î2òÌ®AÁ¬ë«a¸úfº›ë†}»ÖMÝ™U9àw8¦™^ÍœôöáIùzŠ¯(Sd8­{»<+68#±¬ë˜JœŒjÓÔžS4®:‘ëQ\\GÁÂç5nX‹!Àæ dÛ×•Ó”¦PôéHƒ$‚1Š²éÉ=*&Œ–í×­jÄÐÝƒ)6.3HÌW\0ŒP_éš­Ga£“ßì¨9š@¹>”¡µ\Zˆ¢BGBi@ã§4\"e=3OH³ŠM” :ã$ãåMÇž¥9h§ùÔ6l¢5\0\rJ0Îôµ-\rÆÎÂ»ƒƒýƒü«:¯¿(ßî7òª­5¡Thhd7ìÿ\0ZÒ‰‡è?­eèŒPËAZ\rÍeQ^V2,G úñS®0ã5N2Jõèx©üÀFpq×¥G[	–(¨Ö\\ŽsO=+B†qžk²ðü{¾Ø•;|P\0=€khóÿ\0 Šä„hTvÈõ®»EýÏÂ[~8>)„~vßýjèÂ\Z>¤OH¶c±âÙÉ@°þÿ\0sÊä²ª6rx!	<u@3´òGü‡ácë³4\ZE­ÕÔ¶úÆ—VöHŽÅ…Ì,K+|’3;p9ôE¦».¥´1°m„ðø9Ç×Ò¾tÿ\0‚€êÿ\0fø+¨¼:ì2µÝÈóp¸´ï,„9\n JƒŠûêt$žçÃTå~õ®zgÅÏÅu¡]F’éSIÒ¤bIËDyXBOË‘˜öcŽpXŸ›/¤½øûã‹_\rÁ¯Ù•T_\\‡óh¡‹‰]£ë\'2@\0—ÁÚSoÅ¾5~ÕVö-7OÐ4MbUÍÅå¨£Y1ºP€1ƒ‘ÈÈ+ë‘õ·ìëû\"øoöxðÕ­¦§¤ZµHo®Ã’ò@÷f\'ø™AÀàqŽ•Þñ\n„ušoÉUŒåhÄä¾øÃÃ^Ót\r:ÚôÃ¦[‹u–H™TìÎN:õÿ\0uÿ\0ð‰â3…$µé-áÏ)¹\'Ôæ£—Ã@FK.Ð‘ïÅrG3wÕÜÛû>ÊéXþOÿ\0à­P/ø*ÇØ÷“Å÷€ývÇ_·ÿ\0ðHø\"Ô¿dOÆñ‚­¦G“»n‚ÐõíÔŒöÎE~\"ÿ\0Áa\"X?à«_´:ñµïÇm~×Á%ï¾Íûø%÷æé°(8éþ‹j¥|•7ÍæîÏ´šQÂÙö_’>·Ö´_>Æ„)ö(\\]ª‚;]IÇs Ž˜P+åOé–¶ßðS?ß¼f[ë[FG–¬bGÕ‘Tç9ÎÒÛ²äóôŽ½â¸t˜_t’+‘‡Q’FàÄbp3ì}+æ¯\ZxöïÂŸõp‹—Ò¯ô¢†ÐÁp$-»ïá	Q‘‘¸àóÏÔÑIiåq‚k˜ëþ$^Ïo­]ý“M:Œw14WQË›Å&p\nó€®7ƒƒ‚HÁÍyOƒ~j¿~(ÆnÆí\ZÎâ+«‹›š\'T`UTœçbd€ïã\'4¼#ðëÅŸµGŽíì4k=CCÑFÆÔucwµ¶‰så„$î2B¨ãælàs_e|%ýŸôƒ~	¶ÐôØLñÇóK<ã|—pä\0À\n+¾x‡AY´ÙÉ$j¾dŒ­3Ã>pm€ÎÆxõëV5?K-äcd‘qÿ\0mR»ë_\n,q(HãqÂ(\nåT<w /\nÍ +$=ÿ\0éªW™‰ÅsRûŽj°Ó©üÈþÐ%ý¡>!ºcâ½\\çûÀßO\\³\nÿ\0ts]·Å»Q7ÆO\ZJÜ‰|C©8ÞîSýk,Ðò¶kózÞìûDŒ‡´\0vÖ³ó\0ã¹­i¬Pž„SM©ƒ5Œn`Í§Ó“žjÅ™\ns‘Ø×I5™ÇAŠ§uc¸c8ô¨:!‡\'¨iÀò<Ö-å¡QŠì®,Lyàž?:ÇÕlF€€¤Þ¦œŒã®¬¼“ÓzÈ¾·*äñùWYi†*@<~ƒ¨[Ü=ÿ\0?óŠµ!rXÀš2‡?^ÕVâß##½jÏp’qôªrG´‘Ž;ÖŠL™GC=—“})®¹ë’?•[ž	¹ªÇ÷-ƒÔÖñ•Ìù\Z/Ÿ¹ô D3ŒcŠ—ŽO\"ŒèiÌ>B(nÍ1ØTÀw¥=\r\Z‡b4L¿^1Òœ©Œgµ\nsƒK»šF‘ƒ¸(%±Ç­+\0AÆM>w“žN*V‰O8¨r³6QH¬(ïJP®3ßšCùÕƒBHvÿ\0îš£WÜbÿ\0tÿ\0*¡ZS8knYÓ˜©|t«ñHXc@æ³¬%±œÕÔp¬¨©žæ%´bW­8?\0áªðJÌO\"¥VÜ¾õxÎÛÃš±ýÐÇj«F1ÜTÐ’¶hº%¢ìczŒzq]mºãá ãÉñU‹ž»­çÿ\0â+”±ÎÕã°þuÖéðcà¯‰ìâî.,µ-;R!WvÈ¿nìÙßq\nçÕÔw­°µª™2Õ™ýgZøÿ\0Ãžº2k¾\"ðæ…ù³©jÖöy÷ÌŽ¼WÆŸð_ïÚïá?Šÿ\0à÷Z‰ñGáÖ¹¯Éâoìí/Ävw·^Twjò¹Ž)íU\\“ØWó„Ú ÃAà2s\ZÖ†·á;ÿ\0\rþ‘¨i_jRÐ‹«\'·ó€8%7¨ÜFqœgšúlFcR¢åµŽQ;Þúþ·?­oÁt¿c_\\]=Ïíà)•]ŽÛ¸¾8Ïo\"\'ÏáÇ¥y×ˆ?àæÏØŸÃ‘Hmþ(ë\ZÃÇÒ=?Áú©-ôi E?÷Õ/žð×‹4¹oSSðÎi¾S>¥¬AhìÀn;a-æ¸Æ>eB2qœÕÍKÀÚM•Œÿ\0	ß„.¥T$Ck©#¿\01²XùÎ9ñ¯=óÿ\01ÙõJw¿)ýx›þñý”´[Â–žøá®c¤–ž±‰ýÿ\0¾Œþ•åÞ=ÿ\0ƒÈ¾„) üø•¨/ð›ýZÆÇ?Pžv?:þ~d•`‰\\•åé“é]¾ÅáÏéúª§‹$Õ †Kckm²gyˆÄ²HCœØe%W¥8¹EîWÕ©µkŸíûC¯ísûU|Fø¤šQÐ×ÇÚíÎ¯œÓý¡¬’Fùc2Pä(!G\'¥~ðÿ\0Á#ç_°ï˜¸ØÁ×þ¼í­<úå´\Z$ñiq<3®šÓÆÞb\\LX™\n°á‘IØ¤0@Àá«÷£þ¹ãè¼gûørÞÚP%°±¶ÈRsò«[?äöÌìHõÆ”+ª£.¥/iIÓGÝš-…¾§iq\nO\0™¯œþhv~2ÿ\0‚Ú|@ðµì)}¡øá-†·a¦KûÈ-®åÔ£I.<¶ÈÞQÊç°?—¬¾¥*šêx‡Oøød_§Z¨ºm­Þ¢×fÚÖ[Ù#Ý4jÓJƒ 2Y—¾	\"»jfî÷…ÑÅ¥+s»ŸBN`ÓaX§¸³¶EI ?2*?øHô>~·¤¨vÜ£ŸÐšðK;‹È-î,´¹n­.£Y¡š)-Ñ$F]ÊÃt°G#+Þ™x/¬n [»j“³F®\'Ž_˜)m¤)Èà7=8ÆrFyÞg6ïc¦9|ïò|Rð…ŠäëÒ×8äþ‹\\§ÄŠš¿¤½Œ×RM,±m\"1É`;)¯$½žK8ãxâi¼É°Rr ƒÏCž˜ükÊÿ\0noÚÓö`ýš¼E¯Ë<I¬j6²é:†û›éP¢°JÄÊÇ rÃ9O0¨âÓ.8*qwGâŸ‹&þÛñ¦»}/u;«{aæwÿ\0Ù«:âÌÒ®YY!TS zñR0:s^¯¹Ûe_—‚qßŠŒÚœVÇ“žzZ‚âÓr“ÔÖnçL¦Lqƒ“U¦´Ü	ž•«<!Vx³žÆ¢ÇR‰{d$\\\ZÇÔ-7\0­u7Pònõ‹ª[|§Ž½ê9TÇj¶xäd0ô¬-NÐú~uØêv»‰$ž˜\"°oì¸íÍZ–¢pÔå® :sŒt¬ùíòsººË§¨Éç5™siûÃè8ã½Rò&P1äŒ‡Ç‘‡b´®bPÀÀÿ\0“Uf·#¯jÑJÆnÊOj	àãúÓ$·Ø¹<þ<ÕÒ¸b1Q²în8<VŠlJ\ZêSÁô¤#Š³%¦Ð0p?:h·×ëWÎ‹P¾¤;Içµ=b;b¦T^}iÁH\\cIÌÚ0C¢MÑŽ‚ŸäZpÈ8 ·${V7w$¥*„QÏùÅDÃõ©å@S8ä@G&º\"&þ¥‰î†³êó±òœ{åTkjgŸ_â,X¶ÝÜõÀ«å<U[L†${U…làw©žæŠÿ\06y§†]Ýx8þµZ¥²`¯Ïz†À½å}êxŽ6÷Áª±¸ÔU”á¿ZÅ~Ùˆôà×GàÜx/Z7vë«</ku“åÜÁ ÃÆÃÐð}Š©ês0½½ùý1ZP2ŸÆˆÉÅÝÒë^ðÏŒ\'{½3Y‹Eºî{;ñ±Aös…<úO÷½ÏˆV-ø£wi/ˆ|g¢k&Â3³Üêq(†3”tãåQÎ~è®MƒÆ9©Åª+>éôë]ñÇ=ä‰å%O†Xä\\x“ÁÙãåiÚb§Ø¢ŸçŠ’/èšeÂJ¾$±óbl¡±Ñ%—Y\0Ï|žj¢Û299ãœÓ\"Œ 9Ï>õ£ÇÝÝ!ZÄ‹á¿Û¦D~%ÔN;µ½’“õ>kûæ¶t_ÉámúËFÓôÝ-F#o<ð–öX›ïFÓ¹È0F±†uÎ:!?\\ÓÕcŽ}êe‰“Ø„W–3æ6ãØð+êÏø&ü’ûö ñ—Ø5a%Ï„¯e.v«KöûD  å¢“bÛó+F® œ©ùtD×ýÚrF üÝ=ÅgÎú	;ÑGÃŸø(oÁŒ~†æ?é‰9†RgPqÙ¢\rëüAOµt×¿¶?Â}ßÇº,	\rÇÊOùgÚ¿›Cf„çh$õâ®A`¢5&0|âŽbý¢? }gþ\nSð7ÀZzZGñ\Zfµ·M°ÁjÎ©ŒáÌ*BŽ€àcÞ{­ÿ\0Ák~èk!³ºñ¹\'EÈi;v?8_Ã¥~*XØˆ`\0OµnhvÅc^[ó£˜9ÏÓ_‰ð^;©íä‹Á^	³‰	qªÊòí÷\n¥G_ï=«ãßŽ´_Œ?iß\Zÿ\0ÂAãYõ;´C´J<»{(ø;\"8QÇ8êyï^_§Dr3ž¯Öº(Ô\0½3YNl«Ü²‘dñ ¡\0äS—!A dö§8Ê€\"¹›îmrŒÅE${‡<zb¥uÙ	ÿ\0ëÓ\nœéY4uÁX¬ÊHlœÕK›uqŸ”sWÞ2ÄñÁãéUç„ò@ëÍD¶:à®e\\[1žÕ•¨Zå\\`æ·\'‹jš£yt9¬nonrÚ…™œYöÓÀê=+­¼µÝžÙ•cÞX,yÍE:zæžFFÑúV=æ›™{ç­v–<7¦:Ö=Õ‘^ œôÔº’éXå®l8ôëU\'´Ú8ý}+¡º²Þ¹ÎHü;Ö}Ä\0ëB™š˜æÙKgèj)m‚‚GùÕû˜Hr@ïUå‹x ŽEi‰Á›ŒsÀý)†<ä`Ô²)VíùRmÜ•²dÈ`ôÎiÈ¹nzS–,u$ýiàmù‡ßV4z\ZF8 õÏúc\0\0>Ô®VEiÀö¨aO&‡Ó5ýóé]2’±óº•R«ùýÜ™þé¥P­éœ8Ñ-©ÃÎ­/*=ùªöJòHãÖ¬)qÒ”Þ§0´øp…Ié×ô¦gšsê*”mÉ«6î_$ñÖªÅÌC=p*{vÚ{Öö}3ß§õ­²1Ïl~•frØ<tÍi@>QÜ€+7\"ìOÏSŽµ`L]rZ¯lÄ?Ð~u`\rÝøúu¥Í X“9è}ÅXûÚ’!ú}jhù‚©L–€C¸äõï/qÇLw§!ÆqÉÏJxA×\rÎ+HÏ¹.7©·è;Ó¶îèü*H­„œòLU‘o†F9­Èå!†Û\rÈ´màß´ñùf£·‹Û§ëZVpæ5Ï\\Su,®—,ÙG’ŽþÕ¿¤Åå•\0g8¬»2ã¥oi–ä\'üô§Ì	\Zºt$ààd1í[vÖÛ9ÇnõGJ„#9ÅkC˜8 VR•ËH–LžqÖ›´úõoÊU^03×Þ’X‰\\c=…c&uSH£/+×éQ¸ÆAV]89Zˆƒ·JÎR±Ù‘ˆ¾^	æ¡’<ñÆH«,L\n…Ô3Á¬¤ÎÊq(\\@s2:}*”ÖûŽzàfµeLžžÕ^X\nàr}ñY6uE$c\\ZRóüë6öÃvGBå]–ÄŸþµU»³IÁøÎj.;\\ä¯tã	\'‚µf^ÙpHÆI®¶úÓ1žÇãXz¨B{Žô¯ÐNÇ\'{måŒcõ¬«è>Lñ…\\ó]©ÝÃ+PŒú4îe$cÝ¨1“TŸïšÑ¼ËÏÔæ³ŸjÚæL«?ÊIö58ëÅMp7ë“Ò£1ò?ÂºVÆRWžÔáÒšUã–¥î·åLqMn½1É Ž:SÏ>¢¡›!øÈéN\"šÔ‚BU¸¨Ÿï}jI†×ÎNéQ¸ç=tDÊNãåýÔŸÒ¨Õù9ÿ\0Ý5B·¦pâwDÖ¿ÅøUˆ†#Ò«ZŸ˜Š°¨_¯õ¥=ìsôGqõ¤\ršXÇ˜{zÔM—¢\"sÒ§·¤yªÖçåêx«vƒv9è2+šLi­—rúc?hD¸Z¥fÅÉíÒ®ÇÊóÜÖLÑ+’BHÆ$š²¬AïŠ¬’a8aŒô©~Ñ¹G\0žø5%rw­=Nð~¸ª©>æÇÝ54,Kc#¯&„.F[ˆ~ƒ\"œ.{Š‰r3O_”}*9¬Œ·kÐzõf#’;óU¡P:cb/‘”Ÿ­R©päe›T@Æ:ö«ö£Ÿÿ\0]R¶m¤prýUzÛ†Î3íùSçO±¯¦FSë[ú``àd\nÁÒ!IÈà×C§qÈÆJõ±6ìÔ\\wê+VÖ—ÐÕŸaÂÔŽkbÖ0¨;Ssè\\`8Ež‹ÿ\0×¦²à\Z£Ú03ùô¤òÀÇ$žk&ô¹¼cÔ¤ñsÎ}ª¬óíî*ó õ5Fb’?Ï5lë…úJÛA8éPÈÄ¾2(šPÀsŒõæ«OsœŽÖ±r;!bY\'ŽqÅG?ú³õªÿ\0i ±ö§¬»Kgô¬œŽ˜DM»ÁéÏÑdÇõ«*3ëÅ6à\0;Žj9lŒ›Ø\0R§‘»5ÎêÐ…n™ÇZê.ã=Î\rsººcqì§ÎŽa4rÚ¼xÜs\\Ö¦q¦WŠéõ|61Øç\\Æ¤t{aj“ìa3*ìn‡`3YÒr[Ö¯^¹\'¡â¨ž	ÍtÓØäz²n\'Ú£#œrp:œÆIÉþTyY;æ·º!\"vžh<{ÔË<“ÏÖ”Á“õïEÑh­&¨%ëøÕÉ\"Éç~u^X°N}+H³9­nTŸø\Z†NÞ•<¨\\Ž=êQ]2Çä÷[ùU\nÑxÿ\0pÿ\0îúVutSz8Ñ%¼Š™ÝÜŠ–IÑ”m¸•ZŠ§Î{–~Ò¢=»‡×5%µÔq–ëìj•¹s\Z‘j0Æï:ÿ\0²jÄ:Å²Iä?„Ö„XsJxŠÈ|ücý†ãô«#Åv\0ûGAýÆçô®6ŠªÃ»-ThìÓÅzz°ýÿ\0î7øSÛÅÚq9§÷ü+‰¢ªÃÌ=«;_øKì2?Ò8?êÛü*Ä>5ÓQ³öœÛ7ôúWE\'„‡v?jÏGƒÇÚR›¬3û§ÿ\0\n‘¾ iÿ\0/{í“ÿ\0…y¥¾§ì=«=B/ˆú8\\}¬ƒß÷OÏéVâf‰°yÏ¯“\'øW“ÑOêpîÃÚ³Ølþ)èVýoóÿ\0l$ÿ\0âjÊ|\\ðú“ÿ\0sÁò$ÿ\0âkÅh¥õ8waíYïÚoÆ¿À«æj˜ Ÿùv—ÿ\0‰­‹oÚÂQ>N­õÿ\0E›ÿ\0ˆ¯šh¡`áÝ‡µgÕÖß´¿‚Ð.u­¸#ìsñÿ\0ŽV”?µ7R0»ÛŸô+þ7_ÑCÁÁõcöòì}‹íYà5S»\\ÿ\0É+þ7C~Õ>cÿ\0!ïü’¸ÿ\0ãuñÕ–\nØÖ\"]¯äý¨¼Êâ{×þœ®?øÝP›ö—ðS9ÿ\0‰ÞGýyÏÿ\0ÄWÉôPð0}Y¢ÆMl‘õ-çí#àçL&¯“ŒÇ¤ã·û•F_ÚÂDº¹ÇýzÍÿ\0ÄWÍTýBŸwý|‹Y…EÑ_3é•ý¡|\"#ÿ\0¾ýzÏíþÅÿ\0´?„£l¶­Ûþ}fÿ\0â+æj*³iw×ÈÕfµ{/ÇüÏ§ÿ\0á¢ü×û_þ½\'ÿ\0â)­ûDxC<jã¯\'ì³ÿ\0ñó¿³)w‡ùûZ·eøÿ\0™ô¥×íá)Ë«óÏüºÍÿ\0ÄVN¯ñ¯Ã1·—©î=¿Ñ¥û-x\rfRîÿ\0òö­nËñÿ\03×5‰Úÿ\0vû=¿ÔÉÿ\0ÄÖ%ïô«ƒÅ×cSÿ\0…yõK.¤º¿ëäKÌê¾‹ñÿ\03°½ñM„ñàOÎ¸ßáU·¬ˆæaÿ\0|·øW3EZÁAufoS²:®Ø8;®1ô¿Âž¾!ÓÓþ[gþ\0ßá\\¥þ§ì_^©½‘ÔvÀ¶|ÿ\0üq¿Âœþ#±(@›œu±ü«•¢©C»+ëõ;/ëætk®Úäæn?Üoð¨$Õ­Ý“Ÿ]¦°èªXX®¬‡›è‡Õ-Øætÿ\0dÕy/£fûß¡õ¬ú+EE\"~µ2çÛ,ƒ9Ü¤=S¢Š¸Å-ŒgQËsÿÙ'),(29,'TEST','TEST',111.00,'tanamos','Pants',111,NULL,'ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0<\0<\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ü5ð~”—®ªW­iø‡G[B®\0ÏN‰:”\0sZž+&‰ˆ<ãŸjòêN^ÐõáÈy­êŸ8õ<æš£§&­ê0m”py5î_¿cêú~ŸâOÃwú–qoí¤6anžñXn]Ñ¡gŽpËÏp@ÚÚc³J:>Ò¼’ì¯«}—v<¶*¯²¢®ÿ\0/6v_ðOßØÚˆZÄ/ñlmdâKhå{ÆŒzvçøA|ÅûƒÄ_<áéí¨­²xfÕE®£\r¬cý\nÅ”Å)‰™lZ>ÁÑ8ò³ûJê:ÉÒ\"°žÊæ$)ö3‹$J;Æåëœž½û×9yã‰\Z>¡a§iÐ\\êñ¬Ñ	u#,° &òKdtm¸î9¯Ä³Œ¿›ããŒÌ&©Ó‹\\±m$•üôõgëØ\nXl³,=Í\'ñ4®Ûùmä/ý³¼3ÿ\0GÆè:ŒVŸÛš&£=…ãÛÊÒE#FÄ8ûèJåXç+‚\rxÖOa_E~ÕßüKâ/…¾ñö¡£ß¦£Ÿÿ\0‡ˆÝTLëKŽíg>VäH¤Ó$°XœÉ5•ãu×Î„æ¿kÉ]/ªF4§Ì–—NëMÈ³š“©‰u*C•¾–·ßæuºæÞ5PpW©ÎyúÕBüË‘œJçtûçòB =99­ÿ\0\nYE©kÚ}½Ë”·¹¹Š\\8R¨Îž<ž+ZÉBó}¡yÚ(úàü»LøµðSÂþ,¹Ôno/<M=ÔIh—ikgaäÏä¯Ÿ*Ç#Ìrwy[@à¶E~‹üøkáÿ\0éZFšÐ]ZépÚCörì¦(Q#Xg×šõ†ß¾|1ý–ôxþø;ÅŸü5á©$]LióÃuâ--YÃÉ{%“Ê³É®ùDm·ËbÛGÍ]ÀOø\'ãþ’ú—ƒµ;TXË¶ê;V6×–2µ’hXeX`ïBAÈæ¿”¸‰óLÆÅb)Ô…yû7%¥¹´ºNÉ¥e®½î~Å”a2ü$#oiÊ¹»ÞÞzÙ½Ne~éÞ2ðøÓ5í\'NÖígìÚ¤wôþì€Ðtô¬oþ	õð¾æïNðN§\\[ÆŒñÙ;ÅÌdEùbÝ³?9û¡q×¶+é=;ÁzÇ‡¢Ø‘Xêè‡æ‹PSm>9\'l›Š¶L¹\'.N(—ÆúMòZ]½ß…õ¨äYZÊúCÊ6º€®…]Á †Ê«)ã5ñ¸<ãNªå“P¾¶nß4¿Èõg(ÊWÍ_Úàþ«áƒß|;á«]kUžKW•£ßö£i·ví\"üîdšÕ®í£\nv,×†Î¦¿ÞC$ŒÌÅ™ŽâÄä’{×õû@xßÂÿ\0>Oã½[T¶ðþš‘$2Ü+Ï$×“F˜‰â,Ò;´`B»vFÅ\\1UoçKöðøƒá_‰Ÿ´ž³«x3ÂšƒtYÕÙYEä¤¯É34J|¸™»ŒPÞmÎßÑ~g5q5kQt½×i)ùìÓ¾ºtµÕµÝ³óÎ7ÂCØÓÄFV¶Ž>oªû¿«]‹d^™n•zÔÍvé(òÏ;ã³Hç€ª$“À¯xÃÄÇ~6Ôµ‡°Ó´åÔ\'i–ÒÆ‚ÞÕOÝ@\0(ÀÏRy9$šý`ÿ\0‚Ø|6Ðt\ní¼)£é~7ÕüØbÖn¹»½t™âe†W\'È%@Ì(žÌcíx·‰£’åÏ:N£ÚÉ­ìÞ¯²³Õ\'è|îK”Ë0Ä¼<&¢’½ÝöZh»üÑò_ì×ñ¯ã÷üÄñŠ¼\'âÝ7Âº‘2X}¿Ì²šŽÈ§\0µ¼ØBDR•ä(\rº¿dÿ\0d¯Ûgà7üV5{™ˆø™§[3gNeÑüi£°#ó¥E;nÑc`2&Ð#fÃ4gêÁðÃ_ü%u¡kº>•¬i:¼&»KÛd¸µ¼ŒŽRT`T¨ëÒ¿+à¡ÿ\0ðlo‰þk¯ñ#öYÔu+í2O·Gá957†úÆE9iwìÁ‰DS8q´í™Ë,cð\\\'àsÚÒY}G/´—5\ZžUa-<¹»ó-öXªoÐOÛAm}*Go‚K[ymÒÝOÔðÇÄ‡\Z,×2­¯ÆŸ@™úT>WŠcR8óì‚„•‡\0˜³¸vÃ%x¿éºGÅ=K?êº’Ï/†õ[eyáÚNâÖ²‚T‚§.€Œ©¾S_–Ÿ²‡ü7ñöcñF¡á?z&¹y\'‡µÓ$Õíí>Áâ-1ÀrVîÕÂ%ÆÒªDRõfiOíCÿ\0øyñÏCÔu)4Ü}•“ûkK‰-5[¡°l‚åVâ;FöPX»‚ª^>yÃµ(ÂU1˜IQª•ã:^ý\nífÚ•6û;õi=Õ–Ö•J‰Pª¦º©YM|¶—ª·Ï?ø+·Ž\"Æ~ðW‡l/!•þÑ;éñÜM4S\\K2Å\nÅ³œ‚² `rÅöíKIù•ã†’ëÅÚƒHbw4e£‘eC·åÊ²’¬8à© ŽA\"¾ìÿ\0‚¢~ÑÚ×ÆÏŽ\Zï‰îlSI¼û*xoMµ\"5	hafh,å‘ZmBâ6–IÜ‚aŽo(Òùp|3¨Ù\'ÚŽ\n‘þÉâ¿}ðÿ\0ð™u5-_.¯{·«ùkdúÚû4Ï”â¬W·«ìík;þ‹õ¿ÜAgt ^tîkÒ|!âß|2øu¦xçHŽòm^}(Þù-öI\ZHu¶vŽÁs‘À‚7ˆ´È´ÝÚÂŠ6Ê‚rFT~¸©ì ôK•dV£<àÙ ÷â¾»JzqSI¦ÕÓWºjÍ}Ìð0µ*Qœ¹š¾«ºw¿à~÷Á ¿à¸ZÇ\rÙøgÇWßcÕ­#XþÛs.^ß \\6>x‰à\\\09 J%ëõbÇÆv·\Z{y’À\"Ž/9Ë¸	\Z’å³€ äñŽsÜñ†©ðãÅöÚ®‰q§j:l…­î\"l2òA³)H ‚AWßÿ\0?oïŠ~!ý<9áÇñ$öÚ¿¤Í¨_X[‚±Î#ku[bÄ™>ÌL¥Œ;¶1UÊŸçÞ-ðºlÊ—ö}E\Zu¤ÕýÛjíÝ[o¹÷>ß™C1ÃÎuãj”ÕÛ[>—ò}úzlz—ü¹ûbxö¢ƒÂïà\nøgWÒl5Y´ññ¥‰5f[e\"K[5WMa—™åFC#+bÓ~Sø?Åú‚µøo´»Ë‹+¤ …Ê±èqÔqÐñ]Žu	u\rxeî[Î’kYÝ¾ó+,`z+Œ„›{ÐTónúŽGò¯ÜxW&£—åqËãïF.K]oï5Öÿ\0…—d‹Íñ.XµV\ZiwÙ?Ôýÿ\0‚kéšG‹ü}¯xÓÅ7W\ZåïÃ¹í®t-þV’Ê;«ÖžY¯ÈbAnÃc,¬IqñÄ¿\'‚þ\"kº<{ü­\'P¸³p ”ŽVU<àò Gzúkþ	÷âÝKâ/í/¨[ê·’ÎšÆ“]\02$W±ÆƒŒ*„v\0<ùoüWJ·Ñ?mÃi[ÂÓZÏå Â«Igø[e´\\+J/k-?¯6ÙXúŠpçó×Ü‘ÿÙ'),(34,'1234','rwrew',33.33,'tanamos','Pants',2333,NULL,'ÿØÿà\0JFIF\0\0`\0`\0\0ÿþ\0LEAD Technologies Inc. V1.01\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0ú|\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0øóþ­ÿ\0àÃàeâ_ü._øWØ~*¸ðÏöoü\"_Úþ•igsçù¿mƒn~×·fÃ/;Žì¯ÿ\0âoúº/üÆÿ\0ýô¯ÿ\0ƒ+?å~>ÿ\0²«¨ÿ\0é£G¯×Ú\0üÿ\0ˆ¿êè¿óÿ\0÷Òø›þ®‹ÿ\01¿ÿ\0}+÷òŠ\0üÿ\0ˆ¿êè¿óÿ\0÷Òø›þ®‹ÿ\01¿ÿ\0}+÷òŠ\0üÿ\0ˆ¿êè¿óÿ\0÷Òø›þ®‹ÿ\01¿ÿ\0}+÷òŠ\0üÿ\0ˆ¿êè¿óÿ\0÷Ò¸ßŒ¿ðgO‚ÿ\0g¯É¬ø×öÅÒü=§ ÊµÏÃÌËpxb‰uC$­’\0TRI<\nþ…> øÎÛáÿ\0ƒõbí•a°¦Ã6Ðä`*çÝˆ|]á/…žýªþ>è>*Õ®¢ñé7Ój1ÈÇ<ð$g„“‘åF÷Ö06–Ule3IË[\r.§äï„¿àÎ]oâUœWþøÙx4›€\ZgÀƒM–T#!¼Ÿí$\\ŽÒ#¸Šì­?àÉKô‰Mïís¿gøz—\n>‡ûTùWômj¶P$*HHÆß”•=©ì¡¸É#Ü“šb?ŸØ¿àÉý9˜‰?jg´+Ô\\ü3hqø¶©Ö´¡ÿ\0ƒã¸@ÑþÔ‹\"ž…>¦«_½ÆÝ`ª:3§¥TŸÃÖNÅ¾Î±¹ãt#Ë?øî(ðþ jù°jÙøo×ÿ\0*”ïø›þ®‹ÿ\01¿ÿ\0}+÷qtÙ-ßP»€“Œ²qœ|Üôô§‹­ZÖ<™,®å 17éhðƒþ fÿ\0«¢ÿ\0Ìoÿ\0ßJ?âoúº/üÆÿ\0ýô¯Ýè¼^ÐÍ¶æÊeÀÆbpêçVmüa§Jk•‡w\0J¦?Ôñ@ƒñ7ý]þcþúQÿ\03ÕÑæ7ÿ\0ï¥~úÛjV÷«˜g†aÿ\0LÜ?ò©·â€??âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô£þ fÿ\0«¢ÿ\0Ìoÿ\0ßJýü¢€?\0ÿ\0âoúº/üÆÿ\0ýô¯Ä/ÚÃàgü2ÿ\0íMñ/á§ö§öçü+¿jžþÒû7Ù¿´>Åw-·Ÿåo/•»föÛ»›?ÝÍßðVùJgí+ÿ\0eWÅúwº ßø2Ò_+þ	aãó1ñSQ9=üJ4~O#ŠûGö©ÿ\0‚Ì|ý–5q£\\kW,ñ4³‹H4­{,Ó‘¸B\ngt˜ä¬aÊ‚¥‚†¿&ÿ\0àÙÚ†?à›zÿ\0€õ]VÚÌk¿.ç–ÙÉÍâÉ¦éQ\"0n(å—¡ÛƒÅq°„–\Zü]ã_ŒWo5ôÚæ¥s¦hSL k0âY]F>V™ä]øÀýÐå¥}l;isõgÃßð]½&èïÕ¾üeÓm[”–¤\\¾ßVˆÞ¤ƒŽÛK˜Ïé^ÿ\0‚ÏþÏ\Z÷“¯ãkŸÞMÁ·ñ~y¢ùMýÖšhÖÝƒØšüôMDªãp©Y’ BÊÊ)ˆýøkñ[Ã_´Õ|+âMÄÚcž.ô›è¯`lò>xÙ€ãÔ×EÐãšü!Õþø+ZÖ?´åðÆ‡¯¸7ö”‚ÞõHèVxŠH§èÜWiáOŠ~2·…¾1üYÑcŒü–óøƒûfÕ\0è¢-F;•ì»E\0~Õf°ùSàßø*\'íàébŠãUøiãØ7\0TÐn4«Ùyègµ¢Ïn-½8®ÂðyÂ\râ&©áÏˆ¿üi Ýh÷’é÷\Z‡‡¯¡Öì$’&(Î›þÎåÁØxõ§üËâ³à¯Ø£MµÐ`Öîu\rÅ6V^^—›;¢Ç<ÄrUUsä³Åyßü“Cñ™ð·Poho¢½ÅÉšÎ9¯…ÔòF]Ái6®Ä`T.ÕwáA8Èñ\'þ\nÍû>ÿ\0ÁW~é>øOã+­[Z°Õínu->óHº³¹°·—ti\"£$ˆ–ç¯Qœ×®Á(oîµƒÚ-Ýù„ÞË§—¸0¦Èäu½ºŒ²©\'\0•fÆN7u5“ø‹é¹ö`äŸ©¢‘NF}y¥­HqJÊWg¦{Ó@Ä¨ÙÀVÉ÷ÿ\0Žkãø$×ì™ñÃöUñ§Æk‹$—Äº>¿âÔ4;Ùõ‡¿’ü¼“;Ügo³\Z4x\\²\0%¥¥Éri¥cé¿ú\'Œµÿ\0¼âM7ÃZò\\FÂâþÌ\\@ñ‚û¢`U¶îHldãÞ¸¯„w_´%§aø¨øu “ÍÕ4‰¥K‘&Óå®Æœœdmž½«öŠý ¾1üø¡,~\Zø7/Ä5¼N/4ÍroÌ„0wV8\\(àŒž1šà/?à®~\Zðzù>?øyñgáøˆ-¨xy¥€É!ãrXž‹Ï¥\"ª•C»&ší#99\nƒHÕ`×t»kÛfó-oaKˆ$Æ<ØÝC+Ôd‡Ú¬ÐvÒàlþí\'9A³Ÿ_—fËW¸Ò™å’æÙxts—Ou\'¨ö¤¤~œó@43	ÆåÁC‚¬:0§æ¾Xý¯ÿ\0à¯³÷üvòÓFøÃãÔðÖµ¨[Í;M‡J½¿¹»¶ÜP8DáFõuË•SÍ|ñ³þCøá€-¼ðßâ®Æ9oä¶Ð¬Ëg}žgUú§J\0ý—Ïu¯Åÿ\0Áo?l_Š(O†¼ð?á^Ÿ8ÊK¨ÏyâMBÜ«+DÑÛ“ƒÐ‚=«Éükñ{öžøÖÒ7ÿ\0jˆÐÃ/-eà«[oÂ¹ê‚HU¤#·\'ð ßx×Iø£M©kº¦›¢iÉys´¼îÊç_(ümÿ\0‚ù~È¿\0ïg´Ö>8øCTÔ!^2ës»\r€Ú¬ˆ=‹\nümØwáîµâ«øžÏ\\ñö¯¸³^ø¯Z¹Õårz–>Æ?ðW¡x3áÖƒðâ5Ãº‹áøÔQ§XCnT£å@Z\0ûoÅŸðtçÁÍ9ŒšÂoÚÄ:päjIá³ÚH=T´žf1Ï(+Úÿ\0cø/ìùûgìƒFñ3øPißYŒ[…”îÄläâ6!N<ÐˆeRÅ[šFlðÒ=ù¯˜ÿ\0mÿ\0/Áßèô¥³Ôôû”°×ÞÝ‚µý¹(ÐLOic‘UÈ$|‡ø\0 ýIZ\\¨E*ÊàTäFA¿%|‰û~Óþ×<Iƒ´­jÒâ\rBÊ;ëLþÎÒ@—c@pªñ¾ì/ÿ\0]ÒCjÁESQE\0QE\0QE\0QE\0QE\0QE\0QE\0Wñ\rÿ\0`ÿ\0”¦~Ò¿öU|Qÿ\0§{ªþÞkø†ÿ\0‚°ÊS?i_û*¾(ÿ\0Ó½Õ\0}3ÿ\0høyã|%ÕµË¢ÙYèúÍýÁ»¿ÌQãÓcwervìÃàóƒ¶¾‹ÿ\0‚_Þ-ìQát_“}ÅË•=W3?_Ò¹ïø †‡Ÿ°‹µ$i’ê?ëöŒR#š&ðÈ—k§FÃÂ¤£\'Ö¬ÿ\0Á7®…·ì}á•ÜÙ\\ƒ““þ¹ªÄÊoKLj¹ÏŸÚÿ\0íW4uŒ¹ã¦iVØÃúÕ’m¯¬\\—K\Z‰Ôàˆ\\If.íÄN†<îOFÆcWPl|Á±ëŽ+Æ-~Å¦|~¿ñÕ¾¢#ûl(.lä€3É*[`<ÍÄ„*7*Ia×¨®7ö«øKâ¿øßMÖ|9s«\\-­€¶Xë-§ÜÄÂYº£Žx,lQŒsMù	_©ê?µ×Ç¸gÏÙ»Åž*ªÞØØÉ€,ë¹WÊƒë‰1œ!ô5øYsq%ÄÛäs#±ÞÌNâÌy$žç=Í}§ûQø¢ú{à_‰>3ñ-³DUƒI×P9bªJn-ž@Ãb€çŒtògÅí/ÃÚ7Ä]FßÂ·wwº\nymk%ÈeÝ\Z³£c‚QË.G]¹ïHgÞŸðn/ˆ,¼ñ÷â&½¨ý¬éú‡c¨][i.n1ê–­#$Q«É!UÉÚŠIÇJþ‚ÿ\0à–š\\úWÁ¯Ã{o%¥Ãhé!‚d),>míÔpeOC‘Ú¿?à×¨ß´ÅVÇ\nÅáäwv\nEý¾[$€\0õÍC?²Q¦É¡šÆ½(ÀÜÎAuõ¥dþ#EðŸF	@íþGøÒ‰¶!#œòÅ¿ÄÝ^ãã’ãÇ³èI§øŠîÒf’YUbM›BÆÑ¼;@\'Œƒ’N+KLý¢ü_k£ùÿ\0ÚzV¢°c¹µrsÃ€¡Á#¡æº½”ž¨ÇJùéýáIÍß(P}†+ÀôÏÛù6%î‹a3ÿ\0[Ü<;¾ˆÊØüZºm#ö³Ð®dÅÎ™®Y¹i\Z8d‰yÝ¿þ9RéMt$ÏT•+{çñõ¬ÉÏÚ’D“÷±Éòº¿Ìzzþ5É^þÓžµÓMÕ×‰ôÍ2vïÔYìÆ{­UÇ|ãÞ¶¼+âÝ+Æöis¢êÚN±£z½…â])¡GÒ¥¦·(ÒD¸–•”¡Ã¸¤Í \n0€y¡rÍ\0aÀë‚(ùåÿ\0ƒÓàŠ/ÚàDáO7†µ‘ñó:-ÔEAöoÌ×âhg“=X‘ÏË“Ò¿q?àòŸ]xËöšø§Ù¨ó¥ðÎ¦À·L-Ädþ‚¿üá½\'þ~Ÿ¦øšþK\r^$z…Õ¸ðÅŸ˜¦‹Ù#4íÔÖø\'OÆqñŸöSðÍËÊ’êZ$E¼PÂI­ÀEvîGå6ORÇÓŸuBBŒƒëœuúzã¾:Wæ?ìÅâåð…ëxWáß‹u¿¶xžAw&¤Â&º‘£˜ƒ$æ8Ã\"nÉRÛÔàWÓ¿¾|IÑ>\'iÚÖ·y¯Yé°¬«¨Ã¬kÉv÷¨cuHÖ·Æ¬²˜äÉ~DsžPKÍq±¸ã5ö÷6¤u=*¼·ƒ™¨B[às…ç5âŸ·õÈ›öVñ4g£Ëhÿ\0–ñÿ\0‰¯N—SòÉäžkÇn‹Áqû2x$çÍ´ãþÛÇ@÷ûx[â/„hÙÓÆM‘©iz‚øJk‹‹©-gµ´{k8˜I…„¸ˆáŠ0ÉìÀþ„¿ÿ\0b‹ÿ\0~\0¸\'åðÿ\0…›·Uµ´?Ò¿g[©©[²¥²š%V8\'8éN¯›à¬?|eñÿ\0öñ‡…|ñZÛà¯‰õ	-M·Š\'ÔO†ÝRæ6hd¹Œ‰!Y€1îC»æÆ,*‰>)bI^HÇ\"0gŒúñ_ŸðXo‹´ì©û3~Å|ñ÷X_øÆæ?ø£ÆzAŠoí÷1ØF·‚FîªdvRL²Ä“‘_öÞðŸí¹ÿ\0Rð‡Æ­öšÔ?h_\0é\Zµ­¯‰ü/âÝ$’)¥òÐ¤»¤dVvT-‘²³¡Ã®å\0³b@FpØ÷R)À†\"¿\Z¼OñPøÕÿ\0;þËž,Òµ\rbËÁž1øAˆœ÷®°s¦kr©‘Ú]G—–ÇT•úÉðããÿ\0~.k\ZŽ›á?xOÄ×ÚAÅõ¾“«Ay%Ÿ8ýâFÌSž9ã=óÅ\0v4V\'¾#è\nü96±âm{Eðæ‘’÷T¼ŽÒÞ2z$Œ\'°ÍWøiñoÂÿ\0|?ý­áx{ÅZfíŸkÑµ(oíÉôó#%síš\0èè®JoŽ¾\r¶³×®%ñw…b¶ð¡Û®Jú¼\nš1ÜË‹“»œ£I·”aØÔß>3xOã‡‡YðoŠ<;âÝ!¤h¾Û¢ê_Ûn^£ÌŠƒÓåëÍ\0tôWñ‡ö›øuû=Kf¾=ñ÷‚¼u,Æ½­ÛiÍuÎÁ+©pR:W] ë¶~&Ñmu>îÖþÂú%žÚæÚE–ˆØe]IVR! ƒÅ\0\\¦ùË‚sÀª>)ñE‚ü;¬j·–Ú~•¤ÚË{{upþ\\6°D»ä‘Øðª¨’{\nüVý˜ÿ\0àºÿ\0k?ø-7Â¯i“Yè³OÆ\rKV>Ó®4‹c}¬éš}½ä?mi™ÉæÞZJÀv²r,ûoç.zô8ühó—ûËùŠå~)ø†ïÃš= ³—É{«“ÈÌ $ÇnJÀšù{öžý¼|Uðsâ„¾x#Ãz·ÄŸŠ>7·»Ô4í5(tË;+S\ZÏ{yw aAå*;»¶ÕRi¨¶Ù~rÿ\0y1_ÄGü€çþ\n—ûJÿ\0ÙUñGþî«úÙýþ=üSø‹à›ËŸˆ~\rºøiâ-BK/ìå×­µ˜/aXãu»†x@ýÛ3²uW&ÈÁÿ\0#_ðSû—½ÿ\0‚–þÐóHÅ¤›âo‰‰îN«rI¡¦·ôsþ\rëÑµSö\Zø…)m6?ÙkZõËmGké.ÆJ2v±æbx,Äã€¬/ø\'¼’Ëû+øvåeóË*.Iýór\0®÷þ\rã¼Ôtßø&×ÊèÍs¤j>&ñ¤Ú”wj\rŒßðY¼jð–Gðá¾V\nÁ¬oø#f\'‹<1àÝ:+d¹Evïn× S#d\0•àg TÓ4ùWR+Ô:no¢¹ßÜ_µ“~õ%\r)úóL}m’êLƒ‘úWÙ&øT—Zí´÷>ž+(­¹†Òá.÷Ë½É”¶U¹Vn	ù@Èë^/®|\"¶‹Ì7:5Ü¹\ZÜ ¿+r\0x2Hé×Šíú”Ïå;oèïþGI­Ç^)¬œïdD\0³3\0Éü1ø×y{ðE½É’âßÔ,›ÊýGoÆ¼Ïö¦ý¼K{û:x˜ø:ìÝêz˜M\nÙ+Üä3Ô\nÎwvÀ=#7…¨Ž¨æ¸w»käÿ\0Èü„ý«>1¿ÇŸÚÅ>&ó7Û_]˜­1þÅù¢)>ä×žW¶k?ðO¿‰úTw2EáË­BVš9d´V‘c0„2n!HDˆIÎ\0`sŠómsá‰ü:GÚô-N4oºë	topÃ ŠÎTjGâ‹6¥ÃÔ·$Óùë÷n~”ÁªÚsjŸµÅxDPÏ»ÁKû¹@dsöû|eH;‡¨ôÍ~û~À¾Ð¼á«[ÚÃkáˆ>Òº4vç6ñZi\\ìX{¿»ƒ q€+ðþ\rwð=Ÿ‹?hÏŒZ&¿`fÓï<‘ÝÛN=éý¡ož˜eú‚\rDŸ³f‡máÇ±Óìm ±²±Ób‚ÞÚÞ1Vñ¥Äª¨ˆ8U\n\0\0\0+\'nu]þÑ8½Ðiˆ±Zß\\Û§ü$79‰%`¤ä|Þ«/Oøá­ÛL7ÝEuµpÑ+Ð)ýkCãµ›j´Åv6–¶öþ-x	ï\Z	®g’9ŠÃ±y#•\\˜Ô),ÀBôí\"HdÕ|-®Ø[K\rÄ¤åðã|a]ÈWq¶YGq]žš™Ê:èw:oí!x’´iÖr*ÿ\024d}–?\Zèt¿Ú?L¸›ÙÞÛ)ùq¬Š=Î\rxè‹Ã¦WUÓ¤¹Úm–æÈ°`ÅJò89Vm${ðk#U×mt½FvŠø\\ÙF…Ê)„4xÉ g°çð«U;	FèôOŒß¶·†lµ«Oý¿JmX]É£‘yrHŒ«†e!0A\rÔ}stO‹¿\r¼e{<—ÞÑõ{³,ÒÅqmuo<öìû\0+´®Ð¢5ÇsæI÷~\\y‡ìMû=è¿´ö¿®xÃÆ·7‘èÜo[{iBÏrÒgdAŠ°UU\\“ƒ€:æ¶?oOØWÂ¾øo/‹¼	5ûXiì©¦ß2Ï%¶æÂÌ²m]ÊN®ÐTœäƒ_SÄ,®—ödä¹Ó¶ëÓm÷ÿ\0;Y6}8_,\'ÖâŸ-¯{hz.“ñ‡Å~(šgŠ¼_¦ E-µ»Ÿ!W¾\"vhñÚí<;ûtüMð¬‚&ñTZÐ_›ËÖt«yÊûo€@ä{³÷¯Ë»oêþØjÚ¥‰‹ƒä]É\ZqêÇJÝÒ¿ii®ñóÉK¨ qÔŒËx?ÅŸÎ¾ó÷rÝh|ÓRZ\\ýXÑÿ\0à©þ+ÑÜ.­á_\nêñ(ùä²»¸Ó¤EÂºÜ}‰^õéÚwü«Ãz]î‚ž+ð—Œ<+mâMRËH±ÔeŠ«®.îÞß(ÒI\Zï7r@ÇKOÚó_‚FþÐÓ´kÝ§ yoø3ò?„×c¥þÚ\ZßÅÏü/ðÌúô:[üBð«Åc&¯%Õ”LšÝ›|±0U^=nœ\nÊ­\Zv¼QQ›¹ËÁé—Si´/ÀYav†x|;©Ã¨ÅÔJ\\×â4²4Ò3;g;‰n¤×íÇü¿™¿hŸJ¹aÿ\0æ¦F?ëê?ð¯Å=?Ã:†¬ßèÖw»5çØÙ´·6>\rüFºøAñ[Ãþ\'²f[ú;¬7ª·Î‡Ù“rŸ­~Ïi^-µñ…i¨XÊ²Ùj6ÑÝ[H:IŠñVñ¯Ç3özñ~©§\\]G¡êKom\ZK<jûbGVdf |ªÊŽTœØÎ\r~¦þÄ|gáÏÙkE´ñ~Ÿ&—>‰ss¤ÄÒ·ï.#ŽY|½‚mtÏ¤CûÃ4 Éu#Üï¦Ô¾o¼:UIµ0 eÀüë¨·ø{fŠ%¸šv^Ÿ\'ÝüO­iiŸí&|Yi×7§…\r>ïûäqÞ“VÐ«žu>¥¹¶¡gç°?Ö¼—öÓ¿fýž5è™mÎêñÿ\0…}¿ð»BÒ|)­ÚÞk~\nMbÊ;YÙ]Î–¹˜¶#|³…ô9àb¾Iÿ\0‚±ê+ugâIm´Û-ÞüZ<Z}¬žlvéæÆ6îÀä×Òúûh^oÀ¿€sí8>ðÁ£ýÖ¿\\›©¯ÌOØ/ÃÀ~ÉßoÝøu²GB-í°*ý;n¦¦;²å²¾:ÿ\0‚óévú×üßâ5­Ð·kyn4°âvÆ¡ly\'Ž£ó¯±kâOø8{à\'Œÿ\0iÏø$_ÅO|?ðæ©âÏjÒé\rg¥éñ‰.nDZ­¤²\\Œí²š¢à º`°ý‹àŸ“XÛCyu£XYO§Ù­ÂGöùc·ÓLpÆÇŒ¹U\0àýáÇjöÚ£Â_µ\'ü“Ã?u_…VßþÝ_Cy¯êz¦¤·“Hb}Èª¿#:‡Õ0Ìsªç>û|~ÀŸþ\"~ÊßðL}BømâWSøJ4…ñ•¬ÛÛÃÆ8t…“í#8]¦	²yc~?·!äãïsŸQO™îãÿ\0íuûxcâü‹à¿ÂQ{w¥øfÛáýŽ€Éiv°ÞÏ¦[ZjbKbÃç4´.W,‚*_Û“ö.ø{ÿ\0Èý¼ÿ\0f_üÓað3kºàÒoôè/›É¹‰n¬â”9‹·›\rÓÆê*æ»ÚöHø—âOø:wàoÅûx‚÷á‡ü6›©x–+mÚ}É³ÖPFïêZâõ‘}ñ\'ü=û#üJý¦ÿ\0ioØ»VøàwÅúo<{.¡â>54‹su¥8’cœª•‚SŸúf}©ó0(Û|Ñ?à«ÿ\0ðY‰\ZgÅ+Ä_þBö:G…žèý”Ü¬«–XÕ³óIç»œ)m©%S\rÎþÔß³ï†¿àðTß^5ø?>ð¿ÅëÏìørÞå¾Ç|«sk»cfË|·qÈ£’E‘÷¶ÕÚ[ö^øñÿ\0 ÿ\0‚½ø¿ö¤ø%ðÃVøçð»ã=—Ù¼iáMLk:eÛg–(Â;H<È„Èè¬	–xœGòHÙÞ\rýš>>ÿ\0Ám?à©~8ü`øKâ€ÿ\0>º_øsÃž$|k\ZÕúÊ³†hYUãß4Ví#2Û¢)vbê)08¯Ø÷þ	Ûðûöãÿ\0‚É~×\ZÄC&»à-Å—>!¾ð”Ïž¯©ý¶êk‹±+¿“]íR@Ý9=°_û(|,ðÿ\0ü/þJñÏÃo†Ís£ü(ñ—ÃË^xtÞ¼ñ[-\râ…K–ófÜÁ.]rAçÞ¿à²\'Ä¿‚?ðXÏÛ{Ç>,ðN½áÿ\0øÿ\0]kj×–û-µˆÎ¡s.ø_?0(êßB*þÆ_¼Oÿ\0HéŸ&ð&·yð•þK£Ýx‡ìàéÞké÷´%ÉûÅœ.1Ÿš¥°?;ÿ\0àŸÿ\0¶¿ì¥ñæûâgÆ?ÛÁ>5ø¹ñkân»raŒxbïXÒ|9¥¢\'‘kfCíŒ®ò£´i@ù‹}—ÿ\0°ü_{/Š?´·Â_\n¯‹›à‡†µäñÃ´ñ¤ö÷:uÕÅÂ4—‘•XK2âGÆdjÈý’ô_Ú—þ\ræñWŽ~é³ç‹¿hÿ\0€ºæ½6¹á-cÁó–Ô´Á0\nbž4ŽFÎÈã¬C†ev\rŠý+ÿ\0‚|þÔßk†º×ˆ>%üñÀ™­õ!m¤iZÞ¦—·š§”­ö—Qm	ÞY|¶\\ü¹ÉÍ\0|)ÿ\0~ÝZŒ>$øö2‡âðÎ×â‹Ã©üLñf¥z–h>šO³¤ÎBù×>C~u	\r³šù¿ö‡ý«?fÏ‡Ÿð_¿Ø·XøwñáÌ?þxm]NÃX…ôÝ\r#‡UŽ(¦”6È–/¿†c $’Ù¯ÙŽðNÏ€ß´ÇŽ[Äÿ\0þ|9ñ¿ˆžíN¥­è6÷·F(ó²?2E-µrp3ŽkóKö»ÿ\0‚+ø^ëþ­û9]ø?örðÈýŸ`ðõÒøÉtß\r[¦€×eu/,ÝÆªœ¶Á`qû¿A€ÓÏŒ_tsá†|K¥_Zjz&¯4W–W¶ò	 ½‚ki)Q‡ŒŒ¬ê¯Ž¿k?ƒÚ×Å?Šø¥ðÃÅº?‚¾,x\nÊóK±›X°ký^ÓîŒm6Ÿ¨D…ee…„‘¶Hq·êÚãáeÝŸìå¥è¾Ñv~žÙ-4½2×‹{8áhR8\"AÂ 1€Š8U8WÁ>~Ñú‰lõË©h¶ÑÚ›k­]øs¨jV·2o$\\	âh¥€!v|ÊvƒÅi¬³þÇ¿·}ïÇ«/è4ð½·ƒ>%|7Õ#Ò<K¤Ûêo²v–Ý\'‚òÒn[Ï»€u(Á¹?Ë·ü¦åoà£¦_»/Ä8úNà×ô5û;þÉß~Oâ­cXÓ|uâßx÷SMKÄ\ZÁðå”S¼q,0C;Ë‚(”*†fbK36Nó«ûY^iß·ÆË}F-õ<{®ÇsŒ4RFpê}ÃdQ6ëgüo­ªÿ\0Á4¾)Ú&›jš®¿âÛ›öœî.ƒf!¶Hû ùÝˆùj¼î®Kþqª®›¬ø9™ ‚ÓQ’wQ–XÅ¼ÌÌ|c¥zwü!¬ØÇÿ\0·ø±¦5í¨Õo<Eâ ³3/Ú&4-8;¬yÜT\\03^Kÿ\0$Š=Kâ?‚ío…ôûï1sëöy2¾ ‘ëÍMj©£Ÿj2Šê™ûUðïÃ6ÿ\0ÙÙé‘ÞOkŸ´\\4Íh¤¤¶qÏ@1YÞ7øm§ü<-g%•ÎwmdŒÏ¾“\'%[«¯½`þÉ?[áÿ\0Ä/\Zé:Õè‚Òù—QŽòà…‚Ô¡edcü*D«·Ž¼w±ûV|vÓ¼Qâÿ\0iZ£a¬Ioy#ÞÜÚIæÇ\ZcV1f!s÷xÔ¸Ž“·úÅ¥í99•þ>[%¾Úúž,~[</;”T¹ù-¢wçåµ·¿_C?h^.¾[+ÄÒ–ö@] š\0X¨ääãû ×†þÖ¿²o†|MyµÍœ6ÇMO´¡jWR¼‡iÞ²©Ø c“Žx¯°¾~Ï^øÑð³T½¹Ð´mGÄQÜÏ\r…ÝöýÄ(aÑþXr»¶óøŠùÓà·ìsgûN|\"ñ§ŒüNÚ‡‡/<)â^ÛHo\rx¶÷QÑµµÓþIî#Žõ<ÄˆÞA=¹P\0ao¹NÒ}LÃ\nï‘FQ¾ÎëO—SôL\rðÎ#©ãjsåÖTÜ_½­¤Ö—¶–Û©ò—‡ÿ\0aýb÷JÔí<%ãO.úÚX§´‚u(Œ+,„þïpó`•`HP3òŒ|ÏñOþ	Íâ­Åw\Zn¬éíäÚ­ÃÇ}e,NÏ$Š±ewÁL’ýð1ëúÇû&øöÏÂÚÅþ4CÌÔR;­ÂB(Œp{Nqšæ¼ÿ\0ðgí§ð«Å÷šj=¼~˜ÛÝCzñHe€—U|gä%£|+r0=kÏÎ|AË2ìòŽIZ”¯QSnkà‹­9S¤›ÞóœVš;_CóÜ·…1¸œº®a\Z×T[M5†1œ­~Ñ’oSãø\"\'À]wàßí#ñ.êú2G¹ðªÛÀVgE’OµÆû²oAòXÇAùxçõÏöBñU÷‹´k;ýSI:¬,Þý9®æÎâ+ÉÕÔ8P	«pYH;Fp?>`\0Ö¾6ø…ª[éW^#Ôlô[v†Æ9á†kµ3’È­3¤A‰Û÷ÝWóØþ„þÉšn«§i6­Áž¯}b÷—vÐÍçÅm,·W4JøÂn\n;sŽkÑÆÛÛ»m§ä}¦I	ÇS}3àoÚ{Æ~\"ðOíañVçF¹Ô´ø§ñ<èÒÁ»Ë¡ÎA8\'ã8rFŸûdøÃM’Ð¥æ–Ík‰öØG¶O17ì÷s´(Âm8*{a~ÙÞ6¿ÑlÏŠQÙê7Ö‘¯Š.‡–“íMÄòÞž•ÃÇñ›\\(kØ¯€mƒíÅ6	Úr=ëW®TwÝ­^´ý­nîôèàÖ´MYTXc’âá™®¥ò¢TFß&õ,a€#fååH%kÁjßŠËÂº©³µŽÐø†ñíà‚)û4M!vUÆ8T8Èà¿Å4•OÚô-àž»\"{g?Š±ÇàxWí\rñ_Âž\'ñãYÝø{UŽ=&5Œµ†¢¬ªî9\"T99ëëZF(W>«ÿ\0‚Qü^ÐµïjWÖÚ}Ö§\"ÝéÏ+ˆâ’UùLd±Æâ¬03ÉOp+è¯Ûž+ƒ<Ckª]ÅÎ¿kö;+BËæÜêÌás’©´Ø;FNH¯Ê-ÄþÓÁ6\ZïŠtÂç!n¬#º_Î&\\ß&µ<Gâ|W`D^>Ò¯T&ûõ¹ÐtÚ¡\0~8üáÄ~ËÆâL>)Ó§u)B×»]ôOª>çÆµ°ùwÔžªÖ(X\\I7¬ÖÖº•µD0ÈáRv2`FÝ°I\0žÃšôÿ\0	Å6·àÍOXo†\Z~«a$3ù3$‘µ½¤©\nK•n5`îFæÉÀï±ò{†zÌÈ&°“MÕC‡µÔã-»øJ€êÀƒÈ#¥Kªÿ\0Âo¤]i—#ÅÒi˜3Û+Í<D†VÜß3Œƒg=ö€r:ÿ\0GFŠcá›»¹è\ZßÂ=,øGIŽÁì^âÃLÓ5]cP†[¦›N·¼°kéä¸ŽE2ª®[aˆ,žd!ÞðF‹áÚwáÔzn¥<²Ù|]Ñ4õµ¸¸‰çXS]z \r½RÙŸhF3í*sæü^ñ.‘¡&Žºæ“\r²Å¶kuK;µòÃ¬@Îª³0e\"3»Ž@=;Ã¿|i©|}ø=ñ+Ä×ZmÔ~7øá»ö.ËHÒË«Ú?—µ¹,E;U›`[b‰^ÌHôOø;ïÀÚ‡?i_¢Ê;fH<5«y§XÂÿ\0¥Cõ\'ðù—àßÙâV´Œj^ Ò­2sˆQ§qôûƒõ¯Òïø<CÄWš7í)ð=­wá­T}Úaÿ\0ëWçOÀÿ\0ÛI¾|2ºÑï4Ôu	®®¦H&xN—{æÛÇ-wo,nfki\"ó\"U\r4‡âóèE¹¶ˆ­dï#×¼9 jcÑ¼‹uíwm¼6Ö:^›µ˜tµ·˜!bÁÏËÎY™ð9ì1ôGì·ðßÅž\Zøñ>âOøóP}FÄ,Óx‚îêHmÉ&XX¼„B¥Ê¼`ŒÍ°Œåkå¯ÿ\0ÁK<WãH<4¾\nð†àÛÝîîú9¬\"{–Yå³¼²GA\Z¢+,¹öï,~X•N—ûO~Ðú©²‚ÓT×XÛÍg*Ë5œ);½¸¶XÙ¥‘|Ì·Ù`ó¸óvæMÜç¦MìÈŠRøOÔ?ø†×áž¢,nô‹-:ò8Õö¢C&AC¡`FAr àƒZŸ³ßÅ-;Ç_´„ô}F·Ø__„žÎÇP¬vžzq×â–\Z‹>0[Ûx‡S¸Y®uKh¦iîï„ï÷\0ØH,r¸ÛŒöÏÅmøSá^¯áoÙê¶ž#:f¡a\'osiimä\0€ÈN6œëÖ¼¼r«SR%i¸ÉEôM§g§fzTÚŒã)+¤Ñú?¢ø‡Äº&·\Z/Â¯	é–m¨$»LrGl%ÿ\0\\rÄì\0‚H%ˆ%Tpß?ð[sãŸÄ§ýÞßí”@‚Ù‘ÇAÍ}5âµïƒý½ã\Zë(ÙÜ—\Z«ùgž›A8úc¡¯‡?à¥\ZUŸ†.¯,4õxí¾Çk!WmÄ·˜Iç¿\0WÊpÆAš`±ÄfX˜Ô¼mËÉ+Ý>kÊRmém‘èãñÔkAS¥k{»~‰µ?°mŠ§ì?ð=ÕAòüáñÏý{Cÿ\0ÄŠýn¦¾ý„á+ûüäÈ™áïý%ˆ×ß­Ô×Ú-ÙåÜJk u ƒN¯/ý¨|y­xÁÚ@ðíÕ­†§­ø›HÑ¾Õ= ¹[xî®Ò!*‚ÆOœ`ÐMtË =)Tuõõõ¯™üûudÙøšÇÅ6¶w·>Ö-4»bÁÖ×OÔ#ºÖæÒ’åUÙü¡FLÀ¹PÑÈãmEðÃöóÿ\0……ñz+½3UÒôk=3QKÛ[]2óS–[˜ßI–ÞxÊ[‰Ì\rm¨‚Y¢E¹ÈÚÄé³ÎI$ç#\'8ü:P-Ó=}{ÿ\0|ç\'íõ,~ÑµƒàkÁ¦êš!ñpoíx<èô3-¼ir#\0‰.íþÌ¬p3{\"4ß?o/øY¿¼3£ÚøÅÃ¯ZÃ}5Ò+].›ms5äV³LÑFÑ\"1±˜¾ùP¢¼XÊ€C20Y½°qÀS•vŽ¿¦+æSö½ñwˆ¾<üLðo…t«-JæÏLž¬¶Ä—º•ˆ€_,—´vó/™zŠ±¤ªPØÜ#pÇgàŸÚ†oèŸ­,´ùuÿ\0xÔß¼¨èš<vK§Ì°_4ŠÒÎ7E+¤a#y¼ÂK+ù`¸\0ö¤Œ#0ì\0¥	‡\'<šøÃÃ_ðR­OÃ_	|1«x¯@»:Šhvúþ ¶B	†¹k6›«ÜÆÐáÔ[9—J—*Û°\Z1Ÿ™™>™ø-ñjOŠÐk‘^iM¡êþÕ¥Ñõ&¸K•Y’(fWŽTÀth®\"?t$©\0© Ù£ÝžHÏ_zU]½É¥¢€\naXœ‚rsÉ8ÏÓð§Ñ@\r\0…yÁ$õ=ÎhòÁ\' ¨Î)ÔPD`Fƒ¯â#þ\n¾1ÿ\0Ký¥ìªx£ÿ\0N÷Uý¼×ñ\rÿ\0`ÿ\0”¦~Ò¿öU|Qÿ\0§{ª\0ýHÿ\0ƒo5\rPÿ\0‚nxïFôÛŸø“Q²·^öÚÙ<;g÷2Â|ÔŒž4€sƒ=ÿ\0‚	N·ÿ\0|lIa.—~Í“È&ÖSÍ{çü\Zë\n/ücãÁ#óGŠuÑ¼ -¡XÏ^õ¯œ?àw{?k/Ä¬\r\"õ‰l‘ÿ\0²äŸÂ…¹3W‹Gë>i××Fhõ¡mpùó žÉš$a€¥d\nsÀRNF¦ü.¹Ñob½{íQKu2EÊùÒòP`ž­Éô&‰iïí_ÚNçáÝŸ†%Ôî/4Û¹,î-®		yn¡Þ;¤ÚÞ]»©ÂÈ •b7˜f¯ÃOÚËÃþ:ð×€uOx‹F‹Æ×w:0’âÐMk¦ê°#±²še?22#´s(1¿–ØHÇ«ÃyMLBÅJ„yïÍt¬ù¯{»Zîúë{õ>^·äõq<4}¢|ÜÉYó^÷vµÝûÞýOaøûAÃ>xe´Ôðîµ­E}t<„ÒÌnF1\0ÄDì7ðŠÄƒÆò8®wà÷í#ðóà‡ì¡§|0Ðtÿ\0‰Å¡hshö?Ûºb‹›ÉdG$ÒFû<ÇyLŒxp9Ç|eñ~Šž%]7P—Tk»HQÝ¬l®%X²[¯”Œ°|g\'\nH8æ¹¯xƒÃ¾ Ô×L·ñUØicK+‹™¡yÈçË1Î¡Ï~G×>«ÅaGQ];Zê÷íê}2Ã×Pºƒµ»<¦¬¾\ZÖ´³ãáæ©z¶-i©êBc[h¥ßp¡fdÏdù>f#Nn›h³vð“I×%ðß‚,§Ñüi¨_cQðµ­¼–i5½Ì±™oÌoû˜Ü+J$ÎÌ+©Š+û¿à™®Î±Ýq,HáC§ÚUU”£Fc†n à:W‡üLøa£[ÝMçè^¶Ô\"	3Kb³Å#à:Syßò–L08cV¸3.ËqÙž6ÅRæ«BÜ®í\'Ë.xs$í%	^QRNÒw<º4ñ”0¸¬\Z»…,J´ãdÕ­Êù[WÖ’³Õÿ\0‚\\Ãr><xñ&•åŠëAµ{eÇîÄk*)aþÖKç=‚ú\ný#ø4êÅ”ç6*Ùõÿ\0I˜gò¾\0ÿ\0‚|éM¦~Ð>.•Ì~t~XÊÇƒý*3Óþž+ïÿ\0‚ËZ5ìläÔÕêÔw–§¥‡‡-5~@~ßWŒß¶ßÅØrÀÂMwÓ±ÏZï<SñÏÂPNóëþÔ­¼‚QšûÃV€Þ²í²dy	´2	cÝ$Ê…*íåŸðPM>þãöæø¿4·wÿ\0ÂUt¡âˆº†§ÁEp–ß´Ž´m>{â}j;kˆŒÛÎÛÃFU”¦$R@;›§Lœbºâ¯\'¹ë_<aðžó^Öõ-îtHðåÔÖÖ÷ÑÌ“êáfX²’gìÎCáNdì0~fðïÃ¿\nüS·Ðdµ×µñ£&œÚµ³ÝZ¹$›QmBeSå±0Ãko(ŒýÕŸæ-½Iç~4øÜGáû}=e?érÕtüÈÏµyt×]1Ð\rÛþR¤’½b{qé×­ZVBo©õ7Œÿ\0`	´ßk:W‹ö==âV·¸²d]²jÔ±œ0.\"!gŽ7$èB´Îÿ\0hÙßWýžïí\"Ôµ]\'TþÓi<µ°¹‘žÔÆˆá\'Žc–)y\'lŠIÁÍs^ñOÃÍ>ëÃrjš6·40\\Eª‹6K|\\.Dq\"`!mŸî X‚Ÿ¼{£xŸ@ÒOÕ¼k{uc=ãÍo¬ÞµÌ¤Œ\nÉKmgbL€1ÜW•\nÎ¢æi­ZÕ[goÇuäa‡¯íaÏÊã«VjÏFÕý®»¦Šžøk¬üP[Ø´=çZŸN†;‹¥·€;A“ÅnŽÞÆi¢O«ŠÖ‡Át(üëmÇv1ÄÊ¦H-/5&Ý.€%FßõG/ûŽ­Ðæ§ý˜þ!êþñ~£>‰ãÁ×’Z\"Õâßm¨\'œ…íØì}»‚ç8\nFåê=gÅ?·/þø’5“ðÏÇ7R‹ÿ\0í]i¡W*ë\Zm6²Ä¶ ƒr¢+¼qÂˆ†Í»Ùž#gñËÄvó€úýÍÃÈ›•nÂ]4Š1ÐJG#8Ív>.j+ý¤¾ØÞÙèìƒâ‡Ug‚Á!x1¬Z±\nÉ…Ž3ÉÆsZmo‰ß5Ýø6\r\"þãH‹J²m.ý’Èˆ$·[yn ti$– H¢hž0žtÌ«‰k¤ø}ñ_á×¾?ø\0hÚmÍ¾¯©|Fði±i<=ee5²[j6º¼°HÑªÈvX#@íå”#™=ÑíðvW†m|EûJü†k)on“ÃºŸ–ˆXáMÔ9áA=«à¿„Ÿ²¿Š5ð¿Øõ‹ÅÆï14ò”d´Ž@É“Þ¿_à¾\Z¼šwíðÍUØÑï7ÜG“Zò^*i4¹ËHç2IÇïcÿ\0<×ó7‰\\}[+Ì*P£JMÇ¯?*øo²‹üÈ­QÞÇÈ·ÿ\0±_ÄO\nxcûGZÐ4_Ø³,aïµxm•œ‚Bìˆ»Ž8H\0ñ\\Ÿˆf¯iPÁq¨x†+{9åŽ ú>s~‘ù„…âQlNv±ÝÐícž	¯«l?‹úºõ¬Z­ÄS?‡GedØ	s3cê>fXä¹FèT¼k“Æ+Î¼û7øÿ\0ãÆ½¥YøwX´Ñ<=w¹)¸‰¦º›ËgXüÆ$¨¬BŒ <pHÜ~†¸³2«•PÄfMsT\\Ö÷“Ö*÷»vµüô?FáÞ\\$kÏâ’¾–²Omü­}M¿Ù«ázxSÀwZf¡âojš-ÃÜÚ­ÔhÂhL»[žàmó7g8aÀ¯Ñ/ØËönøGñûÃóÉ{kâv×4‚Ÿn´ºÕ\nÄC\0VT1${ž0sÈ=+àþÂþ%øMñžûWÖ|A¬jöZÅÅÄ70Jë*Ø±TE\'ËÂö÷9¯«ÿ\0a-;Ä?ÿ\0h.)­e\ZGŒÓ|Æ\"ÙÔ4ªì¤àç\'¾G¥}†WÄ\n¼”[¿ÊÆÙ×\ný^›œÚïs½ÿ\0‚—|)ð‡Áÿ\0ø>/hz^‘5íäÆCªÇ4è‘(;œ\rÌ2ýâz×â÷üòÿ\0Ìñ¥Üc½…·ùjý¥ÿ\0‚Èß{O‡Iù¤Ô”ú|¢Ûõ¯Ãïø)6£çüQ–<ðÚ}»èUöÝõ>¤lô?{aXOü0·ÁCù’ü;ÿ\0¤×ÞmÔ×Â°Êíý…~\nØ•áßý$Š¾ìn¦µ¹˜•Ä~ÑrøKOø3¯_øßAµñ7‡4¸EôúdútzÚäˆ†‰#‚@VIŒc|®0y®Þ¸_Ž¿\nô¿Œ¾±Ðµ««‹}+û^Êúx¢ŸÈ:ƒA7ÃQçG|„1Ø š`y?†¼qðgâÅ?xjÛáÖ…{9Òm/4É´?\"ÂÖkg¿…\"-Û	;U@ƒï]·ƒuß_®5“áû¿…¾›ÃŠSU6ei&›æÌ–ågÙƒi­âˆ«`—†5#( pý…|à½cûV_O©ø{Bó¬RÆîæ?²Ù@>Ò±Y¼Û·….Ö5ËnÄQ†$ä›>4ÿ\0‚~è>#ŸH–ÝZÝh×ú®£¦‡‰LkýQµ&YY\ZT]ï\nêÅ[vðê\0uú_„ÿ\0gøcÓï,´ï„A-.æÖlf‚C8’ßÍºŒÃ	%³Ý\"ÿ\0–üîdÏ!ñ[ã÷ÁÏ€Þ)Ö¯o¼å_ü.ÓäHo´Ï@ÒZ*%´ijA&£mÚ±Ÿ´0V,Úÿ\0Á9|\'gãí/_·¾¼³:uî‘{Ÿem6*, XÌ‡%!¸h,äuÜNë8¹Æs\'ŽaÍÅ¿&ñ~£âi¢“XÕmµ$µ{´Ý¼ÎO°¼äïšÏm€t·Ûò;K!fÂ€WâgÇï„Ïã\rGÀIðú_ßéÖÅ´Ý7F°š¸Ôí5\rIå„ÜK{ÚK©e`C1•>û9Ço³ð[Äüöäð:\rõœZ÷ƒ­5{keŽ$[‹X$U1ŠUÉ@\n«àã$W˜è_ðNÿ\0†~µðÌZÆºšæ‹¤ÜÂÿ\0c×\r¬ÐêßeYŽ8å/â(õgá,áøzgÄ¯ÙÚëâ‰µ{Ã^2½ð¤ž#ð²xfú{Xå³!¹’Ú{Yw)‚XÞêC½K+)heGPkâ›þÍÞ=øpº«¯|\'Óô½oGm>ÊhoôëiVÆ!uËg?v8ÃßG…S}Âànq]‡…|_ðOá\\ì4}Oá‡‡&²Òÿ\0´$k)ì­6Ê’‰B1’Ï–\'k4ÈÙ%Á<GÃ?Øk@øO«}²ãÄÒËy©ë¶ºŸ–°Gi—j:¦¢°ÄŒÌv™5”ÌûaS’AjËð×ü7Ã~´ŠÙu_¶ZG’[­1ú;>=> ñË¼\"Å,ZtA£1“™k…ÚŠï:?Æ¯ø†=mì|Q ]§††ucül4Á†;§ÁýØÂ?-ò7¡Å=;ö‹ø­j\Z]ŸŽ<%s{®FÒiÖñêÐ4·Ê¾nLI»/\"|ãþxÉýÆÇ›h_±…Æyñ:øxóÄCWø…dl#Ô–\0—:\\Kw}s$ÜK²}½âÙû¨‘T!«žÓ¿àš¾>	Öt;ßjRÃ®\\¤÷†ÞÚ;o/þ&:® ÑÃ÷¼µ\'Wš5åŠ¬Qœ–ÜH©xö²ðÄñ•ÖŸâm\Z]À÷ÖºŽ±öøN\r5¼s‚³¬…pÈ§8ÃqÏZ±ûY|0²µ†fø‡à¢·2jp*k0;ÜZÆ’»Í\Z«åÐ,ŒÜÉýÆÇ¤þÆ3Áà_i×Þ2½¿ÕüA«hZÌZŒzdVñØÜhæÉ­1’¯{ZUÜo”)E(©Èøwþ	ÿ\0zž<×“SñD××dÓu}EbµŒ^êú¾«¨êÒàbÖux„F›ËF\nî{°­xö¾øyãëkÛ?èqXjW¶Ö\ZeÌú´i¬M5¥µÒ%ºù…ËlºˆuW~î\n³wžñÎ‹ñB·Õ4[NÖ´Ë°Lv7qÀ¤«©*@<pkÁþþÂ’ü%ñ%–·¦øÊK­SË\Zv¤.´X¥´Õ,N¤Ø¼F/0mv]ÙüÀäfIT©~‰û>|¾øáßìy¼K.±¥$[mm\ZÐCž|É’ß.îh‘a.Ê‚!´€v¨¤õ¯âþ\nÁÿ\0)Lý¥ìªø£ÿ\0N÷Uý¼×ñ\rÿ\0`ÿ\0”¦~Ò¿öU|Qÿ\0§{ª\0ý„ÿ\0ƒ]¿åÿ\0ìj×¿ôÃa_,Á/Š~Ùž\r9+¤^‘ïþ)éë_Tÿ\0Á®@7üKãèk×ôÃa_$ÁgSûvø6æÑïrÁÇö{àÎ”oÌ±ûIã¯ÙÇÃ^2ð-ÅÜš%´w~&ÓÚ×U¸¶ßÚ’Á–Y#*Î­µr­‘€E| ž¶øuûC|8[y5	ô/î²ÑmZã:~™ÇµÄQci•‡ü´#p9ù‰ù×GâGˆdðêèpiš>£mg•V–üØÜH’%[óŒ{×øóÁ“ÞxEkÍ]Qtn†íe‹8\n=ëé0•ðo(×·2NÚyŠ§œÓÌ“£é9+¾e¢¿kíÜÇñÏÆëï„_¿´ µ¹5F[y%·l4L±îÏ©R\\ç`Mø‹ûYEñQáÒ\Z;ß´N’IK	‰ZrÁ‰ê¦0G¸™©<s|4¿i–úöƒ«êþ7ßÚ:´ºE„SjP‘g<0¤lò ŒodÜy¥²2 Ö¹â_Çâ}_h>-¾Ôµ+mGO»´×té-[Limˆ¶šH•qb’b7gˆS_œb¡Vó¢àÚmô}^û¤S„¥ZhÉr®[ê“Ñ+éò>µø3ã[KÓµ¹´Ý>ÓPä‚YšI¼·Lïªr8,	éÔÖ¾sñÇÇÏ‹\rûH\\øwÄÖš–¥¥KªÏ4Ú,¾I–ÓL3ÌË$\ZŒpªá#eç{2’Ù®‚êïLñ?ƒüEáJ[‹)¯_O¹‚F»{x¦h¤Y28rªÅFÀ2ã#¹#Ðüãû˜´·÷/3­±YæHD+$sV`¼öÏéX`(ÓÃçùz­Õ•Z4”bÝ•&^YÅÆÎJ÷|’m7{¶šQìöÍàhÇÔ$¤ùýÈËš:iyóY½W4T\\lµméâÿ\0°±ßüU\0´HØgž1œõ=E}óðHçP·>ºzè÷¯Î/ø\'woñ÷Äw7Œ¦å<*‘J„g7PÀ	8\'«ôkà„õx‚¶TX(ø%}…h¥Êû¯Æìð¨MÉI>ôGå¯Æ†ðµ?m?Ú%ßÆšw…Ç‡<a)÷zc\\ùé;`ÈY%B\\(\'6}+Ã´k_‰7ÿ\0¯<UeáÃ¯ønÆYã’âÎà1_*c7“¹¤+¼u\npIº¯ÛÇ>0øeÿ\0\0øå¨øWÄI{Ï^Å\"es&i,AÃ œŽÕâ\Z‡Å?hRkÔo‘,^[+G´S*[É$‘Jñ\"p™™¡qÀ‚`æ°Â<w·Ÿ¶åözrY¶üî¬­®Ú¿ÎÞfë«[ë¾ËNK7Í¶¼Ú$µÑY¾÷ÖË‹ø§ñvü_<zß‚®íÖÞW·_µY(`CœJ€®0G<u®xøçáþ¥óô‰­YºŠ£è€ý+¬øñã×ˆþ\Zø‡Ã\ZûO{á©;õþÉ†±Qà‰1v\0‘ô*		Æêñ	¼1©Â…„³ÈdÃdsÐƒ’8ëÏë^¥ÙèØï&·ð¡8X¯®íËtÛ(Œ~;•ëW-þxfýƒZø£in0ñÇ/áËü«Ê\Z;‹fÌ¶×1Ô5»~•¸\\°8Q· 8ëNã=Zïà´óHM®·§Î‡¦èäSún‘¨$ø#â-	a>9Â]*þ¯´~µæ°k’\'ú™e_úääÿ\0|ô«¶þ0Ô¬ü¶‡R¼„)È>a\\þt\\Z]ßÃOYÃF¹˜ Ýˆ)‰=±µŽyî3ë^×ðkà÷‡üñWö|Öí|I¨ßø‹Sñ×‡?´4y4ÖA§9Õ,·n} Äù‘ù.W+òµ|õÆFŒ§,§9dG‰+“õÍwß²ïÅ­wÄµ\'Á[B;²j_¼>ÑH±á—ªÚnã É8õ5³CGéßüM¨/Ú7ábŸâÐïÏþGŽ¼àg‰Ø/rÙÐ‚GA™¢þ•ïÿ\0ðpþ…m®þÑš˜Óä\Zø_2Ý¤ÇŸVS¹O=”×ÈÒÛk?~ø‡[3h·YiFæ&[ôE¹hFqàÊW™FFkùgÄþ\ZÅã³J“¡©i}-ðÛ]tùž²È3\n´ãZ8Ogm;o¶ë©Íé~Ö~/þÓ—úµÔM­ÃrÑÛÛØÛâe¸‰.e”‚¸9o9”è¡±À\'ô/Qð¾£ðƒáF‚“ZÇc­_FŸkÌ¥¥“91ƒÇ0 t\n V\'ü¯áŽ¯ñ.Ã¦µ¥‹é‰-º}“ÊŠ	dŠ	“s»Û;.ãÍ1ŠùOþAkñsÄ\Z´ÔÐ5=Kˆ¢Ó£Rº’åzò”‘£òv{œæ½ºt½¬iÁ>T’ŒuJÖK½½û¾ŸÕ\"èÆ7äWv»¿D’ZÚÞG®x»âÕÔ:õÌ2Ü©cq\'zìkêØ³Ä·5­Qº´–eµ¹6³ÀÄo<ý*üÜø‘û>üBøû9ßø–[Ó’sc™Ò•f@ ‘ØŒ÷¯«?àÞmsÆZÇÃ¯ë>2´ñ]ŸÛ§€éëªêßoI_Þ×$ÄB0¥NSÃF¦\"¬­ò­º».¿™\\]^œð\\½kõÓ¥¯k_ÊèöOø-=ÒÛYü6(Ãoªgß‹CýkðÛþ\n!¨‹†0yþÍ·?£šý¨ÿ\0‚ÒjÁ´¯† ’JÏ©ŒàúZè+ð÷öö¿þÐHwiÐüvJý‡&Æýb”dîŸæ~	Š‡+~§ô]û©oØ[àŸý‰^ÿ\0ÒXÆ¾ên¦¾ýˆXEûüçðW‡¿ôšÞ¾ên¦½»bW‘~Øÿ\0<[ñ;ád\ZOƒ.–ÃZ“T‚Azv/ö|:µÀfäË#å?x6¼×®Õ{«»k=¾|±D%qùŒ;·EêO æ˜ø“ödÖüE¤Ûê:7ÂgÀï èZm¦‘aý‰vºŽ¯nÓùsM“ýš{8’Ib/!Yœ^AD$OXøð£Ä¾$øÅð£Ä±xYeñ.‹oi«p\"Óæðö™lîùb2Ÿ¶G8Áò^Ü\0Hˆ9)¿ýí¥ÌÓE±I%±lq¶Z2WpÜ • Œö úQ%õ˜Õ\"µy ­OE€•‘J†uJ‚ê	|à´ò¯‰|ñËÅŸ´6µö8¼G x#PÕm­æ{]v†Ò+èCOn^åÞ/6Í§.±C+yd9	~|hÖþ1ü2Ô>!ÚxŽþ_\nêð^ÜÞZËû*ÞÑ|7qhþdÉ¾Kã©M1wHÊ˜åRoÊ¿aâ\'ô=úr:ðâ†òˆäzñN´ñ®‹û>øËNƒâ,\Zÿ\0Ã©|Qªx×NÔ,ü?©Ã.–ßð£]êM™JÞ|Wd!™šfóÆ]ÁŸ¼!ªiÒÇgâ¹!Ñnc}VÜkbÕ,#Õ´çµ¶Óâ3ŠTÓc¼Šc\'”$rÃt…ãeû!2€CÈ9Ï#Óß­(1n8*J‘œàãŠ\0ø§GøqñÃSøàíwÆ>ñ–²Þñ;ëöÖÐkzoÙ-´ñ§êHmåŒÜ(’õ®\'‰UÁ(#’9kí{W2ÚÆå\Z2è	FÆW#¡Ç{Rb\'Êü½Æ:uæ™.©mk,1<ñG$ä¤HÌJÁKPy\'h\'œÐŒQMY•Ð°$Á8¬Ûè¶š¬2êúdW×R´[½Ò,³Hª‘Pœ³e%@Èq@\Z”U{Z×T²†æÚâ›k„Ybš\'¨FC+#œŽÕ)W8ã$b€E1.cà8\'8ü}>´-Â80äàPëø†ÿ\0‚°ÊS?i_û*¾(ÿ\0Ó½Õo=kø†ÿ\0‚°ÊS?i_û*¾(ÿ\0Ó½Õ\0~ÂÁ®®Sþ	%ñ‹çÅzïþ˜l+ãø ÕØ?ðQ¦s·F½õÿ\0‰{ñ_`Á°.þ	5ñlc¯Šõÿ\0ý0éõñüÃUû?ü¿ÂQƒ´õ½ÿ\0äæ¥7Ì&ì®~¹|Vý»~x\'âF§áMfßV¸»Ñæ÷3Eg¶á¶«‘X‘œŽ=k;á?í‰ð§â¯Äôok)³rvZY^ÛKkö²>fE—i@B†8ï‚+ßôø&·À¯ž²ñ‰ü¦ÞëÚÍ¿Ú¯õî¥´¸¼±BìË0%¸ô5Æx£þ¯ðà·Ä/\ni~\'°Öü&´l\"oÉuiæÑã‘XöÈè9¯“‡FXŸb¯ñrê¼íßô=«áýÚw·sâçÆ/|,×-¢ñtßjº”;­–âéb{¨•ÇÎ0HÙ¹GÞêG*üAðÿ\0Äy,tí\'Æžñ|©•í¤·6Wb‰àgN0FkSöbÖíoÿ\0kÿ\0Å}u$BãDðý·–šp¼kÕwÕ_ìÌLr¢-÷r\0ù1¸g5¹ÿ\0\nøkà~Í#ñn“ xb×ÄÞÖô	­¯ít[;kÝ>W×l#;\'Žä\0¤Ž§“¹X‚Ns_aÎ¯±æ(>^c;Å^þÛD›ì¨}‰ÌËivÅâ»*sŒÁG#\0½@kÉ> |\"²‰RH|5e¢Ëþ¶QkrÂ=Çž^v€=‰î2F+¡ø‹ðžóöªýªü\rðúÓÄ\Z®¦gßkz§ØgT¹ÑËo™\Z’ªH’HÓqÝ°3¶Ö#\r›ûjþË/ð_ö{Š\n¾ ø«RÑôKœj7:Ä×Ö—ÈÅ$lÊËhY\\J²>úíÓæn¢z1Æ×.~ÂšIÓþ;x±ÏÝ:h~†áô¯½>¶ëÄ“¿ØÂ§ÚükàoØ³R¸ŸãïŠ\"ŽÚ5°\Zó?¼2ý¦-ª£¾U¤ÏÒ¾óýçÌà‘ËY±ãùjõƒ’”Ú]\r9ZI÷ÿ\0†ýÆßÛ3â4Þý¾þ>yQYOößjV2¨©\Z$ïP~ëŽ¡‡\"¹\nüGñ‰ðî-\'â}§‡®7ÉæéWÐBa(òIæîgB8³)Îì¶x8ooÓ¾|ø¿ÿ\0ý±!ø­k²é>.’m_¶ÍÉ/—ÌbpNNÜ.lýà?\Z|*ýž¼5ñá…Æ©gñ›Fð¯‹þÝ{o‡õB%E\râÇnoŸÝe8Ã1“ÊÇÊr;(æôë±©+ÓÝ]]_]zëº¿ËCÂÂæ:ØÚØzN¬-Î®›Ziu{«ôÑ_Ìö­âÏ4O]ÜÍ®x/ÅwÚ½ª[2¼1\\ÖñÛÀÇdj€Ä’¨\r·¤*3†;³>\'~ÑÚÍ”Ú¾…â?	ø\nïU’o=õ¾•™ ß\Z°t¹]Á]pàd0s^[ìIñ^å•´Ÿø7\\…¢+}®FI¬ãPÅ\'ÜÄ!ÞU1ñà¿ÅŸÙëB}WÅ:™ñÚ´¶×¶³˜ž_0Ç¾8ä2¦áãzJƒ‚q]*hõ\\YnïQ…Ê€YÃpzsÐU—ŽÖææ4’ÞÚAå±…xãé^IÆÛá´Ëeï(%OçZÖ¿WÍKRƒµƒu÷5¢œ{	Å£¸¼ð¨i´ÛLg–TÁª³|#ÐIí\rÇîXÆGå\\Ô?\Z,˜6+¥*á†6GáW­~3è³°Kq½qT¥¹:çÃßØ¿Cø¡g‘xÇHÑ.džh~Í©\\˜Ê,kY7‚»(éó(wÌW¡øUûê>9|\nñ¤Ú¾…{cñ\'ÂÑGµêÍr${ëyUF<¾ùá×õ¯1_ˆº\rálê\0yÁSúô®·à¡¦_~ÓŸÍ¬³IñÃyÀœjÚúVUåm1¦~‡ÿ\0ÁÅÌÑþÒß	!ŽkhËèz‡¾ÒÒaS_šÿ\0·G¡¿ðìþ›Ä:=Žc§¢Ê K—º3}¢Î@HHNAßµA;FC Ðßø9Ež_ÚçàÌIŒjÄž¨Ž1Æ¿¿jÏ\ZÝøÓÇººG§K=\"š?33’·VjŒýÃ2„\0®F<¾I¿6ÅRö™³´Zþîÿ\0[ú¿á)ÂNóæº]¹å¹úíÿ\0ý¾#ý >\n_øþ6–ïàÎƒ§hrjq[ˆWUŽšC÷ HÐœ|ÄnÏ!GiûJþÝPÍñžÓÁžÓ.®|E©°ùŒ«ÛGÀi¶°ÜúWÅ¿ðo×ÆH4ÏÙ—â5”ž\Zî‡©‰/uÏœ\rQ\'„r³pÒ@ˆ1´ðŒ2 œ· ø›ö{>-øðÞ;¼×µ¿EdQ’ïMº0Ç0cb7†`cÖ¾#Š+Ó¡šýN”’‹WvèÚ½¾÷÷×a%[.úíDå?…_M—é­’Üöï¿ðQ=1<â«-+À:Ôrø\Z2·—\ZëG(œGr¾nï!Â°’0Ø)Ð•ÊŽA÷ŸØãã„2ø_e¯iÚV¤é÷ÇG\r¨T (Ë“ŽIü«ó_öµ—Gð§Á¯øÞãÇÚòø_Oº–ÒûOŠâY·\'’]ÑÄæR]Š¨ùP1ìUPŠýø7®è—?¾]øzÍ´}6ûÂšUìŽÙ	ì¡Ÿ\0ànÿ\0YËw9¯ËüZÄæØ>xü´U!5Ñ]µk-lãû]nöòø§6Ë²úk\rˆ‹NMu»JÛÉ]èÞÛõ²8ø,gŒ†§áÏ†²y„¨ŸSÀ¥µ~)þÛZˆ¼ý¤-yûÚ|_¢?ø×êÿ\0ü«Ä?‚¾à˜ïuÏ¹òíŽ~•øùûWêký¦,×p8°‹\'×ä–¿Gð[ˆ1Ž[†–#â”$ï~ÓhüŸ5ú¼Üªa¤¥«}ÇôÕûÈá‡¾¯\nðéÿ\0Ékzû½ºšø+ö /ìYð[Ž¾ðêþv°…}êÝM~îxbW–~Ô¿\ruŠžðþŸ¦C,’YøšÂþåãº6¯olÆI’@CPAàpG5êtPÊÿ\0¾øÓáF…ð3ìš7ŠößLŠÛÇ6÷šÊÏÜ­•µ«Ý\\\\-ÙyäŒAˆ$ñ2±ùa`$^Yÿ\0f/‰zOÄsYÒdñe®«¥]x¢óH¾—ÄhðÞ½îµ§_XÂªò±[cSFðº¢n‰ÁS”cöòÇÃ?‡?\Zì¾	üAƒZ×|A/5!o†\Z£‚å]¾Ñse3ÝÜˆÈíÑD#÷!ËRÖþüaðº¨ƒPñÖ»¡5ýØÕ-#ñCR¹ÓaÕßìqÙÊÒ#E3X:—J’HˆUŸÎ*këJ(â˜~üiÖmôˆ¼OŽõ¥²Ô|?ªÞMˆ£±š¶¹€Ig\nÁv±Ü~á¥–y\Z8¥Š@\ZuxV.·âçƒ>6x»ö¢¿m\n=Dð35­”×–ºê»¶z44qÉ;f®­íã;pKÊdMŸTÑ@|@øWû@èß\nõ7Eºñv·«jv¥½ä¾!.t«¸ÛYX¦Fá”…ÒD/±²Ò4r°•Yþ,øcñÃÅZ¿ˆ5+Oñ¾ƒ«6©rÖÞø†ÊîÚÊgsW¥®$¼Ó9‘£Â*#ÁBÉûJŠ\0øƒÅº×Äÿ\0…_<?áíKÄ~%¸–÷Äö0x^Þ\rvÚi_L>&sv÷Ð´Ÿh»S¤˜•d/”‘Hd1¾]ú¿þÇ~$ø¹ûRjú–¹äéÞ\r{›™á»ŽY®çU—Cžã|—…škŒÈT¸Uà«aõ˜ã=r}éhâü\0øÓðÃá·…´?øN/¼?ká½)otý#Ä¶–×öZ°Óïau·™¥@–‘\\-h•¼¦á‚È‚tmü/ý£¡Ò¾×»«Þ_ßMrºÔ6×Ð¼-mæ˜Ñ-ŒKqnÑ¼\rKfŠ@²m.¬!Ûö}ó ø IðWÃ\Z_ŠõK{Y¶6^!7`¸û,Öî}BU‰¥T,\rfJÈÙmHÌ@aÇüøMñÂž%ðW‹ü`ž?ñEÿ\0‡¨Ú†“©¸’æM>×æ~£$sÛËs»´kÌ1QçgfŠ\0d/¼uÓ·ëþs_ÄOüƒþR™ûJÿ\0ÙUñGþî«ûy¯âþ\nÁÿ\0)Lý¥ìªø£ÿ\0N÷Túïÿ\0ÂJþ	Iñdÿ\0	V¿ÿ\0¦>¾ÿ\0‚\'ßàª~B[aðýî@ïÿ\0× ~Ÿ­}åÿ\0ÆÊSþ	[ñ]p0|U¯éŠÂ¾\0ÿ\0‚0Mö_ø*·‚c¢]¯?ösP¾\"e±ýü&ý±¬~øq4MCÃž.¾“F‹Êk­&¸‰â26ÇeÞ®2N1‚	éZ?mÿ\0üHøg¬hzd^&]cPaH¯ôÙ-ã,»‹³HWwqëŠùëÆÿ\0<\'á]Y¡Ô¼]¤øzù•–MYm5mÛw’ÊpV “´‘ÔU¿x§GñÍæë?iÞ\'{h·m‹TŠýâ‹>ˆîUrO,\0É¯šåoêÂ¥§Í{)­ï{[}úN8ŸeÌàùm½­êpþÔ3þÆµF»âMKÃ>Ö<3âÍL…®ü+¤AªM–R^–‚TšHÄjææ&®æÚ¬¸îV~Õ¿ðT_þÖ_¯þxfÃâ2ø£Å\ZÆŒšmŽ©á	¬Âu‹+™§3<j‹‘†!}kÙu[W³ò¬ÂÏn®e0½”w*¤ã‘¹I;VlZeäO¶óIðò€Í—m,Å.[<åXóžkêýž§geÊÏøßûyéðOø)?Á?x´]Zü<ñ>‹«xS[ÕRÔ]G£™®l® ˜®Ó•[&ý¿8‰ådÕAÓÿ\0‚ÒÁ@f~È=O†ž øwâˆŸíåÒà_\rjßÝÞ}´´SÝÎðÈÆ8Ö6wP¬ï±B‚Y‡«üBðe·ˆì KËK}^Gú™à\rÀÀ Œ:œ`ƒ“ŸñÇì³ðþKÔ¿³øyá½6þ)ãt!Žå‘†pAòÁvÖä»OP@†ºßC¸ý‡59Wö‘ñ$`¶×ð»9êÂî®þf¿D?f¶óž6<†µ`?ïó×çÇì]o\r¯ÆOÊb‘.JD,HÚÃíp;òFOÖ¿A?e¹<ûXÉÀÙhÄcþº¹¨¨×2QVïçç÷N2Q|ÏÃúßæ~\nÁA>¿Äïø)Oí5Ž•6¡s§ø¯S¾¼’% ·ÉBr	\nA“í^wáïØš?ˆ?%ñÕ¡·‚ÒãP¸‚K•ˆÆ–Ïp²\"’Ø/²%!qÞ¯¨5ÛÁHüq†¿à¤´$)ª=„ÒøÓP†o-ÙwG ‹ålAÇ<Wø[Ç~¼Ñ¾ÏªZ\\]ÞKÅ5œ¨¤.Y™ŽOÉ€ÈåziRöQå¿7^ÞVùo‘ÈOi.krémïçÒÇG§ÿ\0Á4>!h:¡Ô´{èåÑïÞ(/`¹†Ñ÷ÄÄ¬ñ‰J¶Ã°Ê­ÀØ»¾é¸OŠ_<iáßi^*×u¸õ—ûuÕµõÇž&—Í“28À¸”Ì	?2¹”6á]¯„5¯éÚþycâè—‘Oóß@Ð<vÏ³æ’&OÞeXå>`3…É÷rxgÅS^j>4×.ïHX£–RÍ=ÄjÊ ù§<*ç†ÇÝÇ&¡$ivxÄŸ¯„hÉwnU²yR	ªs|;ÕbŒ¸û4„¤	\n’?*÷àÏKo#Áã&#ñ\nÝZÍ\\á\0;Ó,@«’·ÏáZÕíÄ6^.ð¤±ÛÌÈYÚ7ÚW#£zœÃ¹/A]õ<çÀÚ½¢‡6øè$Ýš­6‡ªÛÎÍö[–ç×³øÓA“ÁóGg=Ý¤÷	”[9‘b`ì›	 ~\\ñÙ…fyÆI2Ø>Ù#ùS²Ï#W{Ék;”ÉÉcäg§¨#>Õè±ìþÙ¿ÊCäOÿ\0@iÝ¥+öœê¶­\nz`v\0nëß5ê_>-èðëéÚ‡´­~ö9æž;¹ä°ëXÝrBG 0ãÂN»áŒ<­|_ø§h^	¹ÐüAkñ#ÂÉu«I¨<âö8ïmQ¾\\*«I!2·´`bqÐ\"ìÏ±ÿ\0àåMkIðßíðgQÖï-lôëmð³Ü¿—ó} wþ$ä·`Œkà¯‡?ðJ_üwý­|j¾9Õ`ÐüÂ,kvw0Mu¬D×<bØ+>7*ÒÈp»‰È\nTà¸žÐ<GûF|6Õõø\"¼[Möme\0ÂäÜ!,À‚@xÏPxÇÉ¼¢ü9øÙ6£áXbÓãñ-ŠIu\ZÜ4py¢êå’1É!*\0D:cŸÌ3¼KÃbêN›÷äš[;hµüúþK/¯`0ô*ßÙÒ_&Ü¤Þ¿ö÷ÎÛ«kô\'Åÿ\0\ZgÀ/Ù8økÀÚRiZN›lL6Ð‚îìy,îrÏ!ä³±,Ä’IÍ~zü0ý£þ$üñOü#Ð$7Þ¸¼IÒþÜÈ,K8»8Ê©ÏÝ9¨¿^µ	uF#²NåŒréúW„êtý[Å²\\\\i¶­#2(!8Áçé_šâpÎ8‡9«©-oÞûß{Ÿ¥eØËáýìâÞß•»%þÚ°ßˆ¿iÛÿ\0‡¾-ñG‹c_†úýÉñO‡m­cÓäÚGimÝ0¥Œ$,[æId\r¹”ý1ð“ö¦‹ã¯„ãÕað†¯à+m=×FEÔ]L–‚ÖbB“¶=¡Bäòz\Zöí3À0ë:f«¥ËÜ™ Ú,ÊxéÓù×ÍÞýŸ®~éž5±ÔïþÕ¬ê¾_‰­v&Ä†$´H%%zešÎmÞ¥õÊã¼-|×…ç“ÓvK–iwåwi¾»Ý.²³{+~gÅ¹<]*øˆ¶ê­uzYoeè´G—ÁS<d·^ðÜ0—ú‰nx?ºµâ¿&~4kÛ´5”¹Ý›P¹ôÂK_ _ðS™þx-Á ¾­8 …ò-ú{ñ_›þ,¹ûgÆÍ:LðÖùÿ\0Ç%¯´ðK\"XN§ˆšÕû«ÑJmýí¯¸ü>8†±ñÃÅéÊÛûÕ¿&TŸ±$£þÇà þe\rçÿ\0a¯¾Û©¯ÏŸØžåcýŽ>\n!ê|#á¯ý&†¿A›©¯ÕS»=¡(¢Š \n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nþ!¿à¬ò”ÏÚWþÊ¯Š?ôïu_ÛÍßðVùJgí+ÿ\0eWÅúwº Ö_ø6VAüßâÀ#;¼O®þšø×çÏü&ëû3þ\nsàÙ³šÑÿ\0ÊcWßðmì¿ðLŠ«¿‰õÐ×þ$v5ùéÿ\0´œÇÿ\0\Zð“¨/ÿ\0+Žø—éM=G%¡úoâOŽÂ´ˆ¢ÿ\0„vÛÄé}f·7\ZUÎ¹ö85\r¬-æ´fBaQ³2HŒà/|W²ñgÄ¿k:†¢ð½¼óKvl-¯`º[Q>;Æ B±ÉO\"„„Æ¹\0€kœÖõk!«ÞEy­I¥Ë¨CrŸl{ëˆNš‹kcŒŸ!ÒéŒŠå‘¸Ævõ­=JÐ¬¼#àÍVÇÄš5ÿ\0Šœ¤ZÝ¥­õ´ó¬bÖhãDP‡U·gTR²œ¦ðz€6Ž\Zµ<f©ë.—ÿ\0Ÿ—×K[­¿íëØýx¼-\\\\Z÷`“ÖíË‘ê•öKÝzhô{£êŸ€ÿ\0´æ›£ø×XÑ¯µŠ-\nÖ^xLâ\'Ÿ:[Ä¡L»‚H€:s^«ûKþÐ\Z/…<wpš¾—=²*C¨*]á\nó<\0ÜïYÔFTg”ääãâŸ†Òé¶_ï¯µ˜-/,u›(l/­åHä’1Éq¢9>W	4hÅN\0Ë‘»pè?jýÏÄ¾\0KmðjW—×V¨\r2aiÜ—b$HÙ·3O!wrAýÚ‘_Ðø¯	WNrzÙ7ÛÏõüL¿$¡[N·6®7ò·]z=þG¼ü\rø³¡Yø¢ïHÔÆŸ%ÕÝ«^;^(Åo—šB­î1ØÞº/ÚTð4ºÔ-ìty!Ž™Œp,2Ep&‡qQ“ÏÌ;s_\"øf+}Wã¶“â¶kK	ìæšÕK½¨¸ÚË\'ÊC’Çc8;JçœUïÛVëÅ:·ÁoÚëÞ1ÿ\0„ªÿ\0XÌ‰cÀ‚\'š]˜,IµG’Ê¨[wïX¼gÜÈøc\r‹Àa«É¯~üÚ~K·D“wjÞgó>uÇX<g_9ÚPåOÊñ‹W»[ßK\'wtkþÅšÙ½ø¡âyÁÊ®—\nQº|È}E~…þÉÍ¿KSënÿ\0¤²Wæ\'ìâ\'Ž<h…Éq¦ÛJG}¾k‚Aÿ\0WéŸìo/Ú4HI;‡‘\'þŽq_Kã?aŠ´4?¿k‰¿|ÿ\0!ý£4ŸëéÞ|c´½Ô¢6wpëz*ÚËÝû9Ì33<%$ÂŸ¿†òÏÃO|Ô¼	kgã]ÆvºÜ_7ö¦ŽUAY&f·WR[ÌÛ€0uRLH¹PY«Ý¿à¡¶ñïü»ö–óõ­#GþÇñ©¨/ÛÙÛ™D[Fq#vÎ8®3á–·ð¿Mð&ÿ\0	wÃßë6/8ŸUÓîZ8ï	uhã`$E yŠ¯“¼a@#øàeN\n»ZOo–úg,±‘¨ýŠwpß}/ªþ‘ªøö]ñ.…â-wIñ—ô‰¬Ò[›]\"\\¤ŽòÌþE´;í¤–a±•dpg–_-¸\nâ><ø\'á?‚¼ ÷>\0ø¥¬x³WŽé\"k;›7XM¹W.ÊÌ‘¶äàdŒ±ç÷G­OáŸÙ£U†ÁÌ_íg¼¸Xní…œ-=²¥“*•fQ¬À³±8\n§Ê~2øáõŸ‰-ÿ\0á	‡]½Ò\ZÑfÔâCqÅ˜mÌq )°#W«°É%¨1¹ÝXò5ñN Œ¿œ0ëÉëß©Í]ÿ\0„÷Sò\rBs°çõ­ãàÍ\"åˆ‚uïÈÇ^3“À¨¤ð–ÈÅg\n1Œf¯Rè>\'jËU¹SïF>ÛâÖ¡›Œ­íƒVÃ‹?\'÷sÊ„ôÇz†O†10o%Œú•ßš«:üe½|––ÍR*:ôßÙâÎ·û]|‚}2{Xï~\"è	ƒ·—(]NÓv|t®[Àÿ\0±·~\'é1Þx{O›T´¹’khœMï\n+Ê¸fì6eb2ˆï¿f_Ù÷Çý¦?gïkz>¥máÉ>\"øa,næ†E¶Ü^Á<{L¼K¿ƒš‰ÞÚ6¾§ê‡ü1âHô_Œ¡?tú5ë-Õ>íÂu%Iï_!ü1¸Ñ¯íÎ¬ÐI%ï†¦ŠæÈK~V;¹ñf	\n&ã€²Ïßàf½ÿ\0þñ)ðßÆ„²Úï¡jyçþ>#ÿ\0_\0~ÊWÖŸü­êš•ýå½Ž–+cg#›‹—7p+mRûHÀPŸ1_0ùˆFkñìúZ™œåe®ûh~ÙÂÕèRÊéûUw+Ù&Õýæ~¨þËµ=çÄÿ\0ˆZwƒo<)¤ÙØ=±•5iîŸÈ¹<Æ‘e†N3ór¯±±Œ`szïí-âÈ5}bÒßÁÞk{¤‰5!§ÜÏöeI×{7™\"$…–6û£åFfŒy=Œ\'ÅÊ_Ë¢h6ZE´v)ak«ò¸Áˆ@¶ÞaåAaº@XIüD²üø‹kªøËY°ÔŽ‹§_2Æ5gŠ1¬€È€ÈÍµÊ‚3€ÅŽÜv·Œª{îW_gÝi>V÷×U¥í¡õ²Ãáf¥\Zu5½›»KG/zúèÓZ\'Ó¶§¹ëÿ\0¼S¤ê÷0h·ÞŽê8.îDIeÿ\0)eŒ¶I2ô¹«zŸ³ý¥u~ÑÞ ðV¡¬MVÃF¶·¸¸‡rC`n,æb›Nï+Íº,£¨B$dÐðÞ­uö›}J)’ëO‡Z:DB{¥‘?{!w@‹+µ]\\:í!‘³…¯+ðe¬z¯ü/â‘6Ÿq+[è\r2¢™\"aÎxr¤çž¸…cëGÙ¦ìÒ²ÒÚêŸ™•,¾2”¡Z+šQoKö}:?Àùóþ\nÃð¿Å~ð…®5ÝNM{N\Z¥çØïíuA{BÀŠž™!Ç$ðOZüë¾¸ŽãâÖžñ?˜‹Œç<ìjýXý¿¿eÖýš¼;áˆ/|O¨x†ËZ¹½™’ò\ZÄÆ(#uU_”©O±¯ÌŸ‹þ±øuñþ×N±WŽÜZùÄÝ’ÑÉÓÐakôÎÌ#<²Ž0QQŠJ×é¦·»»Ý÷wgóþsÃ42üÂu°•%(tæµõ×t–Šö]•·Üþš?cYÛöcøt·÷QZÃà\n,ÑWÊÞ\"²±ÆâÈ#eP™òúFÝM~kþÆwoì£ð63œøllÁjkô¡ºš÷#»9\ZÑ	EUQE\0QE\0QE\0QE\0QE\0QE\0QE\0üCÁX?å)Ÿ´¯ý•_éÞê¿·šþ!¿à¬ò”ÏÚWþÊ¯Š?ôïu@ª?ðm%È‹þ	½ñOë‡ÿ\0(vUùÝÿ\0Öm?oïKž\'Qžºu~€ÿ\0Á¶3•ÿ\0‚{|CE#?ð”ë<}tK1_°•ßØ¿lÜ–\ZK®tú”ýíKoD×+‹\ZûivVË>™uie\0‚Ù/´«[£\r¸Þ2ümÀù²0M6?ˆ——VòÇ>àÅócxŒÐé1Å2BŸ+mã\0àõÒ|+ý™-þ!øÃ\\¹ñ{éêQùÞBé?kX#UrþrŒ“ƒÓ¾9Ç1üUý™¦øqàMG[¶ñmž³ž‹$Ð6žöÒ´eÂ’	•—Œ‚x¯;ý`Ëo«ª«žü¶³ÞöímÏg¸UÑö«šö·ío¿CŠy ‡VK©4í+U†8ü¡muø¶äâÎzŒœyª×\Zv‡x\"û„4Íê\'Ü÷·³Ê&CÎÍ²;¯ ç*O;†:‚µÏ»Õ,õmM·µ¹6¡oepòÈY°[\0n\'‚zWM®~Êþ<øu¡\\k6º¿†/F‡ÿ\0=–wî.7AûÍÈŽŠ¨Lã<íïÐý$rÜLáí£NN/[ÙØÚy¦\n5])ÕŠ’ÒÍ«œ‚K¡O4ƒ\\ƒY¸GEË¦êÖâÏdú:RàžqÉø£PÑ.´%®~#C:«Ý©‹{žX¡u‘‹ íÀãŒ×YðÓ@ñ¯Ç½kS¸Ðb·Ôg³œß]MsqAå¸Ï9‘Ô³¾àúŠÌø“û5üFðæswqá³äZFd[ßApÛ2IpÉ *)Ç£ÏO›—º½¿b#—Ô«Ë]AÍ[t¯å¸ÏØ*ãì¿ü] ;_û4Èô3.Gè+õ;ö\"—í‰È\0˜¥à×Ä•ù)ÿ\0ý×Í÷ÄJ¹dM*{|Óáy÷Á?ð_«ß°<žoƒ`8 íŸ öýû×—Sø‡®¾ð¿þ\nð7Ç?à¦¿´°ð?‚<KâïìÜ›ù4›e—ìFHÔÆ[ægktùkÀü=ûExÃáß-u\r6oé^º¿’ÖÒí¬¬šà1y!I\n4ƒŒ`‚ãŠûsÇ_ðPÿ\0þÀ?ðTßÛü+ðâOˆÞ$ñCêå/§µþË‚Í^v1Ã*ˆ×í_3I€	_Q_üý®~&|øS‰…<7¬øGÌ’+WÔ´¸çie.V}Á\\©»xöå€„Ú7¾þÈ6•Ì\ZæêX?·_‰å²c7Šn$Šå÷y’[G±PÀ®å\0•ùþïN¸¥³ý¯n¢Ñ-ôùG‡î`´µqÉ>”r‘ª•eQ½X9Î8ÇBAÑø(Çˆ®­áƒ_ø_ðëX‘JµÍÄú\\_hœª˜Á\"¸V@ÅN^(÷\0†ÈøÛûeèÿ\0tÇ/Àï‡úF¥¯ZÌ§U°³†»[é&‚O¶	ü4ÈS7ÿ\0i37¯ŸÈ•Ü‘?i½ì@&ðÿ\0‚š+i[UIça\'+‚ÁY¾L¾ç5<]ñ{Hñ¥¬VÚFá÷·gw{)Âý§zµƒdàƒ8œä×‚¼R©ììÛ\n\0À<óúS˜<êb“rçøG´	FÇ®.·\0@H/q8ãô©Rÿ\0÷a›o>•âþcgçFöùiRUŒ’†íòÓö¬„~ðÇÄmoÂ.­k\ZPf2e}5¸\'*rB0Ê!Ï_‘}z\'ìçñCÄž-ý¨>é:®¿¬jze§ÄËoiuy$ÐÛ¸Ô­T2+íãŽÜzWÈ#[¸…[M8\"WLÏò¯qýŠÒÿ\0l¯Ùîhu;›©®~!è?l„³:#\rF˜8çÔž‚¥ÏCEôÓþ±øc­üMøÅðö\r\r–7Ñ¼©ßË)ÏA}l¢1þÓnb?ÜjñØ[à6ñÅš^¥\"¤W\Z\"´ÍöeÍ´{Ö_+ªÄYBF„…<+ráA¯¯¿àâ¸oõˆtÝ5¥ŽçXÓn-	A–eûJ9\n$•Vôs^ûh&Ö®ø{MÓü=ªi:T×SË™$2’ÞÜB•Øe‘Îp~]ŒH=kòŽ*œÕY¨>]ÒzîÒKkìÚµ“?càŠµ>¯gÑö³v}÷}?C©ø{ Úü2ñM§ˆvÛÞØé7ßØqÉ#äêi„ìeŒžPU(€¨sÉi,~x÷Ä¾·>Ògó%Ö\'š3cos¢É\"®CÃµYM°G2%6ô.}I<]¤Aû5è~Ó#Ò…ö£®ÿ\0j\\ê–ÑÅÜ–ëv³\"…Ën–âcÈœ“¿O|4ð´~5Ò`7ZüLÚúêÕµÒÆŸw˜”ˆ¼øã‘ã,¨ªŒA@òÈP¾J´iÂnêövIüm»;öÓkí÷ý&e™I9Nº|î<ÒºŽ©Þ)|:-¯»nÚŸ\"_ü=ñGÃß…_íu\r:F}~ï\\‚þkü™ÙUã…vÇ>ðË¹†	ÉR¸+æ?„Ú¾£áOÛ³âF£¬$¶º§ü&Wr)Æ\0i÷ÆAî\Z#ÏpE}}á\\|@ý¤›Â\'±¹ŸAÐõW–\rÀµ´Iç¿”ðÆ$D;,‡k6ZCóWÊ¼¯iŸ´Æ»¨Ûøc]†!y6›q µšQ)·ehf`Êµ¬¶à›£uwÁ™SýÍJxh?uÆO®­»þ7·•W)ÄÆu”«´®Ÿ’³Õkw¯}—d¯c·ÿ\0‚Û‰5ÿ\0†_\rîL¬€Ë©º¤ˆjˆí\\w9Î?*ü}ý¤ŸÎý¤­Ûpli©È÷sWìOüsEº¹ý–~_j:uõ¦±ûÛ$–²[I\Z½®ÖR¬\'6Èyè>µøïû@£7í	lX®åÓcÎ:}É…~Â­ªP‹VvzÛÇâ¼I(ÞqNö•¿Gß±íÞïÙ§àŠ±Æ<%áœcþ½í+ôÝºšü³ý“/vüø €ã†|,?+kjýLn¦¾Â;³å%²Š(ª (¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0+ø†ÿ\0‚°ÊS?i_û*¾(ÿ\0Ó½Õo5üCÁX?å)Ÿ´¯ý•_éÞê€?L?àÛËï³þÂž=‹þzxŸVüâOiÅ~tþÉS‹?ÚkÃ2mùšÃ`\0ã“d@ž+ï¯ø7oPû\'ìcã4Ï-â]T‘ÿ\0p‹JøöG·ûWí7àãÊ¶©+çÐYn©Ž’¹MY]²ß±ÆÝ{Nð—ŒþÏc¦ý«ÅZ+XhW—.c‹íPÎ$ŽÜ»¨dä+ð‹ìŒ‘ûCÙüVð7‡¬4Ox.ÿ\0Dÿ\0„¶\'6¿mCJ©&`‘ÁJ6Ü¼`Š­ðWVÔüaàÉÛÂpë‡O+æ4:¤pHñ»Jëû§\\³\0‡„%ºsŠí>%x«Ä:ÄZtž%Ñ5Ø.cŒEc6¯©­ÂÁ2îHòsŽ@Ú2Tœãøœòüây‚…L4­\nÏ–jPåäuyŸ2ÝÙ]¦š{&´?Ÿ\'Ãy¼ó%íiJÐ­xIJ<¼Ž¯3æ[»&ìÓ[Ù­,vðI	Í­|JÖ<âß	­K»Õmmä»‘²	mPe¢`W ¸Ýœ“_F~ßÿ\0\r´_†_³Õæ©á_\\èšÝÂØ¬WZ”®ò£Ã6õ*ìèNõPrNÐr\"¼#à?Ä=þ­\nÿ\0Áú–¯©Ë¨	ìu]\Zò;kÈÙÑ­Ù‹+<d¨ã‘ÉàRüOñÒhÚEÖ—¾ÀÒ™â²Ö¥ŠêDtÊnÉvl®HÊ(è05ýo–f8yªe‰tÕ(%*m¾YY;½^Î?yîgôñXz˜Œ:À:Î¬ÛXòÞ<ÏDî“I[u\'kô>}ý‘|að«PÔ´ï$¾‡RkVŽ]M.“¼Æ\n C»ap[nN	ÇZôÚ3Ç^ ðíö¹w\ZYiú\'†	Ó¥Œji$·7k˜ù l’\'Œp&“oP+>ÏÆz_ˆ<Ki$vúä—–É¶Ê{+#pé\'BÇàä­´•lƒÍb|Mø¢]|4¿Ò®/5Ò’ClA>•rUcˆI„Rc	‡Â’Ä‚Ø9&¾‡‡qY[Ê°ŠµxÇÙósÅ´œ½éYtÑ\'ÍæÒÙ&¥ó\\_S4Ãç¸ßªàjTuf¡)E.Xó8µt¤õöJïv¥)ÿ\0‚nø‚A¬üCµkKr‘ÂÉ0ÀöË~µúïÿ\0ó¸ûW€á|äâlû~ýëòköEñck>>ñ‡™åþëL„\r£w¿Vÿ\0à›’™¾Äç™ú×w¯Ãió9É¾ÿ\0…—êJTåöpåí¯­ßécñöóý¥¼Wû7ÿ\0ÁQ¿j¦ð¥å£ø×TÕ¼/«ôë{Ï?N¸X|èœ­³{*’Pƒò€s€+Ä>~Ø~0ø]à»O\rÙ®w¡XÇ2Åiyj\\FòNe3$ŠÂQ gppù×YÃuŸðVâÇþ\n‡ûA€8_\Z]ŒýV<ÿ\0*ùæ9\Z(ÈëZõ)ü\'Ÿ%g¡íÓ~Øë^ñE­÷€>]ßø—P’õïÎžc’ÐË+JëçjÌhPqÊ¢\n¹âoÛ+Oñvµ¥ê—¿¼æs#•¶·Š4–²!³Ë$…¥%ƒB\0\"ðe»Áùˆ˜©îáòàŸz®U{‹Ìú\nÚÇáÕýçŸsðÁÏ<²³ÊðjRÀhð@ýÙeÆO\'†#ÌÇÏ¾6x»Á^8Õtk¯xCþxôµU²7-<r_y²—’&bÍålhðÞAp®#AÓo¼I©ý’Î$ža˜¨ÈÂ†Éç\'½[×ü­øbÔÞÝÙ­,NLªf8óÝ{Tû©–îÑF[KyHÈAöi¦ÆÌb‹þù¨~Øþ‹ù\ZrOæ¶8çŠ»\"{žµðÛÂµ]NjÞ2Ò5‰ÅúÙ[¬Ñà!Cå6ÕûÝpÙä¢‡ë¿g¯\0ü)ðÿ\0í	û=_ø[ÄúÎ±ã\'ø‘áu¿²¸Ó½µª‹¸<ùM œÏ€v`¶N1ó›LÁˆÈÀ=ëÒcIw~Ú?ÁÇ?¼=ÿ\0§8k9Å%qÆíŸ¦¿ðtgÅ_ü6ý§>Ç¡jSiñI¢êRÜl‚õ°.¤©<Zü×Ó¿l?‹Z}µëé1ÖìÒk_!žÎ¾ç\rÒ$ï\0zžkôþÝø²ß\ri_‚Jn¼?ªJÙŒ6ÚbéžOå_™\ZüHð¤i{ÕÜÉ÷ŸÌ•WÔci÷ýkÄ¯ƒYkùÞ1ž+—Óvz¯‚¾7üc¼Ð.õ9|aãþjXB-¥–Ù¶€Y(ªî*ÛGSßÙŸ‹_5ý\Z“Å~>Cx$û\\FûP\nìÿ\0V¡² Fåäò{Ô>ý¢|1®iZ5ÔŸ>é6Ú•µµÔ°ßëw&îÛÌepÑÄÒ|ÈÒ‘‹^Hâ¾5þÚ^\ZøUá{Ký7Åüawwqå6¢­ÔÓÛ¦&ýó´±ªm-»Ëbd8Æ@ŠYw.ŽW6ÅgÛW\r¶ôìXñï„|uã_êKŸÍ=Ì%Ö)Vvb ®	f8ó2«œqŒâ¸ß~Î~(ñ…¨Ï|o^â7·I@™>esó°ìùÛíë\\×üNãÆÊßeÓ–É¡BR0<ÒÝÚ²õOÛ\'SŽu[ÍÔäÿ\0*ØE%Ë)2¨f.1´\"‘î¾øUãôâÔ,å3FÄæ{ØÉç¾KžZù»ö£ðìþý¦#¶¹\n&þÎ‰‚£‡\0~¤SùÖ–‘ûbk¬r¿Å0?¡®Æž8›âOÅ%Õn	ó„+PqˆÜôùSO‚…*œñ½ìrcq©ñ$E²v Â±îÜ?áð¡ØÛÚCú×ë#u5øïû&kH¿~B	ù¼9á?µø×ìCu5èGvyíh„¢Š*É\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nþ!¿à¬ò”ÏÚWþÊ¯Š?ôïu_ÛÍßðVùJgí+ÿ\0eWÅúwº ¼ÿ\0àß½HÛþËÞ&ƒ8WñªOþ\nm¿Â¿>¼ñQøMãM+^ÑM Ôml¢òÍ²ÜD7[„9Fàžzö¯µà‡W~1‡ö{×WÃš?‡5a¯êfGÔµYm¥BŽÈ†a“Æ2~¼*ÒZ,cû7ykŒò{{Ô¯‰—/…í§ÁI~\'i’FQ| ŒäyšŒçøkjçþ\n«ñ6ö4[/À·!ÐMœ¼	ëæÊ(å]Œ¹#Øú«Ã¿ðW_ˆ…V/\rx711’\'Œ^Bc“ûãlùvÁï[·ðZŸˆ:ÒF5_è\Z©ŒmCs©jùKýÄ2Lû©ÀîkãŠË×µñ£íK»Œ¨jÔšÙ’éAî¶tŸø,wˆ4‘q€4X¥FÞ\Z-jéJŸQ•8?_ñ×üËÄt³i¬xBòñ>öÄ¤©\'‚pmIÎÞ9$ñ×€ìüq+ÊÄQùDà”ê+yJÌŠãi21Ú©T’ê”»Gé?üö™ƒãÄ?A‹q£=¦—k>é/ÅØaöËBO\\ûcŸÛßø&ù¿aPóuù»ÿ\0¤89ú×ó©ÿ\0w:âüCøŠ|=o¥\\ßÿ\0cÚ†\ZÃÁ\0í\\òˆä¶vàmìyýÿ\0ÁÏ—áEÐñt†Ügû7ûâæY.&üèÐ»ËÙ³#³Íaxé_	¿ûDÁ¿eßÚ“âÎ»ãŸ|.KïøŽqs©_ÛkÚ‰¼.ŒLˆ€¹ sšókßø6_ö@»Ëð_,³Æ-üqª`ßSå_}”V†GçU÷ü\Zßû)\\>míþ+Xã§‘ã[ý™Z²5ø5?öe¼É×~5ZäñdRãþþ[7ó¯ÒÊ(@~a[ÿ\0Á©Ÿô‹¦ŸLø‘ñªÎb†0Ò_é· ÀãY‘Û¶½Q×ÿ\0àÕO†zå£Aÿ\0—â¬Q–?â_¢äÐåmþ¼×ê\rÕàŽ@ …ÁÁ9ïPÿ\0iŒ¨pÙÁ<g×½)·}@üšÔ?àÑß¾ãiñóâ4/ü}N—h÷ÆÜÖ¯ÿ\0‹ÛÎäÙ~ÒZÍ¸?óßÀV²þ‰vƒô¯Øø˜<hAÎG_Zu>ywñBûþ\rñ?ñçûJi’çþ~>´dŸø¢Gé[³ïü\ZÏã_ƒŸ´7€<c¨üvð¾¯¦ø7Äºv¿5¤¸†{¥´¹Ž)®T±Œ@ëƒŒWì¥\0e‡ÖŽfóùÿ\0™Ý•ý¢þ0A–ðÖªØf-€n¡ÀÉô\0\nüm¶Š¨Iadò®Ë’A_²ðy¨QûCü</©“ôûD?×5øßhë\Z±Î¬ÜSÝ¬XŽÊ4vÙi};Û)þ`æ¥‰cýF8ìtø‰üñý+Ô<e5¼Ä[FõgÈÎ8ô­M\\M\\Û$s¢îu=1Û†)¨ØjL¿—\\â+4‘À±ø(ñ¨®­¤¼æ2½*Å¹sË¹^Y-›rLsŒa”0«þ¶ß­#I†gWÉ\n\0û‡µAVôFÙ©«c%cê|¶¦¢–È›ÝŸ½_²æ´ÑéáÏ]Á‰Ï½µøWíÃu5øû/kž3oüŽ	èë¦ÿ\0gx5Ô .ëÙìBJÑ4(ˆÜq_¾ÔÒŽìrÙ	EUQE\0QE\0QE\0QE\0QE\0QE\0QE\0üCÁX?å)Ÿ´¯ý•_éÞê¿·šþ!¿à¬ò”ÏÚWþÊ¯Š?ôïu@oÿ\0Á\0oÇü)]NÈ}û¿j1þþ—ÿ\0<Wç|ÀùvE€\rö(A Â(¯Ö¯ø6Gà¾=ý–õO-©4?ˆ3‚Ý˜%ŽŸ#Çù0ÏûÂ¿3iÏƒW?³ßÇïø&ç,þÕ®t°ç¬±G4¾Kàó†M§ë¸u¡|L¦ô8Z(¢¬®‹á?À»Ïˆž:Ñ5a-„šjjÁ<¶€®¥ƒlÁ§ó\\éé]ïÀOŒV¿µ¹àÕíÖƒ¨²ùëe»Ž¨	Ž2ž=(ŸÄ¯Þ7ºð±ñ6cgªÇ¨”·o²Cjæ-ÄJ»Ô9P	ÇÁÁ¥É¢B¶’²¼¶ãc‘ë’qú×ÒŸþ9ü?°ÑdŸE¸:Æ§(>\\\"Ñ XØŽ÷…Î&¾o’W¸žI$bï#$ú“š\0ûþ»©®›ñOâ6ãó>ƒo·Ü‹Åþ¤Wô#ÿ\0¨ÕÓVø3o\"´=ÚÂåòeýkùÓÿ\0‚,jºíÍiá+©â·>:Ò®t«C!\n%ºGŽâ(ò{·”Ê£»ëú5ý„¾Þ~Ïšzhº‡™ÜêRE»¬¡Ò\nçÑ¸ã¦å¬Ú÷.¹l}`§K@:|¿tœƒê:ÑZŠ«¸ŸjAÈ§GÔÓW  {Ä‘ÜÃmy$r4_+aÑŠ²äc‚*†‘-¾¢ðÁ$’#DCy’Ie –$ƒÏl\nëíáˆHÞbîW<ç§õ©Ž—e¦DÆÖh|ÐKùQˆËÙÚ\Z\0¡¥Æñ[“ï*ÍPœP§,>¢€pAô¡‰ÎBî9È¦€?Ÿ?ø<ÎãÍý¥¾GÆáÔí]Æ?¥~:[YÍ©Aöx\03\\~î<ÿ\0x×ê\'üÃñrÇÇ?ðSxRÊhæ>ð]¥ê¯ÞŠâæY.v7û^[BßFù…n¦5á]yV^Ç9ÏéúÐgð“àÇŒì¼«ÜxwB±Õµ¯íH×u„\Z”ÐÛùw&B±K…Rëæ\0\0Î	Ê|Vø¬x7Å÷ºÔði¶ñÃfo „lê[x¼ôTU\n¸œÉòŒ#\0\0\0¯_øAñ‡ÀÚÞ“×¯âðö§ÌÉ%¼¼rbhÕÉäƒƒ“\\?íñ‡JñìöúW†ÒeÑ¬ßÌ’æXü·½²y9?^Â€<ÊŠ( ¬irù7e¸ùb”ŸÂ6ªõ«à/_üMñ}Ž¥DgÔõ‰×MµQÐÉ;,c\'°\0äž€R`~ã~Îw†üÒÇü|.—à‹fÔÚéçÿ\0f¯Ý&êkó‹àì ÐþÓ¾½†	Fá»Û	£i\"éŸKyò#üM~Žu©r›ÑQVHQE\0QE\0QE\0QE\0QE\0QE\0QE\0Wñ\rÿ\0`ÿ\0”¦~Ò¿öU|Qÿ\0§{ªþÞkø†ÿ\0‚°ÊS?i_û*¾(ÿ\0Ó½Õ\0~ìÿ\0ÁŸ^‡ÇßðI/ˆ6¦w´»OŠz‘¶¸A–‰Ž‘£ñA¯ÿ\0‚ÛÁ)õ/‰¿.<Oc¤kâk ~Û6‡¤Ï©[_²ü¢P2®@Ã#mX6rÙÿ\0àÎÏ6ÿ\0ªñå¼.cžŠzÜ:ªÿ\0dèãŠý-ñãG¨´(î\nŽ[qÝïÍ&†™ü®Ãÿ\0ƒøç<­öOÜOä4Úv§nßˆšÕ\0>ÊM,ŸðGÿ\0‘³wùb¹ÿ\0ã5ýGàï-¸î=[ŒšPÌ?ˆŸ¨áLGòØ¿ðHmÿ\02„Ãë\rÈþpÑ/üãç—ÿ\0\"|Œl¸äßªþ¤ÑÚ?ºvçß?Ï4¥ÈÛ7~ŒüµÃ h	P*ø5°z\r³~pTRÿ\0Áÿ\0hHÏ>	™¸ÏÉæÿ\0ñŽµýNÍ±€òG\"ïèÜqúS¶>û~€?•½þ	‡ûL|/ñŽ‘âÀÞ\"°Ö´;Øµ:òÚÒàËms¬‘È3U`½~ÔøSö×ø•ûCþÎšv£ãk¿\r>%øRh¯¤¿»Òç],Þ&àeG* ÛN…–HÈ%¶Ñ¹#vûåÙP­ó3“–\'Ò¦ñGƒGö[­ý²]›ƒå­³€ÂVaÂô¼Œ“IÆà5ýà§žý¡ôØ4ÍSR³Ð<g‘{¥Ot¹Æ3%»†ÄÐg 8Œn¸GÁâí2D%o`Àõpß¨¯Ðàšÿ\0/æûwˆ¾\ZxTÔdùØ>$oí”Ï½OJï4¯Øçá^‘n\"´øákX—¢Eb±¨÷ÀÀ¦j|i¦!âòŸ|R\Zidóyn¿C\\¤Ÿ²gÃIq»ÀþltÍ¨âš?d†c§ü:§Ô[\n\0ëÆš;F×è_74|dê6go#2q\\¨ý“¾à¿cþ¼ÿ\0J?á“þÿ\0Ð—áïüAý(ªOhïŸø™éãôÝÆøNt_ú\néÿ\0÷ýÆ¹eý”~/üÉ>ÿ\0ÀQIÿ\0ðÛþ„Ÿà( š_ˆZY\'VÓþ^¹™q^/ûc~ÞºìÛðƒVÕ¼)áí_â‹ü³“ h‘™{‚§gŸ:äCpYÏÍŒ…V$cÑ“öXøs1àÍc·Ù†+j?…º6Ÿcö{>ÖÅb&·AEìííýy äßã‡ì%ûV~Ô?|QñÆŸõÝGÅ/Ô¥Ôµ+–ãV‘ÏÝDåFÔEç\n v¬Xÿ\0à‘ß´:“Ÿ†úØúÿ\0ú«ú°Õ,ît[ù-f$KÁ9ÜvaœœUrÇø\0+çþ	+ûB²€ß¯›wÁŽÚ|ðIOÚ`ÏÃËÑìnÿ\0ìµýOÁÕÊŸ$É\"©ÁÛ#\r¾Ýhy%F ¼ÊGc#gùÐòÃÿ\0”ý üÓÛÏüoþ&ü;öƒŸ8ð\rÐÇý=(þ•ýNy²ÏIïã)šCÖG?S@Ë ÿ\0‚Fü~Žå#—Áwþ\"³Ì£ê!‰Ûòà~Ýÿ\0‚Aÿ\0Á%u¯‡Ÿ4Ïø§E×î5*a-”ZEÅ„S6Ë,“\'¤dYò2Š£c~Ýà‘‚IÎ	ÈÏãV´{Ãox¤2•r9\\úéÒ€=+á\'ÃWð‡“íw_Ú:¤ëºâályÎvÆ¤’Ó\'$ŸAØ×à/yW‡M•É b,õÎ9Lcõ®Æ€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\n(¢€\nþ!¿à¬ò”ÏÚWþÊ¯Š?ôïu_ÛÍßðVùJgí+ÿ\0eWÅúwº ×Oø5söÄøIû>~ÀÞ.Ñ|}ñ[á·uk¿ˆ—w‘Xø‡ÄÖZeÌ¶Ï§i±ùËò+ËFêŒ3kô^óþ\nmû8\\_Lÿ\0ðÐ_?y#6á;ÒûŸúï_Ç­ýƒÿ\0ÃËÿ\0gú8?ßø]iü~øyìáÿ\0Gð;ÿ\0­/ÿ\0×ññE\0`ÿ\0ðòÿ\0ÙÃþŽàwþZ_ÿ\0©ôø)gìÕ»Ÿö„ø„·é|{ÿ\0¯¯ãÆŠ\0þÆï¿à§Ÿ³kîÿ\0Œˆø\Zàñã½/ÿ\0Ö[ÿ\0ÁKfås·öƒøƒÏüZ_ÿ\0¯ãâŠ\0þÂì¿à§_³~Ÿv“ÿ\0Âÿ\0ø#EÊÿ\0Åu¥äûÿ\0]/‡à©Ÿ³N·2\\_þÑá0Êv+ø÷JS^gèsúWñŸE\0jéÿ\0Rý—Ñp?hÿ\0€ŸøptŸþH§ÃÕfú8ÿ\0€ŸøptŸþ?_Å5ý¬ÿ\0ÃÕfú8ÿ\0€ŸøptŸþ?Gü=Wö`ÿ\0£ø	ÿ\0‡Iÿ\0ãõüSQ@ÚÐÿ\0‚¨þËøÏü4—À1ÿ\0uIÿ\0äŠQÿ\0Qý—ÏüÜ—À/ü8\ZOÿ\0$WñIE\0kMÿ\0Sý˜þnCàú|AÒù\"“þ«û0ÑÇüÿ\0Ãƒ¤ÿ\0ñúþ)¨ ígþ«û0ÑÇüÿ\0Ãƒ¤ÿ\0ñúüOö_,3ûGüÿ\0Ã¤ÿ\0ñúþ)¨ ìŸâ?üãög¸¾¶ž×öˆø3”hØÇãÝ)¶€F3‰ýèkžÿ\0‡˜~Íá€ÿ\0†ƒøƒßþ­/ü_ÇÍýŠÚÿ\0ÁNÿ\0fÈ­ÂÚàzcÏŽ´³“ÿ\0éš—üÇök¸PGí\rð9äNÿ\0	Þ—‚=?××ñÛE\0`ÿ\0ðòÿ\0ÙÃþŽàwþZ_ÿ\0£þ_û8ÑÁüÿ\0ÂëKÿ\0ãõü|Q@Ø?ü<¿öpÿ\0£ƒøÿ\0…Ö—ÿ\0Çé²ÿ\0ÁK?fù#aÿ\0\rð;8Èÿ\0ŠëKê9òß×ü}Q@Ùn™ÿ\0Gýš­|[kqÿ\0\rð,/Ÿ‘¿á=Ò±÷FN|þ™Ízgü=ƒöYÿ\0£•øÿ\0‡Hÿ\0äŠþ!¨ íçþÁû,ÿ\0ÑÊü\0ÿ\0Ã‡¤òEðöÙgþŽWàþ=#ÿ\0’+ø†¢€?·Ÿø{ì³ÿ\0G+ðÿ\0‘ÿ\0ÉÃØ?eŸú9_€øpôþH¯â\ZŠ\0þÞáì²Ïý¯Àü8zGÿ\0$Qÿ\0`ý–èå~\0áÃÒ?ù\"¿ˆj(ûyÿ\0‡°~Ë?ôr¿\0?ðáéü‘Gü=ƒöYÿ\0£•øÿ\0‡Hÿ\0äŠþ!¨ íçþÁû,ÿ\0ÑÊü\0ÿ\0Ã‡¤òEðöÙgþŽWàþ=#ÿ\0’+ø†¢€?·Ÿø{ì³ÿ\0G+ðÿ\0‘ÿ\0ÉÃØ?eŸú9_€øpôþH¯â\ZŠ\0þÞáì²Ïý¯Àü8zGÿ\0$Qÿ\0`ý–èå~\0áÃÒ?ù\"¿ˆj(ûyÿ\0‡°~Ë?ôr¿\0?ðáéü‘Gü=ƒöYÿ\0£•øÿ\0‡Hÿ\0äŠþ!¨ íçþÁû,ÿ\0ÑÊü\0ÿ\0Ã‡¤òE¿ðSOi^=ÿ\0‚‘~Ðzî…©éúÖ‰­|JñþŸ¨X\\%Í­ý¼º¥ËÅ4R¡)$nŒ¬®¤†H5âPÿÙ'),(42,'3e3e','e3e3',1.00,'tanamos','Shoes',1,NULL,''),(44,'','',1.00,'tanamos','Shoes',1,NULL,''),(45,'','',1.00,'tanamos','Shoes',0,NULL,''),(46,'','',1.00,'tanamos','Shoes',-1,NULL,''),(47,'','',1.00,'tanamos','Shoes',-3232,NULL,''),(48,'','',1.00,'tanamos','Shoes',1,NULL,''),(49,'TTT','',1.00,'tanamos','Shoes',1,NULL,''),(50,'','rgvege',22.00,'tanamos','Pants',11,NULL,''),(51,'fff','',1.00,'tanamos','Shoes',1,NULL,''),(52,'','',1.00,'tanamos','Shoes',1,NULL,''),(53,'','fff',1.00,'tanamos','Shoes',1,NULL,''),(55,'','',1.00,'tanamos','Shoes',1,NULL,''),(56,'fwefewfew','',1.00,'tanamos','Shoes',1,NULL,''),(57,'','fewfewfw',1.00,'tanamos','Shoes',1,NULL,''),(60,'gergr','gerg',1.00,'tanamos','Shoes',1,NULL,''),(61,'gergr','gerg',1.00,'tanamos','Shoes',1,NULL,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ô\0\0\0ð\0\0\07¾Iè\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Â\0\0Â(J€\0\0 jIDATx^íYhKÇOÜ5hDEðÍeFq{R\'ˆàƒ?Ð‹à¼OŽ¾% ‚B‚AÌø\"‰O÷EÈ$¢&¸#’!qÉDÅ]\\âwë«SIÏôL&Æž:=é®:C4™®®ó;õ¯õtu	\0ùáÄ˜€†`›À˜@/4W&`’Ü!·<7È¿lŠáJJPÂ™Ä=´ágóì\"À‚¶Ëßl­áXÐ†;˜Í³‹À Ì¡ýúïÞ½ƒOŸ>Aii):´õŸ?¦ÿ^VVC†pÛó»ªÉLé…¦¹sh¤€«`é\\ó%}þüY´µµ	)dñâÅÑØØ˜ußÜr8ÿ?|ø°xþü¹ºîúõë¢»»Û—ò…1SfJïµ°1Í£âÅÏ“\'OD\"‘ø#÷\'î½{÷ŠG¥ó£wg8rd¦ô~\n+Ó¢	úû÷ïªg½}û¶ˆÇãZBÎ-ô†\rÄÕ«W•¸¿|ùBïÝ€æÈLév¦EôƒÄë×¯Å¶mÛH…œ[ø7ªFÅmzb¦ô6©ï‚Æ¡õÙ³gÅºuë|³cÈÒ¥KÅD{{;½Ç’#3¥w„)L}ôÛ·oÅ®]»‰û›ûñûeË–‰Í›7‹®®.zÏrŽÌ”Þ&1õMÐ¸\n½cÇ±zõê¢ŠÙ1hñâÅbÓ¦MeJb¦ôž4©/‚FmÝºU¬Y³fPÄì‹ÅTƒbBOÍLéÅl\"Ó\\AkGk¼|ù<rq\nŽ;F¿»ï!Çd2	¯^½‚šš\Zèììôpe°¾ÊLéýaS-AËäJ!È)hjj¢÷B9¢¨;::àÒ¥Kª\\aKÌ”Þc61Õ4†É`Ñ[ô^ÐÈñÌ™3 #Ì`òäÉðíÛ7œŠ)3¥gnÓ‚ýæÍØ¿¿Š·>zô(½4s”P]]­†àaIÌ”ÞS¶1-HÐØëáçÞ½{/8œÞ-Þs¼xñ\"<|ød€<~üØ{E¾‚™Ò·‘iA‚–ìj¨ýñãÇ@öÎNÕøúõ«\ZEŒ9’¾¶çÈL‰ÊìldêYÐxD>V&ã¨ÕÏ \'|äWßQØØø51SzÏØÊÔ³ QÈÇ‡÷ïßú6Õ@ÕàÜ¹s Þ€#GŽÀ7úú ý™Ò£·•©gA?^m	‘&oVùõ|š!Nè_<<¡µµæÏŸO˜+mV¾0•›ÓL¶Ru1íÂ[Ë4V©€3õ,hfãÊ6 {+]}…v%ë/vãâÎ§°·b¢e\noF×C>ª‘ÊV©:Ð‘µµL[+!’§)¦ÍzÝSO‚FQàPÓ‰\'ô´¡zåü•N/ãì«OŸ>­Ž/ºpáàFÐ)S·q	(—q¸QRR	wà\\¤ª5ê3íáZî†Z±t?TL=	\ZçÍ—/_Œ¼!Kªâm²ûf„bOŸ>Uóþ %?˜6¬’.ZÉ´±I¨ú\'nMGçèôÑ íf\n¬Úçª·˜9O¯vQ0õ$èQ£FÁÝ»wi†Û\r«zz¬Š§¤¿«ñ>÷ïß‡I“&ùs\\I™j”Ãë¥Ì4—X\'t´y¥˜ý}\n¦ž7ÄÈ+šù³žñ^¯ÆáöðáÃ½^æû÷‹iêf¦ÿ.ÔH»™Æ .åš2¶ìƒ*}¤jZ¨SO=	\Z{ºatcº‹Á4^í^Ði¦†Beœ¹Î6¦±º”k7¦*{WÈ:åP²Š\0¨D«ËÔ³ qE6l‚v‚ô«°?9øÎT.@º7:µ [ý¬gêª\n¸ÊM±HÁÔ³ qˆô±\\Ùayƒ|P¿¯LqïÔ­æ–-%ÚÈ4YíÝ5è»ÊM!j\n¦ž=lØ°ÐõÐ(˜#FøÓ½äêS¹ÏïÞ;Å¢¡¡½L3G»·®\"ÿû[kŸ‚©\'Ac2aÂ„Ð	\Z‡2\'N|½NÐ’LsmäËÂ;™ö­=É›©Ì/#3AgçŠ‚©\'Aã>ÙôéÓC)h,7éþ9QËàÓxsfÑPÌ%«´çÍn“±òÙÆ4ŸËcs¢™_wv€ÎÎSO‚Æ^nÉ’%0vìXGçUi³Árbyå© Ü‡öƒ)®Æf¦Í(§³}L{B”û,|Éõ‰¥nY;Oþç\næñV¯©˜zôèÑ£U«ŒÃDí…±¬2Ü! POø †SÖh4ª„´DÊT‡jW%}\\Ùšy8#óLªàPEû˜öÔ\Z³í~8Ã½>¡¹ØHÅÔ“ Ñ(\\ÀÁJ–­+,\'–Wg³ÞïF€™Ò¦eÚ\0«rc·ÓEÆ\\õÖ\\l¤ª§ž-ßÒ+V¬P‚.///ÜNègúçA÷Oý¡\"–Ë‹åj\"cªì©|=eüî-8²É>¦=5\'wÛª‡oás×$(ê©gAG\"X»v­\Z¾½—–ï«rby±ÜAMÌ”Þ3¶2õ,hD¸O:5ð‚ÆË‰å\rzb¦ô²•iÖëkþä$r?W½›Y¾SJº\"p,–Ë‰ï\0zb¦ô²i®ö\nê¡1ŒrÌ˜10kÖ¬ÀöÒØ;cù°œ¸@ôÄLé=d#Ó’^…§iz™c †|4È7ú|é:½G\nÌqÑ¢EPVV¦ÄóºÂ”˜)½·Lfš{.~A=´ƒÏ»Þ¹s\'Œ7.\\Hï‰rÄr`y°\\a8;×DfZ€Ó¸Ä&¦Z‚Æý]<ME„=û‚è½á!G¼?–ËƒåÂò…-1SzÙÄTkÈí Ç!w<WÇaºví\Z½WÈÑiLfÌ˜\r\r\rjÈæÄLé½g\"SÒ!·ƒÅsèÐ!/©Ø=µs?¼?–#ìbF†Ì”^Ð60%é¡Ý=õž={Ô¶†Åè©QÌè(\\Ãy³	bvWeäÈLiÅmÓ|/‹ô¼ý»CÆ(ä+hÄòåË…›¯ûÓ˜?Þï‡÷551SzÏšÂT6uY\Z#í¡vß¬á¼ŸùÖ­[ä½µÓ+Ïž=jkkÕƒ¥¥¥´ÍxÀrc¦ô1iní‹ ô]]]ðáÃØ½{·:[wîyÚ´iPSS£â´ñ›3¥÷v˜™UÐˆŸóD!ÿøñ\ZáÔ©SÐÝÝ­¼rþüù½#‡Ôê;ñµråJX¿~½ŠüÂ¹rþÐ0/0S\rxý\\\ZV¦E´›ß;w`Ê”)j8ÞÞÞW®\\T*¥ïÇ³©S1\0ßr‡àÊõÜ¹sÕ°úÙ³g*œ“S†\03¥¯\rab:¨‚v£Çù\n£ºò=\r…úá{ŸPØ¦Ï©ª$3¥\"™É\'èL#hzôœ#°€/%öad‹™@0	hÅrÓ$.°—\0Ú^ß³å`AèT6É^,h{}Ï–H€m SÙ${	° íõ=[n ´Ne“ì%À‚¶×÷l¹XÐ:•M²—\0Ú^ß³å`AèT6É^,h{}Ï–H€m SÙ${	° íõ=[n ´Ne“ì%À‚¶×÷l¹XÐ:•M²—\0Ú^ß³å`AèT6É^,h{}Ï–H€m SÙ${	° íõ=[n ´Ne“ì%À‚¶×÷l¹XÐ:•M²—\0Ú^ß³å`AèT6É^,h{}Ï–H€m SÙ${	° íõ=[n ´Ne“ì%À‚¶×÷l¹XÐ:•M²—\0Ú^ß³å(‘6	·]Bdý×“ýúïÞ½ƒOŸ>Aii):´Ï}~þü™þ{YYÂmÏïœÁLé«j˜–” „³*8ý‘‚ö%}þüY´µµ	)dñâÅÑØØ˜u_wÜÿ>|ø°xþü¹ºîúõë¢»»Û—ò…1SfJïµ°1Í£›Œ˜ñÔ	Å‹Ÿ\'OžˆD\"ñG\"îOÜ{÷î=JçG]Ö°äÇLé=V¦Eô÷ïßUÏzûömÇµ„œ[è\r6ˆ«W¯*qùò…Þ»Í‘™Ò;&ìL‹\"èˆ×¯_‹mÛ¶‘\n9·ð7nTŠÛôÄLé=lSßCë³gÏŠuëÖù*fÇ¥K—Šˆöövz$GfJïS˜ú*è·oßŠ]»v	÷7öã÷Ë–-›7o]]]ôžä™)½Lbê› qzÇŽbõêÕE³cÐâÅ‹Å¦M›:Ë”ÄLé=i\ZS_\"Úºu«X³fÍ ˆÙ1*‹©Å„žš™Ò‹ÙD¦¹‚ÖŽÖxùò%<xäâ;vŒ~wßCŽÉd^½z555ÐÙÙéáÊ`}•™ÒûÃ¦Z‚–-È•BRÐÔÔDï…rDQwttÀ¥K—T¹Â–˜)½Çlbª%h;“Á\" £·è½ ‘ã™3g@F˜ÁäÉ“áÛ·o\Z9ÿRfJÏÜ&¦úÍ›7°ÿ~o}ôèQz/hæ( ººZ\rÁÃ’˜)½§lcZ ±×ÃÏ½{÷ _p8½[¼çxñâExøð!È\0xüø±÷Š|3¥n#Ó‚-ØÕPûãÇìªñõëW5Š9r$}m!Î‘™•ÙÙÈÔ³ ññJ|¬LÆQ«ŸT)V—Â\'C2ŸTÄ43ÇG.qõ…OP)ÓX¤Üûü»â\Z ¬dêðŠ7g×QÅ6uš•’©gA£?ïß¿\'Ü¦ŠCueD£šå¿ôÜ¹s Þ€#GŽÀ7Èó§Ê”é¼™@O2c©•LeØŒâ­¯ÈãòÌœ§W(™zôøñãÕ–åAñæzP¨äÞ1õî1žÐÚÚ\nóçÏ×£îãÕ~0U8åj#û³\n\Z4m±‹iêR½õ¹µléÃt•.P™-SÏ‚Æa6®l“	Z·÷¨ûNjVµ¾—ãpGp>…½u9SŸ´Ši¼\ZÒƒG3…zóø‡Š©\'A£(pxˆéÄ‰$Õ&^]Ù3DlÙUm$Yferúôiu|Ñ…\0·0‚–ü`ê·61ÿ•f·4tÅý8‡Š©\'Aã¼ùòåË€‘7$ÉÝ;×úÄž>}ªæýAKäL‹d Lc0\'ê\0í„:·»(˜zô¨Q£àîÝ»DÃm97ù··wî<	ÿ%ý«‰8‡¼ÿ>Lš4É¿›˜3-ÓìBD*[Éwœ;ØÁtÌL¯0¦àæ¼¾«Ü)Ý%n—Ë(˜z4Þ#¯HæÏ®¹IË¾*ðQÏ\n·‡^ ìü»Œ”)³­£ÿ…ÅH%´l³84¬aª®€ú<«ÜªÑlÖÙÌ®[ºL=	\Zo{ºú‚–½sÏJ.Å‚£í4­ ÇtÓ0í55YÑÜ•íò„Kä¨¬¦©€Ö0íE›µkàfZñ—ÖÞ¾[ÒºL=\ZWdu«û7½rXŒÞÙ	Üð¯ŸÕË™‚éoK EþOÂµ!£´cÓØWå\ZG&ÿƒ“i¤ðAIÁÔ³ qˆ¨!6/31ŠzWtXkïœ\Zk§\ZÊ¿g°¼A>¨Ÿ‚é@MJòfj ¯xú»LÛ #-Ú(ÌÉŠK1R¥+ÝzêYÐÃ†\rÓî¡Û2”<U¢B¿Œ‚1bD¡—û~Ó\nË,×ôÕ?ú»LÝ¢Í£_§`êIÐØ‚L˜0A[ÐÉªhž&Ñäž—È¹u9Î	6òq(3qâDÀ×ë-Q1í±£šôYy•1È­®ÐZŠiŽ-LšZÒU¦b{æù÷´ˆvi(˜z4î“MŸ>][ÐÅ‚Âr“íŸ\ZàÓ>ÛU®ÕY\\Ø!h#U°‚iC-¤—œi ´=Ó@¶À–(Í.\rSO‚Æ^nÉ’%0vìXGçVkÿ²Ârbyå© Ü‡¦eš„ªh	”»ÀÒheÅ“#ž¨{a§@ìÌ´œŠëÖÇÜ¨˜zôèÑ£U«ŒÃDÝ…±¼uÉ½åBÔê9eF£JØAK~0Í?¥¡©xÈ™ö>ðB1Ôé­TL=	\Zï8X	u·®Š%,,\'–7ˆA%fJ_leêYÐò-}°bÅ\n%èòòrzOçˆåÄòb¹ƒš˜)½gleêYÐ‘HÖ®]«†¯Aï¥åÁûªœX^,wP3¥÷Œ­L=\ZÑãÃØS§N\r¼ ±ÁÁrbyƒž˜)½‡lešõúš?y‰ÜÏUïf–CYï”’®ÜË…åÃrâ;€ƒž˜)½‡l`š«½‚zhO3fÌš5+°½4öÎX>,\'.=1SzÙÈ´¤Wáiš^æÅ¨!ß\rò~ _ºNï‘s\\´h”••©Ãñ¼®0%fJï-“™æž‹_Pí Çó®wîÜ	ãÆƒ…Ò{¢€±X,WÎãÎ5‘™àô.±‰©– qOÓDaÏ¾`ÁzoxÈïåÀò`¹°|aKÌ”Þc61Õ\Zr;èqÈÇÕñD˜®]»Fï•rt\Z“3f@CCƒ\Zr‡91Szï™È”tÈí Gñ:tHÅKc*vOíÜïå»˜‘!3¥´\rLIzhwO½gÏµ@†­a1zj3:\nÂpÞl‚˜ÝU92SZq›Ä4ßË\"=ïCÿnÇP†Ü	ùj±|ùr!Åæëþ4æ÷Áûá}MMÌ”Þ³¦0•M]–ÆH{h§Å7k8ïg¾uëyoíôÊ³gÏ†ÚÚZõàEii)m3°Ü˜)½CL`šÛCû\"h}WW|øðvïÞ­ÎÅÖ†;Bž6m\ZÔÔÔ¨8m<AÅ¦ÄLé½f¦E4¢Çç<QÈ?~ü€ÆÆF8uêtww+¯œ?~@ïÈ!µúF|­\\¹Ö¯_¯\"¿p®¬{ Ú€7è˜)½cÂÊ´è‚v£¿sçL™2E\rÇÛÛÛáÊ•+J¥Ôáýx6µsê!à[.ðP\\¹ž;w®\ZV?{öL…srÊ`¦ôµ!LLUÐnô8A!cTW¾§¡ð@?|ï\nÛôù1U•d¦T$3ùi`Mžsdöð%°Ä>Œl1&­Xî`šÄ¥bö`AÛë{¶Ü@,hÊ&ÙK€m¯ïÙr	° \rt*›d/´½¾gË\r$À‚6Ð©l’½XÐöúž-7\0Ú@§²Iö`AÛë{¶Ü@,hÊ&ÙK€m¯ïÙr	° \rt*›d/´½¾gË\r$À‚6Ð©l’½XÐöúž-7\0Ú@§²Iö`AÛë{¶Ü@,hÊ&ÙK€m¯ïÙr	° \rt*›d/´½¾gË\r$À‚6Ð©l’½XÐöúž-7\0Ú@§²Iö`AÛë{¶Ü@,hÊ&ÙK€m¯ïÙr	° \rt*›d/´½¾gË\r$À‚6Ð©l’½XÐöúž-7\0Ú@§²Iö`AÛë{¶Ü@%Ò&á¶Kˆ¬ÿúbò¯_¿àÝ»wðéÓ\'(--…¡C‡ö¹ÏÏŸ?Ó/++ƒ!C¸íù3˜)}U\rÓ’”pvB§?RÐ¾¤ÏŸ?‹¶¶6!…,^¼x!\Z³îë.ƒûß‡ÏŸ?W×]¿~]twwûR¾0fÊLé½6¦yt“3þ‘:¡xñóäÉ‘H$þHÄý‰{ïÞ½âÑ£Géü¨Ë\Z–ü˜)½§ÂÊ´h‚þþý»êYoß¾-âñ¸–s½aÃqõêU%î/_¾Ð{7 92SzÇ„iQýàÁñúõk±mÛ6R!ç~ãÆªÑ@q›ž˜)½‡M`ê» qh}öìY±nÝ:_Åì²téRqàÀÑÞÞNïñ€äÈLéa\nS_ýöí[±k×.CâþæÁ~ü~Ù²ebóæÍ¢««‹Þóƒœ#3¥w€IL}4®BïØ±C¬^½º¨bvZ¼x±Ø´i“@g™’˜)½\'Mcê‹ QD[·nkÖ¬1;FÅb1Õ ˜ÐS3Sz1›È4WÐÚÑ\Z/_¾„ƒ‚\\œ‚cÇŽÑïî{È1™LÂ«W¯ ¦¦:;;=\\¬¯2SzØÂTKÐ²Å¹RrA\nšššè½P@Ž(êŽŽ¸té’*WØ3¥÷˜MLµag2Xdô½4r<sæÈ3˜<y2|ûöM#§â_ÊLé™ÛÄ´`A¿yóöïß¯â­=JïÍeÀ\0TWW«!xX3¥÷”mL4özø¹wïä§w‹÷/^¼>à?öžA‘¯`¦ôÀmdZ e\0»\Zjüø1½³S5¾~ýªF#GŽ¤¯-Ä92Sb 2;™z4>^‰•É8jõ3È	¹ÄÕw66>AMÌ”Þ3¶2õ,hòñãÇáýû÷\ZÛTqh–\rBÿý§â\Z¾>wîÈ‡7àÈ‘#pãÆ\rœü½”†ivãÍùØêñÄ;0Ó®Í:5´Çg”L=züøñjK…†„‡\'´¶¶Âüùó[\\Z¦=e}E>s+ ^þM·2SÛŠz©:ˆiÖ.*¦žÃl\\ÙÖt¬’[^¸ –û)O¸BZš A»qqçSØ[1Ñ0í±,Þ\\Ž–;åi¾n®Ûõ* 3í©·[ZzkS¤þ­Ó“4SO‚FQàðÓ‰\'|ÐFþþ_$oK“®œNŸ>­Ž/ºpáàFÐ-ÓÌ‰:vÂÉÿ’is“UûÀ©™	ó4@ØÅ4eZHø§*Ã´¡6N÷ùßßZ½4SO‚ÆyóåË—#o|Iñj¨tôÜ™€Z}=«bâ‚ØÓ§OÕ¼?hÉ?¦˜éVmld´Þmš ¬aêæ–Ë,yRÎï4IªzêIÐ£F‚»wïj·û«I1¨Ûž™øužü2m¡^íÃáÑýû÷aÒ¤Izùp5-Ó$üw23e©¨wæËr^ÝZ	N[Ù²¯J›­=Lçô6èHãŽÂ½Q·\ZÆëÖSO‚Æbä•Þü¹@±¿!3Ún}®¡\r…Žp¸=|øpŠ¬Hó fš¬Šfæv²¤(j!2óê–-%°ŠhäcÓ¬^¸ªÝ‹Úî%Q­ÐeêIÐXfÜÓõCÐñêL‹a¹|ƒÓMÍ´a•\\´I¯Ø¸ItB‡îXÛ•L ÖµPÛÓ@ö~òo%hI[—©gAãŠ,½ ]r™!A5yîEëh‘öñbZ¦½{üy+[*[õ·­…MLqÔ“¯ìLl÷¦Œn¡`êYÐ8D¤Ž‹ÕmOoµ@çIp-Îê2R×cyƒ|P?S¹‘úƒm«zý\0{˜öVÁ†U}¶X£U\03Ó›2)¸©¹èCÁÔ³ ‡\rFÜCÇ¡:½´\r@±`“Û\n `FŒAÒ8ø‘	S÷:„Ü%po±$«þqõ&ð—f€“5Lçp÷\n8Á4‘‚©\'Ac2aÂZAÇÿÊôÎr§”`ë¹p(3qâDÀ×ë-‘273½’\r©›9+ÙI¸™ÞcÑ§`\rÓß r¯ûPÄLP0õ$hÜ{œ>}:¡ s¶ªµÚ‘aùø#(,·oûç\Zú eÚÖ‘tËÛÙ!žñfW8¨~Ãi\rSéÛX]]Ÿg\n0V>½LA3AÁÔ“ ±—[²d	Œ;äÑ¹\ZÕ¸÷Ò¬eÿìÈ&ýÌ{rÀrbyå© Ü‡&eš¬‚þ`E¶S³á´Š©¬CófVªx÷ƒD™5ÇØ\"\'ÓšÓg²zêIÐ£GV=)Æâé˜:IÍ‡Å0gAË\ZF•°ƒ–¨™ªÙòLHb¶½²òÉõ„¨æ¿ã[˜ºC<Ý<{båW‘Œ*©˜z4\Zƒ8X	)¶®Ô~©ó€A+×ßpËÄ §¼”LUž²§Žæ}ø…¦ò¡ï­bÚOÝ†Ñ]_©˜z´|K¬X±B	º¼¼<h^Þ1,/–;¨‰™Ò{ÆV¦ž‰D`íÚµjøJÑKÓ»2“£<x_•Ë‹åjb¦ôž±•©gA#z|{êÔ©468XN,oÐ3¥÷­L³^_ó\'/ ‘û¹êÝÌr(+ðRÒû`¹°|XN|pÐ3¥÷\rLsµWPa”cÆŒY³f¶—ÆÞË‡åÄE§ \'fJï!™–ô*<MÓË¼5ä{ A¾ÑäK×é=R`Ž‹-‚²²2u8 ž×¦ÄLé½e2ÓÜsñê¡äxÞõÎ;aÜ¸q°páBzO#–Ëƒå\nÃyÜ¹&2Óœ>À%61Õ4îEâiš(\"ìÙ,X@ï\r9âý±X,–/l‰™Ò{Ì&¦ZCn=¹ãñ¸:žÓµk×è½2@ŽNc2cÆhhhPCî0\'fJï=™’¹ä(žC‡©xiLÅî©ûáý±a32d¦ô‚¶)Iíî©÷ìÙ£È°5,FObFGáBÎ›M³»*#GfJ+n“˜æ{Y¤ç}èßíÊ;!_í!–/_.¤Ø|ÝŸÆüñ>x?¼¯©‰™Ò{Ö¦²©ËÒií´£øf\rçýÌ·nÝ\"ï­^yöìÙP[[«¼(--¥mÆ–3¥wˆ	Ls{h_í ïêê‚>ÀîÝ»ÕyÃºÃpGÈÓ¦Mƒšš\Z§\'¨Ø”˜)½·ÃÌ´¨‚Fôøœ\'\nùÇÐØØ§N‚îînå•óçÏè9¤VßÁˆ¯•+WÂúõëUäÎ•ƒ|ðß€†i|™jÀëçÒ°2-º ÝüîÜ¹S¦LQÃñööv¸rå\n¤R)ux?žMíœzˆ\0ø–|€W®çÎ«†ÕÏž=Sáœœ2˜)}mÓA´=Î_PÈÕ•ïi(<Ðßû„Â6}~LU%™)ÉL>Ag\ZAÓ£ç™€}|	,±#[Ì‚I@+–;˜&q©˜€½XÐöúž-7\0Ú@§²Iö`AÛë{¶Ü@,hÊ&ÙK€m¯ïÙr	° \rt*›d/´½¾gË\r$À‚6Ð©l’½ú<>i/\n¶œ	„Ÿ\0÷Ðá÷![ÀÒXÐ\\˜€AþA“×[Ž¢Á\r\0\0\0\0IEND®B`‚');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `idreviews` int(11) NOT NULL AUTO_INCREMENT,
  `reviews` varchar(255) DEFAULT NULL,
  `idproductView` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idreviews`),
  KEY `idproduct` (`idproductView`),
  KEY `idproductView` (`idproductView`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (26,'\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n',42,'tanamos');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `idcurrency` int(11) NOT NULL AUTO_INCREMENT,
  `idcustomer` int(11) NOT NULL,
  `SDG` double DEFAULT NULL,
  `USD` double DEFAULT NULL,
  `EUR` double DEFAULT NULL,
  PRIMARY KEY (`idcurrency`),
  UNIQUE KEY `idcustomer_UNIQUE` (`idcustomer`),
  UNIQUE KEY `EUR_UNIQUE` (`EUR`),
  KEY `idcustomer` (`idcurrency`),
  CONSTRAINT `idcustomer` FOREIGN KEY (`idcustomer`) REFERENCES `customer` (`idcustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action_report`
--

DROP TABLE IF EXISTS `action_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_report` (
  `Report_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Subject` varchar(50) NOT NULL,
  `Accessing` varchar(50) NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL,
  `Action_Taken` varchar(50) NOT NULL,
  `Successful` int(11) DEFAULT '1',
  `Reason_For_Failure` varchar(1000) DEFAULT 'NOT APPLICABLE',
  `idcustomer` int(11) DEFAULT NULL,
  PRIMARY KEY (`Report_ID`),
  KEY `Report_ID_FK` (`idcustomer`),
  CONSTRAINT `Report_ID_FK` FOREIGN KEY (`idcustomer`) REFERENCES `customer` (`idcustomer`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_report`
--

LOCK TABLES `action_report` WRITE;
/*!40000 ALTER TABLE `action_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `action_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `idorder` int(11) NOT NULL AUTO_INCREMENT,
  `idproduct` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `giftid` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `orderQuantity` int(11) DEFAULT NULL,
  `prod_owner` varchar(45) DEFAULT NULL,
  `quantityOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`idorder`),
  UNIQUE KEY `giftid_UNIQUE` (`giftid`),
  KEY `idproduct` (`idproduct`),
  KEY `username` (`username`),
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `customer` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,19,'On Delivery','1101','Karyn',1,'tanamos',1),(3,1,'Delivery Comfirmed',NULL,'tanamos',1,'tanamos',1),(9,1,'On Delivery',NULL,'Karyn',1,'tanamos',1),(10,1,'On Delivery',NULL,'tanamos',1,'tanamos',1),(11,1,'On Delivery',NULL,'tanamos',1,'tanamos',1),(12,1,'On Delivery',NULL,'tanamos',1,'tanamos',1),(13,1,'On Request',NULL,'tanamos',1,'tanamos',1),(14,19,'On Delivery',NULL,'tanamos',11,'tanamos',1),(15,19,'On Delivery',NULL,'tanamos',1,'tanamos',1),(16,1,'On Request',NULL,'tanamos',1,'tanamos',1),(17,27,'On Delivery',NULL,'alvin',1,'tanamos',1),(18,1,'On Request',NULL,'tanamos',2,'tanamos',NULL),(19,19,'On Request',NULL,'tanamos',1,'tanamos',NULL),(20,33,'On Request',NULL,'tanamos',1,'tanamos',NULL),(21,24,'On Request',NULL,'tanamos',1,'tanamos',NULL),(23,43,'On Request',NULL,'tanamos',1,'tanamos',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicants` (
  `username` varchar(45) NOT NULL,
  `bankAcctNum` varchar(45) NOT NULL,
  `bankAcctName` varchar(45) NOT NULL,
  PRIMARY KEY (`username`,`bankAcctNum`),
  KEY `bankAcctNum` (`bankAcctNum`),
  CONSTRAINT `bankAcctNum` FOREIGN KEY (`bankAcctNum`) REFERENCES `customer` (`bankAcctNum`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
INSERT INTO `applicants` VALUES ('tanamos','79885','RRRR'),('tanamos','80331','111111'),('tanamos','99375','KAK');
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-05 19:30:40
