-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: tourguide
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminID` int NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (0,'tourguide','admin','admin','admin@gmail.com','admin','0766598143','male');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `blogID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `shortDescription` varchar(250) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `imageFileName` varchar(45) DEFAULT NULL,
  `uploadPath` varchar(250) DEFAULT NULL,
  `adminID` int DEFAULT '0',
  PRIMARY KEY (`blogID`),
  KEY `adminIDs_idx` (`adminID`),
  CONSTRAINT `adminIDs` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (24,'9 totally amazing, one-of-a-kind fall festivals in the US','From a parade of 1,500 sheep to a pumpkin-boat race','Outdoor','Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium sapiente consequatur illo, excepturi rerum, distinctio totam, in velit soluta fugit ullam sunt. Error quis ipsam itaque autem voluptate numquam omnis!\r\n                Doloribus quibusdam minima, ipsa dignissimos nostrum qui itaque dolorem reprehenderit porro illum quis aliquid recusandae vero, totam aspernatur ad nulla numquam asperiores architecto dolores accusantium autem magnam. Eius, recusandae aliquid. <br><br>\r\n\r\n                Aut nesciunt autem suscipit ea similique quo culpa sed rem ipsam quaerat tempora explicabo necessitatibus, fugit enim libero natus dolore ullam deleniti quas quidem. Quam, nulla. Porro nisi repellendus saepe.\r\n                Culpa dolorem pariatur quas rem, debitis exercitationem eius quisquam nulla laborum provident tenetur dolorum iure soluta fuga facere! Veniam asperiores error repellat animi molestiae odio incidunt doloremque blanditiis autem a.\r\n                Consequatur fugiat doloremque repellendus, nostrum ipsum explicabo dolore deserunt sunt, ad quibusdam officiis quaerat sapiente rerum quod. Voluptatibus, nisi, voluptatum at perspiciatis nemo quis inventore suscipit ducimus possimus, ut nam. <br><br>\r\n\r\n                Animi veritatis officiis asperiores reprehenderit consequatur odio dolores, cum soluta illum eligendi deleniti aperiam atque nam id, et, eveniet repellat quod similique possimus? Quo laborum error possimus alias blanditiis. Pariatur!\r\n                Reiciendis temporibus animi, veniam excepturi odit, fugit explicabo cumque cum quaerat aperiam libero facilis quod aliquid commodi dolorem magnam voluptatibus. Voluptatem excepturi labore neque nemo quisquam illum quam expedita unde.\r\n                Quod voluptates aperiam id similique vel adipisci eos veniam ex nisi! Doloribus dicta fugit aliquid culpa animi labore recusandae facilis nam, amet suscipit error eos quaerat illo molestiae odio omnis.\r\n                Est error quae vitae ullam! Omnis asperiores, reprehenderit voluptatum consequatur repellendus qui iure quisquam corporis porro optio! Sapiente repellendus doloribus, iure ducimus rem aliquam fugit eum, sit, dolor neque voluptatem.\r\n                Vero sint, nobis corrupti repellat iste totam sit! Ipsam accusantium possimus quam praesentium voluptatibus nobis aliquid voluptates doloremque dolore neque suscipit quae magnam sequi, ut unde consequatur! Obcaecati, delectus doloremque.','caption.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogImages/caption.jpg',0),(25,'How to celebrate fall in Paris like a local','The City of Light shines brightest in autumn.','Art and Culture','Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium sapiente consequatur illo, excepturi rerum, distinctio totam, in velit soluta fugit ullam sunt. Error quis ipsam itaque autem voluptate numquam omnis!\r\n                Doloribus quibusdam minima, ipsa dignissimos nostrum qui itaque dolorem reprehenderit porro illum quis aliquid recusandae vero, totam aspernatur ad nulla numquam asperiores architecto dolores accusantium autem magnam. Eius, recusandae aliquid. <br><br>\r\n\r\n                Aut nesciunt autem suscipit ea similique quo culpa sed rem ipsam quaerat tempora explicabo necessitatibus, fugit enim libero natus dolore ullam deleniti quas quidem. Quam, nulla. Porro nisi repellendus saepe.\r\n                Culpa dolorem pariatur quas rem, debitis exercitationem eius quisquam nulla laborum provident tenetur dolorum iure soluta fuga facere! Veniam asperiores error repellat animi molestiae odio incidunt doloremque blanditiis autem a.\r\n                Consequatur fugiat doloremque repellendus, nostrum ipsum explicabo dolore deserunt sunt, ad quibusdam officiis quaerat sapiente rerum quod. Voluptatibus, nisi, voluptatum at perspiciatis nemo quis inventore suscipit ducimus possimus, ut nam. <br><br>\r\n\r\n                Animi veritatis officiis asperiores reprehenderit consequatur odio dolores, cum soluta illum eligendi deleniti aperiam atque nam id, et, eveniet repellat quod similique possimus? Quo laborum error possimus alias blanditiis. Pariatur!\r\n                Reiciendis temporibus animi, veniam excepturi odit, fugit explicabo cumque cum quaerat aperiam libero facilis quod aliquid commodi dolorem magnam voluptatibus. Voluptatem excepturi labore neque nemo quisquam illum quam expedita unde.\r\n                Quod voluptates aperiam id similique vel adipisci eos veniam ex nisi! Doloribus dicta fugit aliquid culpa animi labore recusandae facilis nam, amet suscipit error eos quaerat illo molestiae odio omnis.\r\n                Est error quae vitae ullam! Omnis asperiores, reprehenderit voluptatum consequatur repellendus qui iure quisquam corporis porro optio! Sapiente repellendus doloribus, iure ducimus rem aliquam fugit eum, sit, dolor neque voluptatem.\r\n                Vero sint, nobis corrupti repellat iste totam sit! Ipsam accusantium possimus quam praesentium voluptatibus nobis aliquid voluptates doloremque dolore neque suscipit quae magnam sequi, ut unde consequatur! Obcaecati, delectus doloremque.','paris.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogImages/paris.jpg',0),(28,'Taste the World in One City: New York City','Heres a guide on where to discover global gastronomy in the Big Apple.','Food and Drink','Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium sapiente consequatur illo, excepturi rerum, distinctio totam, in velit soluta fugit ullam sunt. Error quis ipsam itaque autem voluptate numquam omnis!\r\n                Doloribus quibusdam minima, ipsa dignissimos nostrum qui itaque dolorem reprehenderit porro illum quis aliquid recusandae vero, totam aspernatur ad nulla numquam asperiores architecto dolores accusantium autem magnam. Eius, recusandae aliquid. <br><br>\r\n\r\n                Aut nesciunt autem suscipit ea similique quo culpa sed rem ipsam quaerat tempora explicabo necessitatibus, fugit enim libero natus dolore ullam deleniti quas quidem. Quam, nulla. Porro nisi repellendus saepe.\r\n                Culpa dolorem pariatur quas rem, debitis exercitationem eius quisquam nulla laborum provident tenetur dolorum iure soluta fuga facere! Veniam asperiores error repellat animi molestiae odio incidunt doloremque blanditiis autem a.\r\n                Consequatur fugiat doloremque repellendus, nostrum ipsum explicabo dolore deserunt sunt, ad quibusdam officiis quaerat sapiente rerum quod. Voluptatibus, nisi, voluptatum at perspiciatis nemo quis inventore suscipit ducimus possimus, ut nam. <br><br>\r\n\r\n                Animi veritatis officiis asperiores reprehenderit consequatur odio dolores, cum soluta illum eligendi deleniti aperiam atque nam id, et, eveniet repellat quod similique possimus? Quo laborum error possimus alias blanditiis. Pariatur!\r\n                Reiciendis temporibus animi, veniam excepturi odit, fugit explicabo cumque cum quaerat aperiam libero facilis quod aliquid commodi dolorem magnam voluptatibus. Voluptatem excepturi labore neque nemo quisquam illum quam expedita unde.\r\n                Quod voluptates aperiam id similique vel adipisci eos veniam ex nisi! Doloribus dicta fugit aliquid culpa animi labore recusandae facilis nam, amet suscipit error eos quaerat illo molestiae odio omnis.\r\n                Est error quae vitae ullam! Omnis asperiores, reprehenderit voluptatum consequatur repellendus qui iure quisquam corporis porro optio! Sapiente repellendus doloribus, iure ducimus rem aliquam fugit eum, sit, dolor neque voluptatem.\r\n                Vero sint, nobis corrupti repellat iste totam sit! Ipsam accusantium possimus quam praesentium voluptatibus nobis aliquid voluptates doloremque dolore neque suscipit quae magnam sequi, ut unde consequatur! Obcaecati, delectus doloremque.','food.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogImages/food.jpg',0),(29,'The best new things to do in Japan','From shopping to dining, youll want to bookmark these spots.','By the Water','Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium sapiente consequatur illo, excepturi rerum, distinctio totam, in velit soluta fugit ullam sunt. Error quis ipsam itaque autem voluptate numquam omnis!\r\n                Doloribus quibusdam minima, ipsa dignissimos nostrum qui itaque dolorem reprehenderit porro illum quis aliquid recusandae vero, totam aspernatur ad nulla numquam asperiores architecto dolores accusantium autem magnam. Eius, recusandae aliquid. <br><br>\r\n\r\n                Aut nesciunt autem suscipit ea similique quo culpa sed rem ipsam quaerat tempora explicabo necessitatibus, fugit enim libero natus dolore ullam deleniti quas quidem. Quam, nulla. Porro nisi repellendus saepe.\r\n                Culpa dolorem pariatur quas rem, debitis exercitationem eius quisquam nulla laborum provident tenetur dolorum iure soluta fuga facere! Veniam asperiores error repellat animi molestiae odio incidunt doloremque blanditiis autem a.\r\n                Consequatur fugiat doloremque repellendus, nostrum ipsum explicabo dolore deserunt sunt, ad quibusdam officiis quaerat sapiente rerum quod. Voluptatibus, nisi, voluptatum at perspiciatis nemo quis inventore suscipit ducimus possimus, ut nam. <br><br>\r\n\r\n                Animi veritatis officiis asperiores reprehenderit consequatur odio dolores, cum soluta illum eligendi deleniti aperiam atque nam id, et, eveniet repellat quod similique possimus? Quo laborum error possimus alias blanditiis. Pariatur!\r\n                Reiciendis temporibus animi, veniam excepturi odit, fugit explicabo cumque cum quaerat aperiam libero facilis quod aliquid commodi dolorem magnam voluptatibus. Voluptatem excepturi labore neque nemo quisquam illum quam expedita unde.\r\n                Quod voluptates aperiam id similique vel adipisci eos veniam ex nisi! Doloribus dicta fugit aliquid culpa animi labore recusandae facilis nam, amet suscipit error eos quaerat illo molestiae odio omnis.\r\n                Est error quae vitae ullam! Omnis asperiores, reprehenderit voluptatum consequatur repellendus qui iure quisquam corporis porro optio! Sapiente repellendus doloribus, iure ducimus rem aliquam fugit eum, sit, dolor neque voluptatem.\r\n                Vero sint, nobis corrupti repellat iste totam sit! Ipsam accusantium possimus quam praesentium voluptatibus nobis aliquid voluptates doloremque dolore neque suscipit quae magnam sequi, ut unde consequatur! Obcaecati, delectus doloremque.','japan.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogImages/japan.jpg',0);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogcategory`
--

DROP TABLE IF EXISTS `blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogcategory` (
  `categoryID` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(45) DEFAULT NULL,
  `imageFileName` varchar(45) DEFAULT NULL,
  `uploadPath` varchar(500) DEFAULT NULL,
  `bannerFileName` varchar(45) DEFAULT NULL,
  `bannerImagePath` varchar(500) DEFAULT NULL,
  `adminID` int DEFAULT '0',
  PRIMARY KEY (`categoryID`),
  KEY `adminIDc_idx` (`adminID`),
  CONSTRAINT `adminIDbc` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogcategory`
--

LOCK TABLES `blogcategory` WRITE;
/*!40000 ALTER TABLE `blogcategory` DISABLE KEYS */;
INSERT INTO `blogcategory` VALUES (23,'Outdoor','outdoor.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogCategoryImages/outdoor.jpg','outdoor_Banner.png','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogCategoryImages/categoryBannerImage/outdoor_Banner.png',0),(24,'Food and Drink','food and drink.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogCategoryImages/food and drink.jpg','foodanddrink_Banner.png','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogCategoryImages/categoryBannerImage/foodanddrink_Banner.png',0),(25,'Art and Culture','art and culture.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogCategoryImages/art and culture.jpg','artandculture_Banner.png','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogCategoryImages/categoryBannerImage/artandculture_Banner.png',0),(27,'By the Water','by the water.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogCategoryImages/by the water.jpg','water_Banner.png','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/blogCategoryImages/categoryBannerImage/water_Banner.png',0);
/*!40000 ALTER TABLE `blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `contactus_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobileNumber` varchar(45) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`contactus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (1,'Diwan Sachidu','diwansachidu@gmail.com','0766598143','Demo Message'),(2,'ds','ds@gmail.com','0755486521','df'),(3,'kasun','kasun@gmail.com','0455658945','gggh'),(4,'x','x@gmail.com','1754865214','jbh'),(5,'maleesha','maleesha@gmail.com','07548563245','Hello'),(6,'Diwan','diwanbiz@gmail.com','0754845124','sf'),(7,'v','v@gmail.vom','0745213458','gg'),(8,'ads','ffds@gmail.com','0784521365','sfdsfdf');
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `countryID` int NOT NULL AUTO_INCREMENT,
  `countryName` varchar(45) DEFAULT NULL,
  `shortDescription` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `embedLink` varchar(750) DEFAULT NULL,
  `imageFileName` varchar(45) DEFAULT NULL,
  `uploadPath` varchar(500) DEFAULT NULL,
  `adminID` int DEFAULT '0',
  PRIMARY KEY (`countryID`),
  KEY `adminIDc_idx` (`adminID`),
  CONSTRAINT `adminIDc` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (2,'Sri Lanka','Country in South Asia','Sri Lanka, formerly known as Ceylon and officially the Democratic Socialist Republic of Sri Lanka, is an island country in South Asia. It lies in the Indian Ocean, southwest of the Bay of Bengal, and southeast of the Arabian Sea; it is separated from the Indian subcontinent by the Gulf of Mannar and the Palk Strait.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4047271.3116172035!2d78.46146961030453!3d7.851730318521024!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2593cf65a1e9d%3A0xe13da4b400e2d38c!2sSri%20Lanka!5e0!3m2!1sen!2slk!4v1666500522523!5m2!1sen!2slk','srilanka.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/srilanka.jpg',0),(4,'Germany','Country in Europe','Germany is a Western European country with a landscape of forests, rivers, mountain ranges and North Sea beaches. It has over 2 millennia of history. Berlin, its capital, is home to art and nightlife scenes, the Brandenburg Gate and many sites relating to WWII. Munich is known for its Oktoberfest and beer halls, including the 16th-century Hofbr�uhaus. Frankfurt, with its skyscrapers, houses the European Central Bank','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5132299.782326125!2d5.967788600247419!3d51.08990133737312!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x479a721ec2b1be6b%3A0x75e85d6b8e91e55b!2sGermany!5e0!3m2!1sen!2slk!4v1666512945929!5m2!1sen!2slk','01.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/01.jpg',0),(5,'Australia','Country in Oceania','Australia, officially the Commonwealth of Australia, is a sovereign country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands. With an area of 7,617,930 square kilometres, Australia is the largest country by area in Oceania and the worlds sixth-largest country.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d65242610.74429888!2d50.7005028153725!3d-3.5660799849772764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2b2bfd076787c5df%3A0x538267a1955b1352!2sAustralia!5e0!3m2!1sen!2slk!4v1666513047311!5m2!1sen!2slk','02.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/02.jpg',0),(6,'Switzerland','Country in Europe','Switzerland is a mountainous Central European country, home to numerous lakes, villages and the high peaks of the Alps. Its cities contain medieval quarters, with landmarks like capital Berns Zytglogge clock tower and Lucernes wooden chapel bridge. The country is also known for its ski resorts and hiking trails. Banking and finance are key industries, and Swiss watches and chocolate are world renowned.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1398183.41587032!2d7.103125349282491!3d46.80771393870235!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x478c64ef6f596d61%3A0x5c56b5110fcb7b15!2sSwitzerland!5e0!3m2!1sen!2slk!4v1666513135223!5m2!1sen!2slk','03.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/03.jpg',0),(7,'Rome','Capital of Italy','Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d190029.01773433204!2d12.395913405746326!3d41.90998597310972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f6196f9928ebb%3A0xb90f770693656e38!2sRome%2C%20Metropolitan%20City%20of%20Rome%2C%20Italy!5e0!3m2!1sen!2slk!4v1666513205143!5m2!1sen!2slk','04.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/04.jpg',0),(8,'Dubai','City in the United Arab Emirates','Dubai is a city and emirate in the United Arab Emirates known for luxury shopping, ultramodern architecture and a lively nightlife scene. Burj Khalifa, an 830m-tall tower, dominates the skyscraper-filled skyline. At its foot lies Dubai Fountain, with jets and lights choreographed to music. On artificial islands just offshore is Atlantis, The Palm, a resort with water and marine-animal parks.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d462562.65097430546!2d54.94729293657361!3d25.07575944944926!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f43496ad9c645%3A0xbde66e5084295162!2sDubai%20-%20United%20Arab%20Emirates!5e0!3m2!1sen!2slk!4v1666513301735!5m2!1sen!2slk','05.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/05.jpg',0),(9,'United States','Country in North America','The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nations presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles Hollywood is famed for filmmaking.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26371761.395654514!2d-113.72550747730446!3d36.21011090736886!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited%20States!5e0!3m2!1sen!2slk!4v1666513388040!5m2!1sen!2slk','06.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/06.jpg',0),(10,'Canada','Country in North America','Canada is a country in North America. Its ten provinces and three territories extend from the Atlantic Ocean to the Pacific Ocean and northward into the Arctic Ocean, covering over 9.98 million square kilometres, making it the worlds second-largest country by total area.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d41294838.71707849!2d-130.1358497711967!3d50.82307022672238!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4b0d03d337cc6ad9%3A0x9968b72aa2438fa5!2sCanada!5e0!3m2!1sen!2slk!4v1666513520928!5m2!1sen!2slk','07.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/07.jpg',0),(11,'China','Country in East Asia','China, officially the Peoples Republic of China, is a country in East Asia. It is the worlds most populous country with a population exceeding 1.4 billion people. China spans five geographical time zones and borders fourteen countries by land, the most of any country in the world, tied with Russia.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26964049.70512511!2d86.0455116098436!3d34.41379914925491!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31508e64e5c642c1%3A0x951daa7c349f366f!2sChina!5e0!3m2!1sen!2slk!4v1666513614919!5m2!1sen!2slk','08.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/08.jpg',0),(12,'South Korea','Country in East Asia','South Korea, an East Asian nation on the southern half of the Korean Peninsula, shares one of the worlds most heavily militarized borders with North Korea. Its equally known for its green, hilly countryside dotted with cherry trees and centuries-old Buddhist temples, plus its coastal fishing villages, sub-tropical islands and high-tech cities such as Seoul, the capital.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3316543.0380909173!2d123.25967027696935!3d35.73085266026977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356455ebcb11ba9b%3A0x91249b00ba88db4b!2sSouth%20Korea!5e0!3m2!1sen!2slk!4v1666513690152!5m2!1sen!2slk','09.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/09.jpg',0),(13,'India','Country in South Asia','India, officially the Republic of India, is a country in South Asia. It is the seventh-largest country by area, the second-most populous country, and the most populous democracy in the world.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30711292.11087169!2d64.43748693609943!3d20.011157599648023!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30635ff06b92b791%3A0xd78c4fa1854213a6!2sIndia!5e0!3m2!1sen!2slk!4v1666513758007!5m2!1sen!2slk','10.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/global/10.jpg',0);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `message` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Diwan Sachidu','diwansachidu2000@gmail.com','0766598143','Excellent','Demo Message'),(3,'ds','dss@gmail.com','0754845127','good','b'),(4,'sachidumaleesha','sachidumaleesha@gmail.com','0745123589','excellent','Superb &#10084;&#65039;'),(5,'kasun','kasun@gmail.com','0766598143','null',''),(6,'cx','cx@gmail.com','0755489632','good','f'),(7,'chamara','chamara@gmail.com','0744548562','excellent','cz'),(8,'ds','ds@gmail.com','074849562','good','df'),(9,'vc','vc@gmail.vom','0784595124','good','Superb '),(10,'cv','vc@gmail.com','0785421336','good','df'),(11,'ds','ds@gail.com','sdf','excellent','sdsdf');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globallistings`
--

DROP TABLE IF EXISTS `globallistings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `globallistings` (
  `listingID` int NOT NULL AUTO_INCREMENT,
  `placeName` varchar(250) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `ageGap` varchar(45) DEFAULT NULL,
  `groupSize` varchar(45) DEFAULT NULL,
  `timeDuration` varchar(45) DEFAULT NULL,
  `startTime` varchar(45) DEFAULT NULL,
  `languages` varchar(250) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `travelAgencyName` varchar(120) DEFAULT NULL,
  `description` varchar(1550) DEFAULT NULL,
  `whatsInclude` varchar(1550) DEFAULT NULL,
  `whatsExpect` varchar(1550) DEFAULT NULL,
  `depature_and_return` varchar(1550) DEFAULT NULL,
  `embedLink` varchar(500) DEFAULT NULL,
  `imageFileName1` varchar(45) DEFAULT NULL,
  `imageFileName2` varchar(45) DEFAULT NULL,
  `imageFileName3` varchar(45) DEFAULT NULL,
  `imageFileName4` varchar(45) DEFAULT NULL,
  `imageFileName5` varchar(45) DEFAULT NULL,
  `imageUploadPath1` varchar(250) DEFAULT NULL,
  `imageUploadPath2` varchar(250) DEFAULT NULL,
  `imageUploadPath3` varchar(250) DEFAULT NULL,
  `imageUploadPath4` varchar(250) DEFAULT NULL,
  `imageUploadPath5` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`listingID`),
  KEY `countryname_idx` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globallistings`
--

LOCK TABLES `globallistings` WRITE;
/*!40000 ALTER TABLE `globallistings` DISABLE KEYS */;
INSERT INTO `globallistings` VALUES (3,'Flagship Amsterdam Open Boat Canal Cruise','Canada','Prinsengracht 263 1016 GV Amsterdam','4-80','30','1 hour','08:00:00 A.M','English','$20','Flagship Amsterdam','Experience the beauty of Amsterdams canals by going on this scenic cruise. Pass by Anne Frank House, the Jordaan, the Houseboat Museum, Leiden Square, Rijksmuseum, De Duif and much more.','<li>Private Skipper and Live Guide</li>\r\n<li>Unique experience on a luxury boat</li>\r\n<li>Friendly atmosphere with a small group of people </li>\r\n<li>Blankets available</li>\r\n<li>Drinks available on purchase</li>','Itinerary\r\nThis is a typical itinerary for this product\r\n<br>\r\nPass By: The Jordaan, Amsterdam The Netherlands\r\n<br>\r\nThe most common theory on the origin of the name is as a derivation of the French word jardin, meaning garden: most streets and canals in the Jordaan are named after trees and flowers. Another theory is that the Prinsengracht canal was once nicknamed Jordaan (the Dutch name for the river Jordan), and that the neighbourhood beyond the canal came to be called this as well. Our Flagship canal tour will stard and end here in the Jordaan\r\n<br>\r\nPass By: Prinsengracht, Amsterdam The Netherlands\r\n<br>\r\nOur boats will cruise the Prinsengracht','Departure details <br>\r\nPrinsengracht 263, 1016 GV Amsterdam, Netherlands\r\nOur boats are in front of the Anne Frank house on the Prinsengracht 263, look for our Flagship Crew in orange clothing. <br>\r\nReturn details <br>\r\nReturns to original departure point','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2435.731579889263!2d4.881842027441499!3d52.375286979787056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c609e6b301c41f%3A0xcffba26734603805!2sFlagship%20Amsterdam%20-%20Canal%20Cruise%20-%20Anne%20Frank!5e0!3m2!1sen!2slk!4v1667134531641!5m2!1sen!2slk','Flagship Amsterdam1.jpg','Flagship Amsterdam2.jpg','Flagship Amsterdam3.jpg','Flagship Amsterdam4.jpg','Flagship Amsterdam5.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Flagship Amsterdam1.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Flagship Amsterdam2.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Flagship Amsterdam3.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Flagship Amsterdam4.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Flagship Amsterdam5.jpg'),(4,'Grouse Mountain Admission','Canada','North Vancouver, BC V7K 1X8','5-80','20','1-3 hour','09:00:00 A.M','English','$49','Grouse Mountain','Escape to the picturesque alpine landscape just outside Vancouver with this admission to Grouse Mountain, a cultural and outdoor park thats perfect for the whole family. Enjoy the chance to observe endangered animals like owls and bears, or watch the parks collection of birds of prey as they soar through the air. You can also enjoy a ride on one of the longest aerial trams in North America, go snowshoeing, and watch a lumberjack show, plus much more. Along with your Grouse Mountain admission, a shuttle is available (first-come first-serve basis) from downtown Vancouver and ride on the parks peak chairlift.','<li>Round-trip Skyride</li\r\n<li>And other experiences. Visit grousemountain.com for details.</li>\r\n<li>Entry/Admission - Grouse Mountain Skyride</li>\r\n<br>\r\nWhats not included\r\n<li>Food and drink</li>\r\n<li>Hotel pickup and drop-off</li>','Escape from Vancouver for a few hours with a visit to Grouse Mountain a year-round theme park celebrating the outdoor and cultural heritage of British Columbia. Get up close and personal with some of the regions incredible wildlife and enjoy fun shows, rides and exhibits, all set among the beautiful forests near Vancouver.\r\n<br>\r\nStart your visit by making your own way to Grouse Mountain, located just 8 miles (13km) from Vancouver at your leisure. If you wish, take advantage of the parks complimentary round-trip shuttle from downtown. The shuttle service is based on a first-come first-serve basis and is not guaranteed.','Return details <br>\r\nReturns to original departure point','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2597.201593263077!2d-123.07833738430688!3d49.386178479342725!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5486654f8a926ebd%3A0x5f3f91dd75c9a3f!2sGrouse%20Mountain!5e0!3m2!1sen!2slk!4v1667138120081!5m2!1sen!2slk','Grouse Mountain1.jpg','Grouse Mountain3.jpg','Grouse Mountain2.jpg','Grouse Mountain4.jpg','Grouse Mountain5.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Grouse Mountain1.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Grouse Mountain3.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Grouse Mountain2.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Grouse Mountain4.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Grouse Mountain5.jpg'),(5,'Niagara Falls CANADA Open-Top Jet-Boat Ride','Canada','55 River Frontage Road, Queenston, ON L0S 1L0','7-80','24','1 hour','09:00:00 A.M','English','$49','Whirlpool Jet Boat Tours','Speed across the churning Niagara Whirlpool aboard a jet boat that can skim over the surface. Prepare to get wet on the adventurous boat ride, which is a high-adrenaline alternative to slower sightseeing boats. Youll see a side of Niagara Falls that many visitors miss, from big waves to swirling water.','<li>Guide<li>\r\n<li>45-minute jet-boat ride</li>\r\n<li>Safety equipment</li>\r\n<li>Pre-trip briefing and safety orientation</li>\r\n<li>Live commentary on board</li>\r\n<li>Local taxes</li>\r\n<li>6% fuel surcharge</li>\r\n<br>\r\nWhats not included\r\n<li>Souvenir photographs (available to purchase)</li>','Its a promise: you will get soaked during this wet and wild trip to the famous white waters of the Niagara Whirlpool. Splash suits are provided but dont forget to bring along a change of clothes for after the ride, as this tour is certain to make a splash!\r\n<br>\r\nThe jet boat tours are fully guided and your river guide will provide an entertaining commentary throughout your ride. The trip lasts approximately 45 minutes (from departure from the dock to return back to the dock) and may just be the most exciting tour of Niagara you will find!','55 River Frontage Road, Niagara-on-the-Lake, ON L0S 1J0, Canada\r\nTurn down Dumfries St. off the Niagara Parkway\r\n<br>\r\nReturn details<br>\r\nReturns to original departure point','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d93123.1429228319!2d-79.15739794401539!3d43.165462489237584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d343141314beef%3A0x909c58a9492e8ba8!2sSee%20Sight%20Tours%20-%20Niagara%20Falls%20Tours%20Canada!5e0!3m2!1sen!2slk!4v1667138912625!5m2!1sen!2slk','Niagara Falls1.jpg','Niagara Falls2.jpg','Niagara Falls3.jpg','Niagara Falls4.jpg','Niagara Falls5.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Niagara Falls1.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Niagara Falls2.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Niagara Falls3.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Niagara Falls4.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Niagara Falls5.jpg'),(6,'Toronto Greatest Hits Walking Audio Tour','Canada','317 Dundas St W, Toronto, ON M5T 1G4','7-80','25','1.30 hour','08:30:00 A.M','English','$4.99','VoiceMap Toronto','See the best of Toronto at your own pace and enjoy a flexible, cost-effective way to discover the city with this self-led audio walking tour. Once downloaded, use the smartphone tour app whenever you like; it functions offline, as do its GPS maps. You will discover the bustle of Yonge and Front Streets; will glimpse landmarks like the CN Tower, Hockey Hall of Fame, and Nathan Phillips Square; and will learn more about the city is highlights and history from the audio commentary.','<li>Lifetime access to Toronto Greatest Hits Walking Audio Tour in English</li>\r\n<li>VoiceMap Application</li>\r\n<li>Offline access to audio, maps, and geodata</li>\r\n<br>\r\nWhat is not included\r\n<br>\r\n<li>Smartphone and headphones</li>\r\n<li>Transportation</li>\r\n<li>Food/Drink</li>\r\n<li>Tickets or entrance fees to any museums or other attractions en route</li>','Itinerary\r\nThis is a typical itinerary for this product\r\n<br>\r\nPass By: Ripleys Aquarium of Canada, 288 Bremner Boulevard, Toronto, Ontario M5V 3L9 Canada\r\n<br>\r\nRipleys Aquarium is Torontos newest attraction. It opened in October 2013. The aquarium is a highly popular attraction in Toronto, and Canadians are also very excited about it. Its the first one weve had here, so the novelty hasnt worn off yet.\r\n<br>\r\nPass By: Steam Whistle Brewery, 255 Bremner Blvd The Roundhouse, Toronto, Ontario M5V 3M9 Canada','Departure details\r\n1 Blue Jays Way, Toronto, ON M5V 1J1, Canada\r\nBefore arrival, please install the VoiceMap mobile app and use the code provided on your confirmation ticket.\r\n\r\n<br>\r\n\r\nReturn details<br>\r\nCOURT HOUSE, 60 Queen St W, Toronto, ON M5H 2M4, Canada','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d184552.57289923605!2d-79.51814227577283!3d43.71815566154314!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b34c5ed5319bd%3A0xda277755ede046af!2sArt%20Gallery%20of%20Ontario!5e0!3m2!1sen!2slk!4v1667140624509!5m2!1sen!2slk','Toronto Greatest Hits Walking Audio Tour1.jpg','Toronto Greatest Hits Walking Audio Tour2.jpg','Toronto Greatest Hits Walking Audio Tour3.jpg','Toronto Greatest Hits Walking Audio Tour4.jpg','Toronto Greatest Hits Walking Audio Tour5.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Toronto Greatest Hits Walking Audio Tour1.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Toronto Greatest Hits Walking Audio Tour2.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Toronto Greatest Hits Walking Audio Tour3.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Toronto Greatest Hits Walking Audio Tour4.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Toronto Greatest Hits Walking Audio Tour5.jpg'),(7,'Toronto, Niagara Falls & Thousand Islands VIP 2�Day Trip','Canada','317 Dundas St W, Toronto, ON M5T 1G4','4-80','50','2 days','08:00:00 A.M','English','$249','Concord Tours and Travel','This 2-day tour is ideal for time-tight travelers who want to squeeze several of Eastern Canadas highlights�some of which are not easily accessible by public transit�into one trip. Avoid renting a car and travel planning, with round-trip transport from Montreal, a cruise around Ontarios Thousand Islands (May�October), and overnight accommodation in Toronto, as well as visits to Niagara Falls and Niagara-on-the-Lake.','<li>Guided boat tour of The 1000 Islands Cruise (May-October)</li>\r\n<li>Hotel accommodation for 1 night</li>\r\n<li>Roundtrip transport from Montreal</li>\r\n<li>Complimentary Roundtrip transport from Montreal hotel within 5 KM of Tourist Information center\r\nTaxes</li>\r\n<li>Niagara Falls Hornblower Cruise (May-October) or Journey behind the Falls (Nov. -April)</li>','Departure details<br>\r\nTraveler pickup is offered.</br>\r\n<li>Hotel pick up is available from Montreal hotel within 5 km radius from 68 Boulevard Ren-Lvesque O, Montral, QC H2Z 1A2, Canada.</li>\r\n<li>Please arrange to pick up from your hotel when you call to confirm your reservation.</li>\r\n<br>\r\nReturn details<br>\r\n<li>Returns to original departure point</li>','<li>Confirmation will be received at time of booking</li>\r\n<li>Not recommended for travelers with back problems</li>\r\n<li>Not recommended for pregnant travelers</li>\r\n<li>No heart problems or other serious medical conditions</li>','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d371267.7980763726!2d-79.60403070229009!3d43.36594777386127!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b34d289cf3b87%3A0x44e7c38c380a38b7!2sTour%20To%20Niagara%20Falls!5e0!3m2!1sen!2slk!4v1667141763234!5m2!1sen!2slk','Toronto5.jpg','Toronto2.jpg','Toronto4.jpg','Toronto3.jpg','Toronto1.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Toronto5.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Toronto2.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Toronto4.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Toronto3.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Toronto1.jpg'),(8,'Small Group tour to Jungfrau, Top of Europe','Switzerland','100 King St W #5600, Toronto, ON M9N 1L3','2-80','15','10 hour','08:00:00 A.M','English','$299','SwissTravelGuide','An unforgettable journey through the Alps at the foot of the majestic Jungfrau - culminating at 3454 meters. After a quick stop at Interlaken, board the Jungfrau rack train from Lauterbrunnen. Arriving at the top you are in the highest railway station in Europe (3454m). Enjoy spectacular views from the highest glacier in Europe. The Sphinx observatory offers one of the best views of the peaks and famous peaks of Eiger and Monch. Wander into the heart of the glacier as you walk through the ice tunnel and experience the Alpine Sensation that traces the history of the Jungfrau.','<li>Bus round trip</li>\r\n<li>Driver guide<li>\r\n<li>Train ticket to Jungfrau</li>\r\n<li>Ice Palace</li>\r\n<li>Sphinx Observatory</li>','tinerary <br>\r\nThis is a typical itinerary for this product <br>\r\n \r\nStop At: Zurich, Zurich <br>\r\n\r\nBoard our Swisstours bus<br>\r\n\r\nDuration: 10 minutes<br>\r\n\r\nStop At: Lauterbrunnen, Switzerland','Departure details <br>\r\nTraveler pickup is offered.<br>\r\nIt will be a Swisstours bus <br>\r\nHotel pickup is offered. View the hotel list on our checkout page to see if yours is included among the pickup points.<br>\r\nReturn details<br>\r\nReturns to original departure point','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2744.010531717819!2d7.983109015594078!3d46.547478479128706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x478f9e274dcbb927%3A0xf74ddfdae33d6ed9!2sJungfraujoch!5e0!3m2!1sen!2slk!4v1667142402114!5m2!1sen!2slk','Jungfrau1.jpg','Jungfrau3.jpg','Jungfrau4.jpg','Jungfrau5.jpg','Jungfrau2.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Jungfrau1.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Jungfrau3.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Jungfrau4.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Jungfrau5.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/globalPlaces/Jungfrau2.jpg');
/*!40000 ALTER TABLE `globallistings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locallistings`
--

DROP TABLE IF EXISTS `locallistings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locallistings` (
  `listingID` int NOT NULL AUTO_INCREMENT,
  `placeName` varchar(250) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `ageGap` varchar(45) DEFAULT NULL,
  `groupSize` varchar(45) DEFAULT NULL,
  `timeDuration` varchar(45) DEFAULT NULL,
  `startTime` varchar(45) DEFAULT NULL,
  `languages` varchar(250) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `travelAgencyName` varchar(120) DEFAULT NULL,
  `description` varchar(1550) DEFAULT NULL,
  `whatsInclude` varchar(1550) DEFAULT NULL,
  `whatsExpect` varchar(1550) DEFAULT NULL,
  `depature_and_return` varchar(1550) DEFAULT NULL,
  `embedLink` varchar(500) DEFAULT NULL,
  `imageFileName1` varchar(45) DEFAULT NULL,
  `imageFileName2` varchar(45) DEFAULT NULL,
  `imageFileName3` varchar(45) DEFAULT NULL,
  `imageFileName4` varchar(45) DEFAULT NULL,
  `imageFileName5` varchar(45) DEFAULT NULL,
  `imageUploadPath1` varchar(250) DEFAULT NULL,
  `imageUploadPath2` varchar(250) DEFAULT NULL,
  `imageUploadPath3` varchar(250) DEFAULT NULL,
  `imageUploadPath4` varchar(250) DEFAULT NULL,
  `imageUploadPath5` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`listingID`),
  KEY `countryname_idx` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locallistings`
--

LOCK TABLES `locallistings` WRITE;
/*!40000 ALTER TABLE `locallistings` DISABLE KEYS */;
INSERT INTO `locallistings` VALUES (11,'Ella 3 Icons Private Tour','Sri lanka','Uva Province','Ella','15-55','24','24 hour','09:00:00 A.M','English','$74.99','Ella Tours','Nestled in Sri Lanka heartlands, Ella is swathed in forest-clad hills, tea plantations, lush peaks, and scenic walking trails. Experience its best-known trio of sights in a day on a private hiking tour which ensures you wont get lost and includes a guide to point out wildlife and places of interest. Hike Ella Rock for stunning views, visit 9-Arch Bridge, and walk up Little Adams Peak for sunset views. A curry-and-rice lunch and private tuk-tuk transport are included.','<li>Lunch</li>\r\n<li>All Fees and Taxes</li>','Itinerary\r\n<br>\r\nTrekking & Hiking to Ella Rock. <br>\r\nHistorical & Architectural Place visit to demodara nine arch bridge. <br>\r\nYou can see evening sundown from Little Adams peak. <br>','Departure details <br>\r\nTraveler pickup is offered. <br>\r\nHotel pickup is offered. View the hotel list on our checkout page to see if yours is included among the pickup points.\r\n\r\n<br><br>\r\nReturn details<br>\r\nReturns to original departure point','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.115066116685!2d81.05865781477264!3d6.876815095030629!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae465cc4e6b3ceb%3A0x71f8fd744e280558!2sNine%20Arches%20Bridge%2C%20Ella!5e0!3m2!1sen!2slk!4v1667156486933!5m2!1sen!2slk','Ella1.jpg','Ella3.jpg','Ella4.jpg','Ella2.jpg','Ella5.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/localPlaces/Ella1.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/localPlaces/Ella3.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/localPlaces/Ella4.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/localPlaces/Ella2.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/localPlaces/Ella5.jpg'),(12,'Trek to Little Adams Peak and Nine Arches Bridge In Ella','Sri lanka','Uva Province','Ella','15-70','12','05 hour','08:00:00 A.M','English','$74.99','Lakpura LLC (Ella)','Experience some of Sri Lankas best highland scenery on a private half-day Little Adams Peak and Nine Arches guided hike from Ella. Climb through tea plantations to the top of Little Adams Peak and enjoy the sweeping views over the islands hill country. Then, cross the Nine Arches rail viaduct to Demodara, where a colonial-era station house presides over a looping track. A relatively easy hike with a stop for breakfast (own expense) on route.','<li>Hotel Pick & Drop Off from Your Hotel in Ella</li>\r\n<li>Local Lunch</li>\r\n<li>Local guide</li>\r\n<li>Refreshment drinks with cookies</li>\r\n<li>Entry/Admission - Nine Arches Bridge</li>','Meet your guide in Ella and set off after an introduction to your hike. Wear a hat and comfortable shoes, and if you wish, bring a packed breakfast.\r\n<br>\r\nStart with a round-trip hike up Little Adams Peak. This verdant 3,743-foot (1,141-meter) hill is named after the bigger, similarly shaped Adams Peak � Sri Lankas fifth highest mountain.\r\n<br>\r\nAscend through the emerald tea plantations, and at the top, admire the spectacular, far-reaching views at their best during morning over the islands central highlands and tea plantations.','Departure details <br>\r\nTraveler pickup is offered.<br>\r\nDeparture Point: Ella Gap Hotel Car Park (address in voucher) <br>\r\n\r\nAddress: Ella - Passara Road, Ella 90000, Sri Lanka <br>\r\n\r\nDates: Daily <br>\r\n\r\nReturn point: Demodara Train Station <br>\r\nElla, Sri Lanka <br>\r\nReturn details <br>\r\nReturns to original departure point','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31693.37932634727!2d80.48187856833859!3d6.809642535003587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae3977589234b59%3A0x8723ad471d5b37dc!2sSri%20Pada%20%2F%20Adam&#39;s%20Peak!5e0!3m2!1sen!2slk!4v1667157255230!5m2!1sen!2slk','Adams Peak2.jpg','Adams Peak1.jpg','Adams Peak3.jpeg','Adams Peak4.jpg','Adams Peak5.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/localPlaces/Adams Peak2.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/localPlaces/Adams Peak1.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/localPlaces/Adams Peak3.jpeg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/localPlaces/Adams Peak4.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/localPlaces/Adams Peak5.jpg');
/*!40000 ALTER TABLE `locallistings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `managerID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `adminID` int DEFAULT '0',
  PRIMARY KEY (`managerID`),
  KEY `adminID_idx` (`adminID`),
  CONSTRAINT `adminID` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'tourguide','manager','manager','manager@gmail.com','manager','0774547841','male',0);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentID` int NOT NULL AUTO_INCREMENT,
  `country` varchar(45) DEFAULT NULL,
  `placeName` varchar(250) DEFAULT NULL,
  `adults` varchar(45) DEFAULT NULL,
  `child` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `datebooked` varchar(45) DEFAULT NULL,
  `nameOnCard` varchar(45) DEFAULT NULL,
  `cardNumber` varchar(45) DEFAULT NULL,
  `userID` int DEFAULT NULL,
  `managerID` int DEFAULT '0',
  PRIMARY KEY (`paymentID`),
  KEY `userID_idx` (`userID`),
  KEY `managerID_idx` (`managerID`),
  CONSTRAINT `managerIDs` FOREIGN KEY (`managerID`) REFERENCES `manager` (`managerID`),
  CONSTRAINT `userIDs` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (9,'Canada','Grouse Mountain Admission','1','2','98','2022-11-18','Ds','78455',4,1),(10,'Canada','Flagship Amsterdam Open Boat Canal Cruise','1','5','70','2022-11-24','cx','8798',4,1),(12,'Sri lanka','Ella 3 Icons Private Tour','1','2','149.98','2022-11-24','ds','7894',1,1);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `provinceID` int NOT NULL AUTO_INCREMENT,
  `provinceName` varchar(45) DEFAULT NULL,
  `capital` varchar(45) DEFAULT NULL,
  `districts` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `embedLink` varchar(750) DEFAULT NULL,
  `imageFileName` varchar(45) DEFAULT NULL,
  `uploadPath` varchar(500) DEFAULT NULL,
  `adminID` int DEFAULT '0',
  PRIMARY KEY (`provinceID`),
  KEY `adminIDp_idx` (`adminID`),
  CONSTRAINT `adminIDp` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (3,'Central Province','Kandy','Kandy, Matale, Nuwara Eliya','The Central Province is one of the nine provinces of Sri Lanka, the first level administrative division of the country. The Central Province is primarily in the central mountainous terrain of Sri Lanka. It is the 6th largest province by area and is home to 2.5 million people.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1012931.3700286034!2d80.15845379561684!3d7.380418231442995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae344d7d465445d%3A0x7e8a7802c1e08eae!2sCentral%20Province!5e0!3m2!1sen!2slk!4v1666540809318!5m2!1sen!2slk','Central Province.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/provinces/Central Province.jpg',0),(4,'North Central Province','Anuradhapura','Anuradhapura, Polonnaruwa','North Central Province is one of the nine provinces of Sri Lanka, the first level administrative division of the country. The provinces have existed since the 19th century but did not have any legal status until 1987 when the 13th Amendment to the Constitution of Sri Lanka established provincial councils.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1010738.6080407653!2d79.49629456305598!3d8.28311458702525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3afc8614170f6185%3A0x59787d0e74035e64!2sNorth%20Central%20Province!5e0!3m2!1sen!2slk!4v1666540937304!5m2!1sen!2slk','North Central province.png','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/provinces/North Central province.png',0),(5,'Northern Province','Jaffna','Jaffna, Kilinochchi, Mannar, Vavuniya, Mullativu, Alambil','The Northern Province is one of the nine provinces of Sri Lanka, the first level administrative division of the country. The provinces have existed since the 19th century but did not have any legal status until 1987 when the 13th Amendment to the Constitution of Sri Lanka established provincial councils.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1008315.084482688!2d79.74696144746267!3d9.178738313923926!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3afdb5e45096324b%3A0x7dd583a640795aa4!2sNorthern%20Province!5e0!3m2!1sen!2slk!4v1666541044119!5m2!1sen!2slk','Nothern province.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/provinces/Nothern province.jpg',0),(6,'Eastern Province','Trincomalee','Ampara, Batticaloa, Trincomalee','The Eastern Province is one of the nine provinces of Sri Lanka, the first level administrative division of the country. The provinces have existed since the 19th century but did not have any legal status until 1987 when the 13th Amendment to the Constitution of Sri Lanka established provincial councils.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2024144.4608719829!2d80.19444502468217!3d7.746565980320011!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3afbfbbd1055942d%3A0x783ebf0b381408bd!2sEastern%20Province!5e0!3m2!1sen!2slk!4v1666541199041!5m2!1sen!2slk','eastern province.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/provinces/eastern province.jpg',0),(7,'North Western Province','Kurunegala','Kurunagala, Puttalam','North Western Province is a province of Sri Lanka. The province consists of the districts of Kurunegala and Puttalam. Its capital is Kurunegala, which has a population of 28,571. The province is known mainly for its numerous coconut plantations.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1011673.8960136195!2d78.98545823327203!3d7.910613168909296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae33a1dda4696fd%3A0x845d62e148814fe8!2sNorth%20Western%20Province!5e0!3m2!1sen!2slk!4v1666541319329!5m2!1sen!2slk','North western province.png','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/provinces/North western province.png',0),(8,'Southern Province','Galle','Galle, Hambanthota, Mathara','The Southern Province of Sri Lanka is one of the nine provinces of Sri Lanka, the first level administrative division of the country. The provinces have existed since the 19th century but did not have any legal status until 1987 when the 13th Amendment to the Constitution of Sri Lanka established provincial councils.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1015324.6386713614!2d80.2867892239403!3d6.248986843172403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae173bad9013377%3A0x44238fe850f6f47e!2sSouthern%20Province!5e0!3m2!1sen!2slk!4v1666541410687!5m2!1sen!2slk','southern-province.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/provinces/southern-province.jpg',0),(9,'Uva Province','Badulla','Badulla, Monaragala','Uva Province is Sri Lankas second least populated province, with 1,259,880 people, created in 1896. It consists of two districts: Badulla and Moneragala. The provincial capital is Badulla. Uva is bordered by the Eastern, Southern, Sabaragamuwa, and Central provinces.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1013868.6876692646!2d80.64583157175656!3d6.9591408115814986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae4623e4bd94c8b%3A0xeedc5d56edcdbc88!2sUva%20Province!5e0!3m2!1sen!2slk!4v1666541509855!5m2!1sen!2slk','Uva province.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/provinces/Uva province.jpg',0),(10,'Sabaragamuwa Province','Ratnapura','Kegalle, Rathnapura','The Sabaragamuwa Province is one of the nine provinces of Sri Lanka, the first level administrative division of the country. The provinces have existed since the 19th century but did not have any legal status until 1987 when the 13th Amendment to the Constitution of Sri Lanka established provincial councils.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1014185.0125235494!2d79.40016495007951!3d6.811121240384454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae316ac26047fc1%3A0x74876cdd719ffca5!2sSabaragamuwa%20Province!5e0!3m2!1sen!2slk!4v1666541603272!5m2!1sen!2slk','sabaragamu province.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/provinces/sabaragamu province.jpg',0),(11,'Western Province','Colombo','Colombo, Gampaha, Kaluthara','Colombo is the executive and judicial capital and largest city of Sri Lanka by population. According to the Brookings Institution, Colombo metropolitan area has a population of 5.6 million, and 752,993 in the Municipality. It is the financial centre of the island and a tourist destination.','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1014150.6784284858!2d79.53848245439957!3d6.827341886544303!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae252b449969b99%3A0xa7c02f96941c3026!2sWestern%20Province!5e0!3m2!1sen!2slk!4v1666541694264!5m2!1sen!2slk','western province.jpg','C:/Users/Diwan Sachidu/Desktop/OOP Project 2.0/TravelGuide/src/main/webapp/images/provinces/western province.jpg',0);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourguide`
--

DROP TABLE IF EXISTS `tourguide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourguide` (
  `tourguideID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `managerID` int DEFAULT '1',
  PRIMARY KEY (`tourguideID`),
  KEY `managerID_idx` (`managerID`),
  CONSTRAINT `managerID` FOREIGN KEY (`managerID`) REFERENCES `manager` (`managerID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourguide`
--

LOCK TABLES `tourguide` WRITE;
/*!40000 ALTER TABLE `tourguide` DISABLE KEYS */;
INSERT INTO `tourguide` VALUES (2,'tour','guide','tourguide','tourguide@gmail.com','tourguide','0745869852','male',1);
/*!40000 ALTER TABLE `tourguide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Diwan','Maleesha','diwansachidu','diwansachidu@gmail.com','asd','0766598143','male'),(2,'kasun','chamara','kasunchamara','kasunchamara@gmail.com','asd','0745215234','Male'),(4,'tourguide','user','user','user@gmail.com','user','756598143','male');
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

-- Dump completed on 2022-11-07 12:10:07
