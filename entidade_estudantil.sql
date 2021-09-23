-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_entidade_estudantil
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

create database sistema_entidade_estudantil;
use sistema_entidade_estudantil;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
    `id_cliente` serial NOT NULL,
    `id_pessoa` serial NOT NULL,
    `id_empresa` serial NOT NULL,
    PRIMARY KEY (`id_cliente`),
    KEY `cliente_empresa` (`empresa_id_empresa`),
    KEY `cliente_pessoa` (`pessoa_id_pessoa`),
    CONSTRAINT `cliente_empresa` FOREIGN KEY (`empresa_id_empresa`) REFERENCES `empresa` (`id_empresa`),
    CONSTRAINT `cliente_pessoa` FOREIGN KEY (`pessoa_id_pessoa`) REFERENCES `pessoa` (`id_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
    
--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,3,38),(2,87,71),(3,28,18),(4,81,1),(5,97,96),(6,83,28),(7,45,58),(8,32,44),(9,37,87),(10,8,23),(11,17,88),(12,56,50),(13,81,85),(14,4,55),(15,52,55),(16,15,50),(17,96,73),(18,78,1),(19,23,14),(20,35,47),(21,7,1),(22,85,46),(23,96,30),(24,76,90),(25,87,8),(26,14,58),(27,97,95),(28,98,86),(29,94,25),(30,28,96),(31,65,92),(32,69,40),(33,13,44),(34,90,18),(35,17,99),(36,86,21),(37,82,77),(38,82,26),(39,100,99),(40,12,96),(41,27,21),(42,39,33),(43,65,12),(44,38,85),(45,6,15),(46,22,54),(47,32,70),(48,46,3),(49,57,35),(50,60,36),(51,51,22),(52,18,81),(53,82,42),(54,29,98),(55,91,98),(56,72,51),(57,55,93),(58,83,9),(59,43,21),(60,15,48),(61,6,35),(62,34,69),(63,51,57),(64,53,74),(65,96,5),(66,71,37),(67,64,37),(68,97,13),(69,26,35),(70,61,4),(71,16,59),(72,92,15),(73,19,66),(74,18,85),(75,49,30),(76,54,6),(77,62,16),(78,10,69),(79,69,24),(80,36,70),(81,94,55),(82,68,63),(83,26,62),(84,2,26),(85,36,16),(86,3,59),(87,86,93),(88,41,47),(89,96,11),(90,34,93),(91,60,75),(92,26,16),(93,49,14),(94,87,77),(95,89,24),(96,26,72),(97,32,60),(98,69,21),(99,85,79),(100,71,20);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
    `id_empresa` serial NOT NULL,
    `cnpj` char(14) NOT NULL,
    `nome` varchar(60) NOT NULL,
    `cep` char(8) NOT NULL,
    `porte_empresa` varchar(60) NOT NULL,
    `tipo_societario` varchar(60) NOT NULL,
    PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'34980661164714','O''Conner-Swift','76367868','GE','MEI'),(2,'48599311333880','Gorczany,SchaeferandYundt','99771278','GE','sociedadelimitada'),(3,'02152016098363','Beahan,LarsonandLittle','00382579','GE','EIRELI'),(4,'22625109990978','MacGyverGroup','74449386','MEI','EIRELI'),(5,'91323355534515','Greenfelder,MohrandKonopelski','29467222','EPP','sociedadesimples'),(6,'75284403951971','Hackett-Hills','68570283','EMP','MEI'),(7,'81087516593511','WelchInc','07455208','GE','empresarioindividual'),(8,'65774970241989','Daugherty,JohnsandHagenes','59961432','EPP','sociedadelimitada'),(9,'05349831561153','Johnson-Hermiston','77203315','ME','sociedadeanonima'),(10,'55785240842735','KeeblerGroup','32380774','MEI','sociedadeanonima'),(11,'45181590354269','KrajcikGroup','14512368','GE','EIRELI'),(12,'18290371001221','Schmitt-Stehr','12021343','ME','sociedadelimitada'),(13,'15590989005682','Bayer-Lehner','71583413','ME','sociedadesimples'),(14,'65854857084893','StiedemannGroup','25589391','MEI','sociedadeempresaria'),(15,'40858181034630','Thiel,RaynorandLeannon','98142803','GE','empresarioindividual'),(16,'08991530344882','Mueller,LangoshandHarvey','37275425','ME','sociedadeanonima'),(17,'19600364043800','Rolfson,ChamplinandWilliamson','02662497','EMP','sociedadeempresaria'),(18,'96317639145363','Aufderhar,OkunevaandCarroll','33652934','EPP','sociedadeanonima'),(19,'10230719058983','Russel-Lang','39824081','GE','sociedadelimitada'),(20,'35210938645699','Durgan-Kulas','94625449','ME','sociedadeempresaria'),(21,'76001065420893','Heaney,GleasonandVolkman','52860228','MEI','empresarioindividual'),(22,'57237551315507','Yost-Ledner','81123660','MEI','sociedadesimples'),(23,'06364341745777','Botsford-Bogan','68130139','GE','sociedadeempresaria'),(24,'14739174639135','Lind-Gerlach','53057548','MEI','sociedadesimples'),(25,'99149768448437','Hodkiewicz,SwiftandStehr','06644864','EPP','sociedadelimitada'),(26,'24356387114436','Dietrich-White','84167015','GE','sociedadesimples'),(27,'45564828931122','Schroeder-Rath','95397148','EPP','empresarioindividual'),(28,'76877748621382','Quitzon,ZiemeandCummerata','49628461','GE','sociedadelimitada'),(29,'30385923528921','MannandSons','05841187','EPP','MEI'),(30,'21764100856761','ReichelInc','24221555','ME','MEI'),(31,'75350990567527','HellerInc','71988409','GE','sociedadesimples'),(32,'96085378279333','HeathcoteInc','80698851','EMP','sociedadeanonima'),(33,'48308237865020','Medhurst-Ward','65470763','ME','sociedadelimitada'),(34,'30926923750894','Cummerata-Christiansen','84174883','MEI','sociedadeanonima'),(35,'08280234333176','Zieme,JohnsandBeier','62708053','MEI','sociedadelimitada'),(36,'27028498210859','Kuphal-Weimann','73120793','GE','EIRELI'),(37,'93918603841978','Kunze-Schroeder','20353636','EMP','sociedadeempresaria'),(38,'12154118546135','BlickandSons','11335385','MEI','empresarioindividual'),(39,'34407737020244','Torphy,HoegerandJacobs','99351864','ME','MEI'),(40,'16357641716441','Keebler-Feeney','13766347','MEI','empresarioindividual'),(41,'86707102860500','Halvorson,JohnstonandLang','55713913','MEI','empresarioindividual'),(42,'23100408676930','Frami-Bosco','79346796','EPP','MEI'),(43,'94040232668984','SchmelerandSons','57000583','GE','sociedadelimitada'),(44,'83598764536845','Shanahan,WisozkandKrajcik','54045024','MEI','sociedadesimples'),(45,'96583694336471','Wilkinson,JohnstonandRice','02680778','GE','sociedadesimples'),(46,'14423905075227','Jacobs-Hilpert','38295455','EMP','sociedadesimples'),(47,'48439809184800','Cruickshank-Bogan','47959635','ME','sociedadeempresaria'),(48,'05657018517963','Heidenreich-Walker','52326325','MEI','EIRELI'),(49,'53625290233192','O''Keefe,AbernathyandBreitenberg','60462457','ME','sociedadelimitada'),(50,'03995239284423','Buckridge,LeannonandLind','97909692','EPP','MEI'),(51,'44721871312327','GerlachGroup','84391194','EPP','empresarioindividual'),(52,'49956784409509','Schaden-Flatley','50970536','EMP','sociedadesimples'),(53,'64143999137806','Emard-Hauck','40560296','ME','EIRELI'),(54,'55589619210720','McGlynn,KleinandLedner','78108604','GE','sociedadelimitada'),(55,'04793991710973','KeeblerInc','09147220','GE','empresarioindividual'),(56,'31429676048171','Beer-Hagenes','13416804','EMP','sociedadeanonima'),(57,'65205256751986','Casper,HartmannandSchumm','81255530','GE','sociedadeempresaria'),(58,'95482167174510','Cassin-Heller','08282841','EMP','EIRELI'),(59,'63826407081230','Wisozk,DooleyandSimonis','12172939','GE','sociedadesimples'),(60,'44440433781917','YundtInc','90821138','EMP','EIRELI'),(61,'86694037440160','O''Connell-Herzog','46943700','GE','sociedadeempresaria'),(62,'59187282097202','Bergnaum-Schmitt','82118276','GE','sociedadeempresaria'),(63,'89456735470789','Ankunding,SkilesandBeer','63819341','EMP','EIRELI'),(64,'08198406244015','SimonisInc','46215820','GE','sociedadelimitada'),(65,'35138684623732','Luettgen,SchowalterandBins','92186028','ME','sociedadeanonima'),(66,'13123131545222','Renner-O''Conner','28982343','MEI','sociedadeanonima'),(67,'18249993812154','RunolfssonGroup','16079629','ME','sociedadesimples'),(68,'82008609084865','Armstrong-Moore','31073211','MEI','sociedadeanonima'),(69,'90187676105687','Koch,ReichertandKoch','33037297','GE','sociedadelimitada'),(70,'05028298889949','HoweGroup','99748448','EPP','EIRELI'),(71,'21652981107299','WeimannInc','50404888','GE','sociedadeanonima'),(72,'21217709241603','Boehm,O''ReillyandTerry','35896203','MEI','EIRELI'),(73,'65876279041032','BednarGroup','92880171','MEI','sociedadeanonima'),(74,'92243141837157','Schowalter,KrajcikandQuigley','68942393','EPP','sociedadeanonima'),(75,'18869954881126','ShanahanLLC','02296931','EPP','sociedadesimples'),(76,'36137676422113','Goodwin,LeuschkeandJacobs','21503257','EPP','sociedadeempresaria'),(77,'82052738065123','Cole,MurazikandD''Amore','36204799','EMP','sociedadelimitada'),(78,'64660788543474','Erdman,RogahnandWeber','15938888','GE','MEI'),(79,'82745493641649','Mayer-Dooley','87347027','GE','sociedadeanonima'),(80,'19501433505121','SpinkaGroup','90475940','GE','sociedadeempresaria'),(81,'58864374138802','Greenfelder,StehrandLuettgen','30901455','EPP','sociedadeempresaria'),(82,'80480236609860','FaheyandSons','10366910','MEI','empresarioindividual'),(83,'83760227480205','Mueller-Dare','64447151','MEI','MEI'),(84,'68562212314723','Schamberger,McCulloughandMacejkovic','98431956','EMP','sociedadeempresaria'),(85,'64791708147573','Trantow-Blick','19055260','GE','sociedadesimples'),(86,'61686607808845','Rodriguez-Jerde','80777440','GE','sociedadeanonima'),(87,'66395425771485','Pfeffer-Reilly','27908990','EMP','sociedadelimitada'),(88,'14661109942870','Aufderhar-Kovacek','93490347','EMP','sociedadeempresaria'),(89,'84160283636573','Macejkovic,KirlinandBlock','59691161','MEI','EIRELI'),(90,'99506094616236','KesslerGroup','30422746','EPP','sociedadeempresaria'),(91,'94770861140859','WehnerLLC','76154490','EPP','sociedadeanonima'),(92,'50675822399112','SchusterLLC','36621715','EPP','sociedadesimples'),(93,'63221895677408','Gutmann-Bergnaum','33234471','EPP','sociedadeanonima'),(94,'55174113962020','Cassin,CummingsandBlick','30543535','EMP','EIRELI'),(95,'62444928083689','McDermott,CummingsandSkiles','13303909','EMP','sociedadeempresaria'),(96,'15987475184758','Kris,RyanandChamplin','21010093','EPP','sociedadeempresaria'),(97,'77744409638206','Bosco-Cartwright','58175319','ME','sociedadelimitada'),(98,'98864754732117','RobelandSons','41085186','EPP','sociedadeanonima'),(99,'15551160403319','LarsonLLC','76291302','GE','sociedadeempresaria'),(100,'67352208381428','SchusterInc','22161000','EPP','sociedadeempresaria');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidade`
--

DROP TABLE IF EXISTS `entidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entidade` (
    `id_entidade` serial NOT NULL,
    `nome` varchar(60) NOT NULL,
    `saldo` float(9,2) NOT NULL,
    PRIMARY KEY (`id_entidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidade`
--

LOCK TABLES `entidade` WRITE;
/*!40000 ALTER TABLE `entidade` DISABLE KEYS */;
INSERT INTO `entidade` VALUES (1,'RolfsonInc',50047.76),(2,'Pacocha,HoweandBauch',50113.7),(3,'CroninLLC',50006.14),(4,'BuckridgeGroup',49960.23),(5,'Ankunding-Hirthe',49926.45),(6,'Roob-Jacobson',50108.47),(7,'DeckowandSons',50072.58),(8,'McDermottInc',50048.09),(9,'Buckridge-Kuhlman',50117.59),(10,'BrakusInc',50076.06),(11,'Kris,EmardandPfannerstill',49933.97),(12,'Ernser-Hyatt',50011.06),(13,'KovacekGroup',50013.93),(14,'Kovacek,WeissnatandZiemann',50088.34),(15,'Jerde,TrantowandUpton',49898.95),(16,'Gleichner,CormierandZboncak',49998.93),(17,'ZulaufGroup',50141.85),(18,'LarkinLLC',49948.69),(19,'WillLLC',50066.39),(20,'DuBuqueInc',49951.88),(21,'McCullough,O''ConnellandWilliamson',50027.87),(22,'Beatty,CarterandKessler',50076.57),(23,'Funk,CarterandJohns',50074.33),(24,'MacGyver-VonRueden',49914.95),(25,'Bauch,BednarandShanahan',50185.72),(26,'Considine-Trantow',50038.81),(27,'NicolasandSons',49881.84),(28,'Baumbach-Champlin',50057.75),(29,'Greenholt-Raynor',50138.13),(30,'RatkeInc',49989.27),(31,'Hauck-Corwin',50016.84),(32,'Ratke,JakubowskiandLindgren',50100.27),(33,'Turner-Shields',50153.68),(34,'NaderGroup',50123.18),(35,'Daugherty,FriesenandWelch',50182.79),(36,'Johns-Welch',50091.68),(37,'LefflerLLC',49876.84),(38,'TillmanandSons',49923.44),(39,'Gusikowski-Anderson',50144.37),(40,'O''Hara,SpencerandHerzog',49984.44),(41,'Bergnaum,BartolettiandFahey',50005.2),(42,'Howe,StoltenbergandMonahan',50106.06),(43,'Kris,KovacekandSchmeler',49859.34),(44,'HoweInc',50068.5),(45,'Thompson-Yundt',50079.17),(46,'Homenick,BorerandStamm',49823.12),(47,'DavisandSons',49997.84),(48,'Steuber,WehnerandKirlin',50009.34),(49,'Torphy-Terry',50044.93),(50,'Armstrong-Feeney',50066.78),(51,'West,TreutelandGaylord',49816.06),(52,'Kertzmann,FunkandFisher',49994.93),(53,'Lebsack,LoweandWiza',50004.06),(54,'KshlerinLLC',49890.11),(55,'ReichertandSons',49957.88),(56,'BashirianandSons',49763.82),(57,'Hirthe-Keebler',50128.76),(58,'Kiehn,GleichnerandBogan',50029.04),(59,'Heathcote,AbbottandTorphy',49917.09),(60,'PollichandSons',49893.63),(61,'GrimesLLC',50038.72),(62,'Lockman-Grady',50073.89),(63,'Denesik,HermanandAnderson',50046.72),(64,'Boyle,SchambergerandKoch',50019.55),(65,'Gleason-Torphy',50031.97),(66,'DickinsonandSons',49923.53),(67,'SanfordandSons',49935.9),(68,'Fadel,KirlinandWiegand',50104.81),(69,'Quitzon-Stiedemann',50028.65),(70,'Yundt,DavisandHuel',49954.17),(71,'Gislason-DuBuque',49946.83),(72,'HettingerInc',50052.73),(73,'Connelly,OrnandZemlak',50060.91),(74,'Wehner,SatterfieldandBatz',50105.32),(75,'Abshire-Stracke',49845.66),(76,'CorkeryandSons',49997.83),(77,'Kautzer-Monahan',50051.42),(78,'MurazikandSons',49916.0),(79,'Wintheiser-McGlynn',49974.23),(80,'Carter,HandandKris',49997.75),(81,'KuhicGroup',49884.39),(82,'HoweandSons',49982.81),(83,'O''Keefe,McCulloughandBrekke',50008.82),(84,'HellerInc',50031.41),(85,'Zboncak-Toy',49962.47),(86,'AufderharGroup',49887.89),(87,'Huels-Heathcote',49955.24),(88,'Yundt-Miller',50190.37),(89,'Anderson,BeattyandKuhn',50069.23),(90,'Towne,NikolausandBrakus',49802.58),(91,'Ritchie,SchuppeandGreenfelder',49883.78),(92,'Abernathy-Kemmer',49988.03),(93,'Harvey,QuigleyandHansen',49772.12),(94,'Wunsch-Cronin',49914.7),(95,'Bins,LittelandKreiger',50026.59),(96,'BartolettiandSons',49829.7),(97,'Hickle-Hahn',50025.79),(98,'Kemmer-Schowalter',50145.61),(99,'Effertz,HermistonandHarvey',49935.24),(100,'Bednar,DareandKunze',50066.86);
/*!40000 ALTER TABLE `entidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membro`
--

DROP TABLE IF EXISTS `membro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membro` (
    `id_membro` serial NOT NULL,
    `id_pessoa` serial NOT NULL,
    `id_entidade` serial NOT NULL,
    `curso` varchar(60) NOT NULL,
    `cargo` varchar(60) NOT NULL,
    `area` varchar(60) NOT NULL,
    `data_entrada` date NOT NULL,
    `data_saida` date NULL,
    PRIMARY KEY (`id_membro`),
    KEY `membro_entidade` (`entidade_id_entidade`),
    KEY `membro_pessoa` (`pessoa_id_pessoa`),
    CONSTRAINT `membro_entidade` FOREIGN KEY (`entidade_id_entidade`) REFERENCES `entidade` (`id_entidade`),
    CONSTRAINT `membro_pessoa` FOREIGN KEY (`pessoa_id_pessoa`) REFERENCES `pessoa` (`id_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
    
--
-- Dumping data for table `membro`
--

LOCK TABLES `membro` WRITE;
/*!40000 ALTER TABLE `membro` DISABLE KEYS */;
INSERT INTO `membro` VALUES (1,95,24,'DIREITO','senior','gestao','12/10/2016',null),(2,41,42,'SOCIAIS','diretor','digital','4/8/2007',null),(3,87,96,'DIREITO','vicepresidente','gestao','7/5/2010','15/11/2020'),(4,26,97,'SOCIAIS','presidente','comercial','10/12/2006',null),(5,74,33,'DIREITO','vicepresidente','marketing','26/12/1990',null),(6,69,47,'ECONOMIA','junior','projetos','28/8/2002','7/11/2020'),(7,20,90,'SOCIAIS','junior','comercial','6/8/2001',null),(8,26,4,'EBAPE','junior','marketing','27/2/2011','14/3/2021'),(9,97,57,'CD','junior','digital','9/4/2001','1/2/2021'),(10,24,80,'SOCIAIS','presidente','digital','14/6/1997','16/2/2021'),(11,13,8,'MAP','junior','projetos','2/6/1994',null),(12,41,87,'ECONOMIA','junior','digital','22/7/2016','17/5/2021'),(13,52,2,'EBAPE','senior','gestao','8/5/1994','20/4/2021'),(14,31,25,'MAP','senior','gestao','14/1/2009','14/12/2020'),(15,51,94,'DIREITO','vicepresidente','comercial','20/2/1992','20/4/2021'),(16,10,96,'EBAPE','senior','marketing','19/7/2020','24/4/2021'),(17,41,82,'DIREITO','vicepresidente','projetos','26/1/2002','2/10/2020'),(18,1,56,'DIREITO','vicepresidente','digital','15/5/1998',null),(19,58,11,'EBAPE','presidente','digital','4/1/2018','30/11/2020'),(20,40,65,'ECONOMIA','senior','projetos','26/3/1995','26/4/2021'),(21,34,34,'MAP','vicepresidente','gestao','17/9/1999','19/5/2021'),(22,86,27,'SOCIAIS','senior','projetos','11/11/2000','22/1/2021'),(23,40,23,'MAP','presidente','digital','29/1/1998',null),(24,57,32,'ECONOMIA','junior','digital','23/8/2017',null),(25,77,58,'DIREITO','presidente','digital','4/3/2014','3/3/2021'),(26,2,15,'MAP','junior','gestao','17/12/1994',null),(27,6,15,'CD','senior','gestao','2/4/1997','17/2/2021'),(28,83,40,'MAP','diretor','gestao','21/1/2017',null),(29,65,94,'CD','vicepresidente','comercial','14/1/1996',null),(30,91,74,'EBAPE','diretor','comercial','6/2/2008',null),(31,9,86,'CD','presidente','gestao','3/6/2014',null),(32,28,35,'DIREITO','senior','digital','5/2/2012',null),(33,83,81,'MAP','junior','comercial','31/3/2003','17/10/2020'),(34,32,20,'DIREITO','vicepresidente','marketing','17/1/2013','20/4/2021'),(35,50,47,'DIREITO','junior','digital','13/4/1996',null),(36,24,8,'MAP','senior','comercial','23/8/2014','14/4/2021'),(37,77,46,'DIREITO','senior','comercial','14/1/1996','21/5/2021'),(38,33,75,'EBAPE','junior','marketing','2/4/1997',null),(39,76,58,'DIREITO','diretor','projetos','6/11/2005','25/2/2021'),(40,80,57,'DIREITO','diretor','comercial','22/3/2011','27/11/2020'),(41,8,14,'CD','vicepresidente','digital','9/8/1996','28/2/2021'),(42,46,11,'DIREITO','diretor','marketing','28/7/2013','3/12/2020'),(43,79,36,'ECONOMIA','junior','projetos','25/9/1998','27/2/2021'),(44,51,13,'CD','diretor','projetos','6/7/2007',null),(45,45,43,'SOCIAIS','junior','digital','30/10/1994','9/5/2021'),(46,86,70,'EBAPE','junior','projetos','17/8/1993',null),(47,22,91,'CD','presidente','comercial','9/8/1998',null),(48,83,46,'EBAPE','presidente','marketing','13/6/2008',null),(49,26,6,'SOCIAIS','junior','gestao','6/9/2014','1/2/2021'),(50,70,25,'EBAPE','vicepresidente','digital','18/11/2015',null),(51,67,13,'DIREITO','junior','projetos','29/11/2012',null),(52,47,41,'EBAPE','senior','marketing','21/3/2009','17/5/2021'),(53,56,7,'EBAPE','junior','gestao','19/12/2011',null),(54,35,12,'DIREITO','presidente','projetos','10/9/1998',null),(55,85,20,'MAP','senior','comercial','25/4/2016',null),(56,4,56,'CD','presidente','comercial','28/10/2002',null),(57,41,65,'CD','senior','digital','2/7/2009','3/12/2020'),(58,33,79,'SOCIAIS','junior','marketing','5/2/1992',null),(59,33,10,'EBAPE','vicepresidente','digital','15/11/2013',null),(60,67,50,'SOCIAIS','senior','gestao','30/9/2011',null),(61,14,58,'MAP','junior','marketing','13/2/2016','28/11/2020'),(62,13,5,'SOCIAIS','vicepresidente','comercial','3/7/1998','24/3/2021'),(63,20,45,'CD','diretor','marketing','3/2/1992','9/3/2021'),(64,22,53,'CD','senior','marketing','12/10/2017',null),(65,16,87,'ECONOMIA','vicepresidente','marketing','19/10/2014','24/10/2020'),(66,13,100,'SOCIAIS','senior','comercial','14/9/1993',null),(67,47,54,'SOCIAIS','diretor','digital','5/11/1999','11/1/2021'),(68,97,21,'DIREITO','senior','comercial','17/5/2021',null),(69,65,69,'DIREITO','presidente','digital','24/6/1997','1/4/2021'),(70,11,92,'CD','senior','comercial','9/3/2006','2/10/2020'),(71,50,83,'ECONOMIA','vicepresidente','comercial','24/6/2007',null),(72,20,55,'EBAPE','diretor','projetos','23/11/2001','28/2/2021'),(73,55,60,'EBAPE','vicepresidente','projetos','17/5/2021','2/5/2021'),(74,50,9,'MAP','senior','marketing','29/11/1995','13/1/2021'),(75,32,49,'MAP','senior','projetos','27/11/2007','18/1/2021'),(76,76,19,'DIREITO','senior','projetos','25/3/2010',null),(77,45,18,'SOCIAIS','senior','digital','1/2/2008',null),(78,94,25,'DIREITO','vicepresidente','projetos','7/12/1991',null),(79,74,56,'SOCIAIS','vicepresidente','comercial','25/2/2008',null),(80,54,98,'ECONOMIA','presidente','marketing','17/11/1992','2/4/2021'),(81,51,5,'SOCIAIS','senior','comercial','10/10/2004','23/9/2020'),(82,41,17,'DIREITO','presidente','gestao','27/5/2007','22/9/2020'),(83,58,58,'DIREITO','senior','projetos','12/9/2016','25/10/2020'),(84,94,95,'CD','senior','comercial','4/6/2008','4/10/2020'),(85,33,21,'DIREITO','junior','gestao','31/7/2011','7/1/2021'),(86,9,93,'SOCIAIS','vicepresidente','gestao','24/11/2020',null),(87,23,27,'DIREITO','presidente','marketing','1/2/2007',null),(88,66,85,'ECONOMIA','junior','projetos','15/1/1992',null),(89,15,94,'ECONOMIA','presidente','comercial','14/8/1994','6/12/2020'),(90,36,81,'EBAPE','presidente','projetos','21/9/1997',null),(91,80,11,'DIREITO','junior','marketing','21/6/1991','9/1/2021'),(92,36,4,'CD','diretor','gestao','30/3/2009','18/4/2021'),(93,76,85,'EBAPE','junior','digital','15/9/2011',null),(94,22,57,'CD','junior','projetos','22/2/1998','6/5/2021'),(95,36,100,'EBAPE','senior','marketing','9/2/2020',null),(96,51,86,'ECONOMIA','vicepresidente','marketing','12/3/2021','22/11/2020'),(97,84,7,'ECONOMIA','diretor','comercial','17/2/2021','13/1/2021'),(98,20,77,'EBAPE','presidente','marketing','13/8/2002','22/12/2020'),(99,39,32,'MAP','vicepresidente','gestao','11/6/2013',null),(100,45,52,'ECONOMIA','junior','projetos','9/2/2017','9/12/2020');
/*!40000 ALTER TABLE `membro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
    `id_pessoa` serial NOT NULL,
    `nome` varchar(60) NOT NULL,
    `data_nasc` date NOT NULL,
    `cpf` char(11) NOT NULL,
    PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'ErminaMcGuigan','25/8/2002','93450253904'),(2,'MarcelaDavana','7/4/1997','21917909211'),(3,'ThedricTerbrugge','24/10/2006','71663509429'),(4,'VereneFakes','6/4/2004','64110098817'),(5,'DionisioGoncaves','21/7/2011','59553020991'),(6,'RhodyEasby','2/4/1991','89548956915'),(7,'CeciliusRubica','13/5/2014','92782538640'),(8,'LinnellHuntley','23/2/1997','71951449723'),(9,'DonnaPlayer','20/10/2010','25082233252'),(10,'DioneAspray','5/10/2010','22850275743'),(11,'BlisseTatlow','9/7/2003','72823367063'),(12,'JoleeSalmond','24/11/2010','63304582058'),(13,'EvyCartmell','25/6/2004','20796955627'),(14,'JameyPhilip','20/8/1999','68259680351'),(15,'BernelleJepp','15/6/2002','66243717316'),(16,'BarbEdgerly','29/6/2004','48800824327'),(17,'MallissaJohananov','11/3/2019','95152339360'),(18,'HolliBourbon','18/1/2017','56903221694'),(19,'AnselKeyden','24/9/2005','90568875885'),(20,'PennyFrankcom','7/6/2020','36867598870'),(21,'AnaSydall','7/4/2017','77989410055'),(22,'ClemRushton','4/1/2019','59573877096'),(23,'ClaudetteAberkirder','4/7/1999','91562722977'),(24,'HoganBenninger','16/5/2004','04645010589'),(25,'JesseDanbrook','18/12/2011','40455854359'),(26,'CelestinaFeather','14/5/1993','73800639469'),(27,'AlisanderMoncey','3/1/1993','67428456647'),(28,'EvanPlewright','20/9/2005','37573033661'),(29,'CharityLissandrini','24/12/1991','23338174357'),(30,'ErynRelph','21/2/2001','50851294703'),(31,'ThomasinaGreally','31/3/2000','71852959370'),(32,'ClaritaPotell','14/4/2017','66884611382'),(33,'JaimeEwen','5/1/2021','90650966272'),(34,'JulianaZapata','11/7/2008','63022045809'),(35,'AllegraJochen','24/12/2005','21851104326'),(36,'NonieFermoy','25/4/2010','86919457428'),(37,'CissyMillson','24/7/2016','71230173315'),(38,'KaileyDransfield','4/5/2008','10338825554'),(39,'SavinaExley','3/7/1992','78145420668'),(40,'KirstiMurby','10/6/1995','56312347804'),(41,'GiovannaRickword','15/11/1996','72839464697'),(42,'RosaSteward','3/8/2019','49738315820'),(43,'NoamiBeaney','14/11/1994','64298358117'),(44,'LuchoPaulack','11/11/2018','14827884721'),(45,'AverellHeadon','29/7/1995','04458131623'),(46,'BaudoinGossipin','18/11/1996','37588714194'),(47,'RamonAucott','30/7/2009','35137765981'),(48,'CliffordMurley','1/6/2005','21985120481'),(49,'NertaKerley','9/12/2007','06487442000'),(50,'MurryTeresia','16/8/2001','09812237218'),(51,'DrucyBasek','30/3/2018','02192981712'),(52,'LawStump','16/11/2001','90437985587'),(53,'RobinetKrahl','31/5/2020','96819535676'),(54,'Kara-lynnNorthidge','20/4/2010','06596314240'),(55,'CharylFee','25/1/2001','52174392325'),(56,'CortyNormavell','7/7/1996','77654599977'),(57,'RobertaBorrow','6/4/2004','42950688338'),(58,'GriffyMacCleay','12/1/2017','10397933542'),(59,'ReeseJoe','27/6/2019','55779085057'),(60,'EzequielHanscomb','14/6/1991','65416416170'),(61,'ScotBard','29/1/1995','66006198537'),(62,'AdelheidPoff','29/12/2010','30869126320'),(63,'CarmonJervois','21/7/2018','70694614065'),(64,'DominiqueStrete','8/5/2003','24672324680'),(65,'MiguelDelaBarre','23/12/2009','21443408330'),(66,'FossBatchley','18/11/2009','41437518392'),(67,'CharitaRabbet','2/1/2001','97208818058'),(68,'NoachCookson','11/8/1991','28531574863'),(69,'ChuckGumary','10/12/2012','29767136420'),(70,'JewellePresland','3/3/2014','74809929929'),(71,'TraceeTopaz','10/3/2002','31114159992'),(72,'SheilaWorsnip','22/8/2020','83808829851'),(73,'HarmonieBrando','22/9/2018','30686418171'),(74,'AlvinAirton','5/3/2011','70938575630'),(75,'ErinWhenman','13/6/2003','11737940895'),(76,'ElliottKundt','7/1/1996','04422601139'),(77,'PamSowley','1/10/1995','13294695292'),(78,'AllynMacGeaney','26/7/2002','49295271615'),(79,'AbagaelMorlon','16/9/1991','81982230581'),(80,'TheressaEpilet','26/9/2016','30455073804'),(81,'ErminieBarroux','23/5/2017','68888525137'),(82,'DiannMillbank','2/3/1996','47031288903'),(83,'AnthonyDawidsohn','21/6/2013','19807420719'),(84,'LyndellNafziger','10/12/1991','12094767902'),(85,'AllisManach','13/9/1992','72342020154'),(86,'JaneVelte','14/6/1997','06513196558'),(87,'SullyBello','17/12/2009','88773262873'),(88,'JanellaBlinder','1/5/2006','08001061228'),(89,'DaleFilipychev','4/6/1995','41856820138'),(90,'CodyBorer','27/3/1999','39874756591'),(91,'ConwayWoolen','28/1/2008','33543174817'),(92,'SigfriedBlunn','29/7/2001','90512601212'),(93,'ArchyAdrienne','14/4/2020','16280886728'),(94,'RickeyRobet','15/1/1996','17314469378'),(95,'PetraMcAuslene','19/8/1991','56424319670'),(96,'WinthropCatonnet','8/7/2001','50991353784'),(97,'KerbyDunbar','12/7/2016','83873062597'),(98,'FannieTemplar','31/1/1995','95203903472'),(99,'RollandMacColl','30/6/2005','51571954582'),(100,'MickyLugard','31/12/2001','39109840000');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto`
--

DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE projeto (
    `id_projeto` int NOT NULL,
    `id_entidade` serial NOT NULL,
    `id_empresa` serial NOT NULL,
    `valor` float(9,2) NOT NULL,
    `data_inicio` date NOT NULL,
    `data_fim` date NOT NULL,
    `situacao` varchar(60) NOT NULL,
    `servico` varchar(60) NOT NULL,
    `digital` bool NOT NULL,
    PRIMARY KEY (`id_projeto`),
    KEY `projeto_empresa` (`empresa_id_empresa`),
    KEY `projeto_entidade` (`entidade_id_entidade`),
    CONSTRAINT `projeto_empresa` FOREIGN KEY (`empresa_id_empresa`) REFERENCES `empresa` (`id_empresa`),
    CONSTRAINT `projeto_entidade` FOREIGN KEY (`entidade_id_entidade`) REFERENCES `entidade` (`id_entidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto`
--

LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */;
INSERT INTO `projeto` VALUES (1,17,90,4993.32,'3/24/2021','5/12/2021','finalizado','planodemarketing',true),(2,41,55,5001.97,'1/25/2021','12/22/2020','concluido','planofinanceiro',true),(3,61,45,5008.38,'2/6/2021','7/16/2021','emdesenvolvimento','planofinanceiro',false),(4,33,78,5014.2,'1/24/2021','6/30/2021','emdesenvolvimento','planofinanceiro',true),(5,24,89,5004.55,'7/15/2021','12/18/2020','cancelado','planodemarketing',false),(6,43,93,5010.1,'9/22/2020','9/13/2021','emdesenvolvimento','planofinanceiro',true),(7,39,25,5005.31,'3/26/2021','7/18/2021','finalizado','planofinanceiro',true),(8,72,81,5001.92,'4/12/2021','12/1/2020','concluido','planofinanceiro',false),(9,98,18,4985.15,'8/7/2021','11/10/2020','emdesenvolvimento','planofinanceiro',false),(10,12,66,5008.54,'6/2/2021','3/5/2021','cancelado','planofinanceiro',true),(11,93,38,5023.24,'3/26/2021','1/6/2021','cancelado','criacaodesite',true),(12,71,3,5016.16,'6/21/2021','10/22/2020','cancelado','planofinanceiro',false),(13,8,50,5001.77,'12/4/2020','7/16/2021','cancelado','criacaodesite',true),(14,6,84,5019.42,'3/6/2021','1/21/2021','finalizado','planofinanceiro',false),(15,85,87,4989.71,'12/14/2020','2/10/2021','emdesenvolvimento','planodemarketing',true),(16,18,59,4999.23,'10/21/2020','2/16/2021','cancelado','criacaodesite',true),(17,11,15,5012.43,'4/16/2021','9/8/2021','finalizado','planofinanceiro',false),(18,44,11,5014.83,'5/13/2021','5/25/2021','finalizado','criacaodesite',false),(19,84,92,5003.5,'9/16/2021','10/26/2020','emdesenvolvimento','planodemarketing',true),(20,85,5,4979.3,'1/19/2021','8/28/2021','concluido','planodemarketing',false),(21,42,3,4990.1,'3/12/2021','12/17/2020','finalizado','planofinanceiro',false),(22,44,58,5002.25,'1/25/2021','5/21/2021','emdesenvolvimento','planodemarketing',false),(23,46,86,5009.31,'1/11/2021','8/23/2021','emdesenvolvimento','planodemarketing',false),(24,44,93,4998.93,'7/3/2021','3/31/2021','concluido','planofinanceiro',true),(25,8,56,5006.62,'3/17/2021','7/29/2021','concluido','planodemarketing',true),(26,82,44,4996.99,'10/29/2020','11/25/2020','finalizado','criacaodesite',true),(27,35,58,4983.09,'10/2/2020','2/25/2021','cancelado','criacaodesite',true),(28,28,71,5000.58,'6/8/2021','9/2/2021','emdesenvolvimento','criacaodesite',false),(29,33,80,5004.04,'3/20/2021','2/27/2021','concluido','criacaodesite',false),(30,87,79,5015.71,'6/16/2021','11/13/2020','cancelado','criacaodesite',false),(31,25,21,4989.69,'12/30/2020','1/7/2021','cancelado','planofinanceiro',false),(32,69,100,4988.55,'5/9/2021','12/15/2020','emdesenvolvimento','planodemarketing',true),(33,94,25,5014.49,'6/15/2021','10/12/2020','cancelado','planofinanceiro',false),(34,88,30,5003.04,'7/24/2021','5/16/2021','emdesenvolvimento','planodemarketing',true),(35,95,22,4997.2,'8/28/2021','1/15/2021','concluido','planodemarketing',false),(36,18,84,4999.53,'10/18/2020','3/19/2021','finalizado','planodemarketing',true),(37,77,69,5013.13,'7/7/2021','1/24/2021','concluido','criacaodesite',false),(38,74,96,5001.69,'4/23/2021','12/14/2020','emdesenvolvimento','planodemarketing',false),(39,56,81,5006.01,'10/4/2020','4/9/2021','cancelado','planodemarketing',false),(40,54,21,5006.2,'4/18/2021','1/24/2021','concluido','planofinanceiro',true),(41,92,24,4997.47,'2/27/2021','9/23/2020','finalizado','planofinanceiro',false),(42,93,44,5004.43,'6/23/2021','10/3/2020','finalizado','criacaodesite',false),(43,12,71,5004.07,'2/2/2021','3/18/2021','finalizado','planodemarketing',false),(44,9,77,5004.19,'6/25/2021','8/27/2021','concluido','criacaodesite',true),(45,53,43,5004.95,'1/24/2021','6/6/2021','concluido','planofinanceiro',true),(46,44,79,4987.68,'2/7/2021','3/28/2021','finalizado','planodemarketing',true),(47,97,12,4999.32,'2/26/2021','3/23/2021','cancelado','planodemarketing',false),(48,15,9,5004.09,'1/29/2021','7/23/2021','emdesenvolvimento','planodemarketing',false),(49,100,89,4991.23,'5/14/2021','12/26/2020','concluido','planodemarketing',false),(50,29,22,4999.4,'6/2/2021','10/26/2020','concluido','planodemarketing',false),(51,9,81,4991.32,'6/11/2021','3/16/2021','cancelado','planofinanceiro',false),(52,36,89,4989.37,'4/6/2021','1/2/2021','concluido','planofinanceiro',true),(53,26,43,5014.91,'1/8/2021','2/17/2021','finalizado','planofinanceiro',true),(54,88,39,5000.04,'10/28/2020','12/23/2020','emdesenvolvimento','planofinanceiro',true),(55,21,68,5003.36,'1/12/2021','11/24/2020','cancelado','planodemarketing',true),(56,27,99,5015.01,'12/30/2020','10/13/2020','cancelado','criacaodesite',false),(57,59,30,4992.73,'12/25/2020','9/26/2020','cancelado','criacaodesite',false),(58,16,17,4997.17,'2/22/2021','12/24/2020','cancelado','planodemarketing',false),(59,78,58,4997.14,'11/17/2020','7/30/2021','emdesenvolvimento','planodemarketing',true),(60,26,74,4999.08,'1/17/2021','4/18/2021','finalizado','criacaodesite',false),(61,50,83,5005.95,'5/10/2021','10/30/2020','concluido','planofinanceiro',false),(62,71,53,5013.34,'7/2/2021','7/5/2021','concluido','planodemarketing',false),(63,100,90,4992.38,'11/9/2020','1/24/2021','concluido','criacaodesite',true),(64,57,65,4993.24,'9/21/2021','9/28/2020','emdesenvolvimento','planodemarketing',false),(65,88,41,5002.76,'12/31/2020','1/8/2021','cancelado','planodemarketing',false),(66,99,87,4976.91,'3/1/2021','11/1/2020','cancelado','planodemarketing',false),(67,2,83,5001.97,'5/18/2021','5/23/2021','emdesenvolvimento','planodemarketing',false),(68,5,28,5013.46,'10/5/2020','7/10/2021','cancelado','criacaodesite',true),(69,43,97,4991.24,'12/1/2020','12/14/2020','cancelado','criacaodesite',false),(70,9,16,5001.13,'9/2/2021','2/2/2021','emdesenvolvimento','criacaodesite',false),(71,89,69,5009.34,'3/1/2021','6/11/2021','cancelado','planofinanceiro',true),(72,51,59,5011.75,'7/31/2021','3/3/2021','finalizado','planofinanceiro',true),(73,77,29,4997.85,'3/3/2021','2/13/2021','emdesenvolvimento','criacaodesite',true),(74,28,21,4997.15,'7/2/2021','11/1/2020','concluido','criacaodesite',true),(75,33,66,5007.32,'8/28/2021','9/26/2020','concluido','criacaodesite',true),(76,12,67,4983.29,'11/27/2020','6/6/2021','emdesenvolvimento','criacaodesite',false),(77,25,97,5006.81,'4/20/2021','2/24/2021','cancelado','planofinanceiro',false),(78,19,17,5013.36,'11/9/2020','8/22/2021','cancelado','planodemarketing',true),(79,31,36,5001.71,'7/10/2021','3/9/2021','cancelado','planodemarketing',false),(80,54,43,4989.66,'5/12/2021','8/26/2021','cancelado','planofinanceiro',false),(81,78,58,4999.9,'10/15/2020','1/12/2021','emdesenvolvimento','planofinanceiro',true),(82,82,17,5006.92,'11/18/2020','3/27/2021','finalizado','planodemarketing',true),(83,6,64,4994.14,'8/27/2021','6/16/2021','emdesenvolvimento','criacaodesite',false),(84,97,100,5004.81,'8/20/2021','12/18/2020','cancelado','criacaodesite',true),(85,44,30,5005.71,'7/29/2021','1/3/2021','cancelado','planofinanceiro',false),(86,96,80,5007.47,'2/6/2021','9/13/2021','concluido','planodemarketing',true),(87,80,6,4995.76,'7/23/2021','9/10/2021','concluido','planodemarketing',true),(88,41,67,4988.48,'10/11/2020','9/18/2021','finalizado','criacaodesite',false),(89,98,90,5008.19,'12/9/2020','1/15/2021','cancelado','planofinanceiro',true),(90,50,44,4997.01,'11/29/2020','4/12/2021','emdesenvolvimento','criacaodesite',false),(91,71,76,4997.0,'3/3/2021','5/16/2021','emdesenvolvimento','criacaodesite',true),(92,55,61,4994.69,'2/27/2021','6/4/2021','concluido','planodemarketing',false),(93,34,6,5014.64,'8/16/2021','4/16/2021','emdesenvolvimento','planofinanceiro',true),(94,38,47,5016.36,'4/24/2021','7/24/2021','concluido','planodemarketing',true),(95,41,27,4991.76,'6/4/2021','5/6/2021','finalizado','planofinanceiro',true),(96,49,75,4997.66,'2/26/2021','5/29/2021','concluido','planodemarketing',true),(97,48,78,5012.9,'8/22/2021','8/17/2021','cancelado','planofinanceiro',false),(98,98,43,4997.67,'11/19/2020','8/27/2021','concluido','criacaodesite',false),(99,10,18,4976.85,'4/9/2021','5/30/2021','cancelado','planodemarketing',true),(100,64,67,4989.58,'3/5/2021','9/18/2021','cancelado','planofinanceiro',false);
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_membro_projeto`
--

DROP TABLE IF EXISTS `rel_membro_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rel_membro_projeto` (
    `id_membro_projeto` int NOT NULL,
    `id_membro` serial NOT NULL,
    `id_projeto` int NOT NULL,
    `funcao` varchar(60) NOT NULL,
    PRIMARY KEY (`id_membro_projeto`),
    KEY `rel_membro_projeto_membro` (`membro_id_membro`),
    KEY `rel_membro_projeto_projeto` (`projeto_id_projeto`),
    CONSTRAINT `rel_membro_projeto_membro` FOREIGN KEY (`membro_id_membro`) REFERENCES `membro` (`id_membro`),
    CONSTRAINT `rel_membro_projeto_projeto` FOREIGN KEY (`projeto_id_projeto`) REFERENCES `projeto` (`id_projeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
    
--
-- Dumping data for table `rel_membro_projeto`
--

LOCK TABLES `rel_membro_projeto` WRITE;
/*!40000 ALTER TABLE `rel_membro_projeto` DISABLE KEYS */;
INSERT INTO `rel_membro_projeto` VALUES (1,93,52,'coordenador'),(2,89,36,'coordenador'),(3,29,70,'gerente'),(4,8,85,'coordenador'),(5,54,82,'consultor'),(6,63,74,'gerente'),(7,16,73,'coordenador'),(8,16,47,'coordenador'),(9,26,98,'coordenador'),(10,43,80,'gerente'),(11,82,51,'coordenador'),(12,85,1,'coordenador'),(13,18,75,'coordenador'),(14,71,79,'coordenador'),(15,43,22,'consultor'),(16,2,42,'consultor'),(17,65,51,'coordenador'),(18,49,54,'consultor'),(19,46,9,'coordenador'),(20,98,22,'gerente'),(21,86,22,'consultor'),(22,72,6,'consultor'),(23,54,4,'coordenador'),(24,50,86,'consultor'),(25,29,35,'consultor'),(26,41,29,'coordenador'),(27,60,79,'gerente'),(28,80,89,'gerente'),(29,62,20,'gerente'),(30,20,19,'gerente'),(31,75,38,'consultor'),(32,65,61,'coordenador'),(33,22,67,'consultor'),(34,91,78,'gerente'),(35,80,6,'consultor'),(36,2,71,'coordenador'),(37,38,84,'coordenador'),(38,84,59,'consultor'),(39,11,82,'gerente'),(40,96,56,'gerente'),(41,8,63,'coordenador'),(42,9,88,'coordenador'),(43,66,88,'gerente'),(44,18,50,'gerente'),(45,77,30,'consultor'),(46,75,47,'consultor'),(47,78,17,'coordenador'),(48,76,29,'coordenador'),(49,99,63,'gerente'),(50,82,56,'gerente'),(51,53,7,'gerente'),(52,74,73,'consultor'),(53,28,92,'gerente'),(54,16,9,'gerente'),(55,73,42,'coordenador'),(56,69,66,'coordenador'),(57,65,70,'gerente'),(58,12,86,'coordenador'),(59,71,20,'consultor'),(60,33,35,'consultor'),(61,68,36,'gerente'),(62,76,24,'gerente'),(63,48,68,'coordenador'),(64,41,40,'consultor'),(65,79,65,'consultor'),(66,52,89,'gerente'),(67,83,91,'gerente'),(68,87,82,'gerente'),(69,97,41,'gerente'),(70,6,10,'coordenador'),(71,36,97,'coordenador'),(72,10,97,'coordenador'),(73,61,94,'coordenador'),(74,97,53,'gerente'),(75,47,81,'consultor'),(76,85,27,'gerente'),(77,99,80,'gerente'),(78,99,55,'gerente'),(79,16,56,'gerente'),(80,23,71,'consultor'),(81,91,96,'coordenador'),(82,61,38,'gerente'),(83,60,88,'coordenador'),(84,85,93,'gerente'),(85,21,21,'gerente'),(86,20,45,'consultor'),(87,65,68,'gerente'),(88,45,51,'gerente'),(89,20,6,'gerente'),(90,87,64,'consultor'),(91,59,75,'consultor'),(92,14,36,'coordenador'),(93,4,49,'gerente'),(94,28,22,'coordenador'),(95,31,74,'gerente'),(96,81,80,'consultor'),(97,100,81,'coordenador'),(98,38,62,'consultor'),(99,61,88,'coordenador'),(100,96,54,'coordenador');
/*!40000 ALTER TABLE `rel_membro_projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_empresa`
--

DROP TABLE IF EXISTS `telefone_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_empresa` (
    `id_tel_empresa` serial NOT NULL,
    `empresa_id_empresa` serial NOT NULL,
    `telefone` char(9) NOT NULL,
    `ddd` char(2) NOT NULL,
    PRIMARY KEY (`id_tel_empresa`),
    KEY `telefone_empresa_empresa` (`empresa_id_empresa`),
    CONSTRAINT `telefone_empresa_empresa` FOREIGN KEY (`empresa_id_empresa`) REFERENCES `empresa` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_empresa`
--

LOCK TABLES `telefone_empresa` WRITE;
/*!40000 ALTER TABLE `telefone_empresa` DISABLE KEYS */;
INSERT INTO `telefone_empresa` VALUES (1,1,'673181517','61'),(2,96,'716573395','74'),(3,66,'044819575','01'),(4,3,'725337011','75'),(5,77,'797913038','89'),(6,28,'838857255','63'),(7,37,'385937629','57'),(8,91,'301561351','35'),(9,23,'160158902','53'),(10,67,'155516208','04'),(11,8,'246641648','78'),(12,47,'903914650','17'),(13,33,'869115486','21'),(14,10,'874869600','51'),(15,81,'413326310','76'),(16,35,'573318242','95'),(17,93,'873674819','33'),(18,72,'103905356','26'),(19,47,'167430271','43'),(20,47,'136846349','68'),(21,87,'286814384','73'),(22,95,'693778002','96'),(23,24,'334717219','04'),(24,78,'474239698','23'),(25,96,'057003946','81'),(26,97,'723034919','73'),(27,29,'151693389','51'),(28,46,'459747054','63'),(29,19,'919125184','95'),(30,86,'354511167','31'),(31,85,'645521263','34'),(32,47,'652000092','68'),(33,71,'056024547','10'),(34,22,'611892348','23'),(35,1,'673261074','93'),(36,20,'031560710','81'),(37,82,'607959414','30'),(38,92,'179827391','73'),(39,75,'825576532','61'),(40,55,'340607726','45'),(41,92,'352093772','15'),(42,8,'782813251','86'),(43,40,'970511714','82'),(44,86,'122975770','60'),(45,17,'773002225','39'),(46,94,'142530189','76'),(47,75,'902092168','17'),(48,56,'957234659','21'),(49,15,'862873847','73'),(50,35,'473873710','00'),(51,26,'170410290','63'),(52,15,'560193115','15'),(53,99,'084038337','24'),(54,27,'955196600','11'),(55,43,'595367200','42'),(56,76,'845899951','84'),(57,8,'073606599','29'),(58,39,'962545988','68'),(59,20,'058667021','18'),(60,61,'510072466','43'),(61,59,'089649107','97'),(62,78,'323983647','80'),(63,34,'891723083','07'),(64,93,'835851115','29'),(65,39,'897199441','23'),(66,24,'682519680','76'),(67,59,'415492182','14'),(68,24,'450132302','00'),(69,31,'329861135','36'),(70,63,'046603176','32'),(71,24,'498621598','58'),(72,51,'030958203','50'),(73,7,'095180306','45'),(74,35,'728945019','33'),(75,93,'951546298','41'),(76,33,'101507904','58'),(77,66,'945339503','45'),(78,78,'743459833','70'),(79,39,'317749090','22'),(80,61,'258863816','79'),(81,28,'309009751','19'),(82,81,'852142691','11'),(83,23,'417075836','15'),(84,65,'740063207','98'),(85,67,'123710431','39'),(86,42,'078572571','00'),(87,64,'156271734','88'),(88,46,'953473145','11'),(89,14,'917318544','79'),(90,66,'693140422','57'),(91,43,'104566713','94'),(92,31,'152396499','03'),(93,75,'436381309','34'),(94,3,'697563809','49'),(95,62,'917258781','80'),(96,84,'217420743','23'),(97,35,'186057599','55'),(98,55,'242442844','51'),(99,65,'053148395','32'),(100,65,'132296361','70');
/*!40000 ALTER TABLE `telefone_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_pessoa`
--

DROP TABLE IF EXISTS `telefone_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_pessoa` (
    `id_tel_pessoa` serial NOT NULL,
    `id_pessoa` serial NOT NULL,
    `telefone` char(9) NOT NULL,
    `ddd` char(2) NOT NULL,
    PRIMARY KEY (`id_tel_pessoa`),
    KEY `telefone_pessoa_pessoa` (`pessoa_id_pessoa`),
    CONSTRAINT `telefone_pessoa_pessoa` FOREIGN KEY (`pessoa_id_pessoa`) REFERENCES `pessoa` (`id_pessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_pessoa`
--

LOCK TABLES `telefone_pessoa` WRITE;
/*!40000 ALTER TABLE `telefone_pessoa` DISABLE KEYS */;
INSERT INTO `telefone_pessoa` VALUES (1,'1','434911880','47'),(2,'4','436656015','66'),(3,'6','117517803','60'),(4,'8','916825492','54'),(5,'13','072654872','76'),(6,'14','387366971','33'),(7,'15','060633543','01'),(8,'16','706994192','13'),(9,'18','253867976','61'),(10,'21','368939160','43'),(11,'22','880407870','34'),(12,'23','207821538','80'),(13,'24','142956896','11'),(14,'25','697194296','94'),(15,'26','741286269','27'),(16,'28','272080309','77'),(17,'32','086895298','77'),(18,'35','726688891','54'),(19,'36','520164324','30'),(20,'38','406309854','24'),(21,'42','112443165','11'),(22,'43','223813247','34'),(23,'45','849755841','29'),(24,'46','036422497','91'),(25,'47','468425098','09'),(26,'48','613386920','24'),(27,'49','067467235','91'),(28,'50','822483246','96'),(29,'51','547570268','85'),(30,'52','303103278','73'),(31,'53','603938174','01'),(32,'54','200345048','47'),(33,'56','362997770','68'),(34,'59','822423283','46'),(35,'60','132408039','58'),(36,'64','339410230','76'),(37,'65','191409497','96'),(38,'66','948320894','37'),(39,'67','506573865','52'),(40,'68','807637264','42'),(41,'69','734291384','18'),(42,'70','319568040','77'),(43,'72','828006506','85'),(44,'75','228905216','45'),(45,'76','940510131','65'),(46,'78','213815749','04'),(47,'79','464738612','71'),(48,'81','179673072','20'),(49,'82','454403834','31'),(50,'86','430861709','85'),(51,'87','915808078','67'),(52,'89','293261440','37'),(53,'93','314946525','32'),(54,'94','572837777','16'),(55,'96','479174279','03'),(56,'99','937319364','24'),(57,'101','157788789','73'),(58,'102','522446144','57'),(59,'103','815850090','85'),(60,'105','804272644','66'),(61,'106','431406721','96'),(62,'107','380522425','88'),(63,'110','993053556','63'),(64,'111','490562607','45'),(65,'112','027767926','98'),(66,'113','815629741','58'),(67,'114','126001993','25'),(68,'115','022534367','86'),(69,'117','600866272','76'),(70,'118','977833310','61'),(71,'119','269973044','71'),(72,'120','903293128','39'),(73,'122','631819223','28'),(74,'123','559132188','81'),(75,'126','094307806','63'),(76,'127','527658376','55'),(77,'129','629090348','95'),(78,'130','200435381','19'),(79,'131','932664057','22'),(80,'132','645300007','40'),(81,'133','394879868','30'),(82,'134','718662526','80'),(83,'139','326606517','54'),(84,'142','522202018','83'),(85,'143','261001400','19'),(86,'144','766078742','85'),(87,'145','786034087','66'),(88,'147','007427562','51'),(89,'148','153860088','16'),(90,'152','102119724','38'),(91,'153','294255359','81'),(92,'154','301203878','66'),(93,'156','941669017','12'),(94,'159','324264665','03'),(95,'160','616590466','60'),(96,'161','838986692','00'),(97,'164','146401597','70'),(98,'165','632667623','29'),(99,'167','434019441','03'),(100,'168','473767504','69');
/*!40000 ALTER TABLE `telefone_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacao`
--

DROP TABLE IF EXISTS `transacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacao` (
    `id_transacao` serial NOT NULL,
    `valor` float(9,2) NOT NULL,
    `validade` date NOT NULL,
    `id_entidade` serial NOT NULL,
    PRIMARY KEY (`id_transacao`),
    KEY `transacao_entidade` (`entidade_id_entidade`),
    CONSTRAINT `transacao_entidade` FOREIGN KEY (`entidade_id_entidade`) REFERENCES `entidade` (`id_entidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
    
--
-- Dumping data for table `transacao`
--

LOCK TABLES `transacao` WRITE;
/*!40000 ALTER TABLE `transacao` DISABLE KEYS */;
INSERT INTO `transacao` VALUES (1,14.39,'11/3/2020',13),(2,-113.68,'12/12/2005',61),(3,-165.9,'7/2/2014',55),(4,-60.05,'12/9/2013',3),(5,46.65,'27/1/2006',44),(6,-57.91,'13/11/2018',65),(7,146.55,'24/4/2004',28),(8,-248.64,'5/6/1995',72),(9,-41.72,'21/12/1993',98),(10,-152.89,'27/8/2020',98),(11,-69.56,'29/10/1990',98),(12,-171.79,'4/3/2017',69),(13,-19.37,'27/9/2009',30),(14,81.63,'16/3/2016',33),(15,105.14,'10/5/1993',58),(16,28.94,'30/8/2021',26),(17,174.07,'6/9/2004',47),(18,74.93,'7/7/1996',9),(19,-7.28,'18/1/1997',64),(20,125.47,'10/3/2017',38),(21,-172.78,'3/9/2016',100),(22,153.42,'3/7/1998',26),(23,24.62,'1/8/1992',47),(24,-7.25,'8/8/1992',91),(25,48.56,'26/3/2018',54),(26,31.15,'30/8/1993',80),(27,-167.65,'3/12/2014',49),(28,-44.6,'15/12/2019',6),(29,101.47,'1/5/2015',22),(30,118.72,'27/11/2019',92),(31,-21.43,'9/5/1997',55),(32,-83.26,'19/8/2009',92),(33,-121.47,'4/7/2008',72),(34,59.32,'6/3/2019',7),(35,-135.94,'5/11/1994',95),(36,-5.57,'13/6/2002',64),(37,53.51,'15/8/2018',13),(38,-65.2,'3/1/2019',29),(39,-111.09,'26/10/2013',79),(40,46.63,'25/11/1996',23),(41,5.89,'22/10/2016',80),(42,-20.39,'8/11/2010',64),(43,-82.24,'10/6/1994',56),(44,-133.48,'2/10/1993',46),(45,6.98,'13/2/2014',90),(46,-290.44,'28/11/2019',59),(47,-37.52,'6/3/2015',31),(48,76.63,'25/12/2009',31),(49,-108.62,'19/9/2011',55),(50,12.9,'13/5/1991',8),(51,-76.47,'22/6/2018',8),(52,-1.08,'7/6/1992',14),(53,96.75,'6/9/2019',44),(54,-90.85,'25/1/1997',91),(55,-59.81,'16/5/1992',89),(56,55.55,'17/8/2002',66),(57,73.73,'25/10/2011',87),(58,-58.04,'12/5/1997',93),(59,102.8,'4/5/2006',78),(60,-45.93,'30/3/1992',59),(61,29.74,'9/8/2017',89),(62,-84.84,'1/5/2012',90),(63,-21.39,'18/4/1997',65),(64,93.69,'26/4/1993',90),(65,-144.21,'24/1/1996',69),(66,65.91,'9/6/2017',18),(67,-89.35,'4/6/2011',82),(68,40.77,'28/4/1995',12),(69,59.79,'11/2/2008',50),(70,26.17,'7/11/2020',51),(71,153.18,'22/4/2006',58),(72,135.47,'1/11/2002',12),(73,-10.4,'31/10/1998',43),(74,57.93,'7/12/2018',23),(75,155.39,'4/10/1997',90),(76,119.02,'20/1/2003',82),(77,-22.79,'13/3/1991',50),(78,-151.11,'7/11/2018',37),(79,-134.52,'8/7/2015',65),(80,-68.66,'1/7/1997',13),(81,-81.75,'9/2/2004',48),(82,-231.69,'7/3/1993',56),(83,40.71,'24/4/2018',81),(84,-12.25,'21/6/2004',86),(85,-95.56,'17/8/2015',75),(86,-92.96,'7/10/2018',84),(87,34.2,'19/8/2018',94),(88,29.89,'14/12/2010',90),(89,-52.21,'3/8/2014',6),(90,71.21,'4/5/1996',28),(91,-16.14,'6/4/2015',34),(92,58.67,'21/4/2016',58),(93,-46.55,'22/4/2021',64),(94,16.25,'4/8/2012',76),(95,19.51,'12/2/1998',86),(96,-95.89,'13/1/2012',51),(97,46.39,'6/5/2010',70),(98,52.92,'18/10/2004',35),(99,93.06,'22/5/2011',23),(100,29.07,'12/10/2012',49);
/*!40000 ALTER TABLE `transacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-16 20:05:35

