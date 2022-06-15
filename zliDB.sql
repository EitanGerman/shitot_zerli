-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: zli
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `account_payment`
--

DROP TABLE IF EXISTS `account_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(45) DEFAULT NULL,
  `cardNumber` varchar(45) NOT NULL,
  `cardDate` varchar(5) NOT NULL,
  `cardVCC` varchar(3) NOT NULL,
  `idUser` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_payment_ibfk_1_idx` (`idUser`),
  CONSTRAINT `account_payment_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_payment`
--

LOCK TABLES `account_payment` WRITE;
/*!40000 ALTER TABLE `account_payment` DISABLE KEYS */;
INSERT INTO `account_payment` VALUES (1,'cu cu','1234123412341234','12/34','123',1),(7,'eitan german','1234123412341234','12/45','456',2),(12,'yana yana','123456789000000','12/65','444',4),(13,'dolev dolev','123456789000001','12/65','444',6),(14,'hanil hanil','123456789000033','12/65','578',3),(15,'yael yael','123456789000022','12/65','564',5);
/*!40000 ALTER TABLE `account_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blob_file_table`
--

DROP TABLE IF EXISTS `blob_file_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blob_file_table` (
  `idSurvey` int NOT NULL,
  `idblobFile` varchar(255) NOT NULL,
  `blobFile` mediumblob NOT NULL,
  PRIMARY KEY (`idSurvey`),
  CONSTRAINT `idSurvey` FOREIGN KEY (`idSurvey`) REFERENCES `surveys` (`idSurvey`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blob_file_table`
--

LOCK TABLES `blob_file_table` WRITE;
/*!40000 ALTER TABLE `blob_file_table` DISABLE KEYS */;
INSERT INTO `blob_file_table` VALUES (3,'Survey analysis for survey 3.pdf',_binary '%PDF-1.7\r\n%µµµµ\r\n1 0 obj\r\n<</Type/Catalog/Pages 2 0 R/Lang(en-US) /StructTreeRoot 11 0 R/MarkInfo<</Marked true>>/Metadata 23 0 R/ViewerPreferences 24 0 R>>\r\nendobj\r\n2 0 obj\r\n<</Type/Pages/Count 1/Kids[ 3 0 R] >>\r\nendobj\r\n3 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</Font<</F1 5 0 R>>/ExtGState<</GS7 7 0 R/GS8 8 0 R>>/XObject<</Image9 9 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 4 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 0>>\r\nendobj\r\n4 0 obj\r\n<</Filter/FlateDecode/Length 276>>\r\nstream\r\nxœ­’1k\Ã0…wş\Ã¥‚eI–,«„±ÓB %†¥ƒ))4	I!ÿ¾²I‰)d(µ†Cwú¸÷N\â5&“x•/\È\é³\"\Ç\'%R\È\îx¥!‘†\è¼Æ±¦\äù{Jf%%ñƒ‚RB\Z”[JT\à$œR8\é…\r/»À-6Mz¢\é³\ì’-(ya›O\Ùñ‹Gš\Õgnª}õÁ\r;ó(a\í{Ë•f\Øx¨şŞuphşŠò‘’yğóD\ÉŒ«Ì‹$\Z\ïı^l&#\ny+¤½%t?¦>¹%ô\ë\ë0_\åÀ`\Ô\Ë`!\ÊDxûgújÀ\é\Ğ\Ä©`\Ò,Ì•;\Ğ\ïj½^_¿²o\İò-wUS{üh|s“\Â\r\nendstream\r\nendobj\r\n5 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F1/BaseFont/BCDEEE+Calibri/Encoding/WinAnsiEncoding/FontDescriptor 6 0 R/FirstChar 32/LastChar 121/Widths 21 0 R>>\r\nendobj\r\n6 0 obj\r\n<</Type/FontDescriptor/FontName/BCDEEE+Calibri/Flags 32/ItalicAngle 0/Ascent 750/Descent -250/CapHeight 750/AvgWidth 521/MaxWidth 1743/FontWeight 400/XHeight 250/StemV 52/FontBBox[ -503 -250 1240 750] /FontFile2 22 0 R>>\r\nendobj\r\n7 0 obj\r\n<</Type/ExtGState/BM/Normal/ca 1>>\r\nendobj\r\n8 0 obj\r\n<</Type/ExtGState/BM/Normal/CA 1>>\r\nendobj\r\n9 0 obj\r\n<</Type/XObject/Subtype/Image/Width 1514/Height 626/ColorSpace/DeviceRGB/BitsPerComponent 8/Interpolate false/Filter/FlateDecode/Length 25450>>\r\nstream\r\nxœ\ì\İ1o#I~7\ào\âx\ã\É\Îğpğ¦\ßn¤ŒMl\àll\à[Çš¢IşNô\ÎW88;`0wlØ‘\ÃÁ\0¼T“\ì®\ê®&[TWWÿ5ñ»‘ú±E‰\Å«ªÿüÿşõ\Ï\0\0\0\0\0\0\0\0À­~şò\0\0\0€\Ò\Ş\0\0\0\0\ì™ö\0\0\0`Ï´7\0\0\0\0{¦½€V~ú\İ\ï¾û\Íoşù§ŸØ¿\ÃO*\îKx\á…Dx\á¿\Âğ‡QóQ\Ùşio\0 ‰\Ã\ë\ï\ßüú×¿|û¶ù¨‰%\Şv—\æ1„EøVZ\ãşu\r}\ä…ş¶ğ\ß}÷]ó\Ùşio\0 ‰\Ã\ë\ï?ıø\ãa\Ğ\Ò<	KG˜\Íc‹ğ\Âˆğ\Â\ïœö\0š\Ğ\Ş\Äzl)¼ğ\Â\"¼ğ\ÂS¤½€&´7±„[\n/¼ğ/¼ğio\0 	\íM,¡Ç–\Â/| \Â/<E\Ú\0hB{Kè±¥ğ\Âˆğ\ÂO‘ö\0š\Ğ\Ş\Äzl)¼ğ\Â\"¼ğ\ÂS¤½€&´7±„[\n/¼ğ/¼ğio\0 	\íM,¡Ç–\Â/| \Â/<E\Ú\0hB{Kè±¥ğ\Âˆğ\ÂO‘ö\0šø\ÚÚ›\Ïwo\Ş\Ü}ø\Ô>\ÉmB-…^ø@„^xŠ´7\0\Ğ\Ä~Ú›÷oÆ—»‡\Ïk\í\ÍŸ\Şu‡¾\Æ!ªş”¹¿\Üs\ä?}¸ËŸó÷\ëŸ-Ş’\äıcˆğ“#\ß]\Ş=|Š¾Sÿi¿vø\Ç÷…C^\ë™_\é\È\ç¯Sµ^J6	_\å\ï\ä\Ê\á/¾eg¥Ñ‚öf!\í\r\04±‡ö¦kT¦£÷\ÃPı\á¥ö\æ’\Çûª\ïJj„?=y&—\Âã´²ñ6ü\Ò‰q\ägš„(\íM¡\ëğ´‰\Ş\Şl\Ôø\Õ	_>ø«ÿ¶®ş\Ò\ëQñ\á¬ğ²¥½YH{\0M4oo6®S´73FoLbµ7CÚ¡\ÌY{\âV¥ö&y\ë7¼‰\Ò!œeOX\íM·Şµ\ÃOò´ñx|\Ü}{3\Õ?s\Öÿƒ³zø\Éa\ïa÷ß›\ru\ß\é	?L\Ü\Úgø+¯G£‡Sş\ØÇ‘­´7\0\ĞD\ãö¦C\Ö~•\ÒŞ”L?S\Ô\Ş<\ä\ï>ú·T+?„\rFõ+¾\Ù2ühúSŒö\æü\îµ\ÆÜƒº\áû÷\İ–nq\äS\ç\É!¦¯œƒiW¼û\ê©\Ô\Õô\Èş~a¯½~VkÒ´7io\0 ‰¶\íM7€\\4\ÜzúÊ§¡\Ú\èó\Ñô\é\Â]eK\îK\íMv\'\éP¶»\í¾ªŠ\íMrxµ7¯¡½‰4÷\æ¼1\Åûû»½¾¼;^{\Ó?Ij\'¯u\ä\ç®ls\ä§}\ÎNÃ—\Z¿w\Å\×^úUCò\Õö\İ\Ò\Ş,¤½€&š¶7İˆk\ÙĞ±ko\î\Ş\å\ãü\Ãø3yŸ{¿¥_0¾¦0\Ø>kûİ°°¿Ï¯¦½\é\Åooú}ˆ•S©½¯e(:½i:ü\Ê\Ôk¶\Úq(D‡Ğ¿K½ÿ˜\íZ\"|¦^WY-|ö\çq¼i\Ï\áK[v\ÜŞ”x}ñ™³Ö\ãbøôƒ}\r¶§½€&š¶7Oc¡…c­\ã\Ø\ì\Ê\Ã\îYÿ5¥i6\Ç÷>ı•…ú¨»U­“q¼œö\æ’x{\çNv]®³¦òŞ¹O¿/ñÛ›\á/lü»û ™Š;\Ş\Ô¿\Åş`\ÂOö\ÔJ«¿h\íM±¨Ù¢½\Éÿhl¹\â{‡´7\0\Ğ\Ä\ŞÚ›¹=4­±\Êv\Ñ)O\ì\É*\î\ë\Ç\ï×FhûıXM{3\'}\æø4¼»Ò›©J\áGuM°ö&“¼%\ßû”­¤½9G‡\î÷møDañ\Ë\ÊjÎ½\É.1ş\Ú\ÌÔ•û~\Úì«½Ÿ\è­ş\ÆS{¦½€&š·7³C\Ç|\"\Íyß›\ÂW\ÆT\é–8Ó\\\Ö\Ş\Ìh7\ØS\â6Ú›’º\ç<\Ú\ä\È\çb¿\ï§\Î&û\ÍFno¾\Ä\Ù.©”3\àjÁz[\æV?\İYeµ½V6:ò\é|›\ÃS¥Ú–\ÑmÛ›jûŞœ\Ã\Üİ¿¯<m,\í\r\04\Ñ~ß›¹w\×Û›ó\à¹«›Í½Y\Ø\Ş€io¦’ú®â’·-:„j[ß¬~ü1ôø²f~\íM¢´\à(\Î\Ófr´\ãü\ÂOõ\Õ_¹ÿºu\"B\İzeß›Ò®\Å/ııŸn¶S\Úxg¨ò\ÒQGqs¡ügö+0\İXi\æ\rsc›ş^g&#\å÷ó‚\ç­ö\0šh|\Æğ¼¢¹ğO…öfz\ÛI{se\åÔ…\ï¾WÚ›±aU\İİŠ´7©\×\Ö\Ş<ò\Ã®pso\ê/›Z?ükko*hµÛ›\Ò¾ö\Ãóv¨ød(¤š\Î\Î*/¾\ë—û\ÇÛŸÂ¯\ÏLO¡>z\Ö\Í|Ápy\Âü^n;b\Ú\0h¢q{S8Q\ÔÙµöfº)ññ³§üŒQ£{>ú[uÿjõºö&Wqñ\Â&á§§H›¼)\Øiø±\ågi“œ¡Ö¬\ß9F[¿³\Ş%Û†\ŞwG\\9õù\á!ùS3\Ù\Äx§\á\ç^\ÆG~\Åó—•\Ã/ú¥›4H“Nxò\Ì\ïWcş\àO»s{“ñ7Jfİœ¿uR\ÔLf\ïŒW\ßvĞ´7\0\ĞD\ëö\æK?\Z\r€G\'™*Ì½)\ì;Š¿ ğA\ØdËˆô-\Û\ášóÿ:cø\Ş\Ãg\'M]v¾\æ\Ëü¦±Nt®½)øõ‹\Ü\í\Â\Ù\ìz³\Æu»#<m6{Î¬\Z~şõ¨ø—D1ü´º¼$\êô\ÄIJ3v\Î79=À\é\äEù7*ÿBš¢RÁ5îE{\0Mì ½\éc£q\ÑtŒ‘§ÿš­œ:\Ê&*\Æ6…Óˆ¿õ0B{³÷ğ±Û›N8U)ü\Üc	\Ñ\ŞLß‰WšR\ë\È\ç\ÏüP;uo±\éMµğ\ã\Æ5Ê‘Ÿü©©øº¶E{“ı\ëš9K\á/­KÊ\Æù’ÀQ3s\é´_\ç\'\ÒóÚªÓ­\í\í|q­\ë-¿‰\Ú\0hb/\í\r\Ël²ƒ«ğ\Â\ïˆğ\Â\Èk\é3‚¡x\é¤\Í\ädf\Ë\Í\íÍ•“cjo\0\à+¢½‰\åµ\rŒ\ã^x\á^øU\Â½G>½§xı0\ß\æñ\ÔùŒ—r¿¹´R\éb3\\¹`\å\ÔøX+n\rt¤½€&´7±¼²q \Â/| \Â¿Fø\én\Õg\Å\Óö{\İ\Ü\İM¦µ”\Ï*~¸Iÿ¿\Åöf\\\Î$s\×$ój¦ûOv\İWC7®¡[½½)\ì½\\¶\Ú\Ù\á \"\íM,¯k`‰ğ\ÂˆğÂ¯¾XÑœ‹|“œ\Ñn<3‹°.·7\å§³\ï[>ù\è\Îg\î\'Z{“®#›lvT\Ş ñ\Å\ÆûQ@;Ú›X^\ÕÀ8\á…>\á…yø¹eS\ãM\Zƒ´$)½ÙŸìœ\Üvn\×\â\Ñ}–Ê„\ìnÓ¯\É\æùLê£›R\í­½)ş,^l\\‹io\0hN{\Ëk\Z\Ç\"¼ğ\Â\"¼ğ_[øDù4\â+j·rª/j²/[½½)\îó¬½ 9\íM,¡Ç–\Â/| \Â/|H\Ã›[\Î\'µD\Ãö¦H{ÀWB{Kè±¥ğ\Âˆğ\ÂÁ\ãû¬²H\Öû”|­\â\Ööf²E\Ï9ù¸½Iy¥n²ióÜ¾@ı¢°i³d½\ØñVO\ßbò !\íM,1Ç–\Â/|<\Â/|3»WØ¿·wC{S®YŠ\í\Í\ã¤p\é\Ë3Û›\âš\î›,îµ´7\0\ì‰ö&–˜cK\á…>\á…>‚i{Sıl\Ú\ÏooŠ3‚†YCN­•5\'\Ïoo\æöm^Z\Åho\0\Ø\íM,1Ç–\Â/|<\Â/<E\Ïno®u Y	SªtN%\Ì\Ìı,\ß÷\æòy\ÄnH\0[:¼şşõ¯~õ\Í7\ßü¥K„\Ë7İ¥uŠ/Â·º\ß\ê\"|«‹ğ­.\Ñ\Ãû\í·\Ífû÷’ö\æMiç™¤¨I&%·zY{SZ\\¦½  \Ã\ë\ïß¾{÷ı÷\ßÿ\Ë\ï\Ïş}\ß]š\Ç>\á…>\á†ÿ\á‡š\Ìö\ï†}oJ[\Ğ§—š9\ç\ÔĞº\Ü\Ö\Ş\\Z¥½  +§b	=¯[x\á…Dxá…§\è¶sN•º”\ÓL›*\íM²ûq\áT\Ú\0\Ò\Ş\Äzl)¼ğ\Â\"¼ğ\ÂSt\ëÃ²uL\Ç^¥F{\Ó_™.\Ô\Ò\Ş\0šö&–\ĞcK\á…>\á…¢—µ7Ÿ>\Üe\Õ\Êj\íM²mN¡\ÒI\ÏE®½  \íM,¡Ç–\Â/| \Â/<E\Ïno\ï³5M—Nü}K{3]“uøú\ÒN;\ÉE{@@Ú›XB-…^ø@„^xŠnio.V(/loF\ç´:}ı\ä\Ê7w¬œ 2\íM,¡Ç–\Â/| \Â/<Ek´7É™Á_\Ş\Ş|8Ó¯?\Ö5ö½ 4\íM,¡Ç–\Â/| \Â/<E/\Ş÷\0¸…ö&–\ĞcK\á…>\á…\"\í\r\04¡½‰%ô\ØRx\á…Dxá…§H{\0Mhob	=¶^x\á^x\á)\Ò\Ş\0@\Ïjo\ÛÊö‚{\r>}Ÿdr\ï»Ò…[\n/¼ğ/¼ğio\0 ‰\ç´7O›ÿ¿»»{s÷ğ¹u\ì—;\à ?\éÀ\áÊ­Û›\îtË¿i\å±\åSU\ï\Ô?œE¢Ú“Sx\á…^x\áùY{\0<£½y:\á\ãı\Çg¶\rû\ÔU7\Ù\Ù*›\ÙM{ÓŸ¯3\\{ó”ü<˜\Z\Ş/<\r¨ğ\Â/¼ğ\Â\×Ÿ»ø)\Épf\í|ˆ2w}#\Ú\0hby{s/u«\êœ6\Ò&{Yÿµ“ö\æXÍ…œ{óø>\Í>\Ï*ƒ[\á…^x\á…‰+Ÿ’¤\ëô¢|ñúv´7\0\Ğ\Ä\Òö&)º\á\Çdğğ4¢x\Z]ôƒ“\Â9İ\äÿú´\Z+ï‚{Ñ¤÷?î‹†\éÓ“¥OOÿôôñ\\w·3MwóeƒŸ<ğh¶v\é8Œ¢vk\Í\ÒûI\îd²\ë\ÎñŞºğ33Ã­œ*ıŒ\ÆÏ–\ZAx\á…^x\áow\íS’\Ã\à$´<}\Ùñ\ç®oH{\0M,lo²¦¢8w¥ko\Ş%ƒŠc3Qºy¿Ã­>=¼?K²\äTtŒ>e\ë\ïg\ÔíŒ‹®½¹{w©œY:wh²Eó¸VZ\ÚŞ¤;]ú\İso´7\Ïqx^e\Ç*Ô¨^x\á…^ø\×~l.üøú§1\Æy\Âs\éúª!¯\Ğ\Ş\0@\ËÚ›Q)\Ñı\ï¨^8.\Ê\ÎFY1;ã¥»a?2\éÖ¶\ße\í\ĞyV\Ï\Ï\Å\Â$o?\Ór.\ê\Îóa.™ò\êªl¦\Ğ\Âöfô5]Â¹n\ê:\í\ÍXiT_\ãsI\á…^x\á…±¹\×\Ù|u\Ø\Ğ\Ò\Ì]_5\ä\Ú\0hbQ{“,?wı|\Í\Ï\Ã:¦ş&s#–avœ!œ\Ş0ù\ïâ´™ñÍ¯­ŠZ\ÔŞ”W‡\å÷¿´½NÊ¨\'Ú›\nı™¬ğ\Â/¼ğ¯;ü\ØsÚ›»‡ùë«†¼B{\0M,ioJ•È¤•…ö¢¹XòœG)Ã¾|\é7\Z\îa|97$i\í3£Ô¨r\é~\Ò\Ú\êûŞ¤_3ª¹´7/z?\á…^x\á_wø1so\0€-ho\æ;“t4u½½\éû÷_<T\"}i\Ów\ZÙ©%®O›Y\ĞŞ”–}-¾\í\ÍKlu.’*\ç\ã^x\á…^ø³\ï\r\0p£\ë\íM©–9_?Ú”xA{sr\Ú\çô¿\ç\ã|Rò/}\rrœ!ü9½\Õ\ÅAË‚ö¦¼\Èk\äÖ•S£„Ú›-Â\Ö\ÙU:‡ğ\Â/¼ğÂ¿\Ø3\Î9uü²¹\ë\Ò\Ş\0@\×Ú›3Uò¦\ây\í\ÍéŸ²\ïrÿ~¼}ñÃ‡û7“s…—ª¤ô®¶7…“’O,Øµ¸\ĞO)µ´½Y>\Õ\Ş\r\'‘¯ö‰¤ğ\Â/¼ğÂ¿\Ø\èuöqù¤\ã¨t«Ÿ¹\ë\Û\Ñ\Ş\0@WÚ›‹\İBÖ¥\\ko>Ş·\êM\ïö¸§q\é\Ôá¥³ig\Å\Ë\áš\á—µ7_\ÎNa¬>š1<»óQ˜ó³gµ7…	E\r\Ï^—ğ\Âˆğ\Â_Á|{ó\å|ú\Îñ8gşúF´7\0\Ğ\Ä\åö\æ\Ê\\—n8qj\'®·7Ù9\ã	\ãY+_Š§\ÛîœŠ—\â]-no’oúf>Xş¥+\İ\èõùû\Ş|™Ê´7{$¼ğ\Â\"¼ğ_[ø-io\0 ‰Egg7B-…^ø@„^xŠ´7\0Ğ„ö&–\ĞcK\á…>\á…\"\í\r\04¡½‰%ô\ØRx\á…Dxá…§H{\0Mhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0Ğ„ö&–\ĞcK\á…>\á…\"\í\r\04¡½‰%ô\ØRx\á…Dxá…§H{\0Mhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0Ğ„ö&–\ĞcK\á…>\á…\"\í\r\04qxııÇ¿ÿ»ø\íoÿıObÿ?©¸?,\á…>\á…ÿ\n\Ãÿø\ã\Ífû§½€&¯¿õ‹_ü…‹‹‹‹‹‹‹\Ë\×}yûömó\Ùşio\0 •Oü\ã¿ı\á\Í?ób‰\ÃO*\îKx\á…Dx\á¿\Âğ‡QóQ\Ùşio\0\0\0\0öL{\0\0\0°g\Ú\0\0\0€=\Ó\Ş\0\0\0\0\ì™ö\0\0\0`Ï´7\0\0\0\0{¦½\0\0\0\Ø3\í\r\0\0\0Àio\0\0\0\0ö¬ooÿ\0\0\0À––·7ÿ÷\ßÿ\0\0\0Àfş÷?ÿ\ãşüyy{\0\0\0Àio\0\0\0\0öL{\0\0\0°g\Ú\0\0\0€=\Ó\Ş\0\0\0\0\ì™ö\0\0\0`Ï´7\0\0\0\0{¦½\0\0\0\Ø3\í\r\0\0\0Àio\0 •Ÿ~÷»\ï~ó›ş\é\'ö\ïğ“Šû\Ã^x\á^ø¯0üaD\Ô|T¶\Ú\0h\âğúû7¿şõ/ß¾m>jb‰·İ¥y\ác¾•ÃŸÖ¸]Cyá…¿-üw\ß}\×|`¶\Ú\0h\âğúûO?şx´4O\Â\Çfó\Â\Ç\"¼ğ\Â\"¼ğ;§½€&´7±„[\n/¼ğ/¼ğio\0 	\íM,¡Ç–\Â/| \Â/<E\Ú\0hB{Kè±¥ğ\Âˆğ\ÂO‘ö\0š\Ğ\Ş\Äzl)¼ğ\Â\"¼ğ\ÂS¤½€&´7±„[\n/¼ğ/¼ğio\0 	\íM,¡Ç–\Â/| \Â/<E\Ú\0hB{Kè±¥ğ\Âˆğ\ÂO‘ö\0š\Ğ\Ş\Äzl)¼ğ\Â\"¼ğ\ÂS¤½€&¾¶ö\æó\Ãİ›7w>µOr›\ĞcK\á…>\á…\"\í\r\04±Ÿö\æ\ãı›ñ\å\î\áó\Ú\ßE{sÅ§‡wİ¡¯qˆj…?e\î/÷\ÃùO\îò\çüı\ãú\Çg‹·$\Ãyÿ\"ü\ä\Èw—wŸ\"„\ï\ÔÚ¯şñ}\á\×z\æW:òù\ëT­—’M\ÂWù;¹rø‹¯G\Ù\ÃYi´ ½YH{\0Mì¡½\é\Z•\é\èı0\Ô_x©½¹\äñ¾ê»’\Z\áOO\É%F‡ğ8­,C¼\r¿ô@bù™&!J{S\èº<m¢·75~uÂ—şê¿­k†¿ôzT|8+¼lio\Ò\Ş\0@\ÍÛ›\ë\íÍŒ\Ñ“X\íÍv(sÖ¸U©½I\Şú\r\ïG¢tgÙ“\'V{S\ã­w\íğÃ“<m<w\ß\ŞLõÏœõÿ\à¬~r\Øû_\Øı÷fC\İwz\Â·öş\Ê\ë\Ñ\è\á”#öq\ä_+\í\r\04Ñ¸½\éÆµ\ß@¥´7%\ÓÏ”µ7ù»ş-\Õ\ÊaƒQıŠ\ïA¶?šş£½9¿{­1÷ nøş}w……¥[ù\ÔyrEˆ\é+\ç\Æ`\Ú\ï¾z*u5}²¿_\Øk¯G…_Õš4\í\ÍB\Ú\0h¢m{\Ó\r \r·¾òi¨6ú\Ä|4}ºpW\Ùƒû\ÇR{“\İI:”\ín»¯ª§b{“\Ş@\í\Í\Äkho\"Í½9oLñşşn¯o/Ä\×\ŞôO’\Ú\ÉkùAÅ¹+\ÛùiŸ³\Óğ¥\Æo\Ç]ñµ×£~EÕ|µ}·´7io\0 ‰¦\íM7\âZ6t\ìÚ›»wù8ÿ0şL\Ş\ç\Ço\éŒ¯)¶\Ã\Ú>C7,\ì\ïó«iozñÛ›~`b\åTj\ïkŠNoš¿2õZ…­v\n\Ñ!ô\ïR\ï?f»‡Ÿ©\×UVŸıy¯E\Úsø\Òß–·7\å\Ş__|\æ¬õ\ã¸>ı g_ƒ\íio\0 ‰¦\í\Í\ÓXh\áX\ë86»òÆ°{G\ÖMiš\Íñ½Oe¡>\ênU\ëd/§½¹$\ŞŞ¹“]—\ë,‡©¼w\î\Ó\ïKüö&Døÿ\î~H¦\â75\Ão±?X…ğ“=µ\Ò\ê/Z{S,j¶hoò?\Z[®ø\Ş!\í\r\04±·öfnEk¬²]t\Ê{²J§ûúñûµ§\Ú~?V\Ó\Ş\ÌIŸ9>\r/Å®ôfªRøQ]¬½\É$o\É÷>e+io\ÎQ‡Å¡û}>QXü²²šso²KŒ¿63uå¾Ÿ6ûjo\Æ\'z«¿ñÔio\0 ‰\æ\í\Í\ì\Ğ1ŸHs\Ş÷¦ğ•£1Uº%\Ît —µ7ó\Ú\rö”¸ö¦¤\î969òù£\Ø\ïû©³\É~³‘Û›/q¶K*\å¸Z°Ş–¹\Õ\ÂOwVYm¯•|:\ß\æğT©¶et\Ûö¦Ú¾7\ç0w÷\ï+OA{\0M´\ß÷f\î\Çõö\æ<x\î\ß\êfso¶7Á`Ú›©¤¾«¸\äm‹¡\Ú\Ö7«‡=¾¬™_{“(-8Šó´™\í8¿°\ÅS}õW\î¿nˆP·^\Ù÷¦´kñK\çÂ§›\í”6\Şª¼t\ÔQ\Ü\\(ÿ\ã™ı\nL7Vš9A\Ã\ÜØ¦¿\×Ç™\ÉHùı¼\ày«½€&\ZŸ1<¯h.üS¡½™\Şv\Ò\Ş\\Y9u\á»\ï•öfl˜@Uw·\"\íMêµµ7üğ‡+\ÜÜ›úË¦\Öÿ\ÚÚ›ŠZ\íö¦ô„¯}\Æğ¼*>\n©¦³³Ê‹\ïú\ß\åşñö§ğ\ë\Æ3\ÓS¨u3_0\ÜC0¿—Û˜ö\0šh\Ü\ŞNuv­½™nJ|ü\ì)?c\Ôèc§şV\İÿ†Z½®½\ÉU\\¼°Iø\é)\Ò&o\nv\Z~,\ÂGùY\Ú$g¨5k\ãw\Ñ\Öï¬·EÉ¶\á‡÷\İWN}~xHş\ÔL61\Şiø¹×£ñ‘_ñüe\åğ‹~\é&\rÒ¤<óû\ÕX§?ø\Ón\ç\ÜŞ¤G`ü’Y7\ço5“\Ù;\ã•\ã·4\í\r\04Ñº½ù\Ò„F\à\ÑI¦\nsoJ\'ûÎ†\"\Ç/(|6\Ù2\"}\Ëv¸\æü¿\Î¾÷ğ\ÙI“G—/ù2ÿi¬“„koJ~ı\"w»ğA6»Ş¬q\İn\ã\ßO›Í3«†Ÿ=*ş\å_\ãQ?m‡./‰:=±Gc’ÒŒóMNpº\'yQşÊ¿P£¦¨Tp»£g\Ñ\Ş\0@;ho:\ÅÁ\Øh\\4c¤\Ã\éÃ¿f+§²‰Ê‡±M\á4\â\ão=L‡\Ğ\Ş\ì=|\ìöf£NU\n?÷XB´7\Ów\â•\æ\Ô:òù3?\ÔN\İ[lzS-ü¸qr\ä\'j*¾®m\Ñ\Şdÿº\æ_\ÎRøKë’²§q¾$p\Ô\Ì\\:\í\×ù‰ô¼¶\êt«E{;_\\\ëz\Ëo¢ö\0š\ØK{\Ã2›\ì\à*¼ğ;\"¼ğ\Âò\Ú\Â_úŒ`(^:i39™\Ùrs{s\å\ä˜\Ú\0øŠhobym\ã8„^ø@„~•ğC\ï‘O\ï)^?Ì·y<u>\ã¥\Üo.­Tº\Ø\ÃW.X95>ÖŠ[io\0 	\íM,¯l`ˆğ\ÂˆğÂ¯~º[õYñt‡ı^7ww“i-å³Šn\Òÿo±½—3\É\\ \ã5É¼š\é>Æ“]w\Æ\ÕĞk\èVoo\n{/—­vvx\0ˆH{\Ë\ë\ZG\"¼ğ\Â\"¼ğ+„/V4\'\Åb\'\ß$g´\Ï\Ì\"¬\Ë\íMy\Ç\é\ìû–OD>ºó™û‰\ÖŞ¤\ë\È&›•7H¼\Õd¹™¾€ö´7±¼ªq(\Â/| \ÂÿòğsË¦\Æÿš4iIR\Ú\Ôz²rrÛ¹]‹G÷9>¹\Õ\änÓ¯\É\æùLê£›R\í­½)ş,n7¿\×P¥ı\í`!\íM,¯i`‹ğ\Âˆğ\Âm\á\åÓˆ¯¨\İÊ©¾¨É¾l³ö\Æ\0\Ú\Ò\Ş\Äzl)¼ğ\Â\"¼ğÂ‡4Ì±¹\å|RK4loŠ\Öooòû)l%\0-hob	=¶^x\á^x\á#x|ŸU\r\É68¥_«¸µ½™l\ÑsN>no\ÒE^é£›l\Ú<·/Pß±LÏ–~Sı²\ÅQ€«´7±\Ä[\n/¼ğñ/¼ğ\Ì\ìZ¼\Şş½S7´7åš¥\Ø\ŞL.õ\å™\íÍ´º¹µ²¹7\04¤½‰%\æ\ØRxá…Gxá…`\Ú\ŞTß›\åù\íMq\î\Ê0k\èÂ©µÒ®\æ†öfn\ß\æg\í”|û\Ş\0Ğ’ö&–˜cK\á…>\á…¢g·7\×j“¬„)U:§f\æ~–\ï{sù<bEY6Ë¦\0h\êğúû×¿ú\Õ7\ß|ó—..\ßt—\Ö)n¼\ß\ê\"|«‹ğ­.Â·ºDÿ\í·\ß6˜\í\ßKÚ›7¥\ÅG\å\É-É­^\ÖŞ”—-\êaò3¼\×\\Œ\0K^ÿöİ»\ï¿ÿş_~ÿ{ö\ïû\î\Ò<†ğ±/¼ğ\ß0ü?ü\Ğ|`¶7\ì{SÚ‚f8½\Ô\Ì9§&»\Í<³½¹´ \ëj{“7Nf\İ\0°VN\Åz^·ğ\Âˆğ\ÂO\Ñm\çœ*u)§™6UÚ›d÷\ã\Â)¨.·1ù\Î\É\Ï\Ú$\0\ê\Ñ\Ş\Äzl)¼ğ\Â\"¼ğ\ÂSt\ëÃ²uL\Ç^¥F{\Ó_™.\ÔZ\ÖŞ¤	\Ó<\0Ğ˜ö&–\ĞcK\á…>\á…¢—µ7_\ÒıdVno’ms\n•N:£f¾½I\îMuÀ¾hob	=¶^x\á^x\á)zv{óxŸ­iºt\â\ï[Ú›éš¬\Ã×—v\ÚI.³\íMi‹\ãE7€\ê´7±„[\n/¼ğ/¼ğ\İ\Ò\Ş\\lB^\ØŞŒw>~ı\ä\Ê7w®¯œ\Ò\Ş\0°_Ú›XB-…^ø@„^xŠ\Öho’3ƒ¿¼½ù2sRòôÊ®uY°\ïö€ı\Ò\Ş\Äzl)¼ğ\Â\"¼ğ\ÂSô\â}o\0€[hob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0Ğ„ö&–\ĞcK\á…>\á…\"\í\r\04ñ¬öæ¸­\Üi/¸\×\àÓ‡ñI&\'û\à\íLè±¥ğ\Âˆğ\ÂO‘ö\0šxN{ó´ÿ»»»7wŸ[\Ç~¹\Ó	òs®Üº½\éNˆ°ü›\Ö[\'b¨öó­<0~\ê\â\êıøy\á…^x\áùY{\0<£½y:\á\ãı\Çg¶\rû\ÔU7\Ù\Ù*›\ÙG{ót@\Î\ã\á§rb\Ö÷\'\r\×Ş„>ò\Â/¼ğ\Â/59{uÁpf\í|ˆ2w}#\Ú\0hby{s/u«\êœ6Ò ö²şk\í\Í\ãût@ø©\Êø°\ÖÀø\Ø+†œ{ú\È/¼ğ\Â¿\Ğ\á\êğ:\Õÿwi’>®\Ó\ë\Ú\Å\ë\Û\Ñ\Ş\0@KÛ›¤d\è\æ9LO#Š§\ÑE?¢°CNúÁ\Ó\é_ŸVc\å]\Ğq/šôş\Ç}\Ñ0}zò\Ö\Ó?=}<\×\İ\íLE\Ó\İ|\Ù\à\'<š­]:£¨\İZ³C†ô~’;™\ìºs¼·.ü\Ì\Ìğ*cË§x\ã^£±r\êUy\á…^x\áos2M^\åƒ“d\Ğ24<s\×7¤½€&¶7YSQœ»Òµ7\ï’AÅ±\Æ\ÆWİ¼\ß\áVŸŞŸ‡%Yr*:FŸ²õ÷3\êv\ÆEG\×\ŞÜ½»T\Î,;4Ù¢y\\+-moÒ‚.ıî…¹7›·7\ãadĞqÀö&ô‘^x\á…~GTxPOcŒó„\ç\ÒõõC\Î\Ó\Ş\0@\ËÚ›Q)\Ñı\ïh\àq\\”(²bv\ÆKw\Ã~dÒ­m¿\ËÚ¡ó¬Ÿ‹…I\Ş~§\å\\Ô\ç\Ã\\>2\å\ÕU\ÙL¡…\í\Í\èkº„s\İ\Ôu›\rŒk|´§½yUG^x\á…^ø›”¶\î\ÉW‡\r-\Í\Üõ\ÕC^ ½€&µ7yÁòsq\×\ß\É\×ü<¬c\êoR|s\Õ)\Ç\Â\é\r“ÿ.N›\ßüÚª¨E\íMyuX~ÿKÛ›Qà¤Œz²\×ö&\àÇš¯¤½	s\ä…^x\á…¾™F©¥¹{˜¿¾n\ÈË´7\0\ĞÄ’ö¦T‰L:Q)Q¸\ái/š‹%\Ïy”2\ìË—~£\áÆ—sC’\Ö>3JJñ!—\î\'­­±\ïMú5£šk\í\Í+\ÙR `{ú\È/¼ğ\ÂÿLóŸ1™{\0\\± ½™\ïL\Ò\Èõö¦3\ì\ß;|ñP‰ô¥M\ßid§–¸>mfA{SZöµø~^g{S8G•SZho^×‘^x\á…~¹\Ë\Û\î\Ù÷\0¸\âz{Sªe\Î×6%^\ĞŞœœ¶\Ä9ı\ï¹ÁHV‚Ÿ9\ÇÂŸ\Ó[]´,hoÊ‹¼Fn]95J¥½ù2ZªV\é|Ú›Wv\ä…^x\á…_ş®~ü4:Q\Âñm\îú†´7\0\ĞÄµö\æ\ÂL•¼©x^{sú§\ì»\Üß¿o_üğ!\ß\Ùo¼\åoñn¯¶7…“’O,Øµ¸\ĞO)µ´½Y>­7¶\Î\Ã^\íC=\í\Í\ë;ò\Â/¼ğ\Â_7;_\èqù¤\ã¨t«Ÿ¹\ë\Û\Ñ\Ş\0@WÚ›‹\İBÖ¥\\ko>Ş·\êM\ïö¸§q\é\Ôá¥³igC \Ã5\Ãÿ.ko¾œœ\Â<Y}4=cxv\ç£0\ç%f\Ïjo\nŠ6?cøV„^ø@„^ø\Õ\ËÆ‡K7x|?\Æ<Y™~\áúF´7\0\Ğ\Ä\åö\æ\Ê\\—n8qj\'®·7\ÓAKb<k\åKñtÛSñR¼«\Å\íMòM£©ò”Z¬tS C\Ô\ç\ï{óe:*\Ó\Ş\ì‘ğ\Âˆğ\Âmá·¤½€&1œ\İ=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0Ğ„ö&–\ĞcK\á…>\á…\"\í\r\04¡½‰%ô\ØRx\á…Dxá…§H{\0Mhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0Ğ„ö&–\ĞcK\á…>\á…\"\í\r\04¡½‰%ô\ØRx\á…Dxá…§H{\0Mhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0\Ğ\Ä\áõ÷ÿş\ïşá·¿ı÷?ı‰ı;ü¤\âş°„^ø@„ş+ÿ\ã?6˜\íŸö\0š8¼şş\Õ/~ñ........_÷\å\íÛ·\Ífû§½€V>ıñÿö‡?4ÿÌ‹%?©¸?,\á…>\á…ÿ\n\ÃFD\ÍGeû§½\0\0\0\Ø3\í\r\0\0\0Àio\0\0\0\0öL{\0\0\0°g\Ú\0\0\0€=\Ó\Ş\0\0\0\0\ì™ö\0\0\0`Ï´7\0\0\0\0{¦½\0\0\0Ø³¾½9ş\0\0\0\0[Z\Ş\Şü\ßÿ\0\0\0\0›ù\ßÿüÿùó\ç\å\í\r\0\0\0\0;¤½\0\0\0\Ø3\í\r\0\0\0Àio\0\0\0\0öL{\0\0\0°g\Ú\0\0\0€=\Ó\Ş\0\0\0\0\ì™ö\0\0\0`Ï´7\0\0\0\0{¦½€V~ú\İ\ï¾û\Íoşù§ŸØ¿\ÃO*\îKx\á…Dx\á¿\Âğ‡QóQ\Ùşio\0 ‰\Ã\ë\ï\ßüú×¿|û¶ù¨‰%\Şv—\æ1„EøVZ\ãşu\r}\ä…ş¶ğ\ß}÷]ó\Ùşio\0 ‰\Ã\ë\ï?ıø\ãa\Ğ\Ò<	KG˜\Íc‹ğ\Âˆğ\Â\ïœö\0š\Ğ\Ş\Äzl)¼ğ\Â\"¼ğ\ÂS¤½€&´7±„[\n/¼ğ/¼ğio\0 	\íM,¡Ç–\Â/| \Â/<E\Ú\0hB{Kè±¥ğ\Âˆğ\ÂO‘ö\0š\Ğ\Ş\Äzl)¼ğ\Â\"¼ğ\ÂS¤½€&´7±„[\n/¼ğ/¼ğio\0 	\íM,¡Ç–\Â/| \Â/<E\Ú\0hB{Kè±¥ğ\Âˆğ\ÂO‘ö\0šø\ÚÚ›\Ïwo\Ş\Ü}ø\Ô>\ÉmB-…^ø@„^xŠ´7\0\Ğ\Ä~Ú›÷oÆ—»‡\Ïk\í\ÍŸ\Şu‡¾\Æ!ªş”¹¿\Üs\ä?}¸ËŸó÷\ëŸ-Ş’\äıcˆğ“#\ß]\Ş=|Š¾Sÿi¿vø\Ç÷…C^\ë™_\é\È\ç¯Sµ^J6	_\å\ï\ä\Ê\á/¾eg¥Ñ‚öf!\í\r\04±‡ö¦kT¦£÷\ÃPı\á¥ö\æ’\Çûª\ïJj„?=y&—\Âã´²ñ6ü\Ò‰q\ägš„(\íM¡\ëğ´‰\Ş\Şl\Ôø\Õ	_>ø«ÿ¶®ş\Ò\ëQñ\á¬ğ²¥½YH{\0M4oo6®S´73FoLbµ7CÚ¡\ÌY{\âV¥ö&y\ë7¼‰\Ò!œeOX\íM·Şµ\ÃOò´ñx|\Ü}{3\Õ?s\Öÿƒ³zø\Éa\ïa÷ß›\ru\ß\é	?L\Ü\Úgø+¯G£‡Sş\ØÇ‘­´7\0\ĞD\ãö¦C\Ö~•\ÒŞ”L?S\Ô\Ş<\ä\ï>ú·T+?„\rFõ+¾\Ù2ühúSŒö\æü\îµ\ÆÜƒº\áû÷\İ–nq\äS\ç\É!¦¯œƒiW¼û\ê©\Ô\Õô\Èş~a¯½~VkÒ´7io\0 ‰¶\íM7€\\4\ÜzúÊ§¡\Ú\èó\Ñô\é\Â]eK\îK\íMv\'\éP¶»\í¾ªŠ\íMrxµ7¯¡½‰4÷\æ¼1\Åûû»½¾¼;^{\Ó?Ij\'¯u\ä\ç®ls\ä§}\ÎNÃ—\Z¿w\Å\×^úUCò\Õö\İ\Ò\Ş,¤½€&š¶7İˆk\ÙĞ±ko\î\Ş\å\ãü\Ãø3yŸ{¿¥_0¾¦0\Ø>kûİ°°¿Ï¯¦½\é\Åooú}ˆ•S©½¯e(:½i:ü\Ê\Ôk¶\Úq(D‡Ğ¿K½ÿ˜\íZ\"|¦^WY-|ö\çq¼i\Ï\áK[v\ÜŞ”x}ñ™³Ö\ãbøôƒ}\r¶§½€&š¶7Oc¡…c­\ã\Ø\ì\Ê\Ã\îYÿ5¥i6\Ç÷>ı•…ú¨»U­“q¼œö\æ’x{\çNv]®³¦òŞ¹O¿/ñÛ›\á/lü»û ™Š;\Ş\Ô¿\Åş`\ÂOö\ÔJ«¿h\íM±¨Ù¢½\Éÿhl¹\â{‡´7\0\Ğ\Ä\ŞÚ›¹=4­±\Êv\Ñ)O\ì\É*\î\ë\Ç\ï×FhûıXM{3\'}\æø4¼»Ò›©J\áGuM°ö&“¼%\ßû”­¤½9G‡\î÷møDañ\Ë\ÊjÎ½\É.1ş\Ú\ÌÔ•û~\Úì«½Ÿ\è­ş\ÆS{¦½€&š·7³C\Ç|\"\Íyß›\ÂW\ÆT\é–8Ó\\\Ö\Ş\Ìh7\ØS\â6Ú›’º\ç<\Ú\ä\È\çb¿\ï§\Î&û\ÍFno¾\Ä\Ù.©”3\àjÁz[\æV?\İYeµ½V6:ò\é|›\ÃS¥Ú–\ÑmÛ›jûŞœ\Ã\Üİ¿¯<m,\í\r\04\Ñ~ß›¹w\×Û›ó\à¹«›Í½Y\Ø\Ş€io¦’ú®â’·-:„j[ß¬~ü1ôø²f~\íM¢´\à(\Î\Ófr´\ãü\ÂOõ\Õ_¹ÿºu\"B\İzeß›Ò®\Å/ııŸn¶S\Úxg¨ò\ÒQGqs¡ügö+0\İXi\æ\rsc›ş^g&#\å÷ó‚\ç­ö\0šh|\Æğ¼¢¹ğO…öfz\ÛI{se\åÔ…\ï¾WÚ›±aU\İİŠ´7©\×\Ö\Ş<ò\Ã®pso\ê/›Z?ükko*hµÛ›\Ò¾ö\Ãóv¨ød(¤š\Î\Î*/¾\ë—û\ÇÛŸÂ¯\ÏLO¡>z\Ö\Í|Ápy\Âü^n;b\Ú\0h¢q{S8Q\ÔÙµöfº)ññ³§üŒQ£{>ú[uÿjõºö&Wqñ\Â&á§§H›¼)\Øiø±\ågi“œ¡Ö¬\ß9F[¿³\Ş%Û†\ŞwG\\9õù\á!ùS3\Ù\Äx§\á\ç^\ÆG~\Åó—•\Ã/ú¥›4H“Nxò\Ì\ïWcş\àO»s{“ñ7Jfİœ¿uR\ÔLf\ïŒW\ßvĞ´7\0\ĞD\ëö\æK?\Z\r€G\'™*Ì½)\ì;Š¿ ğA\ØdËˆô-\Û\ášóÿ:cø\Ş\Ãg\'M]v¾\æ\Ëü¦±Nt®½)øõ‹\Ü\í\Â\Ù\ìz³\Æu»#<m6{Î¬\Z~şõ¨ø—D1ü´º¼$\êô\ÄIJ3v\Î79=À\é\äEù7*ÿBš¢RÁ5îE{\0Mì ½\éc£q\ÑtŒ‘§ÿš­œ:\Ê&*\Æ6…Óˆ¿õ0B{³÷ğ±Û›N8U)ü\Üc	\Ñ\ŞLß‰WšR\ë\È\ç\ÏüP;uo±\éMµğ\ã\Æ5Ê‘Ÿü©©øº¶E{“ı\ëš9K\á/­KÊ\Æù’ÀQ3s\é´_\ç\'\ÒóÚªÓ­\í\í|q­\ë-¿‰\Ú\0hb/\í\r\Ël²ƒ«ğ\Â\ïˆğ\Â\Èk\é3‚¡x\é¤\Í\ädf\Ë\Í\íÍ•“cjo\0\à+¢½‰\åµ\rŒ\ã^x\á^øU\Â½G>½§xı0\ß\æñ\ÔùŒ—r¿¹´R\éb3\\¹`\å\ÔøX+n\rt¤½€&´7±¼²q \Â/| \Â¿Fø\én\Õg\Å\Óö{\İ\Ü\İM¦µ”\Ï*~¸Iÿ¿\Åöf\\\Î$s\×$ój¦ûOv\İWC7®¡[½½)\ì½\\¶\Ú\Ù\á \"\íM,¯k`‰ğ\ÂˆğÂ¯¾XÑœ‹|“œ\Ñn<3‹°.·7\å§³\ï[>ù\è\Îg\î\'Z{“®#›lvT\Ş ñ6\ÓV¨ó“ğZiobyU\ãP„^ø@„ş\å\á\ç–Mÿ5y_Ÿ–$¥M­\'{ \'·ÛµxtŸ\ã“[M\î6ıšlÏ¤‘¸y!\Õ\ŞÚ›\â\Ï\â\æ\n1~\0hL{\Ëk\Z\Ç\"¼ğ\Â\"¼ğ_[øDù4\â+j·rª/j²/Ûª½1€Æ´7±„[\n/¼ğ/¼ğ!\rsln9Ÿ\Ô\rÛ›¢õÛ›\ì~Ò©Mµ)\0,¡½‰%ô\ØRx\á…Dxá…`T5$óFJ¾Vqk{3™\ÓrN>no\ÒE^é£›l\Ú<·/P¿(lz¶ôÖ‹½°\\€µhob‰9¶^x\á\ã^x\á#˜Y\æSs\Ï\r\íM¹f)¶7“Â¥,\Ïlo¦\Õ\Íù›<«\×Ú¢€%´7±\Ä[\n/¼ğñ/¼ğLÛ›\ê›\ë>¿½) Ã¬¡§\ÖJ»šÚ›¹}›¯\íT\ê\Älz@kÚ›Xb-…^øx„^xŠ\İ\Ş\\«M²¦T\éœJ˜™ûY¾\ï\Í\åóˆ%&\íY7\0\ìÀ\áõ÷¯õ«o¾ù\æ/]\"\\¾\é.­S\Üx¾\ÕEøV\á[]„ou‰ş\Ûo¿m>0Û¿—´7oJ;\Ï$EM2q(¹\Õ\ËÚ›\ÒDš\ç¶73\É`K‡\×ß¿}÷\îû\ï¿ÿ—\ßÿıû¾»4!|,\Â/| \Â7ÿ\Ã?4˜\í\ß\rûŞ”¶ v\0\Ùx¨Pnko.-\Èz\Æ\\š´É©¾*\r\0.°r*–\Ğóº…^ø@„^xŠn;\çT©K9•!UÚ›d÷\ã\Â)¨nİ¸\Øô\0\Z\Ò\Ş\Äzl)¼ğ\Â\"¼ğ\ÂSt\ëÃ²EI\Ç2¤F{\Ó_™ö-\Ú\0B\Ó\Ş\Äzl)¼ğ\Â\"¼ğ\ÂSô²ö\æ\àÓ‡»¬Y­½IV6*ô\\\äó\í\Í\á†ù\Ö\ÊC\Ú7\×OV\0iob	=¶^x\á^x\á)zv{óxŸ­iºt\â\ï[Ú›éš¬\Ã×—v\ÚI.Û›7û¸üQÀÚ´7±„[\n/¼ğ/¼ğ\İ\Ò\Ş\\¬P^\ØŞŒ\ÎiuúúÉ•o\î>,X95\ß\ŞØ²€Æ´7±„[\n/¼ğ/¼ğ­\Ñ\ŞdM\ÈKÛ›/3\'%O¯\ì\êšeû\ŞNn»\0ö@{Kè±¥ğ\Âˆğ\ÂOÑ‹÷½\0n¡½‰%ô\ØRx\á…Dxá…§H{\0Mhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0\ĞÄ³Ú›\ã¶r¯h\ë¶O\Æ\'™œìƒ·3¡Ç–\Â/| \Â/<E\Ú\0h\â9\í\Í\Ó&ü\ï\î\î\Ş\Ü=|nû\åN\'8\ÈO:p¸r\ëö¦;!\ÂòoZol9œˆ¡\Ú\ÏWøyOEb½\ç#/¼ğ\Â\ß0ü+£½€&\Ñ\Ş<ğñş\ã3Û†}êª›\ìl•\Íì£½y: \çñğ\ÓùÒ™4o\'ülş\Êó¾y\á…^øV\áO’³f\Ï\Îa¾&¢\Ì]ßˆö\0šX\ŞŞœ\ÇK\İj£:§t…\É^\Ö\í¢½y|ŸŸ\"U\n_p,ECÎ½	}\ä…^x\á·	òñşğ§¾8¥?ø\é\ã:½4\\¼¾\í\r\04±´½IJ†nªÀdğğ4¢x\Z]ô	\nŸ.uw’ÿ\ë\Ó&ï‚{Ñ¤÷?î‹†\éÓ“¥OOÿôôñ\\w·3MwóeƒŸ<ğh¶v\é8Œ¢vk\Í\ÒûI\îd²\ë\ÎñŞºğ33Ã«Œ-Ÿ\âx&AøyÛ›\ĞG^x\á…~›ğ%\Å\éC‡+“A\Ë\Óc<ş\ï\Üõ\rio\0 ‰…\íM\ÖT\ç®t\íÍ»dPq¬q†ñU7\ïw¸Õ§‡÷\çaIÖœŠÑ§lııŒºq\ÑÑµ7w\ï.•3K\çM¶h\×JKÛ›t§ \ã£K¿{a\î\Í\æ\í\Í\áG“}»P\ã\Ğ\á\ë\Çv\ä…^x\á[†/\É™òƒz\Zcœ\'<—®¯ò\í\r\04±¬½•\İÿ\ê…\ã¢\ìlD‘µ³3^ºö#“nmû]\Ögõü\\,Lòö\ã8-\ç\â \î<\æò‘)¯®\Êf\n-loF_\Ó%œë¦®\Ûl`\\\ã£=\áç½’ö&Ì‘^x\á…\ß&ü\Ôx*\ÑQ¾:lhiæ®¯ò\"\í\r\04±¨½\É–Ÿ‹»şN¾\æ\çaS“\âûÓ¬N9~ •\Ş0ù\ïâ´™ñÍ¯­ŠZ\ÔŞ”W‡\å÷¿´½NÊ¨\'{mo\Â|¬:|ıØ¼ğ\Â/|\ËğÿŸ½;\Öm$¹ó\0ü&7V¶\ã65Î»‘8lbkc‚ó^¬ymj\ÜCó\ngf\íÈ†0X\à\È&Ù¬\ê®n¶(6«ş\ÒG|ÁˆCQ?µ(ªøcW\Õ\Ñ~N÷Ä¹µ¥–\æö~úú•B.¢½€*–´7¥JdÔJ‰\Â\'\Æ-s%\Ïa”r\\—/ıB\Ç{^\rIZûL(5*\Åo¹t?imõ„uo\Ò\Ûj®Ú›\ĞK\n„¿~lG^x\á…¾føò·S<¹×¹7\0Àœ\í\Ítg’¦N·7\ãú½\Ç+‘¾´\é;lk‰Ó§\Í,hoJÓ¾\ß\Ï\Ëlo\n\Ûy¬²¥…ğ\Ó¶7±¼ğ\Â/üuÂ—¾\ë\Ş\0\0\'œnoJµ\Ì\áúÁ¢\ÄÚ›½ı’8û\rF²Ã¾Ù!ü)ı¬\ÙAË‚ö¦<\Ék\àÜ™Sƒ„QÚ›\ÇÁTµ•ö³~Z\Äö&ö‘^xá…¿Nø‚R5\Ş[j÷Ga\êúŠ´7\0PÅ©öf\æL•¼©xZ{³ÿ¯\ì«\Üİ½._|ÿ]¾«\æp\É\ß\âİlo\n›’,Xµ¸\Ğ\r·”Z\Ú\Ş,ˆ®7¶<\îÃ¾Ú›z\ÂO\Ù\ŞD?ò\Â/¼ğ\×	¿\ä[?¤S\Â÷Oş\é8*]\êg\êúz´7\0PÅ‰öf¶[Èº”S\íÍ‡»\áR½\é\İ\î\Ö4.m^\ÚM;+^6\×?\\\Ö\Ş<\nœ\Â\n<Y}4\Ş1<»óA˜\Ã³\'µ7…Š®¾cøµ/¼ğ/¼ğ—³u\ì.\ÉÀ\à\áığ4\æ\Ñ\Ìô™\ë+\Ñ\Ş\0@ó\íÍ‰s]º\á\Ä~rº½¹I/\Ã\Ó†g­<·\Û\îdC Á]-no’/z3,¿A©\ÅJ\ÚD}úº7\ãQ™ö¦E\Â/| \Âÿ\Ú\Â_“ö\0ªX´c8\Í=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P\Å\æ\ï\ï\ïû›\ß}ó\Í_~ü‘öm~RqX\Â/| \Âÿ\nÃ¿{÷®úÀ¬}\Ú\0¨bó÷÷\çŸş3—\×}yó\æMõYû´7\0P\Ë\Ç~ø\Ó÷\ßWÏ‹%6?©¸?,\á…>\á……\á7#¢ê£²öio\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0ZÖ·7»\0\0\0\0pM\ËÛ›ÿ\ã\ï\0\0\0\0\\Í¿şö\×şù\Óòö\0\0\0€io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0 –oÿğ‡/ı\ëÿıö[Ú·ùI\Åıa	/¼ğ/ü+¿U•µO{\0Ulşşş×¯~õ‹7oªšX\âMw©CøX„¯eó\Ô\Z÷\Ù5ô‘^øó\Âù\å—\Õf\í\Ó\Ş\0@›¿¿ÿó\î\İf\ĞR=	K\ìF˜\Õc‹ğ\Âˆğ\Â7N{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0U¼¶ö\æ\Óı\í\Í\Í\íw\ë\'9Oè±¥ğ\Âˆğ\ÂO‘ö\0ªh§½ùpw3¼\Ü\ŞºôW\ÑŞœğñşmw\è\×8Dk…\ßg\î/w\Âù\ß\İ\æù»‡\ËŸk¼$9~#\ïB„ù\îòöşc„ğõö—ÿğ¾p\È\×z\ä¯t\äó¿Skı)¹JøU\'/~ö\ïQö\í\\h´ ½YH{\0U´\Ğ\Şt\Êxô¾\ê_~x©½™óp·ê«’5\Â\ï<£KŒ\áa\\Y†x>÷\Ä8òMB”ö¦\Ğux\ØDoo®\Ôø­¾|ğ/ş\Ûz\ÉğsŠ\ß\Îşlio\Ò\Ş\0@\ÕÛ›+\×)Ú›	ƒ&±Ú›c\Úc™s\é·Vjo’—~\Ç\×#Q:„ƒ\ìÁ«½Y\ã¥÷\Ú\áò´ñxxh¾½\ë9—Â¹xø\Ña\ïa\Û\ïÍu\ßş<q«\Íğ\'ş\r¾òoDGş¥\Ò\Ş\0@•Û›n¹ö¨”ö¦dür ö\æ>õÑ¿¤ºğ·p…Qı_ƒ\\3ü\àô§\í\Í\á\Õ\ë\Z\ç¬¾İ½\Â\Ä\Òkù\Ô\á\äŠ§¯\ZƒqW\Ü|õT\êjú¤½_\ØS\n¿kÒ´7io\0 Šº\íM7€\\4\Ü\Ú\Şr;T¼c>8}ºpW\Ùƒ»‡R{“\İI:”\í>·­ªg\Åö&9¼Ú›‘—\Ğ\ŞD:÷\æ°0\Åû»\ÛV_\ÎÄ\×\Şô’µ“¯u\äV<w\å:G~\Ü\ç4\Z¾\Ôø5\ÜŸú{\ÔÏ¨:&¿Øº[Ú›…´7\0PE\Õö¦q-:v\í\Í\í\Û|œ¿&¯sw\ã·ô\Ãk\nƒ\íİ°¶\Ï\Ğ\rûû|5\íM/~{\Ó\ìCÌœJµ>—¡hÿ¢ió+³^«p­‡Btı«Ô»Ùª\Å!\Âg\Ö\ë*WŸ==\ç\"µ¾ô\Ü\Òp{S>\àıõ\ÅGÎ¥~³\á\Ó7z\Ú\Z\\Ÿö\0ª¨\Ú\Şl\ÇB\ÇZ»±Ù‰†\İ+²ş6¥\Ólv¯}ú+õQ÷Ykm\Æñ|Ú›9ñ\Ö\Î­º¼\Ît˜•\×\Î\İş¾\ÄooB„ŸYø·ù3@2+®x³føk¬¶BøÑšZiõ­½)5\×hoò\'k\Îønö\0ªh­½™ZCc\Ñ«lò‰=Y¥\Ó\İ~øzm;Bk÷m5\íÍ”ô‘\à\İğR\ì•^L­~P\×ko2\ÉKò\ÖO\ÙJÚ›C\Ô\ã\ä\Ğv_†&¿\\Øš\ç\Şd—\Ï6ue\Û›¶Ú›\áFo\ë/<\Õ2\í\r\0TQ½½™:\æ\'\ÒÖ½)\Ür0¦J—\Ä\ä²öfz@{…5%Î£½)YwÏ£«ùü»h÷õ\ÔÁh½\Ù\È\í\Ícœ\å’J9\Î\\o\É\Ü\ÕÂWV¹\ØZ+W:ò\éù6›‡\ÊjKF\×moV[÷\æ\æö\îıÊ§… ½€*\ê¯{3õŠ\ãt{s<÷/u³so¶7Á`Ú›±¤¾[q\Ê\Û5:„Õ–¾¹xø\á\Û\Ğ\Ã\Ë%óko¥	Gq6££\ç¶¸\ÕWeûu\ëH„ºõÄº7¥U‹Ÿûû;>]l§´ğÎ±\ÊKG\ÅÅ…ò\'\Ï\ìW`¼°\Ò\Ä\rSc›ş^&NF\Ê\ï\ç[\í\r\0TQy\Çğ¼¢™ù¯B{3ş\ÜQ{sb\æ\Ô\ÌWo•öf\èxÕº«ioR/­½	x\äO\\\áÎ½Y\Ú\Ô\åÃ¿´öf\Åm\íö¦ô€_{\Çğ¼*>\n©\Ægg•\'\ßõ¿\Ëı÷\Ûo\á×g\Æ[¨u78\ŞC0¿—ó˜ö\0ª¨\Ü\Ş6Š:8\ÕŞŒ%Ş½÷”\ï5¸\ç\İØ©ÿ¬\î\ÃP³×µ7¹\'/\\%üx‹´Ñ‹‚F\ÃEx+?K›\ä5gmø\Ê1\Úü\Ë-Qr\İğ\Ç\×\İgN}º¿OjF‹7\Z~\ê\ï\Ñğ\È_pÿ²røE¿t£i\Ô	ùıl¬ış¸\Û9´7\é~¡ä¬›Ã—NŠš\Ñ\Ù;Ã™\ã\ç4\í\r\0TQ»½y\ìBƒğ`“©Â¹7¥Í¾³¡\È\î…7\ÂFKF¤/\Ù6\×>´cx\ë\á³M“—Æ§À<N¿a\Zkó ½p\íM\éÀ_¾È½^ø ‹]_­q½\ŞÂ¿6W{\Ì\\4üôß£\â3ÿ%~\Åğ\ãvh~J\Ôş=“”\Î\Ø9|\Êş¯I^”¡ò/Ô )*\\\Ã\î\èI´7\0PE\íM§8Œ‹\ÆcŒt8½ù\ßl\æ\ÔNv¢òflS\ØF|ø¥§ChoZ»½¹Ò†S+…Ÿú^B´7\ãW\â+²Ö‘\Ïù¡V\ê¾Æ¢7«…6®Qü\è©fÅ¿k\×ho²ÿ½\ä3g)üÜ¼¤\ìaœO	43s\Û~HOk«öŸµhm\çÙ¹®\çü&jo\0 ŠV\Ú–¹\Ê\n®\Â\ß\á…>—~\î=‚cñ\ÒI›\ÉÑ™-g·7\'6\Ç\Ô\Ş\0À+¢½‰\å¥\rŒ\ã^x\á^ø‹„?öù\é=\Å\ë\ç\Û<\ì;Ÿ\áTî›¹™J³=\Ìñ\Ê3§†{`]pi \í\r\0T¡½‰\å…\rŒ^x\á^øK„¯V}P\Ü\î°_\ë\æövtZKyWñÍ§ôÛ›a9“œ´»&9¯f¼ñhÕa5t\æº‹·7…µ—\Ë.¶;<\0D¤½‰\åe\rŒ#^x\á^ø„/V4{\Åb\'_$g°\Z\Ï\Ä$¬ùö¦¼\âtöu\Ë‘\î|\â~¢µ7\é<²\ÑbG\å/`\Å}	\àI´7±¼¨q(\Â/| \ÂÿüğSÓ¦†ÿ›4iIRZ\Ôz´rò¹S«\îs¸¹\Õ\èn\Ó\Ûd\çùŒê£³\'Rµ\Ö\Ş3[À5iobyI\ãX„^ø@„şµ…O”·¿ z3§ú¢&»Ùš\í\Í*»›Ày´7±„[\n/¼ğ/¼ğ!Ï±9g?©%*¶7E\ëµ7\Ã\íº´7\0T¥½‰%ô\ØRx\á…Dxá…\à\á}VY$çŠ¬V5œ\ÛŞŒ–\è9$¶7\é$¯ô»-\Ú<µ.P?)l¼[úæ‹·k\×\Ş\0P•ö&–˜cK\á…>\á…>‚‰U‹WY¿w\ïŒö¦\\³Û›qg\Ò/Olo\Æ\Õ\ÍSJ˜Ã½½ÿ\Ğ\í\r\0Uiob‰9¶^x\á\ã^x\á#·7«\ï¦ıôö¦xF\Ğñ¬¡™­µÒ®\æŒöfj\İ\æ“+¥«C\Ò\Ş\0\Ğ\íM,1Ç–\Â/|<\Â/<EOnoN\Õ&Y	Sªtö%\Ì\Äı,_÷f~±q\İ\×\Õ\Ş\0Ğˆ\Í\ß\ßÿü\å/?û\ì³ÿp‰pù¬»\ÔNq\æEøZ\ák]„¯u¾\Ö%zø/¾ø¢úÀ¬}\ÏionJ+\Ï$EMr\âPòY\ÏkoJ“\Ëfz˜~\êÖ¸G\Ò\Ş\0P\Õ\æ\ï\ï¿}û\ÕW_ı\ßÿHû¾\ê.\Õc‹ğ\Âˆğ\Ãıõ\×\Õf\í;cİ›\Ò4\Ç\í¥&öœ:¶.\çµ7s²¦z˜Ò]\Ú\0\Za\æT,¡\Ï\ë^x\á^x\á):oÏ©R—²?\Óf•ö&Yı¸°\ÕDsr\0iob	=¶^x\á^x\á):w\Çğl\Ópa™Ëµ7ı•\éD-\í\r\0¡iob	=¶^x\á^x\á)z^{³ññ»CGr\áö&Y6§P\é¤{‘ko\0H{Kè±¥ğ\Âˆğ\ÂOÑ“Û›‡»lN\Ó\Ü\Æ\ß\ç´7\ã\Êesû\ÒJ;g60Ö½ Ú›XB-…^ø@„^xŠ\Îiof+”g¶7ƒ=­ö·]ys{ÿİ²\Ã´7\04B{Kè±¥ğ\Âˆğ\ÂO\Ñ%Ú›dgğ\ç·7›’§Wv\Å\Ë\ÉuoŠ´7\04B{Kè±¥ğ\Âˆğ\ÂOÑ³×½\0Î¡½‰%ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0PÅ“Ú›İºmûµ\à^‚\ß\r7™­ƒ×˜\ĞcK\á…>\á…\"\í\r\0Tñ”öf»øÿ\Û\ÛÛ›\ÛûOµc?\ß~|û€Í•\×noº\r–\ÑõÆ–ÇVûù\nÿò\Âw¶-\èz¿8¼ğ\Â=ü£½€*\Ğ\Şl7|¼ûğÄ¶¡M]u“\íVYM\í\Íö€\Æ\Ã\Ûò:{b\nÿ\Â\Âÿ”\ì£\Z®½	}\ä…^ø@á‡º\í³\ËÏ™Çµó!\Ê\Ôõ•ho\0 Š\å\í\Ía¼\Ô\Í6Zg\àt%]a\Ò\Êü¯&Ú›‡÷\é€pi•ñ¡ğ/+ü¡\Ñ\ry\îM\è#/¼ğ\Â\n?°Ÿ²]x\ÎL¿¯ı³\ë\ìõõho\0 Š¥\íMR2tï¶\Û\ÅvtÑ¿_X!§»“ü·³±ò.h7°I\ï\ØOŸM}\Úş\×ö\í¹\în\'*š\îÓ—\r~òÀƒ³µK\Çaµ›k¶É\ŞOr\'£Uwv÷Ö…Ÿ83|•±\å6\Şğ€¯ñb\\ø~ıØ¼ğ\Â>|n;r¸»{_jo6ƒ“dĞ²ıwN]_‘ö\0ªX\Ø\ŞdMEñÜ•®½y›*v5\Îq|Ò÷{ü¬÷\ïÃ’¬\Ùƒw\Ùúût;Ã¢£kon\ßÎ•3K\Ï\Z-\Ñ<¬•–¶7\éJA»\ï.ı\ê…so®\Ş\Şl~4Ù—50¾Vøõc;ò\Â/|øğ©}\rõPjo†\ßT\×ó<L_¿Z\È´7\0PÅ²öfPJt\ê…İ¤\ìlD‘µ“g¼\äÀ»¹\í·Y;t8«\ç§ba’·»\Órfu‡óa\æLyvUv¦\Ğ\Âöfp›.\áT7u\Ú\Õ\Æk¼µ\'ü‹\nŸ\Ç~\íM˜#/¼ğ\Â\nŸ\Ç\î*‹\íM>;\ì\Ø\ÒL]¿R\ÈE´7\0PÅ¢öf´\Â^a\Õ\ß\Ò*|‡yLı§_\âeu\Ê\î\áô“O›~ú©YQ‹Ú›ò\ì°üş—¶7ƒÀIµ\Õj{\æmM\ák…_?¶#/¼ğÂ‡´.‹Û›\Ûû\é\ëW	¹ö\0ªX\ÒŞ”*‘Q2(%\nŸ¸_‹f¶\ä9ŒR\ëò¥_\èx\ÃË¡!IkŸ	¥F¥ø-—\î\'­­°\îMz›A\Í\ÕB{zI\ák…_?¶#/¼ğÂ‡¿“PÎ½\0Î± ½™\îL\Ò\Ñ\Ô\éö¦s\\¿÷x\ãc%Ò—6}§‘m-qú´™\íMi\Ú\×\âûy™\íMa;U¶´şe…\ïloby\á…>Pø\Ç~Ÿ©©7ú\ÛX÷\0˜qº½)\Õ2‡\ë‹/hoööK\â\ì?<4‡M\Éû\Zdw†púv\Õü eA{S\ä5p\îÌ©A\Â(\í\Í\ã`ª\ÚJûYÿ\Â\ÂDloby\á…>Pø‘\â¹7…½¥v·™º¾\"\í\r\0Tqª½™9S%o*\Ö\Ş\ìÿ+û*ùš»\Şæ»»›\Ñ^\á¥*)½Á\Éö¦°)ùÈ‚U‹-\ĞpK©¥\í\Íò\èzc\Ë\ã>ì«½©\'ü\Ë\ß	\Ù\ŞD?ò\Â/| ğ¹´½Iş£Ò™VS\××£½€*N´7³\İBÖ¥œjo>\Ü\r—\êM\ïv·¦qi\ëğ\Òn\ÚYñ²¹\æø\á²ö\æ±?y¼OVw\Ï\î|\æ0\Å\ìI\íMá„¢«\ï~-\Â/| \Â/ü:&Ú›\Ç\Ãö\Ãq\Îôõ•ho\0 Šùö\æÄ¹.\İpb\ßNœno²\Ù\Ş\Ãw\ê‡g­<·\Û\îç§wµ¸½I¾\è\Ít°ü¥+]hõ\é\ë\Ş<GeÚ›	/¼ğ/ükM\Ú\0¨bÑ\á4#ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@›¿¿¿ÿ\ío~÷\Í7ùñGÚ·ùI\Åıa	/¼ğ/ü+ÿ\îİ»\ê³öio\0 Š\Í\ßßŸşù\Ï\\\\\\\\\\\\\\\\^÷\åÍ›7\Õf\í\Ó\Ş\0@-ø\áO\ß_ı=/–\Øü¤\âş°„^ø@„ş†ßŒˆª\ÊÚ§½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0hY\ß\Ş\ìş\0\0\0À5-ooşı¿\0\0\0p5ÿú\Û_ÿù\çO\Ë\Û\0\0\0\0\Z¤½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½€Z¾ı\Ã¾üõ¯ÿ÷\Ûoi\ß\æ\'÷‡%¼ğ\Â\"¼ğ¯0üfDT}T\Ö>\í\r\0T±ùûû_¿ú\Õ/Ş¼©>jb‰7İ¥z\ác¾–\ÍSk\Üg\×\ĞG^x\á\Ïÿ\å—_V˜µO{\0UlşşşÏ»w›AKõ$,±aV!|,\Â/| \Â\ß8\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0Tñ\ÚÚ›O÷·77·\ß}¬Ÿ\ä<¡Ç–\Â/| \Â/<E\Ú\0¨¢ö\æ\Ã\İ\Íğr{ÿ\é\Ò_E{s\Â\Çû·İ¡_\ã­~Ÿ¹¿\Ü}s\ä?~w›?\æ\ï.|®ñ’\äø¼~t\ä»\Ë\Ûû\Âw\Ö\Ø_:ü\Ãû\Â!_ë‘¿Ò‘\ÏÿN­õ§\ä*\áWy¼pøÙ¿GÙ·s¡Ñ‚öf!\í\r\0T\ÑB{\Ó5*\ã\Ñûf¨ù\á¥öf\Î\Ãİª¯J\Ö¿ğŒ.1:„‡qe\âeø\Ü7\ã\ÈO4	QÚ›B\×\àa½½¹R\ã·NøòÁ¿øo\ë%\Ã\Ïı=*~;ø³¥½YH{\0UToo®\\§ho&^˜\ÄjoieÎ¥O\ÜZ©½I^ú_D\é²O¬öf—\Şk‡?>\È\Ó\Æ\ã\á¡ùöf¬\ä\\ş	\ç\â\áG‡½ÿ…m¿7;\Ö}ûüñÄ­6ÃŸø{4øvÊ¿mù—J{\0UTnoº1\ä\Ú/ RÚ›’ñ{ÊÚ›ûü\ÕGÿ’\ê\Â\ß\ÂFõ|\rr\ÍğƒÓŸb´7‡W¯kœ{°nøşu÷\nK¯q\äS‡“+Bœ¾rh\Æ]qó\ÕS©«\éö~aOı=*ü\n\\¬I\Ó\Ş,¤½€*\ê¶7\İ\0r\Ñpk{\Ë\íPmğù\àô\é\Â]eS\îJ\íMv\'\éP¶ûÜ¶ªÛ›\äğjoF^B{\éÜ›\Ã\Â\ï\ïn[}18;^{\Ó?H\ÖN¾Ö‘?ZñÜ•\ëùqŸ\ÓhøR\ã\×pW|\ê\ïQ?£\ê˜üb\ënio\Ò\Ş\0@UÛ›nÄµl\èØµ7·oóqşfü™¼\Îİ\ß\Ò¯)¶w\Ã\Ú>C7,\ì\ïóÕ´7½ø\íM?°1s*\Õú\\†¢ı‹¦Í¯\Ìz­ÂµV\n\Ñ!ô¯R\ï>d«‡ŸY¯«\\-|öô8œ‹\Ôrø\ÒsK\Ã\íMù€÷\×9—úqÌ†O\ß\èik`p}\Ú\0¨¢j{³-k\í\Æf\'^v¯\ÈúÛ”N³Ù½ö\é¯,\ÔG\İg­µ\Çóio\æ\Ä[;w´\êò:\ÓaV^;wûû¿½	~f\á\ß\æ\Ï\0É¬¸\âÍšá¯±>\Ø\n\áGkj¥\Õ_´ö¦X\Ô\\£½ÉŸ4®9\ã»A\Ú\0¨¢µöfj\rEs¬²Ut\Ê\'öd•Nwû\á\ëµ\í­İ·Õ´7S\ÒGN€w\ÃK±Wz1µRøA]¬½\É$/\É[?e+ioQ“C\Û}>R˜ürak{“]b<\ÛLÔ•m?l\Újo†½­¿ğTË´7\0PEõöfrè˜ŸHsX÷¦p\ËÁ˜*]g<\ËÚ›\é\íÖ”8ö¦d\İ=®r\äó\ï¢\İ\×S£õf#·7q–K*\å8[p½%sW?^Y\åbk­\\\éÈ§\ç\Ûl*«-]·½Ymİ›C˜Û»÷+Ÿ6‚ö\0ª¨¿\î\Í\Ô+\Ó\í\ÍağÜ¿\Ô\ÍÎ½Y\Ø\Ş€ioÆ’ún\Å)o\×\èV[ú\æ\â\á‡oC/—Ì¯½I”&\ÅyØŒvœ_\Ø\âV_ı•\í×­#\ê\Ö\ëŞ”V-~\î\ï\ïTøt±\Ò\Â;\Ç*/uÊŸ<³_ñ\ÂJ4Lmú{}˜8)¿Ÿg<nµ7\0PE\å\ÃóŠf\æ¿\n\í\ÍøsG\íÍ‰™S3_½UÚ›¡\ã	T\ë®V¤½I½´ö&\à‘?>q…;÷fıiS—ÿ\ÒÚ›´µÛ›\Ò~\í\Ãóv¨ø`(¤\ZŸU|\×ÿ.÷\ßo¿…_7o¡>x\ÔM\Ü\àxy\Âü^\Î;b\Ú\0¨¢r{S\Ø(\ê\àT{3^”x÷\ŞS¾c\Ô\àwc§ş³ºC\Í^\×\Ş\äVœ¼p•ğ\ã-\ÒF/\n\Z\r?\á­ü,m’3Ôœµ\á+\Çhów.·D\Éu\Ã_wGœ9õ\éş>yª-b\Ühø©¿G\Ã#Áı\Ë\Ê\áıÒ\Z¤Q\'<z\ä÷³±öOø\ãn\ç\ĞŞ¤G`ø…’³n_:)jFg\ïgŸwĞ´7\0PE\íö\æ±\rÀƒM¦\n\çŞ”6ûÎ†\"»\Ş-‘¾d\Û\\søĞá­‡\Ï6M\\\ZŸó8ı†i¬ÍƒöÂµ7¥ù\"÷z\áƒ,v}µ\ÆõzÿFx\Ø\\\í1s\Ñğ\ÓŠ\Ïü—øAÃÛ¡ù)Qûö`LR:c\çğ)ûop¼&yQş…Ê¿Pƒ¦¨Tp\r»£\'\Ñ\Ş\0@\r´7\â`l0.\Z1\Ò\áô\æ³™S;Ù‰Ê›±Mañ\á—>¡½i=|\ìö\æJN­~\ê{	\ÑŞŒ_‰¯t\ÈZG>\ä‡Z©û\Z‹Ş¬~Ø¸F9ò£§šÿ®]£½\Éş÷’Ïœ¥ğsó’²‡q>%p\Ğ\Ì\Ìmûux =­­\ÚÖ¢µgçºó›¨½€*ZioX\æ*+¸\n/|C„^ø@^Zø¹÷\ÅK\'m&Gg¶œ\İŞœ\ØS{\0¯ˆö&–—60Cx\á…Dx\á/ş\Ø{\ä§÷¯?oó°\ï|†S¹o\æf*\Íö0\Ç+Ìœ\Z\îuÁ¥v´7\0P…ö&–60Dx\á…Dx\á/~¼ZõAq»\Ã~­›\Û\Û\Ñi-\å]\Å7Ÿ\ÒXlo†\åLr.\Ğ\îšä¼šñ:Æ£Uw†\ÕĞ™s\è.\Ş\Ş\Ö^.»\Ø\îğ\0‘ö&–—50Dx\á…Dx\á/¾X\Ñ\ì‹|‘œÁj<“°\æÛ›òŠ\Ó\Ù\×-oD>¸ó‰û‰\ÖŞ¤ó\ÈF‹•H|nÁe\İ»\0`ö&–50Ex\á…Dx\áŸ~j\Ú\Ôğ“\Æ }\Õ_Z\Ôz´rò¹S«\îs¸¹\Õ\èn\Ó\Ûd\çùŒê£³\'Rµ\Ö\Ş\Ï1½Rö€š´7±¼¤q,\Â/| \Âÿ\Ú\Â\'\ÊÛˆ_P½™S}¯’\İL{À+¡½‰%ô\ØRx\á…Dx\á…\éx\ÍZUC\Åö¦hµö\Æ\ê:\0´E{Kè±¥ğ\Âˆğ\ÂÁ\Ãû¬²H–Á)MøºˆsÛ›\Ñ=‡\ä\Ãö&\ä•~w£E›§¨\é\'…Ï¢Y0_¬?yÉ™6\0´E{KÌ±¥ğ\Âğ\ÂÁÄª\Å:¥\èŒö¦\\³Û›‡Q\á\Ò/Olo&\'@èµ´7\04J{KÌ±¥ğ\Âğ\ÂÁ¸½Y}¾\Ï\ÓÛ›\âAÇ³†f¶\ÖJ»š3Ú›©u›gW*bfQPŸö&–˜cK\á…>\á…¢\'·7§j“¬„)U:ûf\â~–¯{3¿\ØÁ\ä&\ìg\ï\Ò\0±ùûûŸ¿ü\ågŸ}ö..Ÿu—\Ú)Î¼_\ë\"|­‹ğµ.\Â×ºDÿ\Å_T˜µ\ï9\íM±IŠš\ä—ä³\×Ş”Ú˜³\Úg\à\0P\×\æ\ï\ï¿}û\ÕW_ı\ßÿHû¾\ê.\Õc‹ğ\Âˆğ\Ãıõ\×\Õf\í;cİ›\Ò4\ÇUe&öœ:¶(\çµ7s²²¤s\Z\Ş\é7\0Td\æT,¡\Ï\ë^x\á^x\á):oÏ©R—²?•e•ö&Yı¸°\Õ\Ó6\äº\ÆN^\0p’ö&–\ĞcK\á…>\á…¢sw\ß\É\æ%\íz•5Ú›ş\Êôl\í\r\0¡iob	=¶^x\á^x\á)z^{ó˜l\É}\éö&Y—¦P\é¤{‘Ï”0››\åÿ›Îœšİ¬\n\0Ö¥½‰%ô\ØRx\á…Dxá…§\è\É\í\Í\Ã]6§in\ã\ïsÚ›ñœ¬\Í\íK+\í$—ùöf\êrjO+\0X•ö&–\ĞcK\á…>\á…¢sÚ›\Ù\n\å™\í\Í`O«ı\íGW\Ş\Ü\Ş·d\æ\Ôd{“f€\n´7±„[\n/¼ğ/¼ğ]¢½É¶\Ş~n{ó8±)yzeW\×,[÷\æ8±«¿˜0@´7±„[\n/¼ğ/¼ğ={\İ\0\àÚ›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0U<©½\Ù-+·_\î%ˆ·0]è±¥ğ\Âˆğ\ÂO‘ö\0ªxJ{³]üÿ\í\í\í\Í\íı§Ú±Ÿo¿ÁA¾\éÀ\æ\Êk·7İ†Ë¿\èzc\Ë\ãF«ı|…¾©ğm…»\Şo½#/¼ğÂ¿<\Ú\0¨\â	\í\Ív\ÃÇ»Ol\Ú\ÔU7\Ùn•Õ´\Ñ\Şl\Èa<¼!\Ï\í¤y>\á…o\'üO\Éµ\áÚ›\ĞG^x\á_[ø½|\×\ìòi\Ì\Ç\Û\äC”©\ë+\Ñ\Ş\0@\ËÛ›\Ãx©›m´\ÎÀ\éJºÂ¤•ù_M´7\ï\Ó\á6\Ò*\ãC\á…o&ü¡y\îM\è#/¼ğ¯-üÁ\æ9g~\ì”~_û\'¨\Ù\ë\ë\Ñ\Ş\0@KÛ›¤d\èŞ°\r¶#Š\í\è¢;»ğ\ÖRw\'ùÿngc\å\ã™\İZ4\éıû¢\éûWùXhû_Û·çº»¨hºO_6ø\É\Î\Ö.‡A\Ôn®\Ù&Cz?ÉŒV\İ\Ù\İ[~\â\ÌğUÆ–\Ûx\Ã¾\Æ\ëY\á…o%üú±y\á…>µ3Ì¶7›ÁI2h\Ù~»§®¯H{\0U,lo²¦¢x\îJ\×Ş¼M»\Z\ç8¾\ê\Îû=~\Ö\Çû÷‡aIÖì‹Á»lııºa\ÑÑµ7·o\çÊ™¥\ç–h\ÖJKÛ›t¥ \İw—~õÂ¹7Woo6?š\ìË…\Z/ü³loBy\á…m\áNµ7\Ão\êpû©\ëW	¹ö\0ªX\Ö\ŞJ‰\î\ÃA½°›”(²bòŒ—\îû‘I7·ı6k‡gõüT,LòöcwZ\Î\ì \îp>\Ìü‘)Ï®\Ê\ÎZ\Ø\Şn\Ó%œ\ê¦N»\ÚÀx·ö„¾•ğy\ì\ĞŞ„9ò\Âÿ\Ú\Â¤g&—\ê—|vØ±¥™º~•io\0 ŠE\íM^°üT\\õwt›Ÿó˜úO)¾J\Ê\ê”\İ\Â\é\'&ÿ.63üôS³¢µ7\å\Ùaùı/mo“2j«\Õö&\ÌÛš\Âÿ,/¤½	s\ä…şµ…/(\rŠ-\Í\íıôõk‡œ£½€*–´7¥JdÔJ‰\Â\'\î×¢™-y£”\ãº|\é:\Ş\Ãğr¥µÏ„â¨©ô-—\î\'­­°\îMz›A\Í\ÕB{zI\á…–€\íM\è#/¼ğ¯-|Qaña\ç\Ş\0\0\',ho¦;“t\ìqº½\é\×\ï=\ŞøX‰ôã™¾\ÓÈ¶–8}\ÚÌ‚ö¦4\íkñı¼\Ìö¦°\Ç*[Z/|3\á{Û›\ØG^x\á_[ø’Â·`\İ\0\à„\Ó\íM©–9\\?X”xA{³·_gÿ\á¡Á8lJş\Ø\× »3„?¥ŸujË†“\ÍLq’\×À¹3§	£´7ƒ©j+\íg!¼ğ\í„?ˆ\Ø\Ş\Ä>ò\Âÿ\Ú\Â”6ş\ï-µ{jšº¾\"\í\r\0Tqª½™9S%o*\Ö\Ş\ìÿ+û*ww\ï‡\Ë\ßw—\Õ5\Ã%‹w{²½)lJ>²`\Õ\âB4\ÜRji{³| º\Ş\Øò¸ûjo\ê	/|S\á;!Û›\èG^x\á_[ø\íS\Í]öVT:%|ÿ”£Ò¥~¦®¯G{\0Uœhof»…¬K9\Õ\Ş|¸.Õ›\Ş\ía/†ñ\Ö\á¥İ´³\âes\Íñ\Ãe\í\Í\ã¡À)¬À“\ÕG\ãÃ³;„9L1{R{S8¡\è\ê;†_‹ğ\Âˆğ\Â9ûQ\Ç\Íp`óğ~x\Zóhfú\Ìõ•ho\0 Šùö\æÄ¹.\İpb\ßNœnon\Ò\Ëğ\Í\î\áY+\Å\í¶;\ÙhpW‹Û›\ä‹\ŞL\ËoPj±\ÒE6QŸ¾\î\Í\ãxT¦½i‘ğ\ÂˆğÂ¿¶ğ×¤½€*\íN3B-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T¡½‰%ô\ØRx\á…Dxá…§H{\0Uhob	=¶^x\á^x\á)\Ò\Ş\0@Ú›XB-…^ø@„^xŠ´7\0P…ö&–\ĞcK\á…>\á…\"\í\r\0T±ùûûû\ßş\æw\ß|ó—¤}›ŸT\Ü–ğ\ÂˆğÂ¿\Âğ\ïŞ½«>0kŸö\0ª\Øüııù\çŸÿ\Ì\Å\Å\Å\Å\Å\Å\Å\åu_Ş¼yS}`\Ö>\í\r\0\Ôòñ‡şôı÷\Õ\ßób‰\ÍO*\îKx\á…Dx\á_aøÍˆ¨ú¨¬}\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–õ\í\Í\î\0\0\0\0\\\Óòö\æ\ßÿø;\0\0\0\0Wó¯¿ıõŸş´¼½\0\0\0 A\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0\0h™ö\0\0\0 e\Ú\0\0\0€–io\0\0\0\0Z¦½\0\0øÿv\ì˜\0\0\0`PÿÖ«±C0…\0gö\0\0\0\à\Ì\Ş\0\0\0\0œ\Ù\0\0\0€3{\0\0\0pfo\0\0\0\0\Î\ì\r\0\0\0À™½\0\0\08³7\0\0\0\0gö\0\0\0\à\Ì\Ş\0\0\0\0œ\Ù\0\0\0€3{\0\0\0pfo\0\0\0\0\Î\ì\r\0\0\0À™½\0\0\08³7\0\0\0\0gö\0\0\0\à\Ì\Ş\0\0\0\0œ\Ù\0\0\0€3{\0\0\0pfo\0\0\0\0\Î\ì\r\0\0\0À™½\0\0\08³7\0\0\0\0gö\0\0\0\à\Ì\Ş\0\0\0\0œ\Ù\0\0\0€3{\0\0\0pfo\0\0\0\0\Î\ì\r\0\0\0À™½\0\0\08³7\0\0\0\0gö\0\0\0\à\Ì\Ş\0\0\0\0œ\Ù\0\0\0€3{\0\0\0pfo\0\0\0\0\Î\ì\r\0\0\0À™½\0\0\08³7\0\0\0\0gö\0\0\0\à\Ì\Ş\0\0\0\0œ\Ù\0\0\0€3{\0\0\0pfo\0\0\0\0\Î\ì\r\0\0\0À™½\0\0\08³7\0\0\0\0gö\0\0\0\à\Ì\Ş\0\0\0\0œ\Ù\0\0\0€3{\0\0\0pfo\0\0\0\0\Î\ì\r\0\0\0À™½\0\0\08³7\0\0\0\0gö\0\0\0\à\Ì\Ş\0\0\0\0œ\Ù\0\0\0€3{\0\0\0pfo\0\0\0\0\Î\ì\r\0\0\0À™½\0\0\08³7\0\0\0\0gö\0\0\0\à\Ì\Ş\0\0\0\0œ\Ù\0\0\0€3{\0\0\0pfo\0\0\0\0\Î\ì\r\0\0\0À™½\0\0\08³7\0\0\0\0gö\0\0\0\à,vc\ë\Å\r\nendstream\r\nendobj\r\n10 0 obj\r\n<</Author(şÿ\Ğ\Ù\ê\ß\0 \Ò\è\Ş\ß) /Creator(şÿ\0M\0i\0c\0r\0o\0s\0o\0f\0t\0®\0 \0W\0o\0r\0d\0 \0f\0o\0r\0 \0M\0i\0c\0r\0o\0s\0o\0f\0t\0 \03\06\05) /CreationDate(D:20220607131545+03\'00\') /ModDate(D:20220607131545+03\'00\') /Producer(şÿ\0M\0i\0c\0r\0o\0s\0o\0f\0t\0®\0 \0W\0o\0r\0d\0 \0f\0o\0r\0 \0M\0i\0c\0r\0o\0s\0o\0f\0t\0 \03\06\05) >>\r\nendobj\r\n18 0 obj\r\n<</Type/ObjStm/N 9/First 60/Filter/FlateDecode/Length 362>>\r\nstream\r\nxœR\Ñj\Â0}ø÷q{JSµNA¦²!–b{Pb{W‹i\"i\nú÷\Ë];\ìÀ½$÷œœ{nzR€|C¾+<ø\ĞUc\à€û\Ğ÷!ğÀøA0ğa2a\É=Ø°˜E,¹‘\Å\ÖÔ©]H,\Ùj\ŞX”CŸ4\Ói\ï\á-üÏ–e‘\×\ÙL\Ú\ÇD$\î\ÔNÍ±JMq¶…V j«Ka‹THy…\Za1{‚{£ü»£x;j®ÓºDe\ï^’b\ÛPp´¹\äÜ¶‡Ö££O\âFk\Ë6Z\âZœ)Or„q\ÎtJ\ÑC¦\ÃÆ¦s\Z\âÅ®ğ\n¼µ^:/¥-²–…\Ên qÒƒ¾°S\Ë^Qdhššz¾\ë7%…ñQ\Ğ\r‰˜)\ç (º[|W|¡wmN­O·,ˆ©ˆ–.i\ÙZ¤Fwğ\ËÑ­</„\Ôy‡ˆe‘aG\Û\Ìq²Üˆ²}\İö[Ãº¬¶ôw~¤Š«m{ˆ\Ş\Ã\'\ÌüÚ \r\nendstream\r\nendobj\r\n21 0 obj\r\n[ 226 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 507 0 0 0 0 0 0 268 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 459 0 0 0 0 0 0 0 0 0 0 0 0 0 479 0 0 0 498 305 0 0 230 0 0 230 0 525 527 0 0 349 391 0 525 452 0 0 453] \r\nendobj\r\n22 0 obj\r\n<</Filter/FlateDecode/Length 29535/Length1 98308>>\r\nstream\r\nxœ\ì}@TW\Úö9÷Nƒ™``À™q\0QT,X\"£Å®8\nV\"\ZT\ìÑ¨!1jBbÊ¦w“MÛ˜2Œ&¢i&›¶\é½nŠ»\Ù\İd“M1øŸs\ß9ˆ~jü¶e÷ÿ\æ…g\ç¼\ç=\ç~Y\\gŒ\Ùğ¡c•\Å#Š¦|X\ÏøŒ±Œ\Ö[X`º©ˆñi;S¯P–“{Ó“ö1\Æ/@©\Ê\ê…UW¯Y;€±3¯D†\ê•\Ë=»\Z\ß\í\ÏØ­ˆ\×?R\×8o\áúÔŒ-¾‘1kö¼†\Õu¹»-70vW#c¥S\ëk«jŒ[D}\Ô7 \ë}©¢ş\"¤\Ó\ë.?\ëÛ¿&ßôgŒÍ¿·aquU\ïœ‡\ÛÿÂ§.¬:«±·5\ã\ä\×#Ş³°vy\Õõ\çm]\ÉxÕ‹HŸ¿¨ja\í\Í¿Ÿ\Ãx7c}–5.^¶¼\İ\Å6¡?WŠøÆ¥µñóº&3¶õ¥Á\ÄX\ï}Ùsb‡~Ï’ML\Ø\Ã_¬õ±wJWM8tğHSÔ—&ô™E1…‘¡œµ1şTô\ÖCnúR«©“%\ß+<®¬‰\ÙXSQ\Ò\Ær\Øf\Æ\â\à¹\nrU]6¿Œ\é™I>Uv!V_e›fbJ¬^Qª\è>e½\Û÷°ô³µÀÆ•y<\Ì\Ï\Ø!µÁx³’\éa¼]\ä©;õ1¢§Ì¡‹9\Ú\Zş\nû?o†wØ½ÿ\ç¨÷±‘ÿ\çüoLı«\ïŸhºZv\ë1õ7›>i;&ş|ÿò\Ô1È·Ÿ,Où\ä\Äe\rv«\îò\ç\é\îau?×¦“™º\ï¸q˜ÀJO§œn»å´Ÿq„yOš·\á\ç\çU}‹\Í<\İgı=¦\ë\Ç*y\Ş!6\ët\Ê)KXFG\Û:\é¡Gõ©Ì°òô\âNd\Ç?\ã©«³ñ·\Ù\ÆÓˆ¹\î‰ÁxŸ</ŸMÿ¹ºOf\Êó\ÇÖ«zÙ¤¿·®•¡\ïWn¬z\ëzÒ¼[Nw\"S\îeEúOl”\Ò\ÊFò\'XºôñjVÕ¡g³-\îÏ¬(\îğÿ€t6B\Ëûz#swÔ¹\é¨şÿ\İøË¿t\"±ˆEŒL¹GŸ4¯’\í;¡?=ü¯k\Ñ¾©ı\ÙE¿tNdê—§wgÁ\Ï\ÆóN«¾eø\Ùıt\ânasO+\îŸ\Ü>\å>6üt\âş\éeKY¯f\\\Ä\"±¿\éøûÿ\Û\Ç\ßıÌ…\ì’ù•&Vò\ïnK\Ä\"±ˆE,b‹X\Ä\"±ˆE\ì¿\ßNösf\Ä\"±ˆE,b‹X\Ä\"±ˆE,b‹X\Äş3Œÿ\ìo\ÉG,b‹X\Ä\"±ˆE,b‹X\Ä\"±ˆE,b¿œ),ó_şŒ:6\áW¢ı\îMK\"±ˆE,b‹X\Ä\"±ˆE,b‹X\Ä\"±ˆE,b‹X\Ä\"±ˆE,bk\ßıK· bû…M\r#•ş’OD\nJµ0;G.ó@\ÅAYYW–\Ç³q¬ŒU±:6Ÿ5°\Ål[\ÉV³­l;\ï›6\È\å9Ç³!\ã\ÅCºv\í¯B¡Œ§S™\Z­\Ì\"¶”­8A†2¼ı{<û5­ıGf\Öş\Æ\Íw\\¥†òñ\í\Õj	\ëÿ\Å\æ}\İöVıq\ã\Çg0ş\ëW½;õ\'+üÙƒõ<AoSEo\Õ\Ñ\ê5<…w\áY|%_\Ç/\æ—ñù\Í{ó‘<Ÿaşƒı\Ãñ]i%ü·¸vj£’Ú³~&’©_“šösñšuÒ³O\Ñ­\Ô[Mi#‡/\ĞwM£ÿø\Äh©gO\ëé¿¤©§&fóô+\åuÿ‡\×;óOß´qù²¥K\Z/Z\Øp\æ‚ùõó\êjk\æÎ™=k\æŒ\é\å)e“\'Mœ0~\Ü\Ø1£KG,).*1\Ü_0ìŒ¡C\Ê8 N\ï^=³23\Ò}]\İN‡\İk5GG™Œ½NU8\ëY\ì+©ô3+ƒºLß¨Q½D\ÚWGU\'Ge\ĞWÉ±1AO¥\æ96ÒÈº\ã\"ı\é\ïˆ\ä6\ÏP6´WOO±\Ï|©\È\çi\å\Ó\'•Co)òUx‚û4=NÓºL-aE\Â\ëE	O±³¾\Èä•\â`\É\Êú\æ\â\Ê\"\Ô\×b.ô\ÖF÷\ê\ÉZ¢Íf¨`–¯±…g\r\ãšP²Š·(\Ìd\rª\ÅU5Á‰“Ê‹‹\\^o…\æc…Z]ACaĞ¨\Õ\å™/\Ú\Ì.ò´ô\Ü\Ó|q«Í­Ì¶\Ôøjªf–\Õ*jV‹››7\í\ÙÁî¾¢`÷5Ÿ:\Ñ\å\Ú`O_Qq0Û‡\Ê\ÆL\îx\0\ê3l>Oó÷÷\íûòXOU\ØcÈ°}Ï„]\ì&\äK\Í\Ğ6´ıózE[.jõ³¹H›&•S\Ú\Ã\æºBÌŸ“]T*E\Î™“9M2§£x¥\Ï+¦ª¸2ü½²\Şlš\ë\é\Õ£¯}g\àù šY9·º^pUm³¯¨ˆ\ÆmJy\Ğ_\á¯\n÷µ¸¥O\â«*Ñ‰ùb&•s|A‡oÀ\ás0¿¬\\+.tYeu¸T0§¸H´\ËS\Ü\\YD\ruù&•\ïbyíŸ´ôó¸¶\ç±~¬B´#˜XˆI\É,n.¯©º+]5XŸur—7\è¯ÀğUø\Êk+\Ä,ùlÁ\îŸ\àq^\í‰Z)ô\í¸h,zn\Ì0y\Ê—Z!fO	>|#†\"Ã†\éÒ’bFGõ”s“axJ8B¨c\êAB\Í(%²TQ´p”\Ë[\á%;E“\\\á6\é3‚¦Nu\Ù\à\èh=\ç¤M£hÑ \î\âÚ¢N\r<¦R}¸\á\ÚN\ÜNEŒEøÁ(a\Ó9Jf©Ø¹ğ)¨Fs‰Ytz‚l¢§\ÜW\ë«ğa\rù\'–‹¾‰±\Ö\æwL™oÌ¤\é\å\Úl‡WÉ”cR”ŸO© ó\"[&”B¬Á’l—œV-=RKw$G—]*³}¢]\Í\Í5-L\ÍK\Ù\Õ\Â5¡/¼¨\"8!»\Âœ›\íóŠvö\ê\Ùbb\ï”\ÊB\ì\Õw¾’*Ÿ\Ç\æ)i®jmoš\Û\Ü\â÷77W\ÖÆ¾hö•\Ö4û\ÊÊ‡º´\ÆO._\çZ#\Ç\Æğ1SF *…hññ&µøùe\Ó\Ëw\Ùó\\0¥<¤p¥°rDEK:ò\ÊwyğĞ¼Šğ\n§HxDB\Ô4	“\ï\Ú\åg¬I\Ë\Õi-]\İÊ™\æ3IgÕ­\nùlô L\íA~Üšª[u”\ã—\Ñ:øL\äk¢\è¬p´	96‘³›\áEÂ´L²&\Ø­÷›üQ~‹bU0¤\Â‚g7b£8\Ûn\áV\îjA“5w+oj‰ò»vi5MG6!Røš:|h¹\ëTG\íA`zùvCı\Ú\'\"F\Ã*t\Öc\r\á}R\ì©\ëomE}se…8=X\"\Ö*¾yû†± \â†,Áh_íˆ \Ù7Bø„¿€ü\á7b\åóD\É‡ns¥1vL9sq\Úkª¨\Ò\Ó\Ú\Ş>¥\Üû’k_…{i&0½<•—›>c4\âF\nT\Â=2\ØT]%\ÚÁå¢¬1£´ºûRVˆ\Ò`jˆ\n×€ˆ­Œ\Øo(TµV\å\Ó$\Ü8:š*‚\Ù\â¡\åó+´ıj²Q¾ÁAC&Õ©\ÏÊ©hó\åj‡özt\ÆfAQh++\'I<¬‚\ÉhAË«}Èª®ô\Ğ\Z)\Ã^¦—E´‹<µ8óu™µ\Z¢]\áL&º¥f˜­\ÑÁ¨Ş¨\ßB›{‹3GŸa¬¨ \Æk©\Í\á\0<\Û4£E™†2\\\0£ƒ¬R\Ñ|oFSE\è¢šI­l²\ï,¢\ÑZMFd­¥Ux»Qy3<¾|Y\Ø$As¸§\Èk=·`\Üq$´¶\ß\å[\í\íd8;\Ä\ÛO¬?\æÚ…\Ê*šwgd÷\êi:\Şk\Õ\Ü\Í\Í&\ë‰\Ğx™¬¬9•ŒjñV\0‹§­7O±xUúF·(\ã³5\æ\Z7ö\á\r¢dà¢£bûx=5\"\nM¨e\'\râ‚\ÄkZ«¼\Ù6D¦x8E“\Ùœwl²¾#Y\"€\Ë`FoºC +\â¬\ÅZY\à\n6`e\Ê1#f\Í7\Ø\'>´\Â#*1I\Û\Ë«Nlš¦jOù\\,vTXR\Ù\\\Ò,®¨\ÕU\áa?)¸(û˜*±/8*\İ	6MôTVx*q5\å“Ê½^v#\ØS‡{ª¯J¼\n&R&N×®*U\Íb‰3\ÜT*\\A#^LuUµ>/\Ş Aq\Ñ\è‹6\ê\ÂÛ†¹š›}\ÍAmß– \ÕgbÛ•\n\Âwc¶¯ªV\\¡\ë\Ä\rºV+[‚\æj£#jsû°—k\á\Ö\Æ‡£o®ø¨nôY•\Ù	{s\\³gP3\àYx{\è2«§V\âU%\ŞHmª«\\HaJEªQ`T†¤- Z³0»e–1\ã¨Gû^œMÁ&­V´lryp¢\Ñö“K²ƒJR>2E\çù\ä\é\åòœREv)†×U\å¥=AeJyxz´ò¥¢¨KNƒG{‡„÷W\Ç\ÛF¾‡fº0¦\'õ\ã\å /SSaùÌ­<\æY¾ò>(\ï\ß¿\æ·Áo\ß¿~ü\Zøqğc\àGÁ°\0\Ó)°~À@\íP5À\íÀ›€‰š83£<g\åIV\Ô\0Ë+=bC\Ş\í¨‘3rş(\'	\İ \ÅyRœ+E“\çH±^ŠuR¬•\âl)\ÖH±ZŠ³¤X%\ÅJ)VH±\\ŠeR,‘¢QŠ\ÅR,’b¡\rRœ)\Å)\æKQ/\Å<)ê¤¨•¢FŠj)\æJQ%E¥s¤˜-\Å,)fJ1CŠ\éRTHQ.\Å4)¦JbŠeRL–b’¥˜ \Åx)\ÆI1VŠ1RŒ–¢TŠQRŒ”¢DŠb)Š¤(”b„Ã¥ğKQ \Å0)Îb¨C¤,\Å )ò¥(\Å\0)úK\ÑOŠ<)r¥\è+E)r¤\è-E/)zJ‘-E)ºK‘%E7)2¥È\"]\nŸ]¥ğJ\á‘\Â-E)Ò¤H•\Â%EŠ\ÉR8¥H’\"QŠ)R\ÄK\'…]\n›±R\ÄHa•\Â\"…YŠh)¢¤0Ia”\Â …^\nªŠ\\\n¼]Š6)HqXŠCR”\â\')Hñ£?Hñ½\ßIñ7)¾•\â)öKñµ_I±OŠ/¥øBŠ¿Jñ¹ŸIñ)ş,ÅŸ¤øTŠ?Jñ)öJñ‰Kñ‘Jñ{)>\â})Ş“\â])Ş‘\âm)Ş’\âM)Ş\âu)^“\âU)^‘\âe)^’\âE)^\ây)~\'\ÅsR<+\Å3R<-\ÅSRüVŠ\'¥xBŠ=R<.\ÅcR<*\Å#R<,\Ån)vI\Ñ*\ÅN)’\âA)vH±]Š-R¥x@Šû¥¸OŠ{¥\Ø&\Å=RüFŠ»¥¸KŠ;¥¸CŠÛ¥øµ·Iq«[¥¸EŠ›¥¸IŠ¥¸AŠë¥¸NŠk¥¸FŠ«¥¸JŠ+¥¸BŠ_Iq¹—Iq©—H±EŠ‹¥¸HŠf).”\â)6K±IŠR\Èk—\×.¯=\\^{¸¼öpy\í\áò\Ú\Ãåµ‡\Ëk—\×.¯=\\^{¸¼öpy\í\áò\Ú\Ãåµ‡\Ëk—\×¾T\nyÿ\áòş\Ã\åı‡\Ëû—÷.\ï?\\\Ş¸¼ÿpyÿ\áòş\Ã\åı‡\Ëû—÷.\ï?\\\Ş¸¼ÿpyÿ\áòş\Ã\åı‡\Ëû—÷.\ï?\\\Ş¸¼ÿpyÿ\áòş\Ã\åı‡\Ëû—÷.\ï?\\\Ş¸¼ÿpy\í\áò\Ú\Ãåµ‡\Ë\Û—·.o;\\\Şv¸¼\ípy\Û\áò¶\Ã\åm‡\Ë\Û/\Ü.D«r~¨\Ë07\îÌ¡.	 ó(un¨\Ë`P¥\Î!Z\êb­£\ÔZ¢³‰\Ö­¥\rJ+­\"ZI´‚ò–Sj\ÑRr.	¥\05-&ZD!‰\Zˆ\Î¥ƒ\Í\'ª\'šGTJ-\ÕRª†¨šh.QQ%\Ñ¢\ÙTn¥f\Í šNTATN4h*Q€h\nQ\Ñd¢ID‰&\'\ZG4–h\Ñè«TJ4*\ä\Z\r\ZITr‡\\cAED…D#(o8•óP¹aDg\r¥\È!Dƒ©ø ¢|¢DˆúSeıˆò¨–\\¢¾D}¨²¢\ŞT®QO¢l¢Dİ‰²ˆºQÕ™DTg:‘¨+U\í%òP97Q¢4¢T\"QJ(e<(™\ÈJ™\0J\"J$g‘ƒœñDqDvÊ³Å’3†\ÈJd¡<3Q4Qå™ˆŒD†PòD>”<	¤#RÉ©PŠ1x;Q›ÂP\ê0\Ñ!¢ƒ”÷¥ıHô\Ñ÷!\ç\Ğw!g\èo”ú–\è¢ı”÷5¥¾\"\ÚGô%\å}AôWr~Nô\Ñ_ˆşL!¢Ô§”ú#¥ş@´—\è\Êû˜\è#r~Hô{¢ˆŞ§÷(õ.\Ñ;¡¤i ·CISAo½I\Î7ˆ^\'z\èU\ny…\èer¾Dô\"\ÑD\ÏS\Èïˆ#\ç³D\Ï=Mô\Ño)òIJ=A´‡\èq\Ê{Œ\èQr>Bô0\Ñn¢]D­¹“R=H´ƒh{(±\0\n%\Î\0µ‰ ºŸ\è>¢{‰¶\İJ\Äy\ÍCµ\ÜMt\å\İIt\Ñ\íD¿&º\èV¢­D·Pe7S-7\İHy7]OtÑµT\à\ZJ]MtÑ•”w\Õò+¢\Ë)\ï2¢K‰.!\ÚBt1E^D©f¢‰. \ÚL´)”P\ÚJ˜:ŸhC(¡tÑ¹¡„\0¨)”€Ã˜ŸJ\0ZO´Š¯¥rg­	%Ô€VSñ³ˆV­$ZA´œhU½”Š/!j%TƒSe‹(r!QÑ™Dˆ\æS¹z¢yÔ²:*^KTC‘\ÕDs‰ªˆ*‰\æÍ¦NÏ¢–\Í$šANUWĞƒÊ‰¦Qs§ÒƒT\Ë¢2¢\ÉD“B?hb\È!0!\ä\Ë{|È±4.\ä\è\ZK!cˆF‡¸ğRJ\"\ZIÎ’c=¨8\ä\Ø*\n9\Î†M ¡¸\Ğp\"?QÑ°P\Ş\ïüJ\r\r\Ù+@Cˆ‡\ìbi\"\Ê\ÙG‚†\ì\å !ûtP\Ê\ëG”²÷\åRdß]t¬O\È.öfQo*Ş‹Ğ“(›*\ëAÔ*\Ë\"\êF”I”²‹QJ\'òQ]©N/U\æ¡Z\ÜD]¨\\\ZQ*‘‹(…(9d›r†l³AI!\ÛP\"Q‘ƒ((\nØ©€œ±D1DV\"Eš)2šœQD&\"#‘\"õ©#§J¤q\"\æo\ëh‹­v‰­q†>~‚\ï\0|??\0\ß\ßÁÿ7\à[\ä}ƒô~\àk\à+`ü__ \ï¯H|üøs\Ì<÷Ÿb\êİŸş\0\ì…\ïğ\ÇÀGÀ‡Hÿüğ>ğğ®õL÷;Ö¾\î·ÁoY\ÜoZ3\İo\0¯C¿f\Ív¿\n¼¼Œü—\à{Ñº\ĞıôóĞ¿ƒ~ÎºÀı¬u¾ûk½ûi\ë<÷S(û[\Ô÷$ğ\àoßƒ\ÏÇÇ€G-KÜX–º¶,s\ï¶,w\ïZğ?<ˆ¼\È\Û_h‚À\æ\Õ\îû\Ík\Ü÷™×º\ï5¯so3¯w\ßü¸¸¸¸\Ã\Ü\Ë};ø\×Àm(s+x«ùL÷-\Ğ7C\ß\Ü}\êºu]‡º®…\ï\Z\àj\à*\àJ\à\n\àW(w9\ê»,z¼û\Ò\è	\îK¢ç¹·D\ß\á¾8ú.÷F5\Ã}¾š\ï\ŞÀó\İ\çš\çnk\nœXX¿m]À¼›×¹ÖYwöºm\ë>X\ç3D¯\r¬	œ½mM`u`U\à¬m«»•M¬N\Ù\è\ZX¹mE@·Â±bù\nõ»|\Û\n^´‚÷YÁ¶Â¶Â³Bµ,,\r,Û¶4À–N\\Ú´4¸T7$¸ô“¥\n[Ê£[\Û÷l_\ê\êRö¯]jµ•,	,4n[XT·0°\0\rœŸ?/P¿m^ .¿&P»­&P?7P•_˜“?+0{Û¬À\Ìü\éÛ¦*ò\Ë\Ó?5J °mJ ,R`ò¶I	ù\ã\ã\á—?&0vÛ˜À\èüQ\Òm£#óK\Å\è<Kµ¥zRU›hÀøT´„¹øˆ>.¿\ë\×~—¹‚®=.5.6Å¢tM\æ…’ù\â\äs’/MVc¯8¿³{Ï’Ø¤W’>Nú:I\ïO\êŞ»„%\Ú=‰j‚\è[\â¸)%\Z÷\í¯õÕ\è\Ë,‰M\à±	\î¥ø\ë¾‰©\Ü\Ã9\ã6jB\Ì\à.Q\å\â\×\ïôŒó\ËØ”\ì1­&6yL\Ğ4qF_\Ì(ŸşIÓƒ†‚,0}Fy\ç—Th¿“tˆ_*\Ñ\Ò·lai#\Æ\Ó\Ê\ÊC\êÖ­i#*\Æ›„öû5\İ.4CHEö\ìe+–e—û\Ï`öO\ìû\íj\Â\ã¶WlJl,mUü±h|lŒ;F\í1ª?¦\ïÀ’X«Ûªˆv«š\è·\Â#ú\×\Í2qJI¬\ÙmV\æ	f\Åo.(,ñ›{õ)ùı\Ü.úIO\Î^>³—-\ÏÖ¾‘ª\à+D2[x\Å÷²\åH‹¯ZšeŸ\Ò(4gl¹t.?u©ÿt\ã¿tşû~“gx»r>«Q6\0\ç\çMÀ9Àz`°8X¬\ÎV+Àr`°h‹€…@p&°\0˜\Ôó€: ¨ª¹@P	\Ìf³€™À`:P”Ó€©@\0˜”“IÀD`0Œ\Æ\0£R`0(Š\" ü@08\nƒ€|` 0\0\èôò€\\ /\Ğ\Èz½€@6\Ğ\èdİ€L H|@WÀx\07\ĞHR$N 	H\0\ÄvÀ\Ä1€°\0f \ZˆL€0\0z@7¼Ÿ* \0`¬†\Ã\ÇÛ€#Àa\àpø	8\0üü\0||ü\røø\Ø|\r|\ì¾¾\0ş\n||üø3ğ\'\àS\àÀ€½À\'À\ÇÀGÀ‡À\ï€÷÷€ww€··€77€××€WW€——€€\ç\ß\Ï\Ï\Ï\0OO¿\0ö\0\0»]@+°xx\ØlB@\0\î\î\î¶÷\0¿\î\î\î\î\0n~\r\Ü\Ü\nlnnnnn\0®®®®®®®®\0~\\\\\\\n\\l..š€\ÍÀ&`#«\ŞÄ±ÿ9ö?\Çş\ç\ØÿûŸcÿs\ìıÏ±ÿ9ö?\Çş\ç\ØÿûŸcÿs\ìıÏ±ÿ9ö?_\n\à\à88\Î\03€\ã\à88\Î\03€\ã\à88\Î\03€\ã\à88\Î\03€\ã\à88\Î\03€\ã\à88\Î\03€\ã\à88\Î\03€\ã\à88\Î\03€cÿs\ìıÏ±÷9ö>\Ç\Ş\ç\Øû{Ÿc\ïs\ì}½Ï±÷9öş/}ÿ—[\Å/İ€ÿrcË–uº˜	s\Îÿ¬\Èx3cmWóoJ&²lk\Â\×&¶…]Ág°¹l\Ôul+»“ı†\Ù\ìw\ì\Óÿ\×7?om«õ™E\İ\É,±öƒ\íû\Ú\îZõ1<W ¯óõ´\ÛÚ¿:\Î÷U\Û\í¶¶VC‹\Ö\ÊZ•\×\áı?\Ò~¯\\¤\Ûˆ´²:V+ññ\æ¶\Ú\î:n&±\él›\Éf±JV…ş×°z6#s&k`\Ù\"-µyóğY‡\ÔD\áx\ÑôÑ¨Å¬XÊ–³l%¾\Z¡—…S\"o‰–^ÁV\á\ë,¶š­ag³µl]øs•\æY‹œ5Zú,`=;3s.;OS’É³\Ï6b\Ö6³Ø…§L]Ø¡š\ÙE\ìb\Ìó%\ìÒ“\ê-Ç¤.\Ã\×\å\ìWXW²«\Ø\Õ\ìZ¬‹Ø\Çy¯\Ñü×³›\Ù-X3\"\ï*xnÑ”\È}„=\Ãd÷³\ØC\ÚXVc\ÔhD\ä¸\ÔicØˆ1X‹n\è\Ôb\Z¿U£µ}}k÷ô,ø\Ï\ëTbexE\äDR-4¢–uÇ\Äe\è\é£=¢\ÔUZÿz;Ê©¼r<n\ì427h)¡÷L_\Ín\Â¼ŸbT…º\rš\Ô-š\îì¿¹#v«–ş5»İ¹¸KS’\És\'ô]\ìn\ì\í{\Ø6v/¾\êÎŠø~vŸ6sA\Ö\ÂBl;Û™|ˆ\íd­šÿTy\'òoûC]l7{+\ä1¶\'Í“ø’G\á{<\ì}JóQúIö[¤E¥a\Ï\â„z½À^d¯°§‘zYû|©W\Ù\ë\ì\rö·B½\Æ>\Ç\çöªşSÃ†\ã\Çÿ\İ\ç\Ù\ìSı›\Ë\Üô),mm?Ğ¾ªı€:Š\Õñ)¸@Ş‹Y\ÚÁ.\ÆOì‹Fr7‹\Öı9ØöÔ™\à¬#\ï\ë\ë\Ûnkÿš\éqj.S_\Ç)§2#\ÄÆ±ñ\ìš\à\Æ\ìòG˜·”D6˜?ø`BQ‘©—ñ1\Ü@\æÁ\Æ\Ä8/ô\Ç\ê\ëÎ””\ß\Îş†-ª½´•÷\ÚQ`Ü‚\ÛyÁ‘¼œs\ä£}qƒröñœ÷~´\×ö\Í\ËöA9y{\ß\ÜÛ·\Ë\ïH±\îl@\Ñş¾\rıUÃ–\Õ^ \Êû£\Z\nüŠqK*qd§¼œırNö\ËÙ¨&»O\ß\nn÷\Ú58b£\Ñağu\í­ô\ï–9 //w˜Ò¿_¦¯kŒ¢ùú\r8L\Í\Ë\í¢¨\é¦ˆ4W_?<]pÄ ¬÷L\Í\ÓwI‰uX\rz%\Õ\×kh†­lF\Æ\Ğ\ŞiF\ÕhPõ&c\ÖÀ]\Ç4w}\ßhOKHL‹3™\â\Ò\Ò\ì\Æ#\èc~«9T¨k8t¥j2³ ]½6Ú¤\è†\Ö.\Î\äC¼¥Sc\ãm:s¼Íh2\Æ\Ù-YE3lJHu¤&$P]G\Æ1\Î\îm?h\È\Æ\èeo‹Q÷\Û*‡5S¬}ú$\å\äD÷v:SZ\Û?\Ûn\ã\ãÀû·Ç†Ùªñ\Û-\Z¶\İ,X±û»¤÷µX¢¶ÅŠFG#*Ú‰\è\İø±‹µ\ïñ\'#Á\ÒL2;“¬9Î¾½\r\î¬I\î@\\@`°¸¤Aö¼ófö^\íŸkÏ³u(û 3ròò\ìy}û\Ì\Â4°\ç\ÑJ0ir\n\ì>£\nÕû\ì\Î~böº(I<cÊ„L0d›\î\ä$o¼Ii\ËS\Í	i„.³\Ò6’›d§\'\Ş\Ø\ÓU\ï\é“\îŒ\â«ô|“9Å™¼0\ÖoI1YŒz½\Ñb\Ò\Í;t¥1Ú¨\êŒ\ÑL\Ñuş;{¤[R²\\‡§©wv\é‘lŠOKÀŒlß§Vë½¬”g‰9\ØÅ†·¶#\Ö\Æ\Ç¶Æ¶0[4\Ö}x«\ÒÓŸ\ëwğ±¹~;—›kq9EY—|—\Í&>P\Ä%fÀµ?xc¶»0\â?¥%‡\ÙAüP¬?	Xz?Ì»±,šgú\Ív\Ï@>\Ğo¶ğ±vñ\ßé¢…\ZhhO\Ú\Ê-wé»—%¶ò\î-ú©¬`_AÜ Aû\ìƒ\å\ädgÏ²\í³\í“£Ù‹£J`¶\ì-ş×“{t+\Ï\ÜÙ \Õ\Ú]T»³A«W/*5 flEQuv¸j±iurc\Ñ\ìm§\r	\á	[2Á\ÑÅ V®ºu\Öğ\ÅÓ†$™u&‹)&o\â’\Ñù³\n\Ós\'\Ï_T?9o\ÈüË§dO74Ş STƒ\Ùh\Î)š5xÀ\Ä~)¹e-(\Ë\ãgÎ¸¤:7\Ñ\ÓÕ™\á\ÆV4v\Íòu81o\àø!}ó†MY2a\Ò9S{\Å&»\ã\Ívg|\\j|Tª/-­ÏˆŒ\ã‡\æ\æQ¶DüK|[ûAõS]&KgYl‰˜\çI\İ,™\ÖV…û£’2=ğ›3£[•!~\Ë\ÌH\ë\Ñ\í€\Å—VW¯¯\ÛBeö¸A<9\Çù\æ^DÜ Û‡$Ä‰fC	K·\rG\Ë8©P6\n‰m˜h\Ğ¬nİ¼F±23\ä\Ú)¥K2úT¯ú¾Qµez½“:­\Í?YŸš\æ‹QL|¾\Î\â\ì\Ö%\Ù\çŒ3›\Ôu\Ê|\Ş\ĞÄ”j°D\íû\"\ÊbRõ1©	\ê\Ó\æ£\ÊqpYLMmÑ¢Ç·2¦Æ­6¹\Ù0:\Ó\ã•Ax¤(T”ó§˜\Z\×Oúyb\á`¥„fKŒó§†˜\Z½\ë§d‰™\ï˜o4ZÛ°^L¸±&\×gó®.m~n\Ë!GzºƒÛ›Ÿ\ØP\Ì\nln¸ü²ºM=÷\Å/n\Z\æUo÷¦Ÿÿøú\É\Ï|ø«¾µ×ˆ¥.\Úƒöõd\å¢u-)\İZ\Ñ0G”\'\ŞÏ¢R~\Ì\Ì4$°\Öt;` 6\Ò\Û\ä%±m{sEc\ã3S~l@˜5ù@ƒµÆ€ñ7„\Û~eh§·S»µ…\éµ\'\Ñ£\Ùp\ä/¢Jœ\Ñl\Ô!ml«\äóŒr\Õ}¿\ëRW—b7RŒ6W\\\\r¬©\íE£-%Şl3¶\İa´%k=\Ã\Ï	û\Ñ3›¨õLo=‹K5›],Õ¥ÿ\ÉnO\Òò\Ô$‰•\îV\ÎSx?†»k\×ÿÔ€\îPƒ…µ\Ôñ\Ä{\ï˜öw>J½¹‰\Êş\ØØ¶Õ¼\Ñ`°\Ú.3\Å{“^‡	\ÓóSl¬úAº§m‡É–—‚¶O1QgM\êó\Ş4o¸\í|öIK§Ó)Ñ¶Zm`™ Ûµ\Zu\Ìù>\nø\íœ\Æ£g²\ÇaJ’#ªş\Í@\Ê ş\r\ìx\ÒLıF%w7\ÆJ¦=¼*”÷ğ|\'\ëGÏ\Çó™\ÑZ\ëh\å1-:m)`h\í°\Ö\ê„7Ô £i\×\ÚcOx¸9\ÚX)\ï\Ùb\ÛÜt“Ã«µˆ/¯ƒ\âtôY}Q¶\éğ¹F»‹F@_‹\Ù\ËgDvôL\è\Õ\Í\Ù\Ê\ÛıQ]­9Ñ½zu\í-RvÖµM¯D³š–Y“VoŸ\â\Í\'^{s\ãğªÄ©‰9\Å)¡M\ëñ\áòMyü{2|Rœ\ê=™˜ ¯5\Æ{’’=qF¥\í\"/·‹(µ\í:\Å\çINv\Ç3\r\î^¼$»\ëx®%\Ù\Û=µ.9ı\èL¬:|¾Å¢\Z¢\ê\Ú\ÃvxŸ\í\ê/\È#ı”\çºôH1{º†W„º32„\ÕV³7Nü\âOª®O+Áoe©j\Í=’\Ä:U\ç\ÑI€ğj6w\Îw†\Â3…#¥\Ï\Ì\ì\æsˆ™ú½OLL\Ê\ë­Lu×”e\îL[\ÛgYºq®p£=5Ñ™&z»\Ö\îr\ØMmÙ\î\n‡\âR“œivÃˆ®·W1¹~l\×\ÑcFw=òXç¾šb¶¶ôI·N\Î\n¦fñ\ïqv\ê\Ä\ëIœu\í_\éŠt¹,uc£D¿gej|F³dŠ­óµò\ØıücĞ–\Ø\äÿ\ÇÜ—€¹Q\İyÖ©R©Ju¨¤\Ò}\ßR·¤\ÖÕ­¾¤¾\Ôw·\Û\Æv\ÛĞ¾°M\Â\î¶\r\Æ\à…$&!‰“À·Iö\ËN²\É&Á`›2;d\Ö$›aL\È\Ã$|™\Í2d;3\Ø\à\î}¯ª¤–Û†˜L¾oWÏ®ó½§W¿ÿñşÿÿû—\Z\\=S\ã÷’ğ6˜A÷]ªG›REªs¤2‡ƒ}w}÷öÛŸ¼£»ÿ\ãß½ı–³\Ç*û\Çn›=:ôƒı\í~\Ìs÷NL\r\Şû\×\Ç\ï¼ğ¹©Á\ã\ßÿ\ì\ì\çkİ•ŸŸ¹ö¡›»ú\çOA\Í(ö(e¤‚\ìV¥È€YÎ´	I1“#]ŠB\â]Iñ\ç]]\Ö\Òo!uTşU\ÔQ	<Kö¥\×¡^V&S²Küy\r\Ôô•~[\Ó\êBJ*J©\ÔÄ½\Ñh\n\×\è$UUQ\Üj•e¼i\âxTo	»œ~‹\ßÄ‡2}ù\êŠ¨*ÇO^›q&Úœ­a¿°\Å@ıoKf¼r\ê3½SY»D¶\Åiy;1˜v,O7Hú¼\ß©\ŞĞ—\ß4”¦û\'‡{-Ø´/Û†ïœ®ü{Puù„ŠK?f:\ÉGòœ\æl\"`jc….õ¾\ç “{ ‹\ç|RF\Â$ Œ\n©/¾4§XZ_‚ö\Õ\ëŠY¥Ğ½¤´5\ÖJ\É\Ş÷jJs	¶¢&‘°qÎ«\Æ\Ôù&~\Ğ]­…½ßµ÷3r\Û\'\nEb\Ğ\ÛLkugw\ëD»7Y\İ:·u8‘¿\î\ØHbı@§Ü§):Ş³>­´\ØZ†·n\Û:Ü‚F\ÇO·˜œ.,‚\Ùm¦\İA·\ïŠ\Ä{\Ò\áDnhg_e\ßX\\\í<°¥\É!\ên‡%œs\'{S\ÑXvp\Ô_Zù%şK ’HEµ+|˜$C\Æ\Ìg\r‘=\Â\çªX”\ëbq\Ş \ÍQn–ˆU…­\ÉB“\Ôÿ²gÿ¿İµı\Ñ€Al\à‡¶—J\Ûız\Égs{%\nı\â\á‡÷u\äöœº›¯«ó‹\î\Ü3^?‹hL;(\â²ñ\n{\0‡c±\âüóÙ€\Õg°Z1	\Ø\ØV÷™\Ôf<PfŠÍ§\Z|Šµ÷d\ã¾M©\0 \î\Û\0»®Ø¤©³Àî£°ı„Á\Zñ6–X~DGğ!Ÿ7h\ÖZÚ™6\Ün¿‘ <\rÅŸ“F§Xúı¯\à\×Œ\Ğ\Âs\Ê`\ìĞ†=¤Ø°\Ã*÷Z1\éq#ë€¹¯!ešf½{l:\Ó]}ğ\é·Jÿ:9w\ãVc\Üèª¬®]\ÊI¡\Ûi)`µÈ—Ï°	x\Âšxû5v\Ğs$ƒZ¾».\èØ´j›2ôr}Q\Ï\è‚·\Ë@\']¼¬2ş×ŠNú­\â\ëúø~oºghk>RºLy\è(\å\èB\å\Ñw*ò\Ê\"Ğ£E:5¬z`FmÏ¨{\Åe\ë\\\Äô³h}\Éy¬\ë\Ù<Š\ä\Ñ|>Õ—XDÁüb\0\r÷›©±W\ØIIkv\å´\í\Ós\Û\æ \Z‡\Òù\ä¶9h)~/ ú6\à\ï\Z+š·>Wƒı”\å\Z@eô™r¿YK±=¯\Ô`¿¶´f„n\ß6=€trNñt\Ğò/\Ô^‘ò\\A›´+„\Âò”*ñr.[l\ÇË‚\Ë\éğr]\'f†Í´öşú¾cr\ÛT©g\çh«gi‚röoÚ›\ßy\ß5‘¯>0¸»ß»e]ß\Ë\êt,»µ\\\rW÷öMÌ…«ùu\'v`üñv·#\è–Z6\Şy\Íykk9^\İ\Ğ?h´\Ğ\èQòf$‚”\ï*4ò–»P\ÆY‚”)ÁHB	z´%H‹$T\éô= øé•ŸBj¤µ`EZV¤5j¥5*¥1C\Å ù«L)\ê$¸Lg³2Op“\ä4†5ûIõR_\Ò\â%%\Ü`¨7´Á–gj¶1¶=SS\ZC@¾ÆšjF:+[WUJ$\Ò<\ï¶\ãK\Â#4\Ã_¸öúOoew\Ø>}O…2{Áh¢ÿ|\à\ß–g\Û\í–ü¦>O¥\Zµ\ëU[dr\Ó\ä=§w~\æ\ÃCCa¬ÁH]Ú°¹{×±\Ê\à\İ{zL‰6€\î@÷@’HySA7‘.–‹Š¸\ä\èI>\0™$ù[`¼ ¢\ÛaoQd¡e}\ï\ì`ò«I,	@=j&óÄ¢\n;\ØÿÂ¬œ3\Ê^\â\í÷·ü\à\ã\Ä\ç\ìY}‘@	Â•~%2f{s7\Ïaı¦kR›\Ò9X8X€\ì«É¹\×Õ¸A\Z\Æ\0D\Ëj·*}DÒ¯\Ô\"cœ\í\Í\Z\Â	\Æãœ‹~³ú‚dz…û\ç\Z‹†sN5t\Í6%ZThA\á_ˆ\Ú/>\î©\Î\ÏTv¦Y ®q§˜â¦…Ê¯\ì\ì^øòõ7\Ú\Ñú\çø\Ñ#=\×õ0‹ú\ÇoÛ”²8,g7%e\ì6©÷ö\Å\Û?õ\'Cƒ‡™•\î~05±§\ÎYa\à“\'oCº‘û½/À\ëŒ…9µ8\Ü+À9µ\èšSc\\\'|I “/®¼X1	\":6,‡‘¥ÌˆoBQ\ì¦,´\0“\çso©\Ú#w\ZNbÑ°T53‘¥šVW±›²—Xƒ\n\'ZTlt\Í\æô¸5¡`E`\Ç	R¯£,¸3œ÷q?\Ô34i\â§A›O\Ò\ß%\Ğ|½+8róX°?C¼d\åHš¡m¹™\Î]”\èB¾÷¡g œ>‹/¦xjnÛ½›\âF•œ\ZRÄ³\äQd\'r\\ñ†‡B+ƒ]\Å{MÀ0!¥\\J¿´ux\Ã\ÈôR¹\Z”\Õ8ŸpM°\n\0,œı&\çsç¡‰”S\à\äB\\\\[õK5Ø¶<½Tƒ­\ÑYk´Wü¢$\è\0˜uR`\Ò]%ÿ&[=¸¥©±õ2ñ,˜W-Ş˜c¬\ç‡P‡ŠB\Å\å\ÚZ<C#7\r·ô[\0P\Ø\ÊZu£†Á\Õä€…6R8)ø\\€{ç¯¿\â\Ë\á\Ş8÷\ÉMq&\0Ş’\ÏM\Ãv›w®^ƒ\Ş ~\Ğ@B6\"óŠ\×5„<ƒ\í‡b\ãŒ\ÂRÌ´ÌŒL.uûZ–Š<Y‰LØ¡\Z-¿tA€	e€û«o½ôúvyf¤{r©\ê[–j|¥\Şş’\ãd\Ëò¼ü* †¶j\ĞÀA\Å\Ï\Ñr\Ô\ãZ\rk\Ô\í‰Ê´\éC\Ş7(·„œ˜EG\Ø5Ô‰Q;ñ7®\ì!\âr…\í4mÿ®\íÃ U`$ô´l¢\ÏE\é)@§ME”|KAôò¸\Â\×\ëÖµ\Şq<\Ó2\×R\ÆÓs†PJ^\È\ëÇ®kUx} §t\ÛO’‡—®¾ndvi´\Ú\ê+-\rŒ\ä&\ê`7xh¼u\ÈU¿@xı=ÏšT¶‚®* ¯\ë/\Õ`o£³K5\Ø\ß@i©\Ö\èñ\î\r®š&B\â\nrp9\ÍÈ·hk3Í¬\n\Í`0Z¾\é÷É‡·.q»\"U@\Ò\Ö  )‰Œ”\Équ’:®š¤$9\Æ\Ë\ç\nWôşU ñ\×!S\è\íõ«H\Ûuö ¤­¹”KW¥¥òpPU^ö²NĞ†\ì¼\Ô\ĞY–ñjY\Új8XWVJ}\\õ\èS\î£iv«ºbeÁ¿Z\ÓSL¦‘{×¥Ä§Tõ\ÔZ\à›\Ï9:\nQ+‡£”\èsÀ{ö:h\Äs8¶öüúö\Ôü;\æoŒEôÖ ?\äÈŸ\0Y9‚|I±S\è\r2i¯—Qp;»#î¾™@Ù@º«•\îƒ\0È½\Ã\ÛG®]š¨f‚\İKÕ‘\âD¢\rY…\Õ\×!¸¢&¾ƒÕ½\0`\Ø\ËÄµK5\ØOµ{©\ÖÔ“‚uC6>\àU4k\İ<!R\\O±\éB\Æ(bz\Z¨{BäŸ¾j¡P\ç`1™#”@\İ%ôú¾J¯\ÂLûG˜F® œtƒœ@÷}r\åÿ 3d\Z± ~\äk¢O–ƒ\ÓÁA\\\Öü(Y3x”sI\ÙÿZò²f\ÉËš!$?ƒ- .Ä¢\ÚK­•E»k©\ÛO–Eô\İso´„¯±£\n¼¼”Ô¬KÍ²W\ì\Ê\ÓvX\élM­hüı\ä\Ë$ pRe´WoR)	™šj\é\êL\Âÿ\r<ñOPj<B3‰x	ü¼ı€E/şİ¦ø6ú\îƒ6Àz|[È•\ãÛ—}u\Ó7®Àqš\Ñ#õo\"À7Í¨˜[§­¬8¢Y›ˆ†¢¡‡\Ô\ÑC•U\ë#ª\ãô„r\é\Ù\Ñl*£Â¿¼,²¨\È6oÀ—KpSÎ£	I[\ë”4\ÊK\Úh%m´’6Z	²\âô0\Ğd Ÿ\Â@§>\"} \Ş}©À\çó‹¨®bhK\ØC£ö	U#˜J\Ğ6LkË‘\Ú3ôód\ÒyºUi\ÂÔšÚ¨‘\ãò\Z\ÖP¤–/CÃ¢†2,ø—*\n\Z¶\Ôh¦÷\Ø`$–\İ5ñğ\ä\Ö;&ü\r¬0~r\Û`hv\ã\ÅO]N\Ô#§{öŞ¿J\ÔV\àË½P„\Ñ\á*8º\Êq4fB\ã\"\Z1¢\è\Ñ…&p4¡\Í1öh z4\ÏÍ£yn\rTt\Ø<ij0\ÃU|3„\Ô}C³	\Ô2C\\\ÍOc¸†ü$L\Îr\Ú\á{_üP\Ì\ØirRD\Ïi°¦\çê«½sõ\ZF\Ï\Ôø1\Æ¯‘“W\Æ_\ë<ô­ƒşışb\é\Ğ<ö\í\ßvö\Ş8=ºo\Ğ\ï,\ß8=r\ã ıŸûŸ:>\Şç™ƒ`?ö\ÇF\ï\ŞU\Êo¿{r\ìî¥ü¶»5\ÉÀ¾¦Ä‚Tc¾€FxÁx\r¾.¼Æ<\ä8R\ê	‹\íq€=\\¡“c\Ş\âµL \êúô;\ê+\ßJô\àtR©h¨­Ö´©U\×zbW\â&er\Öa_\Ãt´^ou‡,öL¡3¸–—\Â}%·\Ñr³\â»dHÓ´Şœšh¿ø\Ø\å\ÜtOq0\Ê\ãzƒ\æ\àª\Ó\Ì\ÊöÀd~b\Ó\ã\åñ\éñ»Æ¿3N6%\"üVK@Pø¨&Hk”\Äô•ŠW\ÍFPò Xj\ÉĞ…|\å|\Zş€=\Ì)€5¶®³0\Å ú+³\ßa16õj»\á\â:q‡8/\âj\ÒÁ?ÀÌ€1ù\r•\Ó\Z\éZ²Á\Ğ\ë\Í\ÉM:¾nO½Z\r¿¨!¢ úDœÃµ„ƒP²\r\ÆHù:\'6R\r`\á\É6À^\Èm»{*³y(#˜M,o\êHf\ÑÊº3•h|ı\ëC#q…\ã8e\ĞÑ\âh:Q‰[b•õ7T¢(7T\\bµ›C^\É!PNŸ\Ó,†#ù˜7\ì\İ\Ô]\Ø9\ÚÂš,\Ë\Ë\\÷•\í²Ì¸¢…˜/\è¾røƒ0’f™º–õ\İ\ÊD!-¢Q=€;ªDv¢\"Q`FS¹Ú«\ÑÚ«\Ñ\Z\ì\ßU\ä\0@\âz\ë‚\áÕ¨\rı•\n-µF\Ò>\n<ur5œ¦.\Æi„¨G\r§\ÑZ.¤D\ÓVƒhõ¹51´5úbûj4\íQ\Ê\ä¶Xİ¢nò!ERf\Õ²¦G2½wQf/\İĞ²G6Nu\ßpÿ.,P†‹¿\Ş>İˆ\İ\Ò<ƒÀ\\u@±5ªsup\åİŠ\æÀxõpö¢õÀƒ\Ê\Z\ZmonLT\êŞ¤\íEp¿\ÒÚ¦Ñ¨€\ÆH4zh(€ú\áaÙ†ü¨O¹\êCC>4Ê£·úQ?\0Ñ¢e\Ä\ïR\ÎŞ¨\Ğ@¨ü0r\Ï ½ü°4ô\ÇFıŒc”™¨\â\Õ\êäœ¢“\ê?\êd•:\àL}g?*\Ê1\à‹\Z}¨û$	M ¨F:Õª¾¶J\ÖvIK}»\Åplùat\Ä<˜#–_ HT/y­\î D\Ëş;\Ì ùVH\á_\"€½H½ÿ\à\n¡\çøf\ÖD\ãÀr\ÂÀ†¾\è`Y\ì\ç0\Ó\Ó3\n]–Äº„\ÔLš§\'x\æ\ÄÔ‰Æ¨\rNT\Z\áŠ¥QT.\Ô\Şö]v\Ô;j7H£†qb\ZW\×\ÌKe\0JR…\Ââ¬°—T²iµÀ³ûq•Û¥\\;\Î7–[$%´#›),w›®-\ëğ‰˜\î-\à\Ë©BOÀL“(Š¿«>WH\Ô-ŸD’5sh‰0ğ\ë,6\Äõ¼ñb\n{YbH’³™\à<?ˆ=‡UH\'ÒŠt\"ŸVâ†”¥ş@\"ùEtK\ÅÍ‡Où|N\Ë	_\nÍ¤*),•28O\Å\Ú?o8Œ\Òb\Ú0²\nT%Lôxı¼’\ç¡d„}\áS5\Ğ8e9QCRB\ê_R8‹ƒö1\ç©ZlÁ\ĞşùšÒ‡\Ú\ÖVVó@¸’iW›0`°ù\á¹Î–ñ¢76^¸\Æ\è\ÍE\Âİ­½\Ñ\Äu\í\îœ+9¯uELÙ––rû\Ë2\ÆL8.·”©¡V9\èL¸Œ&‹tIf\Í]œLœ•}r4\ZŠ¬F\0V·\ëDÀd«‚m/<ƒ\Î\"ÒŠ\Ş_D\ï\Ív\Z=&/da›°)©k„*$’RI=V“\Ø\ì#5¶\0u\ÉJ\Ëü¼ª\Ğ>x\è\Û\í~Q\æu\é\İı×–¾¾\í\å¶õ1Šw˜\ÍAw_l8\Ê{yÖ“„FS\Ø?²FBG\ëú\Òm\é\é}\İ\ÕC\Ó\ÉHM‘zrA.oH¥|ù`¨Zğ\'?†Á3\ïüFR\È1%N—\"\à9E\ÑYD7W¬ˆSz\ã\è\Ô	œ\Û\â\'}ô)\Û\ázF\ÓB#I\Ö\Ô\ÈÿñrÒƒ5Ğ†H¶ P\'\Úù\â\'k¾}ª\ÚÚšø¡9/¨e—Á”H4³A=Æ\íwH\Ë\'Lñş¶H9\ë7ô\\ \Ù\Ö\î;u*:v\Ó`uw\Ùs/14Ì‡$Œ@öhOBfxVr¸\ìK“\'OU¦±ê¶¢X·\Æò¨B\Øó\è\Ó:RD6)¶œÉ„pò\":[‘€ş¡\ÌşÀ\ÃòÃ‰®C\Ü%N®¨roeÏ«^¿9£¨–ÙŸ<\\K\È\à¿ZS‰’7¥‘ºg/_)’R\\u\æÑ§1B‡\ë’V«\ÏL\İ\ÂrFæˆsš-€\ØS\à\ç)k\ÛX\Ö\Úf¡IŒü;\ÎdÀŒ¬3\áî°¹Ü¶\å2 =\é~\Ï\ævÙŠ\í\ë=­7š¥w‚\ç\Ä\È\ß)>tE\Í‘\Ñÿÿx\nºY	\Ë:€›;OB®~m5º¶s5{E¹\Êñ|&\é2³½É¹ı\r\É;,;u‚œ\'L\ÊHeü\Ø?\ÖGˆ\Ùtz†Í“	\'ğz\0-j\ØóÈ¯tR³o»x’7+£ªû¶7«¹\â(~E\nª\\\è\Ô=¹ú…¸‹„)`ƒ¨ß„\İø¾™R¸>$>`p! <‡¸¸Ç¢!«o\ŞzHùj\Í\Û{\éu\áuEÈ¹(÷X­©F“o×”Y\ã\ÚAh\Zv¢\ä\ä©bGp8N$8n{\Ğo\Ï\î\Èu­o“W‡vŒ§[—\\ÅŸş\\*Ô³¾Jñâ¯€§‘€k™’fô~˜\ëôm°?\Ä/ÿŒ<¼&S’·?T\ã\È\àŸ\Õ\È\ÃW\éB±¯Ä§LÏ¢·L\í\r?À‡{R‰˜\î§6\â\ïÌ¯oN\Ü<<p`¦%>~óhl¸\àq\å‡[Õ¼{›†=úceNªÂ±>p <T5¬\Ãp>º\à-yË¡U?\è­ójŠª1j8_[½Ş\n¸š¤Šş#(R\Ïğ‘wù‚rQ\ìÁ Õ–ˆ%\Î/S@\Ãı­h\ã(RG2¶˜{ù\ë—\">\ìYõ„^\ÇYÁSôcÏ¡K\à)\Ê\êz\ÜSH	½æ¬¯\Å\×\ÂÿtcÅ°‰?mû—6¬­x\Ò^\"\Ã†ÏŠ/Š˜(Ÿ„”X\ÍÂ™»4\r§nKœ¨ù\Ú2 e¸x²¦´\r\'\Ç\Ì\")Ÿ\Ô¦.T*\É8sWö3Š`J%VÃ„u˜€\ÇY\n•·|])/«\ÃIŠ0¸c\Åpko¢w´÷•f²\\\ÔÁ\à©“Cio¨³±r?’\ìoµ1<\ÏZ-F‰%ˆºüVk¬Rˆv\'eš5\ZÀ‘%‚1\îğmr¸W¥úsØ¤\Ì3jN)T§V7”81H\ãñy\ë¼\ï±\Æ\Ä\nŸK\áU5÷P«ÀúkšRa+Ì¨M†¾|‰\İiš¬F2³\'\×5\Ó&\ë§\Ùlt\í%ÿH¼.)4«ˆ:uL4\\ş/Ã£\éV´V?\Ï\ä\Åş\Û)ª\å\â˜ü^øó’_\ï.¢[+\åóûy\ã!d^U#¨=\í°Á¹²‘‹Ó¸¯*ø8`¨f…kö1°.51¯\Ù\É;÷i\Ü`¸\\A‹†$iÁe–]&~\Ã\ï\Ãô‚“4\í\Êò\Æe\ØÁ0	X¾ÍŠ¬Ä”§\Ù.I\èW(½ş%</ú¶<‡_µ{ \Ş=÷„^o°.¢÷Ÿõ\Ë>Z6/¢Ÿª°\Ù5o¡ùyú ~«¦/M.R9\Ø\ĞT\Ë\Ö0|µ´\Ğöv|5Q§½‘¨ƒN\áÉ„\ÕÍ£\Ä\ä+À5ğ8l.‘&Äc:\Ñm³yx”\Äx#Cè†Ó˜Ì›Y£Xfù}€2\00IPş^\áC\Ç\ÉO\"\Â\"±zş\ï‘3:\Zgw#\å\×.¨“\È\Z¯€s[\ÙñÚ…U[T\rÌ¢\ã-¥D²Ô‘\\>K†Û“ñöD|ù<‚¡†•ß¢¯\ÛÀ\ìG\ÂJ>vN\nU€Ä«pyò®(\çpš|õ…feŠG\Z1\à5oôüß¨q™(\Õ[‚.gĞ¢\çh{\Ì\ë\Ûh\Ú÷zcv\Z½¥ÿÄŸfM,©dü]ÉŸt2Œ3\é÷·\Ú\Æ\Ş\nŸ~ie	ı±]a‡:\È\ØnÄ‡X°\Ò9FH€ñ\îCÀ`…óõY\à¼Xq\Â|6¼\Ş4\è(ÿ AŸ¢x§Ev\n:T\ÔI!—3 Q4-‡Ü®ˆ•¦­—;$\Óh¾Â‚ƒ\r¶\Â\n’†\Øû>w\Ô\Æ0¶¨\Û³öó3+\ï à§”HdV\Ñˆy»\ãIƒ\'hŸ ù¤|¡È–SL\ËsğZ…‡K\ìpù\nó•¸v¬@4}1ˆf\Ì\Ñ\\{û|-\É_ \î[/\Æü\ê\0-ğ­`”Ÿ\Â÷b_$oi¦½32,\Ú_PF:+\Ê9¤ı…\ì%´¯Ï¤k®\È\ì`5™l¼\Îj0û­6¿™F—\ï½\äZ&‚¯ıQıh¹\í\Òk‚\05\ì\Ìò2~”\È![‘ÏªœŸ\ÃF+\Æuc\ëúc\ë\Ö\Åúq˜#º\ïI„“z¤[\Ç\"j«\Æ7¦Vrü:\Û\"j?M\îT\Ãbé¥’ FÆ”©\É\n\à*— pŒ\Òz\\in¬m¤VjJ0G\Ôşx\rt¡\ÆÀ\ÒI-\n¶\ZŠY›&\n_É¨û~õ+«‰dº\\=ó\Ö\âÁñ£]¿q`\è\Ğ\æ–\"q¨Ÿ™üúCı\×Z6¸\åi‚\Ôó\Ì|ÿ¾Ñ¨£°®Ğµk,k\Ğ\ÑzK\×Æ›\Ë[\ï\Û\Ú\êë½¶³¼CúÎ™O}¬[öz£\Å#Kv^\çø½›r\Å\Ùr€	L\nÁò–b|´\è\rÆƒ¤\à”yY\ä\Ì\á 5u\Í-Õ}\ë;XŒÌ®\ßP¿ ~ >[G½\r«§6D¦*‘©©Hçœ‹Ø\0õ.±K”‹\n\ê£ZV|>rô:ùªQWZU\Ô7øZVjJğ%§ßzñıd\ï\áo\ÜÔ·0\ÛÉƒy‚3Ò…\rûw’N\ŞĞ¦tG/(\çg\n;\'²˜\Æl®óšC[\ï»@¾µk\àÀº\ÖO\Ì~\î†v‹\Ç\Ãsf·%\äôF¼Ş¹\â–UÀ•-\íñ‘¢7\0\0ç²h5±\\(\ä\\œ\Ê\Ï\Üù|\Ë\ÊV¿§x\ÇeˆW*rò÷\0\Ü?ƒh\í•\ßS“z?\ëŠ]û=ô\Ï ÷’ò{õ´\ßKQFÿ\Õ(‡;k_\ÜÙ¾m´\Ü\Ê2L¢®§sK·\Ç7¸¯z\Ì$a0\êkù\Íå€”\èO\çf‡Z)\à6á€±…ö©…©#3qOa¢µ{GMŒÜº¾U°:`.”\Ùg·{\ìt,1”²\ë8»\Ùd\çHGf(\îk\Û\É\Ù%\Ş\"y\Ë\ØÕ›\İ8\ĞjÀ\ÉDÿ–•d@9P\Ö\á?¦5¾%ı\Í|¿õ­M|\Î(|ş+ˆ|Çi¼\ãwu|Î¨|ş+~\åe>¦\ée¾?.–¾¹\Ğ7¿¹$\êI\Ü\È1ùuû«u\Õr´\Î\ç\Zªe\çXÎ¨Q@*l>\Ğw\íı«ª½q\æOo\è2{|œ\Ñì‘ƒ€\Ñ\×h\nTfÛ¡f	\Äı:\Şa6ZM¼\Ér¦¯9<Ü³o¦\Ä\0\Ír¢Y\0\â\'!â¨–-½u\åÙŠ‹\Ç&wlE\Ûô:\Ù\×A\ÚÖˆN´ùp¸ˆ*H’)›„NV`|7ªD`|·A%½P_AQZ:}J‚ \Z›$l=‹\è\Õ\Õ\Ü7Î€\ïB8¸\ÖjsÚš\rY$tÁõñ®\n\ì$İ…\Â÷;\á}õ=Oxñ#0Œ\'•óK\×=¾\0\nkh\ë00°\Êw¡şQ\Ùd5\îüÿD#K\\\ê\Üx Ò¬Ñƒ[>»·\İ\âörŠJtùÂ€S6f\Ûg+Mœ²¥=ç ˜¢y«\ÈI¡ \r¨DS¨Âº›€¬öa\ç±-\äÿ\Â(B ø#€wúV\â\Øl™ª\ë\ÈVôo+\Æ\êh¨\ÚªVC8¼\Ô_U7–¨È‘\Äw^ôüÔƒy<d\æ{}G\å¿\"!\Ôòd\é\n:\Ò9\æI|§†x&\ã Y_\æ{µ¾£¤üW5Ğ´9¾Wº\ÒLT\\{±ñş{ds˜(Šc[’Ó‡ª\é‰v”8«óe\â\ëmm#™½\æ0¨¡\r³\İ=¡r›_\Ç\ĞN²-]#‘Ş¹÷\Ôdl(\ï²t\ÌvûXQ¤\Şj.’Y\ìnw§}‚“\Î\Ì\êú»RE\É*\Ù\ÜF“‘f­fÎ•N\ì0\Ü\İß¹i]y°‡\äD\Ë\'*Æ‘\É\ĞHghd$Ô‰Cÿ\ï+>„-\âB\Í|cÀG\ã_÷ò¼\Ù\ë%\îòšQó7É»¢\'a tiüKWœ}@/™oÔ¼ñ¯\×\ê=\æo\Ö@\ZS+Í ñ*²Ä‡ptñ’Ÿh\âg€­\Ù\Û(\çÃ¼¦õ®Dw\"\Ø\æ\åM\ÑŞ–~ø\î¹\â\åK\î|Ü­#\0Pœ4„Š‘õ\íN)˜ó\Äz\âòS­cy7Í‰‚\İ\á4ñ\"\'\Øı¢5\ä0\Â\Õ	^bˆ\\k0-H<ÁJğôI4Ú“=aw6\î\ÖX¾KÙŠİ†	¤p°82÷\"²\ÙJ\\KL!\Â#V\Ä¼ƒ4Ò”‘ad\ZÙŒlGn@ G»På¾\Êşu«]S\ë¸\íX÷±\Øü\á–Ã¾»C»õ#\ìR$…LŞœ¯;¼{b0Ÿœ\Ø}øXr\Í^gs¼u\ê\Öş\Û\ï¬Ş™½qq¿c\ë6\Ï6\ÓúMò&¬³W\×kH¤¸Ô­w\îß¶©7•\êİ´mÿ·R‘½»$}!}AT\è?bN¸ığ\r\n[˜>J\È\Øø*Ä–v|\Ô!*\n2(\äsÙ¨¶—´½U\Û\×\ïSk\Î\×\î\×Ş§\äK\Ï\Ãkú¯şR&Ÿ\Ï<7\ï\ä\Úrm!x´ÜŸo\å\Ú\Úr\Øz¸½\è€°{\Zu/~;“\ÏfCh[>ß†ş\0\Ş\\¾nßµ„GøC`“g\Ëÿ5—kû	8A›`ow€\rú\Ùt\á\â8:•\É\ä1ŸVi™oÀfÿ=ŸÉ§À\à\Õ\Ï`?\ÂB¾tú³ğ\ÇI*ö\ÖIş32„\ìWõC7:{6\Ôj3:\Ñ{+F\Ä\È\çøœµtº\ÛA\Æ±\ãOXO«±\ØFş\ĞKJ\0pI	t*\Õ\ã¥\Ó5­ÁY\Òzº£m$¬®,DS8\Äf…kšU¹¢ÅŒd\Ùb†•\àªŒûa \ZÖ™\İ\Ó\Õ=\ç\âL4ne,\ãf\Ü]#\ÖH\Î\Z\é\n…û·…Tˆ1\èe\ÖÊ˜{[‹k4\ë\nu†ñ\'J[z¼NA\Ï	²8 R”Àºò¨\ÇÁŠ‘\Âx1¿®\è\Òó’Á ›9’q\"ˆ\×\î\Ç\0V\ZvH²Cñõ[\íğ‡Åƒ\Ü!Á\Â\"öÉ³)+ƒ{bğ\ÈsH\Ôğõ×’—²\Â”Œ§Â•j6¿‘¼\Z‰oDÒ‚Rsp¸\é]1u\á\í\'”`·HNú\'”\æe^9\Z}E)Áf‘ATµú€£òCü\ï(“\Ån\Z3H,ıŒs˜…H¬rñ»¸Ä€wJ€\ãÿÜ¸ş²\Ãº/¾M^G²¢Qû÷ê‡…H8•Í–-\ÈQÔ‘Q¤ûñ¶\î–E\ìù\'jƒ\ØW¤\ZğÒ\í8\Ş\İ<i~{©!$öc¤œÌ¦•÷VJIÀ\íHN$D›x#Áú’\Ó%\ÆN¤ş³3r\İ\ØÁF[7\Ü:\îSÒ¤äª­\Ûv\İx\ËF˜u‰¡œK\"‘ş\\H\Ï\ĞG\Ç;G\â·\İno)‡Û¦‹n\Ì\Öqm%d”Ì”\Ş\ìj•lÒº¾\á)\Éa“\äh{À\Ñ\Z0\Ëv\Ù\ä°Ê€\Ã\Ì\Ü\r;£…#ü¹!øü\Ó\È7Uq2€\ä¯8\à¹\Ï\Õ2İ™øOÊ£vbÿ\r!3öü\ã5\\\Ä^F\Ê9`pä´·y\ïc¯ü\ÔÀÜeL\í\ê\rt¥=:=\ÉS®dgxjfv\ç \Í\r}\ÕY£«\Å\çmO‚›zC3\İş\İ{\'\Ë\ë\ç\Ğ#©ñ¢›\áE’­aAú‹]}¼lJr\Ä%˜,&^6Iz$2›§ûg9L?y`\åñ6bGXD<\Íb\Ï`\ß\Ï\Æb\Ï\"pU\ÃRğg\á˜\0\ï?\ãi:²yÇüıÿ\Î.:p\Ş\çt\å\ë\ä„@¾0wZ\Ç\0N\×t\\LE\ÕEF?T©ø¯9ğùİ‹.ù¶\Åå¶¶\åAË§©\Ïb\ê7\èO#’\Îe\Úp¿\Å_\Ån½ø§\Ôoö*\\ù—ÿôO>zÁÿ\Ñ\Ê\Ò\Õ¼G+ß¸¼ú\ËJÏš2rI¹µ\"ù\é¦ò\æ‡\İµP+”Û®X^n.úü\ÚB\ë>b9«\Ã\á\ËC+\åyX\ØÃ—\ã\ÍV8ƒV\Şşı…¿\í²ò­\ËÊ»\ÍEx¤¹ˆZÎ«\Åô\Í?V‘¦®TÌK\Êg¯\\,a¥|Iö\É*\å\ç°Xÿ/{_\×Ôµ\í}NBƒ(¨ GQAp@œEe2 \ÎJHD25	VÛˆˆ8U´*UA\ëT\ç¢\Õ\Ö	\Å‡¶Ö©¶VÅ©Ö©N­³õ­½\ÏIˆ^{¯\ï~\ï}9\ëö\Şg\íõ_\Ó^\ëÄ„\Ş\æ@yM~B\ä\Ù\Óó´\çé¦½›.GTWjüP°\ìô\ß@5¨ªššwş\Ó\äÿ>ò\ê[={“¼\×\×A[ß¤š7©e^4ı]D¾“®\ÖAw\ìô‰Zwû·)Ì†~´“\ìd\';\Ù\ÉNo#Ÿv²“\ìd\';\Ù\ÉNÿ\ÇhŒ\ìd\';\Ù\ÉNv²“ş[\é\Öß¥6£Ş 	˜\Ù\ÉNv²“\ìd\';\Ù\ÉNv²“\ìd§¿A\ë\ìd§ÿ	ÿ]Y\'Nkx\å¢!\Ç¯pñ_Ñº\á\Zs7\Şfv\Ì%\Úğö°c\r\áÉ»Âù6\ë\ÄX\Şsv, :8|Ä\Ê19%V~g\"\Ùq9;v!:8>eÇ®n|EO7¢?ğ°±I\n\Zû±c’plB³c\á\èif\Ç\\\Â\Ós\n;\æ\Ùğ8.\Ë\Ø1\ßfİ‘\èá¹ˆFØ±\á\îù+;’	V~g¢£\çcv\ìB4jÚŠ»:r›ve\ÇnD[\à\á$\Ï	”k\à gÇŒŸ™1\ãgf\Ìø™ólx?3c¾\Í:\ãgf\Ìø™3~fÆŒŸ™1\ãgf\Ìø™»ºyR\İ\Ø1\ã\çµE4H„\Â(–Pr\Â@\è#ü¤&X‡‘\Ğ\ãW¬¨`¤%ü\áN¡¢)¬¥pÏˆgJø­\î±ğª\0NW\"\ZF©°¢$²#¤)AF‘‹G’sAnFT\Ã(kBÁxra¯ƒ²\êLa\Ô\Î:!D_ôÀK®p9‘\Éòö‡Y¬¢»Y Ÿ\ÑjO¬«°\r\ê·ê“†ı@ı`\nwĞª{¡¦Œk)…Q²\à®\Ûkñn6\ì5\à•,\àR`¯Q°\×b		è„¼£\Âû´Ø¯=ğ~%\æP\ZÀD^V\àWŠ\Õ\È\ÂK\áu#©\nt±D¯\Út\ßZ¨`§¼­QaKTV;dğ£Œ†Œ=2ŒA±±VD$U|HV.Ì²ad\Âq0‚}©0Vc\Ø\È^¼¦³b¤š°M¦[$Çšj1Š\ÇI‚£’+(³°X®’…\n\Û\ÄøÂˆ³\ÂRel¾¢ˆ\é\ÙuŠä¨±ô¬–ZX\Ñ`TF¦{ªZ„¨Ç¶0g\Ã\â[Fw5\Î\Z”	l\æ\"­4À+|iq¬-y\ÍøŒAa\â¨e\í\Òaß¦b\Îjm-B^\ËÁû«3a\îÏ®m4}±4\r–‹ıÅR[[²O\Ëf2²Ÿ‰‹gƒ%G•8\Ö(sõVk\ÓY#\ÌÆ±\ÒM`¡±\Ö(\Ép  ©a—¥ò\ÈAÆ—³øş¸º¤\ãX¡;oÖ«\îoX\Ìf%ó»‚” ¨o\Ït\ÆT\àLD(™\ÖTŸ\Ì7\ëd:›\×z+7\Ê\\&\âZ\àW\â\ÜùŸ©·B{\Åı_Sqc@9\á‡OY{ö>ED\á¬\Ğa\ÍL@¨^u\'€Ø·h§\æ\ìñgs.\0Æ¹8‡\Òq¡\Ø\äÂªtg|l‘\Ê\ÈTciX[¦\Î1²\ê\ÊQ#\Îs=¶ñ‚eŠ\êPŒÁTš\\\ìi\Æ3&k´-Ü–º gk7:\å\"\ìÄ§g³Â¶N\ë±_µl}`¤(Ù¹Œ­\ÉJ\\QT\ØBF»T¬‡%Êµ#fbw0ùcxc%\Íjƒ\è½*\ÓØ§&¶û0\ç“ÁYqj[ÀT\Ñl\ì\'9>Ouù,›µT…Oš\ZŸ)\æ\ä¿\é{´‡\é,~Àß¾F\×-\Ñ\á\ßõ­\íù`º;\Åögœ¼FŸ¬mAuW¬­W›@–0¶0O–Zi°>y(p\ï\Õ\â:\"{«¥L\î\ÉjdSt\ì+c3\Î\Âç…©O\n\Ü\ÇTlma\ä N5®şo\ÏQ¦Šk\Ù\ÈTK·œ•\ÍSE®w*\ÖÏ¨ª»\âz©dm°<aX¼\\3«E822<V–\ç«\Úu®öIğ«U”¸Ng\ã\'\n>ŠªÖ‡Ò\Ãr/€•9ºV\ílÏ\Ş\êjQı4`\Ñ\æ\ït§÷\ì”W-1”·5›\ÇÀ\Z\'K\Ö0O\'j¶‹Tg÷»:œ%+\ß\Ş\åP\ä¬\'\Çhó,\ÂÄ›\É%‹\ÅTl-w¶\ÙÀv\Ësó\\”\Î\ÆÙ’\ÇL^\é\Ù\çA‡Ÿ»e\ØNK¦Èˆ\ê._»ı±°zH†mG~S±µ^ÁU9û¬­Åº\ÚöL~\Z7\â\Üdu|{laœX³\ÏC´\Û\ÛøHaóÁö<¼·<¢ú]…»\î\ê&ªU\İ,¾¯½[\ß¨j\ÙmÑ«ú¬ú\ÔTw\"KE„\å\İzf™+m2D\ß©q¾e\ØtXF\ëT¬‹’\íTY\ÖX\Ú\Ö&†lÄø”¨­:X\Îu\Í\\z¯\Úvx\ÆJ\ÛNS3§«=‘ı¨ù7\ãh\éYø\İ%\ã¥\nüŠ0«ı28\ä6½\Ãôz\ÌT~¶À\Òñº×¨\â\Ì\Ó\ØX<®\ë©[‹{„¥\ËØ¾?³ô‰ºjJ\Í]F\\+˜X¥²v\×\İseo‰¨Áj½g©KgNÑ›\ï|ÿ\İ°ô·hBŒ\ï\Æ‘0\İRŠW$°FA•Âd˜EÀj¬øG\"{\ßGj0\îC\ÑÀ7÷8F†^\ã`>×¸H‚\Âs4\0üq \íC0†¤%bN)–«1ğ[\Ìò¡\á°2\æh…« ƒ»˜÷¶\'2š&Á:eµ°¦VŒh\Ñ,fR\Í\Ş\r\Ù,\éğ#ñ8Îªg$«iö’Œd†ƒF1x†VÁ\ï\àK\Äøa\ØfF\Û8lC$\Üglc\r²?k+Ã‡ü“\Ì\ŞA1Bú\Å\0U[†}µ©ö_8üN\0Í‘ü(¸›„;D<\ìŒÀ–&b\ï‰YŸ!kcğ¬\Ú*&R\á\Ø\Z\äU\äƒ\Ç\ÂO”\ÕwRü\Ê\è\"µ‘V\Ówƒñıj.Æ¾0ö5{.Ï˜h„\ãYº+bc)\Åv\ÔFŒ3QŒ¹Â°Å‰\Ö‰\Ä\Ù\Ëho\ÉN#\ŞF\Å\ÖVKVS\ï8#Œ\ËıAl¤\ßôòzö	\Ò+ÑŠü6\Ép6\×RAt`(«’tF]š‰\n\×ô:ƒÌ¤\Òiı©0µš’ª\Ò3LFJª4*\rc•\n\×heªA™M\Å\ë•Ú¤\\½’Š‘\å\ê²L”Z—®’Sr>×€vPH2İ™j‡~…ˆ(©L­Ï ¢eZ¹N	«ıuZ*:KaD8I*#¥¶•“¦3PıT©j•\\¦¦XD\à\Ñ(e\Ôe\äJ\n©›-3(©,­Bi LJ*V’DÅ¨\äJ­QÙƒ2*•”R“ªT(”\nJÍ¬R\n¥QnP\é‘yC¡4\ÉTj£¸L­J5¨†Œ\Ò\è@ \àÈ´FbP¥Qi2JKe«L”1+Õ¤VRàª´\é °š”\ZØ©U€Z¥Á\èOILTšRf\Ê2(”A	V¨L€!7Š(£F~•\Ëô0F[4Yj“J\"µY\Z¥8J`¤ôDi\Ò\Õj]6•Î¥T\Z½Ln¢TZÊ„|\ršÁ°QXº4*U•3@&e	6«2•şk¦¯‘\ÒÈ´¹”<B\Ê\èÜ§\'d`‹AeDU\Ê4T–Á€\ÄtX1ª\Æ»IE&\É(€†ÁB\É#Ï@1¥Á_ªL\ÏR\ËÖ¼\ên\îò!8\\„B\Ğ\Õ?¨s\r×›2…R#3d\";pH­™™×£e¹\Ì×ª”Fÿ˜,¹Ÿ\Ì\Ø¢HEt:S†É¤7vP\è\äFe§?l0\å\êu\é™>#7@–\ny†XS%—\ÓtZp8pUƒ³ôzµ\n\İó§†\ê²Àc¹T¤	%+ZFChMJ¥PõÀL@õÜ•‹~\Ë ŒJƒFe2¸\Ô\\l•%ÁU7:ƒe†Do\Úy È’›D(\Ç\Â^\Úc€ødg¨\ä6še¨J+WgA\îWk¯\ÓB¦ø©\Ú3\ÇÂ†$¼K[\æA®CÜ&ƒJ\Î$¤\0\ç¡EV\ì? À™@¥Ä€NB—­U\ëdŠšŞ“1®‚\Ìs |he\ÒCP(‘™ˆ\'C©\Ö\×ô(\Ô%\È]†D…\ÏI†*UeBõ\É5	TNÓ¡Ó‚Tf]-¢ReF\ĞU§µV\nKü\Ø\\Pjı³U™*½R¡’ù\ë\éh\0œ£Ùš\ÒÂ‹\ÓŸ$¦\î\"XWñ:\Ér\Ä S\È\Íct`r\rœ%56\ì\îše¹²F¡tuM@Á1\â\Ãvƒ”°<£Qi(z\èˆÀAL›‘ÁWQ\ØN\éR¡\Øi‘Sd¸P[ò\ìı­@\nÉŒF\\%Cù\çJ–\Ö$c\ê©J\rñCkXK%²•úT{¬‘WC&uò\á:‹–m\ÒMÄ¦\Ò\Şr[­‚<e°‘,Ó©\0\"d¡\ÕrU\Zú­\Ä\ÑgA\Æ|`Atj:¼F´\Èf	X\0†•¨D\ëô*¦¢¾UU\æÀ$shXOc%²3tšwØˆA–A\Ê(±\0…j(\ÖeŒRn²$XuCò+Tø\àugR\Ê\ØX¥M\Ã\Õ\êL\è\È0\Å\\\Åc&S\Ø[\Æ\ÔR•5N®\Ì\ÆP‚7š ™T\"k\çy—\Ğy‹S‰ñ‘IƒÃ¤bJ’H%H\ã“%\â\Ê7,\æ¾\"j°$):~PÒ°¸¤¡T|$7”\Z ‰‹Q\â!	Rqb\"/¥$±	11¬I\â\ÂcEHâ¢¨~°/.úºN\"MŠ§ +J\"ND\Âb\Å\Òğh˜†õ“\ÄH’†Š¨HIR’	BÃ¨„0i’$|PL˜”J$MˆO|ˆ“\ÄEJE+K‚–k”8&TbtXL†\n\ÚK±~\áñ	C¥’¨\è$*:>&B‹ıÄ YX¿1F…Ç„IbETDXlX”\ïŠ)R\Ì\Æj78ZŒ—\0/ş$‰Cf„\Ç\Ç%Ia*+¥IÖ­ƒ%‰b&•$\"‡DJ\ãA<r\'\ìˆ\ÇB`_œ˜‘‚\\MÕˆ° ù Dqµ.\â°•ˆ6\Û2û»\Ú?°,ğ7|kÿX\àŸûX@ˆ\ì\rü\ïüh€‰ı\ãû\Çö\ìÔ®\æöj~D`ñıcû\Çö	şŸû˜\0\Î&ó·ñÚ“( \êº8\ì7ò	\Ò~g\àoö¿\ëŠ\àµrq!‡,z_~WW\Ìÿô}ù\ë\ÕCüœ”÷\åww\Çü•\ï\Ë_¿>\â\ç\Ò\ï\Ë\ï\áü\Ügú\æ\çÁOC	AŒ\"\\IÑŒlF´%[A\à\Å^\äH¢?©#“c	9Ğ‘3ˆq\à­\É\ä6¢ˆ,\'“‡‰U\ÜşDw0Q\Î-&q\ï§@zH»Y\ç®\rN#Ài\r8\0§\àDN\à\È\0G8\ã\0g2\à\ÎbÀY8[\0g\àœ\çH¿\Ò\×\Ä!¯\Ú\à4œ¶€8}\'p†\npr\0\'pŠ\0\ç3ÀY8[§p¾œ‹€spqŸ\á˜;\×\Ä\áünƒ\Ópü\0§\àD\0N\à¤\0p>œi€3p–\ÎFÀùp\ÎÀ¹8\0\ç9\à ÿƒ\ŞF5qx\\œ\æ€\ÓpBG8É€“8cg\n\à\ÌœRÀ\Ù8;§p\Î\0\ÎuÀy\Ì-&¹\Ü{¤\àx\á3RÇ¡£\r7\àøNOÀ‰\Î€£3\à\ÌœÀ\Ù8»\0\ç(\àœœ{\Üş {0\ÙpD€\Óp¢\0\'K€+*VÂµp¡€G\nø)Eæ¾”{Q\nß\ä;\Ş\ä\æH£\0\ra‚\×õ…O\Í\æğ\è¾÷û¢K@’™0ã‹™°Ş±¹\íf7Ã¥\çsI>¯Ša\à‘|¾\Ş\\N»WatAß\à;&$P” zh\Âa\æ“$ŸkF‡\È\Ì\å’‡’’`ğõ…½@P¨‡(	xU}©r)p\Şg\Şg^4¨\èm;9N`°\Åb¤^J\Ñ}³Y\ï\Ä#œÀ\âºLv\"I\'«\Éo³$9l.·\Íüj›ù›m…\×6Ú‰1\ZBd1ÚKy\å“tr)‡«´oi\ß9˜f\0aûô…`bwt \Ñ\ŞP@\È\'…gš‘ŸŸ?\Ã\ä\È\'9ùù/\Í\æñB!t°\ÚÎª\Ä\Zo’¤°\Úz3Ş·\ã@>º,2\à\Êqä‘¬\Ìh0§¸»Wa\Ì˜Hd8X.´ƒ„$G\è`uƒÙ‘$ùÁ\Ì\ã‘B~\\¬m\Ö<\ÂÙ¡\Ê=Å½J\èL\n]\ËS\ÊSÀ[%³©\Ù\Ô4 | Àbg¤¸co0\êòÆƒ*\Î|\Òy£.w8#\É\àºı\áL’\Î6şx?‡ cspPî¿§CœI³\Å!ux\Ä{\Ç,\â\å€%’p—¸#¿;»’\Îõ\Ê=\Ë=KüJüŠ¢‹¢Q\ZNL\ä	°\í9ùfs_Z€¶	ø¤€ñ¨\ä\âHº8q\à\ê™Wdw|74y&\"\Ô\ÅB«]Ó—\É‹o\Ì\Ğ\Û]lc8’§òğ…\'¡hŠO(\ë3›\ä(P…z\Ì\Æ\ì\0xG¨dÀ\á\ç\ç\î\îl;q§(’\ã\Â7\ÛxI@rf\æ\0!7¹8\"79;’\ÎN9ùø‰\ÃÁ¡q\å³~rq#]Ü«¼ª¼\î÷<!:§>§®Œ9~üÀŒ\Ã3*\\*\\°3z¦•—W\åx¹ñù\ÇsœI\'§ñ‡øüún¬«€tr\á\ê‘^®ôN¸\ß3\íĞ¡¿\Ê\ËS{ºò§gJJ\Ê\Óörå®¼òr‚(·\\\ìŠÍ…dùµ‚¹ğ¬g\Z§õ\ÄG\à\\•…“O:	r \í\\f\ä`Nvh\âD89¡ª(\'uòr©{\Ùˆ&\\9W~µ\" $d‚“Ò—@*;€=‚\ã\èr.\Âñ‡¸\\~O>\Øh<¸Ô_E\Ó)4]…¹-\ÏEè¹£Pk\ÓÙ±¿‘\'£q˜A–*¢\Â\Z­ˆ\n\Ï5¨ET”R—‰_\rğjP\Â}\n)¢bd&\í\ß\ã\Æ:Xøñ^†{-¾¼‹\é<\ïOùN\n¢¸’œ’<\ï|X2sH2Ğ™v\â;tt\ãrš9´Œ/\ì\È\'yd^‡\ä•$\Òi‘ÍŠ\×òf/¢\'¦xü~Y‡ÿıûJoDt+a¼†+¸ÖIÚšü¢\å\Şù=6­–Ln3¡$\ÏsÇ« ó¸\ëJ¸’\Ãñ\è*\Ê1w%³š©X\áC´«U[\Òô\Ê\ÆjrñøœA‰t}4xËŒ*mºI§\rt§\İĞ¢£‡£T©\Ğè´ŠÀ´Zz4ªó«?­\è–\è>\×Ã³ú~’J£\ì”h’iôTBxİ¢‰k`Wº\Z\ÜyLCm¦ôÄ²D3W\Ú\İwö\à\Å\Æ\'H}\é¶Ì´…6\\¥G_	ˆHS\âÄ¸\î‘ÁA¡:‡„„t\n\r\é\ZØ–öa,òªÓ¢D\æ‹t\Ù\Ú\ÖÃ¤Á\Í#\ë°.\ä\äÁ“\ègŸ\ækú5\ìzµ\"c$?\ß/+lJƒ5Ÿ­\í\ÂI)\İù•\Ğuı\ÊS®‘\â\ß6-õzdõZ÷ò«\æ=n\îSøx`ÙÅƒ“_\Å[üõuÙ±ô†œ&O§6Š*\é$œEl:6¥¼¿\âH\è\Ë3:Şª(\èüU\Çòf›Ÿù.\â\Óú\ĞK»<˜¿ïŸ²\àƒ«—+tÛ‹ºG]qw^g(ñQ›p·³_¬nÕ¥ğ\çõ\ÙE\×/\×ÿi“Ÿ™MOş\à\Ğ\ÊÇ›DË†¶™<<7\ï\0ù¢GyG»§	\ÑiŠ\Ã\ìi£f†\ÌpZ¶\'­J«9SU\ÒÿüÅ¹K\ÇMø©qZ9\Ù! \Ş÷ù°\ëOx\ßv\ã=\Î·h8¡\\1ÿü‰¯_G~7f¯±%‡\çhE\éq ½Á¥\Şn¼Æ¼†§÷>\Ú\\X\ï×¦sô\Şø|8§\Î!o\'\İ\Ø\ÜĞ§\ËÓŸ¤‘z\áİ¾/Æ¾(ë¸¹\"¸¬„Zòb\é´¤$ªD\\\Î~CnP\×ú>S…VØ¯\Â¬aDQ\ÄA„¬ôz_\0\ÓÁú$/†\îOG[\æ4§ \']€\Òğ\É&\Ú\éÛ–\çB-\"¹‚Z’‹²dÁp\â—{+¢§_K\è–>·M¹nÖ¾—º­\ÅN­\Ú;H8\æø\ËMx\èø“¯]–O¾\Øv?¯»\àI\Ü5²\ì¢6\\W\Õ\Ë_¬oŸu2^\ß8§\ì»{\ßkº>v\ËÆ¬ i‡\â¢s\Ñ?ÿñ¢H\Öx\è¨o·t4o™tÄ¾r\Ú\×ñ÷³1¾¹eOú»6]xğ—S\ÍZ\Ïôu\ê\Ò7ä»¥\Ñ^Ó²¦…/9\×>i\ëšuÃ¥•9\ê\íM¿˜’³\"D±‡œs\çBßG\×wOš\ë0\ì\ç\Ëü4X\Ú%oz€_Jˆûƒôf§óŒ\ç/½¸\Ôy\ÅÕ¾Á­v…\Ê\Ğ;\×ñ7R&Ÿ]\\ø\ë­û›9›=ñò\ÒÄŠ.mx¡y\Ë;\Ò;\Ï\é<>	e\ì¦M;ps\ê\Óqn¾\Æeì€­×œ¡Œ}ô?ºs\è[\Ú\ŞW(©DU:ş\"}2W³:400ˆ\ê\ÂT³\ê)múGôc\ïs\ßrÿ_V£\Âi;\ÚT8\ÎZd\Îmô²]\ÊKC¡\èù+Š\çGn_qlôÔ€\îı[\Ì\Îy>~m\Ë<rÛ¸c\ÍvqF\Ş>¸ğ\É÷\Ã\É\Â×­µ¥\Ó{ôõ¼\î\×òO\Ş\Ü0ù«\ß4šq\×cQğ\ÅP}’®Ç\rb\'Z²o\Ï,z¡Ë±±G\ç5\ÎşaúÎ¹‡“©»-\Ö?ø`•‰0\í\ä/³oŸ\Íùk\æó\r)…½v\İrcjñŞƒù[Š6\İ\ÔñTÒ‹\àŸ¿ı`Î¯-^\ßù ó\ØÇ‚±¦*÷Ñ§•\Ñ1+ƒ¯u}5ş³\Ê_‡]ü\ç\ÙEõZ~²\êZ~“}g.ó&¿Š^\í1§sq«è §û\Û,\'¾Ü“xt’¶ığ‰÷Bµ\æG;\ïx8ß¶T#3xd<SnÚ¢rc\í\Ì1\ÒzR¹6\å\ê\Ø\Ù\Ôü\ïSº\İz¾\Ä\ÉÊ\ë¶Wx, ¥\èv}Ô¢Ï£hq\íNÓ…BSAi:0¨£<”\î’\Z¬”u\ê\Ò-µK§.AC;…v\î\Z\ÔI\Z˜&\n\n\î’&¯Q£µŠ\ë	§ò¾h\Òz›f\Í\Ñ,Î¼·—À:+”No\ÄU\Òò²\å\ïhôÒ‰\éD‡\â(³)ƒhxZ±)\â	`©‚\ï€0\Ñ.Hq’|\Í\ã\ĞD­\ã\Ì\Í\ã¿q\Ëóƒ÷\'Tú\Ä/˜ó\ãİ§¯¾\İ}¦üÁ³\æ\Éw+UQg»s\å\å\Â\áóF\×õ+w{T-\Ê-Ü•¶\îü\ÎÛœA>\Û{ù\ä„i6>}@›»pš\×q§y\'yE\ĞkW6>üM\Ôğ?;v™¾lÖŠ8¯M­º{.\Ï}mğı­+gµY5qú%_¯ki\ŞS{û¿Ìİ§Tt{kY@BòHş–F3*½\åÛ.WÏkW¯\Ã|ñ\ê I½\ç÷,\Éö™ú\×÷\ÃÓ®\Z\r<\ØqX\àğnc\æ¯ù¼0s¾Ÿ\îÁ·v‹›O›¸-©Y\Ô\'VjÊµ¾‡ú¶¬¼K­u\Şò\à;\çEs¯ŒY¢šT\ÚõG\rõ\×\ä3¯+vwuú«W\Ã}\Z®-/8~/oßºAm\Â=·EO\Î)8ñ\ì\ä’>Mj8õ\Æ\Ìem\n3z¬=lkwC\Ğ*Fş\ê³O\ÅvŞ–œÿcÿ¯C?y\ía\Ë\è\Ï\Ã3\ä|¿eg\æ¬I\ê)†/n­|±\ìB³³\İ^*hz®Ÿ´eÃ®\ß|øıü\ä\Ï\Ç\r9\Ö *õd«{/{t~\Ğ[±2D—’\Ğg{DQ|‰óô=\ry|8}Š\ìü\Ò*g\ÓE].÷Ÿ{w\Ë\ãÍ´\æ\ÎÉš›ó\ÇV\îø«ÇŸ!ü/“¿ozz\çŸsNñzhC\Æ\Õ|¢±\ì\Ôğ\Ö}ºñ¼Tø{ú\É\ê€_\ÚN\ï5\êÄ.³½w\Ív›\×ûŞsJyœO¢Ÿİ»Àù»š€#4{L\Ê\ZgtÁµß«ö#\ìh\\N…Ns\ÚMıô¡HA6mÌ…llJ7©±\èdMVHÃL\İlS]7¥:OH]UšJ.3)©°,S†Î 2\å¢\âN‡\Ğ]\èÎAÁ\énPÜƒñ´3¦ÿ¹g\èUß—•ª·\\:=§\ÃøLÿ¦—w_¹zp\á@Ÿ„\r\ß]ğŒkS\ï÷Vÿ³ÁDSõo;Iš\×H2·y¿9Œ \ÛıLdşö\á\î;S\ë=q\ã-¸?õx\Ëc\ÛLYòğt/\Ñ\Ëozßº·¢tŸO\âÑ™\Ï\Å\ß;µ\é\Ä\æ~¼\å\ÏV©?Mÿ\Ñ\ï—\È\Ä\Í\'®ûEúû®/ˆ$u¹\Æ½STDk§<\ZJ/yş\Ñ\Ù\â²\ßZôô¤\Ç#ÁöDt«¸hY4\Ñ?*­¾oû´5\Å\×Nñ\'ö_ş,uı¨†Ny\Ëò\ï\Êù‹\\\ä ˜L¸Ó‘w·_ô‰\Üy SÒ²M-r\Â³/¾\ÔcÒ§¥2\Î6o\×-/Ÿ,ş’ü®õ€¤\×\Ï*öSÎ–ú¾<²š®g­84~\Ù\Ôó:Ÿ.Qùö®\Ç\ãAş\Ğ\î|\'¶\'4\"\Ñ\nAO\\À\Ô\æ‰EôÄ™\æ†n\ëóRú&û_o\ëñ²\Ãeaâ¼¡\×>/•.û\Ç\Ó3\Ï=wC\ã\Òş%+7\Ä‡ü\á\èá¯¤˜¦ ¡¡•„—„ôyÿ\çb\ëmôxT\ÊqCH²i\Ñt$a\ÓBÿ\Î31²#œ‘ú\Ï\Ã\àk÷\âi#¸]/\ÜÜº!ûüw¹c\É-ş¦†k\\<\Ö}·\ç\ÃY;üO7X>C“ºc0\çXå‘°ğÂ¸¾W\ï\Ü4d‘\×eo²`ıÎœ‡\ÓO\Ü\éAş~e\Ï,¡C\å\Ì\è+÷]ˆ_7\çÚ™cÎ˜÷ı:÷!?`2÷\æ\ìmZ\ë_<~y-g¡¿\ë\Ç+ú]qK>\É\Z\æ\í(\íöYz§ƒ\İn¥\è\ÓxÁtª\Ï\ÇfAÏöØ«£Á¹ò–¾\×\ë\ÉBKû…²O\îÿ¸£\É\í¸\é\î8j\Å\ŞÛ»&8÷ûğt¢¡\Õ\ïôÑ9\Ê\Ã\É&Â†n\'n¸\àÏ_§\r)\ëp\ã\Ù\ä‚\ã“[¢Ÿ«^\ß-\æô\ãÜ½_xKmoù\âö]ø\Ù\ÍRôBÿo\Ñ÷‹v~^vıÙ	Û®~¾\Æ¼#\î\à>\rÚu\î)ñÁ°\Èğ†»\Ê\Ê6Ç¦W.\ë÷Úœ\ÛÊ¼´ö[¿£šU.m\İ\êDøÍ7wş}\\tú\\9¦]‡\è6£‡\İJ¾·\ê\â\Â%G»\ëvOô5ñ\ëÿ>¶\Õ\Ş\Åyû|“¾\Ú2¦\×\ÔÒ±²­\ÚRU{¿ˆº\ß@÷jZúË¿.\r¬œ\ás$m÷\ï)\rœ^6\rµ\ãZ«\ë\Û6•o\ÍIr8æŸ°~\î\æ•9\ë\ÊJ\æg5ûi\Î¬\ÖAkÚ’\á3\Ú\î-¹—´\Õ\Ù\Û-\â,ú]Rõ„T\ê¦:O¨TUşª½µºø»Àö¯\İq.¶y\é¹\çKûøjœy\Äc\Å+:\Ïq\çjinE\'q+\à\Ö~0±ğ)\ÅA4\Í\Èö\ïs «\ßB\Û\r¢ƒ»1M£+\ÒhúÇ’\Çy³wpP\ï\à@\ï€3·\îşsƒ»—ÿ†s\Ú/ò\Üc»|óğ«!­–õk\Ş!óæ°„/vğC›ñ$\ß|\\\á\Ò\âBH\æ¡\çœ\ï‡\î_\È\ß\\\Ù\í\Ù0°ß©©®¹Š)\ÍMi£Ş´Tò\ÙÍŒQ\'/-NüR(ª\Øô\ÓÚ\Ç9múqşĞ£)\Ín¦ı-HÚ®AÀu‚„\ï\Ë\"¶<wÀŸ›µ.\ã\Ñ1Í£\î#JÿùMU¨b½Vœ³ªD^¯Ó©¾Ÿ>½z\Ñ\ÑõÌˆÜ•’ö7\\÷”xd\ï™\Û\ëŞ‹«‡¹·ŒMö[>\ÎPÕ ûvÉ¨sw\ï†ÏôÓ‡_~X\Ğü§\Ş[fŒümj|~³‡¥C¯õè´±óƒ\Û{ÿtªŒ\ÛkË—›\æ„~tr‰Yôg\\ò\ìVÁm+ºi\'~óY½\rM}òıñ\r·`\æ“\Ñ÷OH÷Î˜;eWy+S\ÛÑ~_÷õm» [ÿ®ß\ß2g£—\Ï\êµiwd-\Ç\\ö“,]x¥\í\ÈS­ô–\Ø6¸O\îı\Æ\r8\ãsU?²\ŞÀ\Èì²§\Ä\å]\ë9y£Ï—7*\Û\İüô 7º•Ö»\é#\Ù\å¹#b¼øÚ¾\nÃ¸*Ã6—öF.<xo¿\×\àó“fŞ‰•Ğ«\×}r\é\Îğe›^^Øœve_ñ\Äï½;\à†¤ıj¿U«\'¤›–š3úË€ü6bo¶Ÿßƒ»š\n¿Y¢Y}C\â÷]1õ€S\ÌÁ\Ó+\ÃLóhŸ\æPCD#S\æ-\ê\ß9ÿ\çÍ…M..ûcş\æ]‘%\ê\'«\ÎÎ°öÎ»\Ğ;o\Ö\Ñşª›g\ïKšZ74\äğ\\Z‰DüE p\"¬f_}£)Û¾\ã1t\ê\Î	,\nÿº¡C\Ü\å[«ş\à3µ=Œin\èŸP\ãKbKHş\Ö?úÀ¹…S‡\Õú¦d4\İytPns£lÚœ”N \ãl\Ú\\¿÷ks\ïo¢\'.C\ÊS¼‰\ÅôÄ¹ô\Ä\ÙV\'ùsé‰“\è>8Ù¸ó¿z›…şJ\r,Sid†\\¹\Ş\èŸa\Ò\Ğ}­8t—A”7C ÿ0ú\Î\Õhü+\æ;z¹03²\ßTZ¿C\éOy\×õF,ıaÁ\ÊUI¹\ÍüO3¥·^\ì<¿şeùœ…ı\æO8™\ëR´O9\Ú_\Ôûi…\áÍ¤¿öôùMx´\ÇŞ¨µ+©\Î\Ë÷¶^Y<R™_4azdÂ s.sÆŸl6À\ëQ\Ï~Ó¥\'6¿Ê¼\Ú\ÛÑ¿ı\â_{5_yz›wö\ÜnWn*Dô\Ê\çó\ÈcÂª\"Ó¤™kÇ‰\ì°šû\Î\Ï\×:¸,¾›ñ<\Ã^I‡>2‡H\ä-T\Úa\æ_›ôGù¬G‘/¾\ìqbwğ=mÛ\×7ù\Ş=q\á‘Û¦…~\Åb\İz9?L=Û²\"\Èó\Êıƒ¾¾t«¤›ğpÿ¡\r¯ù\ÓùF…\ÅCBƒ>ğmöñ–?|Ÿ^u§T¾:5C«[½\İT\Ñ×¿Š\ì\à\×;¯GlšsyYìŸ—g}\ì¥k4A¼z\ìõ¾”+*FJS*¼\å]‹.ıü\è\é\ÃÆ¥‹|/»²ø\Ä\ï#\åaW‡;~6¥7?›ÿKVË†{d²m÷9Ôœ·\çR\Øa7¿\ß/*\î?.1ÿq¶4r÷\ĞG\Å+D»/4·<A´?¸eñ\Ê>\â\ìÁ‡N._¾lÜ¸\ÖÏ£\çµ\\÷\"\Ê\Çü\çÒ§{3·(¾r;+§Ù[!s=¼>[æ“‘õ\ë¦\ç/§\ßv6\ßRõ\Øô’¾Ë‹ù\äÒ¥,|v¯–$\Ç\Å\ï5n]šS?¨Õ¸{a\Â-}^¬9şù\È}¥…‹-.\ïwdñ\Ø\áBst\æ«\Üeûvk4cH®\ã¾\r\Ì\ãm¦óx\ë9$IOœ÷Ÿn\\uÿs`õ‡#% \â\Ã&±7\Ğ\Åö“Ğ¢z\æ\èF\Û\ŞmDûTo\äBi{57bõ\'œ\Ø\àRûİš¢ü¯n7»H+l¶¸&\ÓI%\Ì~uşiGÒ›ÿµ­\Òv\æ6o=\ÙIÖ¿2¥jõf^I$F}²j\ÒWKu\Ã|ù\çGIv–\rt\ì\è\æ=ncvTÒˆ½!]ê…¸ŸJLk3ˆÿ³tv£\ß,j¬2m,»\æ\ßŞ½­[¤ğ…jÊœ(õ¡9Š\ç÷O\ã]Ê¸Xğ\ãÅ­G7Ì¾;s\ÕÀu9kIŞ®W»¶]yóî«ƒSˆŸo\ì\\¢Xq²\Ç\áÿZ\Îñø\ß/\ï½0\İ\"\ç­6Û§÷\î\í‚dÿ‡[Ÿ}!ö\âx‡Ğ¡e93\ç<ı}@3õ‡\ró\Z-JUŠ\Ë÷<93Áùw´ô[ÿ2	\ÇUWzğwY‡\î\È:´g™\Ñ\İd}f}¬zö2bõ>!\ÕùbÊŒ³•\ß\ì^\Ëd7ñe1\Ú¦–±„Wş¾Z\È\rohÅ®…ML\ZÀ\æ‰\n\"\Ø›˜DB‚\à¤\Ù7`q\ì3mHi2\Ö@9Ir#f–\ÃeX\rùÁ\Çf†¦F† …‘\"_¶X\Ï\Ğ8şZ­G4\ïÊ\Ù\Ù\Û*ÑºL ´b\è\'\\\Ï\Ô\Î,\é5½\ä5W³—¦±”\æñ\ØÏ·zW³z\Êl\åF\éB¯yİº\Úë§š¥¶øş¬†¸™º—\Ì\âREV\Ş|¼¾N,÷•£ø…’»ÿó\ßs.tš÷É«°^+(jü;¦ÍºS\\¯¼û\ÉÍø:´²£²nzpü‚\Ôh\rVù´\ã›N¤Í½ò.ñc™ûö¿÷n=ı\Ûô\ïir\äù]7M\ç\Í<r©p\êÇ¯e.;©¼ø\ïÜ’\Üó\rYƒŸú\ìØ½S>4v\áç–—“\îõ\î\ÙÀ\İøZx®YVöœ3±_.¹z{ñ\æ·nó\Ô\nG\ÜpÒ¹’·ûº¦u\Ëk\'\Ş\Í\ì­>¯ô\Ù\ÔU\Æø~ı!\ÍO¥K»-\ïôº0\0\0Áa \r\nendstream\r\nendobj\r\n23 0 obj\r\n<</Type/Metadata/Subtype/XML/Length 3093>>\r\nstream\r\n<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?><x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"3.1-701\">\n<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n<rdf:Description rdf:about=\"\"  xmlns:pdf=\"http://ns.adobe.com/pdf/1.3/\">\n<pdf:Producer>MicrosoftÂ® Word for Microsoft 365</pdf:Producer></rdf:Description>\n<rdf:Description rdf:about=\"\"  xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n<dc:creator><rdf:Seq><rdf:li>××™×ª×Ÿ ×’×¨××Ÿ</rdf:li></rdf:Seq></dc:creator></rdf:Description>\n<rdf:Description rdf:about=\"\"  xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\">\n<xmp:CreatorTool>MicrosoftÂ® Word for Microsoft 365</xmp:CreatorTool><xmp:CreateDate>2022-06-07T13:15:45+03:00</xmp:CreateDate><xmp:ModifyDate>2022-06-07T13:15:45+03:00</xmp:ModifyDate></rdf:Description>\n<rdf:Description rdf:about=\"\"  xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\">\n<xmpMM:DocumentID>uuid:4E9A4D7C-EFA3-4D64-8598-2C7A982979D2</xmpMM:DocumentID><xmpMM:InstanceID>uuid:4E9A4D7C-EFA3-4D64-8598-2C7A982979D2</xmpMM:InstanceID></rdf:Description>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n</rdf:RDF></x:xmpmeta><?xpacket end=\"w\"?>\r\nendstream\r\nendobj\r\n24 0 obj\r\n<</DisplayDocTitle true>>\r\nendobj\r\n25 0 obj\r\n<</Type/XRef/Size 25/W[ 1 4 2] /Root 1 0 R/Info 10 0 R/ID[<7C4D9A4EA3EF644D85982C7A982979D2><7C4D9A4EA3EF644D85982C7A982979D2>] /Filter/FlateDecode/Length 96>>\r\nstream\r\nxœ5\Ì=@P\à}x(q\Ò\Ñû\ëuN¢u,3 \Ó?±KŠ|“L6€U\Îz	¼\ì\â .¸%‰7ñµ\èH¿‘\å*$Â‹Td\"\ßen¹aû\'\'\"[N#\Î\r9r-À¹|\rL\r\nendstream\r\nendobj\r\nxref\r\n0 26\r\n0000000011 65535 f\r\n0000000017 00000 n\r\n0000000166 00000 n\r\n0000000222 00000 n\r\n0000000511 00000 n\r\n0000000861 00000 n\r\n0000001029 00000 n\r\n0000001268 00000 n\r\n0000001321 00000 n\r\n0000001374 00000 n\r\n0000027007 00000 n\r\n0000000012 65535 f\r\n0000000013 65535 f\r\n0000000014 65535 f\r\n0000000015 65535 f\r\n0000000016 65535 f\r\n0000000017 65535 f\r\n0000000018 65535 f\r\n0000000019 65535 f\r\n0000000020 65535 f\r\n0000000000 65535 f\r\n0000027755 00000 n\r\n0000027990 00000 n\r\n0000057616 00000 n\r\n0000060792 00000 n\r\n0000060837 00000 n\r\ntrailer\r\n<</Size 26/Root 1 0 R/Info 10 0 R/ID[<7C4D9A4EA3EF644D85982C7A982979D2><7C4D9A4EA3EF644D85982C7A982979D2>] >>\r\nstartxref\r\n61133\r\n%%EOF\r\nxref\r\n0 0\r\ntrailer\r\n<</Size 26/Root 1 0 R/Info 10 0 R/ID[<7C4D9A4EA3EF644D85982C7A982979D2><7C4D9A4EA3EF644D85982C7A982979D2>] /Prev 61133/XRefStm 60837>>\r\nstartxref\r\n61810\r\n%%EOF');
/*!40000 ALTER TABLE `blob_file_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `idBranch` int NOT NULL AUTO_INCREMENT,
  `city` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `idManager` int NOT NULL,
  PRIMARY KEY (`idBranch`),
  KEY `mangaer_idx` (`idManager`),
  CONSTRAINT `manages` FOREIGN KEY (`idManager`) REFERENCES `users` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'Tirat Carmel','Hertzel 54','North',7),(2,'Tel Aviv','Alenbi 15','Center',7),(3,'Beer Sheva','Ben Gurion 5','South',10);
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaints` (
  `idComplaint` int NOT NULL AUTO_INCREMENT,
  `idUser` int NOT NULL,
  `orderId` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL DEFAULT 'Active',
  `reason` varchar(128) NOT NULL,
  `content` varchar(1024) NOT NULL,
  PRIMARY KEY (`idComplaint`),
  KEY `complaints_ibfk_1_idx` (`idUser`),
  KEY `order_idx` (`orderId`),
  CONSTRAINT `complaints_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order` FOREIGN KEY (`orderId`) REFERENCES `orders` (`idOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
INSERT INTO `complaints` VALUES (11,8,13,'2022-05-17 19:06:25','Due','yanasfsd sdf sdf sdf sdf ','fsdf sadf sadf sdf \ns fasd fsdfasd fsadf sdf sad f\nsad fasdf asdf asdf asdf asdf\nsdf sd\nf\ndfs\ndf\nsdf\nsdf\nsdf\nsd\nfsd\nf\nsdf\nsdf\nsd\nf\nsdf\ndsf\nsdf\nsdf\ns\ndf'),(13,8,13,'2022-05-17 21:47:41','Due','sdfas','sdfsdfsdf'),(14,8,13,'2022-05-17 21:47:56','Due','sdfsdfasdfasdfsdf','sdfsdf'),(15,8,13,'2022-05-19 16:21:38','Due','shita','this is a shita test'),(16,8,13,'2022-05-19 17:35:12','Due','test 2','werwerwersfsdf sdffs df asdf asdf sadf sdsdsdfsd sd fsdf'),(17,8,13,'2022-05-19 17:35:12','Due','test 3','werwerwersfsdf sdffs df asdf asdf sadf sdsdsdfsd sd fsdf'),(18,1,13,'2022-06-19 17:35:12','Due','ttt','hello world'),(19,1,13,'2022-06-19 17:35:12','Due','aa','hello world'),(20,1,13,'2022-06-19 17:35:12','Due','ff','hello world'),(21,1,13,'2022-06-19 17:35:12','Due','ggg','hello world'),(22,2,13,'2022-06-19 17:35:12','Due','bbb','hello world'),(23,2,13,'2022-06-19 17:35:12','Due','ttt','hello world'),(24,2,13,'2022-06-19 17:35:12','Due','sss','hello world'),(25,1,13,'2022-06-19 17:35:12','Due','ddd','hello world'),(26,1,13,'2022-06-19 17:35:12','Due','aaa','hello world'),(27,1,13,'2022-06-19 17:35:12','Due','mmm','hello world'),(28,1,13,'2022-06-19 17:35:12','Due','rrr','hello world'),(29,1,13,'2022-06-19 17:35:12','Due','xxx','hello world'),(30,1,13,'2022-06-19 17:35:12','Due','yyy','hello world'),(32,6,13,'2022-04-19 17:35:12','Due','yyy','hello world'),(33,5,13,'2022-04-19 17:35:12','Due','yyy','hello world'),(34,4,13,'2022-04-19 17:35:12','Due','yyy','hello world'),(35,3,13,'2022-04-19 17:35:12','Due','yyy','hello world');
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_product_items`
--

DROP TABLE IF EXISTS `custom_product_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_product_items` (
  `idCustomProduct` int NOT NULL,
  `idItem` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`idCustomProduct`,`idItem`),
  KEY `custom_products_items_ibfk_2_idx` (`idItem`),
  CONSTRAINT `custom_products_items_ibfk_1` FOREIGN KEY (`idCustomProduct`) REFERENCES `custom_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `custom_products_items_ibfk_2` FOREIGN KEY (`idItem`) REFERENCES `items` (`itemID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_product_items`
--

LOCK TABLES `custom_product_items` WRITE;
/*!40000 ALTER TABLE `custom_product_items` DISABLE KEYS */;
INSERT INTO `custom_product_items` VALUES (1,1,5),(1,2,4),(1,3,3),(1,4,4),(1,6,4),(2,1,4),(2,2,2),(2,3,3),(3,14,9),(3,15,6),(3,16,5),(3,17,2),(4,1,1),(4,2,1),(4,3,1),(6,1,7),(6,3,5),(6,5,10),(6,6,6),(7,2,4),(7,3,6),(7,6,9),(7,11,5),(8,3,1),(8,4,1),(9,2,13),(9,3,1),(9,4,1),(10,2,13),(10,3,1),(10,4,1),(10,5,1),(10,6,1),(11,1,2),(11,3,13),(13,1,3),(13,2,6),(13,12,7),(13,13,4),(13,14,3),(14,1,2),(14,2,7),(14,12,8),(14,14,6),(15,2,3),(15,3,6),(15,8,6),(15,9,2),(15,13,2),(15,14,8),(16,2,3),(16,3,6),(16,10,3),(16,11,7),(17,1,2),(18,1,2),(19,1,3),(19,2,3),(19,3,3),(19,16,3);
/*!40000 ALTER TABLE `custom_product_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_product_products`
--

DROP TABLE IF EXISTS `custom_product_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_product_products` (
  `idCustomProduct` int NOT NULL,
  `idProduct` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`idCustomProduct`,`idProduct`),
  KEY `idProduct` (`idProduct`),
  CONSTRAINT `custom_product_products_ibfk_1` FOREIGN KEY (`idCustomProduct`) REFERENCES `custom_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `custom_product_products_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_product_products`
--

LOCK TABLES `custom_product_products` WRITE;
/*!40000 ALTER TABLE `custom_product_products` DISABLE KEYS */;
INSERT INTO `custom_product_products` VALUES (2,7,4),(2,8,3),(3,14,2),(3,15,2),(4,6,1),(4,7,1),(4,8,1),(4,9,1),(5,8,5),(5,12,4),(5,15,8),(5,18,5),(7,11,3),(7,12,2),(7,15,9),(7,16,5),(12,16,4),(12,17,1),(12,18,1),(12,20,1),(13,1,3),(13,4,8),(13,5,8),(13,15,3),(13,16,9),(13,17,7),(14,1,6),(14,4,3),(14,5,2),(14,6,7),(14,9,7),(14,10,7),(17,19,1),(18,19,1),(19,1,1),(19,5,2),(19,19,4);
/*!40000 ALTER TABLE `custom_product_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_products`
--

DROP TABLE IF EXISTS `custom_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(45) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_products`
--

LOCK TABLES `custom_products` WRITE;
/*!40000 ALTER TABLE `custom_products` DISABLE KEYS */;
INSERT INTO `custom_products` VALUES (1,'Custom Product 1',0),(2,'Custom Product 1',0),(3,'Custom Product 2',0),(4,'Custom Product 3',0),(5,'Custom Product 2',2605),(6,'Custom Product 1',225),(7,'Custom Product 3',2315),(8,'Custom Product 1',30),(9,'Edited Rose Bouquet - Red',225),(10,'Edited Rose Bouquet - Red',235),(11,'Edited Rose Bouquet - White',215),(12,'Custom Product 1',590),(13,'Custom Product 1',6209),(14,'Custom Product 2',4653),(15,'Custom Product 4',361),(16,'Custom Product 3',585),(17,'Custom Product 1',170),(18,'Custom Product 1',170),(19,'Custom Product 1',1357);
/*!40000 ALTER TABLE `custom_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `idDelivery` int NOT NULL AUTO_INCREMENT,
  `address` varchar(45) DEFAULT NULL,
  `receiverName` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `deliveryDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL DEFAULT 'pending',
  `type` varchar(20) NOT NULL DEFAULT 'pickup' COMMENT 'can be pickup or delivery.',
  `idOrder` int NOT NULL,
  PRIMARY KEY (`idDelivery`),
  KEY `deliveries_ibfk_1_idx` (`idOrder`),
  CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (1,'blupblap 24, Kiryat Ata','Oh no','0546353421','2022-05-25 10:30:00','Waiting for Cancellation','pickup',1),(2,'BloopBlap 43, Kiryat Ata','Oh No','0546354432','2022-05-24 14:30:00','Waiting for Cancellation','pickup',2),(3,'BloopBlap 43, Kiryat Ata','Oh No','0546354432','2022-05-24 14:30:00','pending','pickup',3),(4,'BloopBlap 43, Kiryat Ata','Oh No','0546354432','2022-05-24 14:30:00','pending','pickup',4),(5,'BloopBlap 43, Kiryat Ata','Oh No','0546354432','2022-05-24 14:30:00','pending','pickup',5),(6,'BloopBlap 43, Kiryat Ata','Oh No','0546354432','2022-05-24 14:30:00','pending','pickup',6),(7,'BloopBlap 43, Kiryat Ata','Oh No','0546354432','2022-05-24 14:30:00','pending','pickup',7),(8,'BloopBlap 43, Kiryat Ata','Oh No','0546354432','2022-05-30 19:28:52','Waiting for Cancellation','pickup',8),(9,'Brian May 6, Queen\'s Land, United Kingdom','Queen','0534123245','2022-06-01 13:30:00','Delivered','delivery',9),(10,'asvdasdv','asdgasdv','1231231234','2022-06-01 02:09:56','pending','express delivery',14),(11,NULL,NULL,NULL,'2022-06-15 11:30:00','pending','pickup',15),(12,NULL,NULL,NULL,'2022-06-16 10:30:00','pending','pickup',16),(13,NULL,NULL,NULL,'2022-06-22 10:30:00','pending','pickup',17),(14,NULL,NULL,NULL,'2022-06-23 10:45:00','pending','pickup',18),(15,NULL,NULL,NULL,'2022-06-24 10:30:00','pending','pickup',19),(16,NULL,NULL,NULL,'2022-06-29 10:45:00','pending','pickup',20),(17,NULL,NULL,NULL,'2022-07-07 11:45:00','pending','pickup',21),(18,NULL,NULL,NULL,'2022-06-08 09:00:00','Delivered','pickup',22),(19,NULL,NULL,NULL,'2022-06-08 08:15:00','Canceled','pickup',23),(20,NULL,NULL,NULL,'2022-06-29 10:30:00','Awaiting Delivery','pickup',24),(21,'Tirlool 43, Kiryat Ata','Trilili Tralala','0546231435','2022-06-22 10:45:00','pending','delivery',25),(22,'Green Fields St. 75, Paradise City','Slash','0546234123','2022-06-22 16:45:00','pending','delivery',26),(23,'Sunshine Rd. 43, Los Angeles','Pheneas','0534253421','2022-06-16 12:30:00','pending','delivery',27),(24,NULL,NULL,NULL,'2022-06-30 08:00:00','Canceled','pickup',34),(25,'ort braude karmiel','group four','0534567891','2022-06-30 08:00:00','Canceled','delivery',35),(26,NULL,NULL,NULL,'2022-06-30 08:00:00','Canceled','pickup',36),(27,'ort braude karmiel','group four','0534567891','2022-06-30 08:00:00','Canceled','delivery',37),(28,NULL,NULL,NULL,'2022-06-30 15:45:00','Delivered','pickup',38);
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `itemID` int NOT NULL AUTO_INCREMENT,
  `itemName` varchar(45) NOT NULL,
  `itemColor` varchar(45) NOT NULL,
  `itemPrice` double NOT NULL,
  `itemType` varchar(45) NOT NULL,
  `imagePath` varchar(100) DEFAULT NULL,
  `discount` double DEFAULT '0',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Daffodil','Yellow',10,'Flower','/resources/productImages/Flower/Daffodil/Daffodil_Yellow.jpg',0),(2,'Rose','Red',15,'Flower','/resources/productImages/Flower/Rose/Rose_Red.jpg',0),(3,'Rose','White',15,'Flower','/resources/productImages/Flower/Rose/Rose_White.jpg',20),(4,'Rose','Pink',15,'Flower','/resources/productImages/Flower/Rose/Rose_Pink.jpg',0),(5,'Gerbera','Yellow',5,'Flower','/resources/productImages/Flower/Gerbera/Gerbera_Yellow.jpg',0),(6,'Gerbera','Red',5,'Flower','/resources/productImages/Flower/Gerbera/Gerbera_Red.jpg',0),(7,'Gerbera','Pink',5,'Flower','/resources/productImages/Flower/Gerbera/Gerbera_Pink.jpg',0),(8,'Gerbera','Blue',5,'Flower','/resources/productImages/Flower/Gerbera/Gerbera_Blue.jpg',30),(9,'Gerbera','Purple',5,'Flower','/resources/productImages/Flower/Gerbera/Gerbera_Purple.jpg',0),(10,'Orchid','Purple',45,'Flower','/resources/productImages/Flower/Orchid/Orchid_Purple.jpg',25),(11,'Orchid','White',45,'Flower','/resources/productImages/Flower/Orchid/Orchid_White.jpg',0),(12,'Orchid','Yellow',45,'Flower','/resources/productImages/Flower/Orchid/Orchid_Yellow.jpg',0),(13,'Orchid','Blue',45,'Flower','/resources/productImages/Flower/Orchid/Orchid_Blue.jpg',0),(14,'Carnation','Red',12,'Flower','/resources/productImages/Flower/Carnation/Carnation_Red.jpg',15),(15,'Carnation','Purple',12,'Flower','/resources/productImages/Flower/Carnation/Carnation_Purple.jpg',0),(16,'Carnation','Pink',12,'Flower','/resources/productImages/Flower/Carnation/Carnation_Pink.jpg',35),(17,'Peony','Pink',6,'Flower','/resources/productImages/Flower/Peony/Peony_Pink.jpg',0),(18,'Lily','White',14,'Flower','/resources/productImages/Flower/Lily/Lily_White.jpg',18),(19,'Lily','Orange',14,'Flower','/resources/productImages/Flower/Lily/Lily_Orange.jpg',0),(20,'Gypsophila','White',3,'Flower','/resources/productImages/Flower/Gypsophila/Gypsophila_White.jpg',0);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `idNotification` int NOT NULL AUTO_INCREMENT,
  `idUser` int NOT NULL,
  `isRead` tinyint NOT NULL DEFAULT '0',
  `title` varchar(256) NOT NULL DEFAULT 'New notification',
  PRIMARY KEY (`idNotification`),
  KEY `user_idx` (`idUser`),
  CONSTRAINT `user` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (12,8,1,'Complaint Number: 15 is Due, Please attend it as soon as possible.'),(13,8,1,'Complaint Number: 16 is Due, Please attend it as soon as possible.'),(14,8,0,'Complaint Number: 17 is Due, Please attend it as soon as possible.'),(21,4,1,'Congratulations! Your order with order number 24 has been accepted and is now getting ready for delivery.'),(22,1,0,'Congratulations! Your order with order number 34 has been accepted and is now getting ready for delivery.'),(23,1,0,'We are deeply sorry you didn\'t like your experience with us\nYou will be issued a 183.84 â‚ª store credit for your next order.'),(24,1,0,'Congratulations! Your order with order number 35 has been accepted and is now getting ready for delivery.'),(25,1,0,'We are deeply sorry you didn\'t like your experience with us\nYou will be issued a 140 â‚ª store credit for your next order.'),(26,1,0,'Congratulations! Your order with order number 36 has been accepted and is now getting ready for delivery.'),(27,1,0,'We are deeply sorry you didn\'t like your experience with us\nYou will be issued a 183.84 â‚ª store credit for your next order.'),(28,1,0,'Congratulations! Your order with order number 37 has been accepted and is now getting ready for delivery.'),(29,1,0,'We are deeply sorry you didn\'t like your experience with us\nYou will be issued a 140 â‚ª store credit for your next order.'),(30,2,1,'Congratulations! Your order with order number 38 has been accepted and is now getting ready for delivery.'),(31,2,1,'Your order with order number 38 has been delivered!\nThank you for shopping with us, we hope to see you again soon!');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_custom_products`
--

DROP TABLE IF EXISTS `order_custom_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_custom_products` (
  `idOrder` int NOT NULL,
  `idCustomProduct` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idOrder`,`idCustomProduct`),
  KEY `order_custom_products_ibfk_2_idx` (`idCustomProduct`),
  CONSTRAINT `order_custom_products_ibfk_1` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_custom_products_ibfk_2` FOREIGN KEY (`idCustomProduct`) REFERENCES `custom_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_custom_products`
--

LOCK TABLES `order_custom_products` WRITE;
/*!40000 ALTER TABLE `order_custom_products` DISABLE KEYS */;
INSERT INTO `order_custom_products` VALUES (4,1,1),(5,2,1),(6,3,1),(7,4,1),(9,5,3),(9,6,12),(9,7,3),(16,8,1),(19,9,1),(21,10,1),(22,11,1),(23,12,1),(25,13,13),(25,14,11),(26,15,12),(26,16,15),(35,17,1),(37,18,1),(38,19,1);
/*!40000 ALTER TABLE `order_custom_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `idOrder` int NOT NULL,
  `idItem` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`idOrder`,`idItem`),
  KEY `FKorder_items2_idx` (`idItem`),
  CONSTRAINT `FKorder_items1` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKorder_items2` FOREIGN KEY (`idItem`) REFERENCES `items` (`itemID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,19,6),(3,1,12),(3,3,2),(3,4,3),(3,5,32),(3,6,512),(3,7,22),(3,9,3),(3,12,1111),(3,13,3),(3,18,1),(3,19,5),(7,1,6),(7,2,1),(7,3,1),(9,11,14),(9,16,2),(25,2,53),(25,3,63),(25,7,34),(25,8,7),(26,13,13),(26,18,21),(26,20,13),(27,2,75),(27,4,23),(27,7,52),(27,11,24),(27,13,45),(27,14,23),(27,19,33),(27,20,44),(34,2,1),(36,2,1),(38,2,5);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `idOrder` int NOT NULL,
  `idProduct` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`idOrder`,`idProduct`),
  KEY `order_products_ibfk_1_idx` (`idProduct`),
  CONSTRAINT `order_products_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_products_ibfk_2` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (1,1,1),(1,2,1),(1,4,1),(1,5,1),(1,8,1),(1,11,1),(1,14,1),(1,18,1),(1,20,1),(2,1,1),(2,2,1),(2,4,1),(2,5,1),(2,8,1),(3,1,2),(3,2,2),(3,3,1),(3,4,2),(3,5,1),(3,7,5),(3,8,2),(3,9,1),(3,12,3),(3,18,4),(4,1,1),(4,2,1),(4,4,1),(4,5,1),(4,6,1),(4,7,1),(5,1,1),(5,2,1),(6,2,1),(6,3,1),(6,4,1),(6,5,1),(7,1,1),(7,2,1),(8,1,1),(8,2,1),(8,4,1),(8,5,1),(9,1,12),(9,2,4),(9,3,5),(9,4,14),(9,6,17),(9,10,15),(9,12,11),(9,13,4),(10,2,1),(11,1,1),(12,1,1),(13,1,1),(14,1,1),(15,2,1),(16,1,1),(16,2,1),(17,1,1),(17,2,1),(18,1,1),(18,2,1),(19,2,1),(20,1,1),(20,2,1),(21,2,1),(21,3,1),(21,4,1),(21,5,1),(21,7,1),(22,1,1),(22,4,1),(22,5,1),(24,1,1),(24,2,1),(24,4,1),(25,1,21),(25,2,16),(25,4,13),(25,5,31),(25,9,81),(25,10,11),(25,11,31),(25,15,72),(25,16,11),(25,19,14),(26,4,13),(26,5,14),(26,6,21),(26,9,21),(26,13,21),(26,17,14),(27,3,11),(27,5,12),(27,6,13),(27,7,11),(27,13,21),(27,17,15),(27,19,13),(34,1,1),(36,1,1),(38,1,1);
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `idOrder` int NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `greetingCard` varchar(256) DEFAULT NULL,
  `dOrder` varchar(256) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idBranch` int NOT NULL,
  `status` varchar(45) NOT NULL,
  `paymentMethod` varchar(15) NOT NULL,
  `idUser` int NOT NULL,
  `lastModified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refund` double DEFAULT '0',
  PRIMARY KEY (`idOrder`),
  KEY `orders_ibfk_1_idx` (`idBranch`),
  KEY `orders_ibfk_2_idx` (`idUser`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idBranch`) REFERENCES `branches` (`idBranch`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,3684,'Title: Oh no!, From: Oh no, To: Oh no, GreetingCard: Oh no! Oh no! Oh no no no no no!','','2022-05-14 19:14:24',1,'Waiting for Cancellation','credit card',1,'2022-05-30 13:30:14',0),(2,3111,'','','2022-05-14 19:19:09',1,'Waiting for Cancellation','credit card',1,'2022-05-30 13:30:00',0),(3,56394,'Title: Oh No!, From: Oh no, To: Oh no, GreetingCard: Oh no! Oh no! Oh no no no no no!','','2022-05-14 19:25:25',1,'Waiting for Approval','credit card',1,'2022-05-25 22:04:48',0),(4,1185,'','','2022-05-22 12:10:23',1,'Waiting for Approval','credit card',2,'2022-05-25 22:04:48',0),(5,1040,'','','2022-05-22 12:22:53',2,'Waiting for Approval','credit card',2,'2022-05-25 22:04:48',0),(6,1572,'','','2022-05-22 20:27:57',2,'Waiting for Approval','credit card',2,'2022-05-25 22:04:48',0),(7,840,'','','2022-05-22 20:32:39',3,'Waiting for Approval','credit card',2,'2022-05-25 22:04:48',0),(8,801,'','','2022-05-30 14:28:52',1,'Waiting for Cancellation','credit card',1,'2022-05-30 17:44:30',0),(9,27738.8,'','','2022-05-31 19:17:46',1,'Delivered','credit card',1,'2022-05-31 19:28:13',0),(10,230,'Title: asdfgasdg, From: sddfagasdfg, To: dsfgasdfgsdfg, Greeting Card: \n','','2022-05-31 22:22:13',2,'Waiting for Approval','credit card',1,'2022-05-31 22:22:13',0),(11,231,'Title: sdfbsdfb, From: q, To: asdfasdfasdf, Greeting Card: asdfasdf\nasdfasdfljkansdflkn\nalkvnlaskndvlaknsdv\n\n\n\nasdklfmnasldkfnlaskndfl	','','2022-05-31 22:23:45',2,'Waiting for Approval','credit card',1,'2022-05-31 22:23:45',0),(12,231,'','','2022-05-31 22:52:15',2,'Waiting for Approval','credit card',1,'2022-05-31 22:52:15',0),(13,231,'Title: asldkjvvhaksdvjvhv, From: kljbasdvljbasdlvk, To: kljbasdklvvjbvbkljb, Greeting Card: kbslvlkasjbdvkljbasdlkvjbasldkvjb','','2022-05-31 23:04:51',1,'Waiting for Approval','credit card',1,'2022-05-31 23:04:51',0),(14,231,'Title: asldkjvvhaksdvjvhv, From: kljbasdvljbasdlvk, To: kljbasdklvvjbvbkljb, Greeting Card: kbslvlkasjbdvkljbasdlkvjbasldkvjb','','2022-05-31 23:09:55',1,'Waiting for Approval','credit card',1,'2022-05-31 23:09:55',0),(15,200,'','argargasdgrawg','2022-06-01 01:38:55',2,'Waiting for Approval','credit card',1,'2022-06-01 01:38:55',0),(16,395.84000000000003,'','','2022-06-06 23:24:51',2,'Waiting for Approval','credit card',1,'2022-06-06 23:24:51',0),(17,368.84000000000003,'','','2022-06-06 23:29:19',2,'Waiting for Approval','credit card',1,'2022-06-06 23:29:19',0),(18,368.84000000000003,'','','2022-06-06 23:32:19',2,'Waiting for Approval','credit card',1,'2022-06-06 23:32:19',0),(19,422,'','','2022-06-07 00:42:27',3,'Waiting for Approval','credit card',1,'2022-06-07 00:42:27',0),(20,368.84000000000003,'','','2022-06-07 01:06:53',3,'Waiting for Approval','credit card',1,'2022-06-07 01:06:53',0),(21,1067,'','','2022-06-07 09:59:13',3,'Waiting for Approval','credit card',4,'2022-06-07 09:59:13',0),(22,704.84,'','','2022-06-07 09:59:15',1,'Delivered','credit card',6,'2022-06-07 10:00:22',0),(23,590,'','Amazing','2022-06-07 10:01:12',1,'Canceled','credit card',6,'2022-06-07 10:01:12',590),(24,568.84,'','','2022-06-07 10:02:12',1,'Approved','credit card',4,'2022-06-07 10:02:12',0),(25,160716.34,'From: Trilili, To: Tralala, Greeting Card: LA LA LA LA LAAA','Bring some beers, please.','2022-05-07 09:44:56',1,'Delivered','credit card',1,'2022-06-07 09:44:56',0),(26,25324.03,'From: Axel Rose, To: Slash, Greeting Card: Take me down to the paradise city','Dance when you deliver!','2022-04-07 09:49:41',1,'Delivered','credit card',1,'2022-06-07 09:49:41',0),(27,17523.6,'From: Billie Eilish, To: Pheneas, Greeting Card: Fool me once, fool me twice','','2022-06-07 09:56:53',1,'Delivered','credit card',1,'2022-06-07 09:56:53',0),(34,183.84,'From: group four, To: sergei, Greeting Card: testing is fun','','2022-06-09 23:22:44',1,'Canceled','credit card',1,'2022-06-09 23:23:08',183.84),(35,140,'From: group four, To: sergei, Greeting Card: testing is fun','','2022-06-09 23:24:55',1,'Canceled','credit card',1,'2022-06-09 23:25:21',140),(36,183.84,'From: group four, To: sergei, Greeting Card: testing is fun','','2022-06-10 00:12:20',1,'Canceled','credit card',1,'2022-06-10 00:12:42',183.84),(37,140,'From: group four, To: sergei, Greeting Card: testing is fun','','2022-06-10 00:14:27',1,'Canceled','credit card',1,'2022-06-10 00:14:53',140),(38,1287.08,'From: yana, To: linkedIn, Greeting Card: this project was fun','','2022-06-15 15:42:09',1,'Delivered','credit card',2,'2022-06-15 15:43:10',0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product_items`
--

DROP TABLE IF EXISTS `product_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_items` (
  `idItem` int NOT NULL,
  `idProduct` int NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`idItem`,`idProduct`),
  KEY `product_items_ibfk_2_idx` (`idProduct`),
  CONSTRAINT `product_items_ibfk_1` FOREIGN KEY (`idItem`) REFERENCES `items` (`itemID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_items_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_items`
--

LOCK TABLES `product_items` WRITE;
/*!40000 ALTER TABLE `product_items` DISABLE KEYS */;
INSERT INTO `product_items` VALUES (2,1,13),(2,4,3),(3,2,13),(3,4,5),(3,5,7),(4,3,13),(4,4,5),(4,5,6),(5,6,15),(5,9,3),(6,8,15),(6,9,3),(7,7,15),(7,9,3),(8,9,4),(9,9,4),(10,19,3),(11,17,3),(12,20,3),(13,18,3),(14,10,9),(14,13,3),(15,12,9),(15,13,3),(16,11,9),(16,13,3),(18,14,9),(19,15,9),(20,16,11);
/*!40000 ALTER TABLE `product_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productID` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(45) DEFAULT NULL,
  `flowerType` varchar(45) DEFAULT NULL,
  `productColor` varchar(45) DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `productType` varchar(45) DEFAULT NULL,
  `productDescription` varchar(100) DEFAULT NULL,
  `imagePath` varchar(100) DEFAULT NULL,
  `discount` double DEFAULT '0',
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Rose Bouquet - Red','Rose','Red',201,'Bouquet','A beatiful bouquet of Red Roses.','/resources/productImages/Bouquet/Rose/Rose_Red.jpg',16),(2,'Rose Bouquet - White','Rose','White',200,'Bouquet','A beatiful bouquet of White Roses.','/resources/productImages/Bouquet/Rose/Rose_White.jpg',0),(3,'Rose Bouquet - Pink','Rose','Pink',200,'Bouquet','A beatiful bouquet of Pink Roses.','/resources/productImages/Bouquet/Rose/Rose_Pink.jpg',0),(4,'Rose Bouquet - White, Red, Pink','Rose','White, Red, Pink',200,'Bouquet','A beatiful bouquet combining multiple colors of Roses.','/resources/productImages/Bouquet/Rose/Rose_White, Red, Pink.jpg',0),(5,'Rose Bouquet - White, Pink','Rose','White, Pink',200,'Bouquet','A beatiful bouquet combining White and Pink Roses.','/resources/productImages/Bouquet/Rose/Rose_White, Pink.jpg',20),(6,'Gerbera Bouquet - Yellow','Gerbera','Yellow',75,'Bouquet','A beatiful bouquet of Yellow Gerberas.','/resources/productImages/Bouquet/Gerbera/Gerbera_Yellow.jpg',0),(7,'Gerbera Bouquet - Pink','Gerbera','Pink',75,'Bouquet','A beatiful bouquet of Pink Gerberas.','/resources/productImages/Bouquet/Gerbera/Gerbera_Pink.jpg',0),(8,'Gerbera Bouquet - Red','Gerbera','Red',75,'Bouquet','A beatiful bouquet of Red Gerberas.','/resources/productImages/Bouquet/Gerbera/Gerbera_Red.jpg',0),(9,'Gerbera Bouquet - Mixed','Gerbera','Mixed',85,'Bouquet','A beatiful bouquet of multiple colors of Gerberas.','/resources/productImages/Bouquet/Gerbera/Gerbera_Mixed.jpg',0),(10,'Carnation Bouquet - Red','Carnation','Red',110,'Bouquet','A beatiful bouquet of Red Carnations.','/resources/productImages/Bouquet/Carnation/Carnation_Red.jpg',0),(11,'Carnation Bouquet - Pink','Carnation','Pink',110,'Bouquet','A beatiful bouquet of Pink Carnations.','/resources/productImages/Bouquet/Carnation/Carnation_Pink.jpg',40),(12,'Carnation Bouquet - Purple','Carnation','Purple',110,'Bouquet','A beatiful bouquet of Purple Carnations.','/resources/productImages/Bouquet/Carnation/Carnation_Purple.jpg',0),(13,'Carnation Bouquet - Mixed','Carnation','Mixed',110,'Bouquet','A beatiful bouquet of multiple colors of Carnation.','/resources/productImages/Bouquet/Carnation/Carnation_Mixed.jpg',0),(14,'Lily Bouquet - White','Lily','White',130,'Bouquet','A beatiful bouquet of white Lilies.','/resources/productImages/Bouquet/Lily/Lily_White.jpg',0),(15,'Lily Bouquet - Orange','Lily','Orange',130,'Bouquet','A beatiful bouquet of orange Lilies.','/resources/productImages/Bouquet/Lily/Lily_Orange.jpg',0),(16,'Gypsophila Bouquet - White','Gypsophila','White',35,'Bouquet','A beatiful bouquet of white Gypsophilas.','/resources/productImages/Bouquet/Gypsophila/Gypsophila_White.jpg',0),(17,'Orchid Plant - White','Orchid','White',150,'Plant','A gorgeous plant of White Orchids','/resources/productImages/Plant/Orchid/Orchid_White.jpg',0),(18,'Orchid Plant - Blue','Orchid','Blue',150,'Plant','A gorgeous plant of Blue Orchids','/resources/productImages/Plant/Orchid/Orchid_Blue.jpg',0),(19,'Orchid Plant - Purple','Orchid','Purple',150,'Plant','A gorgeous plant of Purple Orchids','/resources/productImages/Plant/Orchid/Orchid_Purple.jpg',30),(20,'Orchid Plant - Yellow','Orchid','Yellow',150,'Plant','A gorgeous plant of Yellow Orchids','/resources/productImages/Plant/Orchid/Orchid_Yellow.jpg',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `idReports` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idBranch` int NOT NULL,
  PRIMARY KEY (`idReports`),
  KEY `reports_ibfk_1_idx` (`idBranch`),
  CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`idBranch`) REFERENCES `branches` (`idBranch`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'income','2022-04-30 00:00:00',1),(2,'orders','2022-04-30 00:00:00',1),(3,'income','2022-03-30 00:00:00',1),(4,'orders','2022-03-30 00:00:00',1),(5,'complaints','2022-05-30 00:00:00',1),(6,'complaints','2022-06-30 00:00:00',1),(7,'income histogram','2022-06-30 00:00:00',1);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `survey_answers`
--

DROP TABLE IF EXISTS `survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_answers` (
  `idSurveyAnswer` int NOT NULL AUTO_INCREMENT,
  `idQuestion` int NOT NULL,
  `answer` int NOT NULL,
  PRIMARY KEY (`idSurveyAnswer`),
  KEY `question_idx` (`idQuestion`),
  CONSTRAINT `question` FOREIGN KEY (`idQuestion`) REFERENCES `survey_questions` (`idSurveyQuestion`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_answers`
--

LOCK TABLES `survey_answers` WRITE;
/*!40000 ALTER TABLE `survey_answers` DISABLE KEYS */;
INSERT INTO `survey_answers` VALUES (1,2,2),(2,1,1),(3,4,4),(4,5,5),(5,6,6),(6,3,3),(7,2,9),(8,4,7),(9,6,5),(10,3,8),(11,5,6),(12,1,10),(13,24,3),(14,26,5),(15,22,1),(16,23,2),(17,25,4),(18,6,10),(19,2,10),(20,3,10),(21,4,10),(22,5,10),(23,1,10),(24,2,10),(25,6,10),(26,5,10),(27,1,10),(28,4,10),(29,3,10);
/*!40000 ALTER TABLE `survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_questions`
--

DROP TABLE IF EXISTS `survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_questions` (
  `idSurveyQuestion` int NOT NULL AUTO_INCREMENT,
  `idSurvey` int NOT NULL,
  `question` varchar(100) NOT NULL,
  PRIMARY KEY (`idSurveyQuestion`),
  KEY `idSurvey_idx` (`idSurvey`),
  CONSTRAINT `surveyFK` FOREIGN KEY (`idSurvey`) REFERENCES `surveys` (`idSurvey`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_questions`
--

LOCK TABLES `survey_questions` WRITE;
/*!40000 ALTER TABLE `survey_questions` DISABLE KEYS */;
INSERT INTO `survey_questions` VALUES (1,1,'How was your shopping experience with us?'),(2,1,'Are you Statisfied with the product selection?'),(3,1,'Did you like the user interface?'),(4,1,'Do you think our prices are reasonable?'),(5,1,'Do you like the aplication design?'),(6,1,'Do you like the cart design?'),(7,2,'test1'),(8,2,'test2'),(9,2,'test3'),(10,2,'test4'),(11,2,'test5'),(12,2,'test6'),(13,2,'test7'),(14,2,'test8'),(15,2,'test9'),(16,2,'test10'),(17,2,'test11'),(18,2,'test12'),(19,2,'test13'),(20,2,'test14'),(21,2,'test15'),(22,3,'shita 1'),(23,3,'shita 2'),(24,3,'shita 3'),(25,3,'shita 4'),(26,3,'shita 5');
/*!40000 ALTER TABLE `survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `idSurvey` int NOT NULL AUTO_INCREMENT,
  `surveyName` varchar(45) NOT NULL,
  PRIMARY KEY (`idSurvey`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='				';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (1,'Shopping Experience'),(2,'Product Quality'),(3,'some other shit');
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_branches`
--

DROP TABLE IF EXISTS `user_branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_branches` (
  `idUser` int NOT NULL,
  `idBranch` int NOT NULL,
  PRIMARY KEY (`idUser`,`idBranch`),
  KEY `user_branches_ibfk_1_idx` (`idBranch`),
  CONSTRAINT `user_branches_ibfk_1` FOREIGN KEY (`idBranch`) REFERENCES `branches` (`idBranch`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_branches_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_branches`
--

LOCK TABLES `user_branches` WRITE;
/*!40000 ALTER TABLE `user_branches` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `idAccount` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `id` varchar(9) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phoneNumber` varchar(12) NOT NULL,
  PRIMARY KEY (`idAccount`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'cu','cu','000000000','cu@gmail.com','0530000000'),(2,'eitan','german','000000001','eitan@gmail.com','0530000001'),(3,'hanil','zabrailov','000000002','hanil@gmail.com','0530000002'),(4,'yana','raitsin','000000003','yana@gmail.com','0530000003'),(5,'yael','shusterman','000000004','yael@gmail.com','0530000004'),(6,'dolev','almog','000000005','dolev@gmail.com','0530000005'),(7,'mng','mng','000000006','mng@gmail.com','0530000006'),(8,'cs','cs','000000007','cs@gmail.com','0530000007'),(9,'mrkt','mrkt','000000008','mrkt@gmail.com','0530000008'),(10,'Master','Manager','000000009','mng2@gmail.com','0530000009'),(12,'mr','jesus','694202496','mrJesus@gmail.com','555666555'),(13,'test','test','123456789','test1@gmail.com','0533022993'),(14,'Cu','CU','000000010','CU@gmail.com','0530000010'),(16,'se','se','000000015','se@gmail.com','053-000-0015'),(17,'ceo','ceo','123456888','zlimessager@gmail.com','0533333333'),(20,'dc','dc','000000016','deliveryCoordinator@gmail.com','0530000016'),(21,'sw','sw','000000021','storeWorker@gmail.com','0530000021');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_screen`
--

DROP TABLE IF EXISTS `user_screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_screen` (
  `idUser` int NOT NULL,
  `screen` varchar(45) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`screen`,`idUser`),
  KEY `idUser_idx` (`idUser`),
  CONSTRAINT `idUser` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_screen`
--

LOCK TABLES `user_screen` WRITE;
/*!40000 ALTER TABLE `user_screen` DISABLE KEYS */;
INSERT INTO `user_screen` VALUES (1,'CATALOG'),(1,'VIEW_ORDERS_CUSTOMER'),(2,'CATALOG'),(2,'VIEW_ORDERS_CUSTOMER'),(4,'CATALOG'),(4,'VIEW_ORDERS_CUSTOMER'),(6,'CATALOG'),(6,'VIEW_ORDERS_CUSTOMER'),(7,'MANAGE_USERS'),(7,'REGISTER_CUSTMER'),(7,'USER_PREMISSION'),(7,'VIEW_ORDERS_MANAGER'),(7,'VIEW_REPORTS'),(8,'COMPLAINT_HOME'),(8,'SURVEY_HOME'),(8,'VIEW_SURVEY_ANALYSIS_RESULTS'),(9,'EDIT_CATALOG'),(10,'MANAGE_USERS'),(10,'REGISTER_CUSTMER'),(10,'USER_PREMISSION'),(10,'VIEW_ORDERS_MANAGER'),(10,'VIEW_REPORTS'),(16,'VIEW_ANSWERED_SURVEYS'),(17,'VIEW_REPORTS'),(18,'DELIVER_ORDERS');
/*!40000 ALTER TABLE `user_screen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `PASSWORD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `idAccount` int NOT NULL,
  `userType` varchar(45) NOT NULL DEFAULT 'NEW_CUSTOMER',
  `isLogin` tinyint NOT NULL DEFAULT '0',
  `status` varchar(45) NOT NULL DEFAULT 'Active',
  `storeCredit` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `username_UNIQUE` (`USERNAME`),
  KEY `users_ibfk_1_idx` (`idAccount`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idAccount`) REFERENCES `user_details` (`idAccount`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cu','cu',1,'CUSTOMER',0,'Active',647.6800000000001),(2,'eitan','eitan',2,'CUSTOMER',0,'Active',0),(3,'hanil','hanil',3,'CUSTOMER',0,'Suspended',0),(4,'yana','yana',4,'CUSTOMER',0,'Active',0),(5,'yael','yael',5,'NEW_CUSTOMER',0,'Active',0),(6,'dolev','dolev',6,'CUSTOMER',0,'Active',0),(7,'mng','mng',7,'STORE_MANGER',0,'Active',0),(8,'cs','cs',8,'CUSTOMER_SERVICE',0,'Active',0),(9,'mrkt','mrkt',9,'MARKETING_WORKER',0,'Active',0),(10,'mng2','mng2',10,'STORE_MANGER',0,'Active',0),(16,'se','se',16,'SERVICE_EXPERT',0,'Active',0),(17,'ceo','ceo',17,'CEO',0,'Active',0),(18,'dc','dc',20,'DELIVERY_COORDINATOR',0,'Active',0),(19,'sw','sw',21,'STORE_WORKER',0,'Active',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_table_schema`,
 1 AS `locked_table_name`,
 1 AS `locked_table_partition`,
 1 AS `locked_table_subpartition`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `cpu_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` (`host`,`statements`,`statement_latency`,`statement_avg_latency`,`table_scans`,`file_ios`,`file_io_latency`,`current_connections`,`total_connections`,`unique_users`,`current_memory`,`total_memory_allocated`) AS select if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,format_pico_time(sum(`stmt`.`total_latency`)) AS `statement_latency`,format_pico_time(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,format_pico_time(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,format_bytes(sum(`mem`.`current_allocated`)) AS `current_memory`,format_bytes(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if((`performance_schema`.`accounts`.`HOST` is null),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` (`host`,`ios`,`io_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,format_pico_time(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` (`host`,`event_name`,`total`,`total_latency`,`max_latency`) AS select if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` (`host`,`event_name`,`total`,`total_latency`,`avg_latency`) AS select if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if((`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST` is null),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `host_summary_by_statement_type` AS select 1 AS `host`,1 AS `statement`,1 AS `total`,1 AS `total_latency`,1 AS `max_latency`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_sent`,1 AS `rows_examined`,1 AS `rows_affected`,1 AS `full_scans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` AS select 1 AS `object_schema`,1 AS `allocated`,1 AS `data`,1 AS `pages`,1 AS `pages_hashed`,1 AS `pages_old`,1 AS `rows_cached` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `innodb_buffer_stats_by_table` AS select 1 AS `object_schema`,1 AS `object_name`,1 AS `allocated`,1 AS `data`,1 AS `pages`,1 AS `pages_hashed`,1 AS `pages_old`,1 AS `rows_cached` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `innodb_lock_waits` AS select 1 AS `wait_started`,1 AS `wait_age`,1 AS `wait_age_secs`,1 AS `locked_table`,1 AS `locked_table_schema`,1 AS `locked_table_name`,1 AS `locked_table_partition`,1 AS `locked_table_subpartition`,1 AS `locked_index`,1 AS `locked_type`,1 AS `waiting_trx_id`,1 AS `waiting_trx_started`,1 AS `waiting_trx_age`,1 AS `waiting_trx_rows_locked`,1 AS `waiting_trx_rows_modified`,1 AS `waiting_pid`,1 AS `waiting_query`,1 AS `waiting_lock_id`,1 AS `waiting_lock_mode`,1 AS `blocking_trx_id`,1 AS `blocking_pid`,1 AS `blocking_query`,1 AS `blocking_lock_id`,1 AS `blocking_lock_mode`,1 AS `blocking_trx_started`,1 AS `blocking_trx_age`,1 AS `blocking_trx_rows_locked`,1 AS `blocking_trx_rows_modified`,1 AS `sql_kill_blocking_query`,1 AS `sql_kill_blocking_connection` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `io_by_thread_by_latency` AS select 1 AS `user`,1 AS `total`,1 AS `total_latency`,1 AS `min_latency`,1 AS `avg_latency`,1 AS `max_latency`,1 AS `thread_id`,1 AS `processlist_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `io_global_by_file_by_bytes` AS select 1 AS `file`,1 AS `count_read`,1 AS `total_read`,1 AS `avg_read`,1 AS `count_write`,1 AS `total_written`,1 AS `avg_write`,1 AS `total`,1 AS `write_pct` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `io_global_by_file_by_latency` AS select 1 AS `file`,1 AS `total`,1 AS `total_latency`,1 AS `count_read`,1 AS `read_latency`,1 AS `count_write`,1 AS `write_latency`,1 AS `count_misc`,1 AS `misc_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `io_global_by_wait_by_bytes` AS select 1 AS `event_name`,1 AS `total`,1 AS `total_latency`,1 AS `min_latency`,1 AS `avg_latency`,1 AS `max_latency`,1 AS `count_read`,1 AS `total_read`,1 AS `avg_read`,1 AS `count_write`,1 AS `total_written`,1 AS `avg_written`,1 AS `total_requested` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `io_global_by_wait_by_latency` AS select 1 AS `event_name`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency`,1 AS `max_latency`,1 AS `read_latency`,1 AS `write_latency`,1 AS `misc_latency`,1 AS `count_read`,1 AS `total_read`,1 AS `avg_read`,1 AS `count_write`,1 AS `total_written`,1 AS `avg_written` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `latest_file_io` AS select 1 AS `thread`,1 AS `file`,1 AS `latency`,1 AS `operation`,1 AS `requested` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `memory_by_host_by_current_bytes` AS select 1 AS `host`,1 AS `current_count_used`,1 AS `current_allocated`,1 AS `current_avg_alloc`,1 AS `current_max_alloc`,1 AS `total_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` AS select 1 AS `thread_id`,1 AS `user`,1 AS `current_count_used`,1 AS `current_allocated`,1 AS `current_avg_alloc`,1 AS `current_max_alloc`,1 AS `total_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `memory_by_user_by_current_bytes` AS select 1 AS `user`,1 AS `current_count_used`,1 AS `current_allocated`,1 AS `current_avg_alloc`,1 AS `current_max_alloc`,1 AS `total_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `memory_global_by_current_bytes` AS select 1 AS `event_name`,1 AS `current_count`,1 AS `current_alloc`,1 AS `current_avg_alloc`,1 AS `high_count`,1 AS `high_alloc`,1 AS `high_avg_alloc` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `memory_global_total` AS select 1 AS `total_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `metrics` AS select 1 AS `Variable_name`,1 AS `Variable_value`,1 AS `Type`,1 AS `Enabled` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `processlist` AS select 1 AS `thd_id`,1 AS `conn_id`,1 AS `user`,1 AS `db`,1 AS `command`,1 AS `state`,1 AS `time`,1 AS `current_statement`,1 AS `statement_latency`,1 AS `progress`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_examined`,1 AS `rows_sent`,1 AS `rows_affected`,1 AS `tmp_tables`,1 AS `tmp_disk_tables`,1 AS `full_scan`,1 AS `last_statement`,1 AS `last_statement_latency`,1 AS `current_memory`,1 AS `last_wait`,1 AS `last_wait_latency`,1 AS `source`,1 AS `trx_latency`,1 AS `trx_state`,1 AS `trx_autocommit`,1 AS `pid`,1 AS `program_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ps_check_lost_instrumentation` AS select 1 AS `variable_name`,1 AS `variable_value` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schema_auto_increment_columns` AS select 1 AS `table_schema`,1 AS `table_name`,1 AS `column_name`,1 AS `data_type`,1 AS `column_type`,1 AS `is_signed`,1 AS `is_unsigned`,1 AS `max_value`,1 AS `auto_increment`,1 AS `auto_increment_ratio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schema_index_statistics` AS select 1 AS `table_schema`,1 AS `table_name`,1 AS `index_name`,1 AS `rows_selected`,1 AS `select_latency`,1 AS `rows_inserted`,1 AS `insert_latency`,1 AS `rows_updated`,1 AS `update_latency`,1 AS `rows_deleted`,1 AS `delete_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schema_object_overview` AS select 1 AS `db`,1 AS `object_type`,1 AS `count` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schema_redundant_indexes` AS select 1 AS `table_schema`,1 AS `table_name`,1 AS `redundant_index_name`,1 AS `redundant_index_columns`,1 AS `redundant_index_non_unique`,1 AS `dominant_index_name`,1 AS `dominant_index_columns`,1 AS `dominant_index_non_unique`,1 AS `subpart_exists`,1 AS `sql_drop_index` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schema_table_lock_waits` AS select 1 AS `object_schema`,1 AS `object_name`,1 AS `waiting_thread_id`,1 AS `waiting_pid`,1 AS `waiting_account`,1 AS `waiting_lock_type`,1 AS `waiting_lock_duration`,1 AS `waiting_query`,1 AS `waiting_query_secs`,1 AS `waiting_query_rows_affected`,1 AS `waiting_query_rows_examined`,1 AS `blocking_thread_id`,1 AS `blocking_pid`,1 AS `blocking_account`,1 AS `blocking_lock_type`,1 AS `blocking_lock_duration`,1 AS `sql_kill_blocking_query`,1 AS `sql_kill_blocking_connection` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schema_table_statistics` AS select 1 AS `table_schema`,1 AS `table_name`,1 AS `total_latency`,1 AS `rows_fetched`,1 AS `fetch_latency`,1 AS `rows_inserted`,1 AS `insert_latency`,1 AS `rows_updated`,1 AS `update_latency`,1 AS `rows_deleted`,1 AS `delete_latency`,1 AS `io_read_requests`,1 AS `io_read`,1 AS `io_read_latency`,1 AS `io_write_requests`,1 AS `io_write`,1 AS `io_write_latency`,1 AS `io_misc_requests`,1 AS `io_misc_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schema_table_statistics_with_buffer` AS select 1 AS `table_schema`,1 AS `table_name`,1 AS `rows_fetched`,1 AS `fetch_latency`,1 AS `rows_inserted`,1 AS `insert_latency`,1 AS `rows_updated`,1 AS `update_latency`,1 AS `rows_deleted`,1 AS `delete_latency`,1 AS `io_read_requests`,1 AS `io_read`,1 AS `io_read_latency`,1 AS `io_write_requests`,1 AS `io_write`,1 AS `io_write_latency`,1 AS `io_misc_requests`,1 AS `io_misc_latency`,1 AS `innodb_buffer_allocated`,1 AS `innodb_buffer_data`,1 AS `innodb_buffer_free`,1 AS `innodb_buffer_pages`,1 AS `innodb_buffer_pages_hashed`,1 AS `innodb_buffer_pages_old`,1 AS `innodb_buffer_rows_cached` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schema_tables_with_full_table_scans` AS select 1 AS `object_schema`,1 AS `object_name`,1 AS `rows_full_scanned`,1 AS `latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `schema_unused_indexes` AS select 1 AS `object_schema`,1 AS `object_name`,1 AS `index_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `session` AS select 1 AS `thd_id`,1 AS `conn_id`,1 AS `user`,1 AS `db`,1 AS `command`,1 AS `state`,1 AS `time`,1 AS `current_statement`,1 AS `statement_latency`,1 AS `progress`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_examined`,1 AS `rows_sent`,1 AS `rows_affected`,1 AS `tmp_tables`,1 AS `tmp_disk_tables`,1 AS `full_scan`,1 AS `last_statement`,1 AS `last_statement_latency`,1 AS `current_memory`,1 AS `last_wait`,1 AS `last_wait_latency`,1 AS `source`,1 AS `trx_latency`,1 AS `trx_state`,1 AS `trx_autocommit`,1 AS `pid`,1 AS `program_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `session_ssl_status` AS select 1 AS `thread_id`,1 AS `ssl_version`,1 AS `ssl_cipher`,1 AS `ssl_sessions_reused` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `statement_analysis` AS select 1 AS `query`,1 AS `db`,1 AS `full_scan`,1 AS `exec_count`,1 AS `err_count`,1 AS `warn_count`,1 AS `total_latency`,1 AS `max_latency`,1 AS `avg_latency`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_sent`,1 AS `rows_sent_avg`,1 AS `rows_examined`,1 AS `rows_examined_avg`,1 AS `rows_affected`,1 AS `rows_affected_avg`,1 AS `tmp_tables`,1 AS `tmp_disk_tables`,1 AS `rows_sorted`,1 AS `sort_merge_passes`,1 AS `digest`,1 AS `first_seen`,1 AS `last_seen` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `statements_with_errors_or_warnings` AS select 1 AS `query`,1 AS `db`,1 AS `exec_count`,1 AS `errors`,1 AS `error_pct`,1 AS `warnings`,1 AS `warning_pct`,1 AS `first_seen`,1 AS `last_seen`,1 AS `digest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `statements_with_full_table_scans` AS select 1 AS `query`,1 AS `db`,1 AS `exec_count`,1 AS `total_latency`,1 AS `no_index_used_count`,1 AS `no_good_index_used_count`,1 AS `no_index_used_pct`,1 AS `rows_sent`,1 AS `rows_examined`,1 AS `rows_sent_avg`,1 AS `rows_examined_avg`,1 AS `first_seen`,1 AS `last_seen`,1 AS `digest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` AS select 1 AS `query`,1 AS `db`,1 AS `full_scan`,1 AS `exec_count`,1 AS `err_count`,1 AS `warn_count`,1 AS `total_latency`,1 AS `max_latency`,1 AS `avg_latency`,1 AS `rows_sent`,1 AS `rows_sent_avg`,1 AS `rows_examined`,1 AS `rows_examined_avg`,1 AS `first_seen`,1 AS `last_seen`,1 AS `digest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `statements_with_sorting` AS select 1 AS `query`,1 AS `db`,1 AS `exec_count`,1 AS `total_latency`,1 AS `sort_merge_passes`,1 AS `avg_sort_merges`,1 AS `sorts_using_scans`,1 AS `sort_using_range`,1 AS `rows_sorted`,1 AS `avg_rows_sorted`,1 AS `first_seen`,1 AS `last_seen`,1 AS `digest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `statements_with_temp_tables` AS select 1 AS `query`,1 AS `db`,1 AS `exec_count`,1 AS `total_latency`,1 AS `memory_tmp_tables`,1 AS `disk_tmp_tables`,1 AS `avg_tmp_tables_per_query`,1 AS `tmp_tables_to_disk_pct`,1 AS `first_seen`,1 AS `last_seen`,1 AS `digest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_summary` AS select 1 AS `user`,1 AS `statements`,1 AS `statement_latency`,1 AS `statement_avg_latency`,1 AS `table_scans`,1 AS `file_ios`,1 AS `file_io_latency`,1 AS `current_connections`,1 AS `total_connections`,1 AS `unique_hosts`,1 AS `current_memory`,1 AS `total_memory_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_summary_by_file_io` AS select 1 AS `user`,1 AS `ios`,1 AS `io_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_summary_by_file_io_type` AS select 1 AS `user`,1 AS `event_name`,1 AS `total`,1 AS `latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_summary_by_stages` AS select 1 AS `user`,1 AS `event_name`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_summary_by_statement_latency` AS select 1 AS `user`,1 AS `total`,1 AS `total_latency`,1 AS `max_latency`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_sent`,1 AS `rows_examined`,1 AS `rows_affected`,1 AS `full_scans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_summary_by_statement_type` AS select 1 AS `user`,1 AS `statement`,1 AS `total`,1 AS `total_latency`,1 AS `max_latency`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_sent`,1 AS `rows_examined`,1 AS `rows_affected`,1 AS `full_scans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `version` AS select 1 AS `sys_version`,1 AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` AS select 1 AS `event_class`,1 AS `total`,1 AS `total_latency`,1 AS `min_latency`,1 AS `avg_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wait_classes_global_by_latency` AS select 1 AS `event_class`,1 AS `total`,1 AS `total_latency`,1 AS `min_latency`,1 AS `avg_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `waits_by_host_by_latency` AS select 1 AS `host`,1 AS `event`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `waits_by_user_by_latency` AS select 1 AS `user`,1 AS `event`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `waits_global_by_latency` AS select 1 AS `events`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$host_summary` AS select 1 AS `host`,1 AS `statements`,1 AS `statement_latency`,1 AS `statement_avg_latency`,1 AS `table_scans`,1 AS `file_ios`,1 AS `file_io_latency`,1 AS `current_connections`,1 AS `total_connections`,1 AS `unique_users`,1 AS `current_memory`,1 AS `total_memory_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$host_summary_by_file_io` AS select 1 AS `host`,1 AS `ios`,1 AS `io_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$host_summary_by_file_io_type` AS select 1 AS `host`,1 AS `event_name`,1 AS `total`,1 AS `total_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$host_summary_by_stages` AS select 1 AS `host`,1 AS `event_name`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$host_summary_by_statement_latency` AS select 1 AS `host`,1 AS `total`,1 AS `total_latency`,1 AS `max_latency`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_sent`,1 AS `rows_examined`,1 AS `rows_affected`,1 AS `full_scans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$host_summary_by_statement_type` AS select 1 AS `host`,1 AS `statement`,1 AS `total`,1 AS `total_latency`,1 AS `max_latency`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_sent`,1 AS `rows_examined`,1 AS `rows_affected`,1 AS `full_scans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` AS select 1 AS `object_schema`,1 AS `allocated`,1 AS `data`,1 AS `pages`,1 AS `pages_hashed`,1 AS `pages_old`,1 AS `rows_cached` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` AS select 1 AS `object_schema`,1 AS `object_name`,1 AS `allocated`,1 AS `data`,1 AS `pages`,1 AS `pages_hashed`,1 AS `pages_old`,1 AS `rows_cached` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$innodb_lock_waits` AS select 1 AS `wait_started`,1 AS `wait_age`,1 AS `wait_age_secs`,1 AS `locked_table`,1 AS `locked_table_schema`,1 AS `locked_table_name`,1 AS `locked_table_partition`,1 AS `locked_table_subpartition`,1 AS `locked_index`,1 AS `locked_type`,1 AS `waiting_trx_id`,1 AS `waiting_trx_started`,1 AS `waiting_trx_age`,1 AS `waiting_trx_rows_locked`,1 AS `waiting_trx_rows_modified`,1 AS `waiting_pid`,1 AS `waiting_query`,1 AS `waiting_lock_id`,1 AS `waiting_lock_mode`,1 AS `blocking_trx_id`,1 AS `blocking_pid`,1 AS `blocking_query`,1 AS `blocking_lock_id`,1 AS `blocking_lock_mode`,1 AS `blocking_trx_started`,1 AS `blocking_trx_age`,1 AS `blocking_trx_rows_locked`,1 AS `blocking_trx_rows_modified`,1 AS `sql_kill_blocking_query`,1 AS `sql_kill_blocking_connection` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$io_by_thread_by_latency` AS select 1 AS `user`,1 AS `total`,1 AS `total_latency`,1 AS `min_latency`,1 AS `avg_latency`,1 AS `max_latency`,1 AS `thread_id`,1 AS `processlist_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` AS select 1 AS `file`,1 AS `count_read`,1 AS `total_read`,1 AS `avg_read`,1 AS `count_write`,1 AS `total_written`,1 AS `avg_write`,1 AS `total`,1 AS `write_pct` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$io_global_by_file_by_latency` AS select 1 AS `file`,1 AS `total`,1 AS `total_latency`,1 AS `count_read`,1 AS `read_latency`,1 AS `count_write`,1 AS `write_latency`,1 AS `count_misc`,1 AS `misc_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` AS select 1 AS `event_name`,1 AS `total`,1 AS `total_latency`,1 AS `min_latency`,1 AS `avg_latency`,1 AS `max_latency`,1 AS `count_read`,1 AS `total_read`,1 AS `avg_read`,1 AS `count_write`,1 AS `total_written`,1 AS `avg_written`,1 AS `total_requested` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` AS select 1 AS `event_name`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency`,1 AS `max_latency`,1 AS `read_latency`,1 AS `write_latency`,1 AS `misc_latency`,1 AS `count_read`,1 AS `total_read`,1 AS `avg_read`,1 AS `count_write`,1 AS `total_written`,1 AS `avg_written` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$latest_file_io` AS select 1 AS `thread`,1 AS `file`,1 AS `latency`,1 AS `operation`,1 AS `requested` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` AS select 1 AS `host`,1 AS `current_count_used`,1 AS `current_allocated`,1 AS `current_avg_alloc`,1 AS `current_max_alloc`,1 AS `total_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` AS select 1 AS `thread_id`,1 AS `user`,1 AS `current_count_used`,1 AS `current_allocated`,1 AS `current_avg_alloc`,1 AS `current_max_alloc`,1 AS `total_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` AS select 1 AS `user`,1 AS `current_count_used`,1 AS `current_allocated`,1 AS `current_avg_alloc`,1 AS `current_max_alloc`,1 AS `total_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$memory_global_by_current_bytes` AS select 1 AS `event_name`,1 AS `current_count`,1 AS `current_alloc`,1 AS `current_avg_alloc`,1 AS `high_count`,1 AS `high_alloc`,1 AS `high_avg_alloc` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$memory_global_total` AS select 1 AS `total_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$processlist` AS select 1 AS `thd_id`,1 AS `conn_id`,1 AS `user`,1 AS `db`,1 AS `command`,1 AS `state`,1 AS `time`,1 AS `current_statement`,1 AS `statement_latency`,1 AS `progress`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_examined`,1 AS `rows_sent`,1 AS `rows_affected`,1 AS `tmp_tables`,1 AS `tmp_disk_tables`,1 AS `full_scan`,1 AS `last_statement`,1 AS `last_statement_latency`,1 AS `current_memory`,1 AS `last_wait`,1 AS `last_wait_latency`,1 AS `source`,1 AS `trx_latency`,1 AS `trx_state`,1 AS `trx_autocommit`,1 AS `pid`,1 AS `program_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` AS select 1 AS `avg_us`,1 AS `percentile` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` AS select 1 AS `cnt`,1 AS `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` AS select 1 AS `table_schema`,1 AS `table_name`,1 AS `count_read`,1 AS `sum_number_of_bytes_read`,1 AS `sum_timer_read`,1 AS `count_write`,1 AS `sum_number_of_bytes_write`,1 AS `sum_timer_write`,1 AS `count_misc`,1 AS `sum_timer_misc` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$schema_flattened_keys` AS select 1 AS `table_schema`,1 AS `table_name`,1 AS `index_name`,1 AS `non_unique`,1 AS `subpart_exists`,1 AS `index_columns` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$schema_index_statistics` AS select 1 AS `table_schema`,1 AS `table_name`,1 AS `index_name`,1 AS `rows_selected`,1 AS `select_latency`,1 AS `rows_inserted`,1 AS `insert_latency`,1 AS `rows_updated`,1 AS `update_latency`,1 AS `rows_deleted`,1 AS `delete_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$schema_table_lock_waits` AS select 1 AS `object_schema`,1 AS `object_name`,1 AS `waiting_thread_id`,1 AS `waiting_pid`,1 AS `waiting_account`,1 AS `waiting_lock_type`,1 AS `waiting_lock_duration`,1 AS `waiting_query`,1 AS `waiting_query_secs`,1 AS `waiting_query_rows_affected`,1 AS `waiting_query_rows_examined`,1 AS `blocking_thread_id`,1 AS `blocking_pid`,1 AS `blocking_account`,1 AS `blocking_lock_type`,1 AS `blocking_lock_duration`,1 AS `sql_kill_blocking_query`,1 AS `sql_kill_blocking_connection` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$schema_table_statistics` AS select 1 AS `table_schema`,1 AS `table_name`,1 AS `total_latency`,1 AS `rows_fetched`,1 AS `fetch_latency`,1 AS `rows_inserted`,1 AS `insert_latency`,1 AS `rows_updated`,1 AS `update_latency`,1 AS `rows_deleted`,1 AS `delete_latency`,1 AS `io_read_requests`,1 AS `io_read`,1 AS `io_read_latency`,1 AS `io_write_requests`,1 AS `io_write`,1 AS `io_write_latency`,1 AS `io_misc_requests`,1 AS `io_misc_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` AS select 1 AS `table_schema`,1 AS `table_name`,1 AS `rows_fetched`,1 AS `fetch_latency`,1 AS `rows_inserted`,1 AS `insert_latency`,1 AS `rows_updated`,1 AS `update_latency`,1 AS `rows_deleted`,1 AS `delete_latency`,1 AS `io_read_requests`,1 AS `io_read`,1 AS `io_read_latency`,1 AS `io_write_requests`,1 AS `io_write`,1 AS `io_write_latency`,1 AS `io_misc_requests`,1 AS `io_misc_latency`,1 AS `innodb_buffer_allocated`,1 AS `innodb_buffer_data`,1 AS `innodb_buffer_free`,1 AS `innodb_buffer_pages`,1 AS `innodb_buffer_pages_hashed`,1 AS `innodb_buffer_pages_old`,1 AS `innodb_buffer_rows_cached` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` AS select 1 AS `object_schema`,1 AS `object_name`,1 AS `rows_full_scanned`,1 AS `latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$session` AS select 1 AS `thd_id`,1 AS `conn_id`,1 AS `user`,1 AS `db`,1 AS `command`,1 AS `state`,1 AS `time`,1 AS `current_statement`,1 AS `statement_latency`,1 AS `progress`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_examined`,1 AS `rows_sent`,1 AS `rows_affected`,1 AS `tmp_tables`,1 AS `tmp_disk_tables`,1 AS `full_scan`,1 AS `last_statement`,1 AS `last_statement_latency`,1 AS `current_memory`,1 AS `last_wait`,1 AS `last_wait_latency`,1 AS `source`,1 AS `trx_latency`,1 AS `trx_state`,1 AS `trx_autocommit`,1 AS `pid`,1 AS `program_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$statement_analysis` AS select 1 AS `query`,1 AS `db`,1 AS `full_scan`,1 AS `exec_count`,1 AS `err_count`,1 AS `warn_count`,1 AS `total_latency`,1 AS `max_latency`,1 AS `avg_latency`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_sent`,1 AS `rows_sent_avg`,1 AS `rows_examined`,1 AS `rows_examined_avg`,1 AS `rows_affected`,1 AS `rows_affected_avg`,1 AS `tmp_tables`,1 AS `tmp_disk_tables`,1 AS `rows_sorted`,1 AS `sort_merge_passes`,1 AS `digest`,1 AS `first_seen`,1 AS `last_seen` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` AS select 1 AS `query`,1 AS `db`,1 AS `exec_count`,1 AS `errors`,1 AS `error_pct`,1 AS `warnings`,1 AS `warning_pct`,1 AS `first_seen`,1 AS `last_seen`,1 AS `digest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$statements_with_full_table_scans` AS select 1 AS `query`,1 AS `db`,1 AS `exec_count`,1 AS `total_latency`,1 AS `no_index_used_count`,1 AS `no_good_index_used_count`,1 AS `no_index_used_pct`,1 AS `rows_sent`,1 AS `rows_examined`,1 AS `rows_sent_avg`,1 AS `rows_examined_avg`,1 AS `first_seen`,1 AS `last_seen`,1 AS `digest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` AS select 1 AS `query`,1 AS `db`,1 AS `full_scan`,1 AS `exec_count`,1 AS `err_count`,1 AS `warn_count`,1 AS `total_latency`,1 AS `max_latency`,1 AS `avg_latency`,1 AS `rows_sent`,1 AS `rows_sent_avg`,1 AS `rows_examined`,1 AS `rows_examined_avg`,1 AS `first_seen`,1 AS `last_seen`,1 AS `digest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$statements_with_sorting` AS select 1 AS `query`,1 AS `db`,1 AS `exec_count`,1 AS `total_latency`,1 AS `sort_merge_passes`,1 AS `avg_sort_merges`,1 AS `sorts_using_scans`,1 AS `sort_using_range`,1 AS `rows_sorted`,1 AS `avg_rows_sorted`,1 AS `first_seen`,1 AS `last_seen`,1 AS `digest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$statements_with_temp_tables` AS select 1 AS `query`,1 AS `db`,1 AS `exec_count`,1 AS `total_latency`,1 AS `memory_tmp_tables`,1 AS `disk_tmp_tables`,1 AS `avg_tmp_tables_per_query`,1 AS `tmp_tables_to_disk_pct`,1 AS `first_seen`,1 AS `last_seen`,1 AS `digest` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$user_summary` AS select 1 AS `user`,1 AS `statements`,1 AS `statement_latency`,1 AS `statement_avg_latency`,1 AS `table_scans`,1 AS `file_ios`,1 AS `file_io_latency`,1 AS `current_connections`,1 AS `total_connections`,1 AS `unique_hosts`,1 AS `current_memory`,1 AS `total_memory_allocated` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$user_summary_by_file_io` AS select 1 AS `user`,1 AS `ios`,1 AS `io_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$user_summary_by_file_io_type` AS select 1 AS `user`,1 AS `event_name`,1 AS `total`,1 AS `latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$user_summary_by_stages` AS select 1 AS `user`,1 AS `event_name`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$user_summary_by_statement_latency` AS select 1 AS `user`,1 AS `total`,1 AS `total_latency`,1 AS `max_latency`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_sent`,1 AS `rows_examined`,1 AS `rows_affected`,1 AS `full_scans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$user_summary_by_statement_type` AS select 1 AS `user`,1 AS `statement`,1 AS `total`,1 AS `total_latency`,1 AS `max_latency`,1 AS `lock_latency`,1 AS `cpu_latency`,1 AS `rows_sent`,1 AS `rows_examined`,1 AS `rows_affected`,1 AS `full_scans` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` AS select 1 AS `event_class`,1 AS `total`,1 AS `total_latency`,1 AS `min_latency`,1 AS `avg_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$wait_classes_global_by_latency` AS select 1 AS `event_class`,1 AS `total`,1 AS `total_latency`,1 AS `min_latency`,1 AS `avg_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$waits_by_host_by_latency` AS select 1 AS `host`,1 AS `event`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$waits_by_user_by_latency` AS select 1 AS `user`,1 AS `event`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `x$waits_global_by_latency` AS select 1 AS `events`,1 AS `total`,1 AS `total_latency`,1 AS `avg_latency`,1 AS `max_latency` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15 22:28:45
