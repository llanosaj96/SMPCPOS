

CREATE TABLE `attendance` (
  `REC_NO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NUMBER` int(20) NOT NULL,
  `FULL_NAME` varchar(100) NOT NULL,
  `A_DATE` varchar(10) NOT NULL,
  `TIME_IN` varchar(20) NOT NULL,
  `IN_REMARKS` varchar(50) NOT NULL,
  `TIME_OUT` varchar(20) NOT NULL,
  `OUT_REMARKS` varchar(50) NOT NULL,
  `D_MONTH` varchar(5) NOT NULL,
  `D_YEAR` varchar(5) NOT NULL,
  PRIMARY KEY (`REC_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;




CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CNAME` varchar(50) NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO category VALUES("1","Delivery");
INSERT INTO category VALUES("2","Softdrinks(Coca-cola Product)");
INSERT INTO category VALUES("5","San Miguel Products");
INSERT INTO category VALUES("10","Liquor");
INSERT INTO category VALUES("13","Alcohol");
INSERT INTO category VALUES("14","P. O.");
INSERT INTO category VALUES("15","Grains");
INSERT INTO category VALUES("16","Butane");



CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `PHONE_NUMBER` varchar(15) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PO_MEMBER` varchar(50) NOT NULL,
  `PO_CARD_NO` int(50) NOT NULL,
  `PO_DATE_ISSUED` varchar(50) NOT NULL,
  `PO_DATE_DUE` varchar(50) NOT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

INSERT INTO customer VALUES("1"," Walk-In","Customer","N/A","","","0","","");
INSERT INTO customer VALUES("7","EDUARDO","GUARIN","09123456789","N/A","NO","0","none","none");
INSERT INTO customer VALUES("19","JENEFER ","CARILLO","N/A","SIBONGA","NO","0","none","none");
INSERT INTO customer VALUES("20","MARY ANN","ANTIPUESTO","N/A","SIBONGA","NO","0","none","none");
INSERT INTO customer VALUES("21","CARLOS","REDILLO","N/A","SIBONGA","NO","0","none","none");
INSERT INTO customer VALUES("22","ANLOH","CABAL","N/A","SIBONGA","NO","0","none","none");
INSERT INTO customer VALUES("23","BANLASAN","N/A","N/A","SIBONGA","NO","0","none","none");
INSERT INTO customer VALUES("24","ARLYN","CABAL","N/A","SIBONGA","NO","0","none","none");
INSERT INTO customer VALUES("25","GENRO","CLARION","NA","SIBONGA","NO","0","none","none");
INSERT INTO customer VALUES("26","MYRLA","CERVANTES","NA","SIBONGA","NO","0","none","none");
INSERT INTO customer VALUES("27","ELLA","GAKO","NA","SIBONGA, CEBU","NO","0","none","none");
INSERT INTO customer VALUES("28","BEATRIZ","YARANON","","","","0","","");
INSERT INTO customer VALUES("29","FRAS","SANTA RITA","","","","0","","");
INSERT INTO customer VALUES("30","LUGO","MANATAD","","","","0","","");
INSERT INTO customer VALUES("31","CARTIE","PERESORES","","","","0","","");
INSERT INTO customer VALUES("32","NONAT","MANATAD","","","","0","","");
INSERT INTO customer VALUES("33","VIOLING","BACOMO","","","","0","","");
INSERT INTO customer VALUES("34","ROY","SUICO","","","","0","","");
INSERT INTO customer VALUES("35","REBECA","PERESORES","","","","0","","");
INSERT INTO customer VALUES("36","JOAN","ESCUADRO","","","","0","","");
INSERT INTO customer VALUES("37","MARISA","AVILA","","","","0","","");
INSERT INTO customer VALUES("38","FERMINA","ESPINA","","","","0","","");
INSERT INTO customer VALUES("39","MARGIE","ALIGADO","","","","0","","");
INSERT INTO customer VALUES("40","GLENN","TORRES","","","","0","","");
INSERT INTO customer VALUES("41","CECILE ","RECOPILACION","","","","0","","");
INSERT INTO customer VALUES("42","NORCEL","REGIDOR","","","","0","","");
INSERT INTO customer VALUES("43","CHARING","","","","","0","","");
INSERT INTO customer VALUES("44","PING2x","AMAY","","","","0","","");
INSERT INTO customer VALUES("45","HERMANA","PERDIGUEZ","","","","0","","");
INSERT INTO customer VALUES("46","FRANCIO","IMPIS","","","","0","","");
INSERT INTO customer VALUES("47","ELVIRA","DELA CRUZ","","","","0","","");
INSERT INTO customer VALUES("48","ANECAR","SILVA","","","","0","","");
INSERT INTO customer VALUES("49","MARY ANN","DAKAY","","","","0","","");
INSERT INTO customer VALUES("50","ZOSIMA","ABETRIA","","","","0","","");
INSERT INTO customer VALUES("51","JEMMA ","SOLATORIO","","","","0","","");
INSERT INTO customer VALUES("52","LINDA","FERNANDEZ","","","","0","","");
INSERT INTO customer VALUES("53","RIZA","PADIGOS","","","","0","","");
INSERT INTO customer VALUES("54","MELCHOR","LAZAGA","","","","0","","");
INSERT INTO customer VALUES("55","GLORIA","ORDENIZA","","","","0","","");
INSERT INTO customer VALUES("56","CRIS","CUBAR","","","","0","","");
INSERT INTO customer VALUES("57","JEFREY","LABRADOR","","","","0","","");
INSERT INTO customer VALUES("58","ALARA","DIMCO","","","","0","","");
INSERT INTO customer VALUES("59","JEYMAIN","BALANSAG","","","","0","","");
INSERT INTO customer VALUES("60","FATIMA","LLANOS","","","","0","","");
INSERT INTO customer VALUES("61","MARK","DIAPANA","","","","0","","");
INSERT INTO customer VALUES("62","SABANAL","","","","","0","","");
INSERT INTO customer VALUES("63","ANDREA CABAL","","","","","0","","");
INSERT INTO customer VALUES("64","CHERRY","CASAYAS","","","","0","","");
INSERT INTO customer VALUES("65","JENNY","CABARDO","","","","0","","");
INSERT INTO customer VALUES("66","DIAPELO","","","","","0","","");
INSERT INTO customer VALUES("67","CHERRY","BANGIRAN","0","","","0","","");
INSERT INTO customer VALUES("68","ARLYN","BALINGKIT","","","","0","","");
INSERT INTO customer VALUES("69","TANIA","SARSONA","","","","0","","");
INSERT INTO customer VALUES("70","ESMAEL","","","","","0","","");
INSERT INTO customer VALUES("71","LIZBETH","","","","","0","","");
INSERT INTO customer VALUES("72","JET","HILAMO","","","","0","","");
INSERT INTO customer VALUES("73","SAN MIGUEL INC","","","","","0","","");
INSERT INTO customer VALUES("74","ALYONA","","","","","0","","");
INSERT INTO customer VALUES("75","ERWIN","","","","","0","","");
INSERT INTO customer VALUES("76","EDWIN","ORDENIZA","","","","0","","");
INSERT INTO customer VALUES("77","SMPC","","","","","0","","");
INSERT INTO customer VALUES("78","HENNY","SULTAN","","","","0","","");
INSERT INTO customer VALUES("79","SARIO","AMARADO","","","","0","","");
INSERT INTO customer VALUES("80","VIOLITA","BACOMO","","","","0","","");
INSERT INTO customer VALUES("81","ANGIE","CABAL","","","","0","","");
INSERT INTO customer VALUES("82","MELY","BANLASAN","","","","0","","");
INSERT INTO customer VALUES("83","LITO","CABARDO","","","","0","","");
INSERT INTO customer VALUES("84","SHIELA","","","","","0","","");
INSERT INTO customer VALUES("85","BARUEL","","","","","0","","");
INSERT INTO customer VALUES("86","LOTA","CABRERA","","","","0","","");
INSERT INTO customer VALUES("87","SMPC","LENDING","","","","0","","");
INSERT INTO customer VALUES("88","FELIPE","BANLASAN","","","","0","","");
INSERT INTO customer VALUES("89","RAMIL","ZAMORA","","","","0","","");
INSERT INTO customer VALUES("90","NINA","SEDIMO","","","","0","","");
INSERT INTO customer VALUES("91","JOSEFINA","ENGANO","","","","0","","");
INSERT INTO customer VALUES("92","ROSEMARY","ORDENIZA","","","","0","","");
INSERT INTO customer VALUES("93","LILIA","","","","","0","","");
INSERT INTO customer VALUES("94","LONIE","","","","","0","","");
INSERT INTO customer VALUES("95","DIDANG","","","","","0","","");
INSERT INTO customer VALUES("96","RAFAEL","VILLAVER","","","","0","","");
INSERT INTO customer VALUES("98","CELSA","PAEZ","","","","0","","");
INSERT INTO customer VALUES("99","LILY","BAROGAN","","","","0","","");
INSERT INTO customer VALUES("100","N/A","ORDENIZA","","","","0","","");
INSERT INTO customer VALUES("101","ESTER","ALEONAR","","","","0","","");
INSERT INTO customer VALUES("102","TINIE","PERESORES","","","","0","","");
INSERT INTO customer VALUES("103","PIDIO","CABAL","","","","0","","");
INSERT INTO customer VALUES("104","RAUL","LOGDONIO","","","","0","","");
INSERT INTO customer VALUES("105","EUFRONIO","RICABORDA","","","","0","","");
INSERT INTO customer VALUES("106","BERTO","","","","","0","","");
INSERT INTO customer VALUES("107","MARIBEL","BELLAVITA","","","","0","","");
INSERT INTO customer VALUES("108","ELIEZER","IROMA","","","","0","","");
INSERT INTO customer VALUES("109","WILLIAM","FERNANDEZ","","","","0","","");
INSERT INTO customer VALUES("110","SALLY","MAHUSAY","","","","0","","");
INSERT INTO customer VALUES("111","REY","CUESTAS","","","","0","","");
INSERT INTO customer VALUES("112","MARZAN","SULTAN","","","","0","","");
INSERT INTO customer VALUES("113","MA SALOME","DAKAY","","","","0","","");
INSERT INTO customer VALUES("114","JEN JEN","","","","","0","","");
INSERT INTO customer VALUES("116","ANNA","SARIO","","","","0","","");
INSERT INTO customer VALUES("117","ANIE","SOLATORIO","","","","0","","");
INSERT INTO customer VALUES("118","JUNJUN","ABELLA","","","","0","","");
INSERT INTO customer VALUES("119","RENE","PELARES","","","","0","","");
INSERT INTO customer VALUES("120","LEO","ABORDO","","","","0","","");
INSERT INTO customer VALUES("121","ELIEN","CABAL","","","","0","","");
INSERT INTO customer VALUES("122","J R","SARSONA","","","","0","","");
INSERT INTO customer VALUES("123","ANTONIA","SARSONA","","","","0","","");
INSERT INTO customer VALUES("124","HARRY","PADILLO","","","","0","","");
INSERT INTO customer VALUES("125","AMANCIO","","","","","0","","");
INSERT INTO customer VALUES("126","MONICO","INIGO","","","","0","","");
INSERT INTO customer VALUES("127","RALPH","","","","","0","","");
INSERT INTO customer VALUES("128","MASA","","","","","0","","");
INSERT INTO customer VALUES("129","EVANGELINE","PADIGOS","","","","0","","");
INSERT INTO customer VALUES("130","GENELYN","","","","","0","","");
INSERT INTO customer VALUES("131","ROEL","MAGALLANO","","","","0","","");
INSERT INTO customer VALUES("132","ANECITA","CAMPOREDONDO","","","","0","","");
INSERT INTO customer VALUES("133","CORAY","LOGOLONIO","","","","0","","");
INSERT INTO customer VALUES("134","ALMORADAS","","","","","0","","");
INSERT INTO customer VALUES("135","RENREN","","","","","0","","");
INSERT INTO customer VALUES("136","REVERA","","","","","0","","");
INSERT INTO customer VALUES("137","REYMART","PORTA","","","","0","","");
INSERT INTO customer VALUES("138","ALEGARBES","","","","","0","","");
INSERT INTO customer VALUES("139","ISCOR","CARAZO","","","","0","","");
INSERT INTO customer VALUES("140","AMAY","","","","","0","","");
INSERT INTO customer VALUES("141","MERCHEL","GUARIN","","","","0","","");
INSERT INTO customer VALUES("142","VICKY","MANGYAO","","","","0","","");
INSERT INTO customer VALUES("143","ONDO","FERNANDEZ","","","","0","","");
INSERT INTO customer VALUES("144","EMEDIA","BROULIO","","","","0","","");
INSERT INTO customer VALUES("145","MECHIE","APOSAGA","","","","0","","");
INSERT INTO customer VALUES("146","JELIAN","POTESTAS","","","","0","","");
INSERT INTO customer VALUES("147","JOSE ABIL","LOPEZ","","","","0","","");
INSERT INTO customer VALUES("148","CLIMACA","","","","","0","","");
INSERT INTO customer VALUES("149","HIPOLITA","SUPERALES","","","","0","","");
INSERT INTO customer VALUES("150","WILFREDO","NIEVES","","","","0","","");
INSERT INTO customer VALUES("151","BRENDA","MIRAFUENTES","","","","0","","");
INSERT INTO customer VALUES("152","MARISA","DOMINGUEZ","0000","","","0","","");
INSERT INTO customer VALUES("153","ANTONIO","ANTIPUESTO","","","","0","","");
INSERT INTO customer VALUES("154","ROGACIA","","","","","0","","");
INSERT INTO customer VALUES("155","BOYETH","CAMIGUING","","","","0","","");
INSERT INTO customer VALUES("156","JOCELYN","CAPARIDA","","","","0","","");
INSERT INTO customer VALUES("157","LIZA","SUERTE","","","","0","","");
INSERT INTO customer VALUES("158","ADINE","PANSEN","","","","0","","");
INSERT INTO customer VALUES("159","EDWIN","REGIS","","","","0","","");
INSERT INTO customer VALUES("160","ARLYN","SOLATORIO","","","","0","","");
INSERT INTO customer VALUES("161","CUBAR","","","","","0","","");
INSERT INTO customer VALUES("162","JONA","BURGOS","","","","0","","");
INSERT INTO customer VALUES("163","VICKY","DAYUPAY","","","","0","","");
INSERT INTO customer VALUES("164","RONALD","ALMORADOS","","","","0","","");
INSERT INTO customer VALUES("165","LINIE","ABELLON","","","","0","","");
INSERT INTO customer VALUES("166","JOSEPHINE","","","","","0","","");
INSERT INTO customer VALUES("167","ELVIE","","","","","0","","");
INSERT INTO customer VALUES("168","ADELA","","","","","0","","");
INSERT INTO customer VALUES("169","GERALDINE","ENTOMA","","","","0","","");
INSERT INTO customer VALUES("170","TONIA","SARSONA","","","","0","","");
INSERT INTO customer VALUES("171","MEMEN","SARSONA","","","","0","","");
INSERT INTO customer VALUES("172","LILY","HARABAY","","","","0","","");
INSERT INTO customer VALUES("173","EFREN","","","","","0","","");
INSERT INTO customer VALUES("174","ROSSEL JANE","CAMPILLO","","","","0","","");
INSERT INTO customer VALUES("175","ROSALIE","LOPEZ","","","","0","","");
INSERT INTO customer VALUES("176","MAY MAY","","","","","0","","");
INSERT INTO customer VALUES("177","ANNA","SUARIO","","","","0","","");
INSERT INTO customer VALUES("178","NARCISA","DIEZ","","","","0","","");
INSERT INTO customer VALUES("179","LOLITA","ABELLA","","","","0","","");
INSERT INTO customer VALUES("180","HERMES","REDOBLE","","","","0","","");
INSERT INTO customer VALUES("181","AMALIA","ESIGUERA","","","","0","","");



CREATE TABLE `database_download` (
  `REC_NO` int(11) NOT NULL AUTO_INCREMENT,
  `DOWNLOAD_DATE` varchar(20) NOT NULL,
  `DOWNLOAD_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`REC_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

INSERT INTO database_download VALUES("38","2021-05-22 | 11:01","smpcpos_backup_2021-05-22.sql");
INSERT INTO database_download VALUES("39","2021-05-24 | 10:17","smpcpos_backup_2021-05-24.sql");
INSERT INTO database_download VALUES("40","2021-05-24 | 11:30","smpcpos_backup_2021-05-24.sql");
INSERT INTO database_download VALUES("41","2021-05-24 | 17:03","smpcpos_backup_2021-05-24.sql");
INSERT INTO database_download VALUES("42","2021-05-27 | 10:27","smpcpos_backup_2021-05-27.sql");
INSERT INTO database_download VALUES("43","2021-05-27 | 16:03","smpcpos_backup_2021-05-27.sql");
INSERT INTO database_download VALUES("44","2021-05-27 | 16:13","smpcpos_backup_2021-05-27.sql");
INSERT INTO database_download VALUES("45","2021-06-01 | 15:38","smpcpos_backup_2021-06-01.sql");
INSERT INTO database_download VALUES("46","2021-06-02 | 16:17","smpcpos_backup_2021-06-02.sql");
INSERT INTO database_download VALUES("47","2021-06-05 | 09:13","smpcpos_backup_2021-06-05.sql");
INSERT INTO database_download VALUES("48","2021-06-05 | 09:14","smpcpos_backup_2021-06-05.sql");
INSERT INTO database_download VALUES("49","2021-06-05 | 09:16","smpcpos_backup_2021-06-05.sql");
INSERT INTO database_download VALUES("50","2021-06-05 | 09:19","smpcpos_backup_2021-06-05.sql");
INSERT INTO database_download VALUES("51","2021-06-05 | 10:48","smpcpos_backup_2021-06-05.sql");
INSERT INTO database_download VALUES("52","2021-06-11 | 11:19","smpcpos_backup_2021-06-11.sql");
INSERT INTO database_download VALUES("53","2021-06-11 | 14:09","smpcpos_backup_2021-06-11.sql");
INSERT INTO database_download VALUES("54","2021-06-11 | 14:09","smpcpos_backup_2021-06-11.sql");
INSERT INTO database_download VALUES("55","2021-06-11 | 16:21","smpcpos_backup_2021-06-11.sql");



CREATE TABLE `day` (
  `NAME` varchar(10) NOT NULL,
  `CHECKED` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO day VALUES("IN","1");
INSERT INTO day VALUES("OUT","0");



CREATE TABLE `delivery` (
  `rec_no` int(11) NOT NULL AUTO_INCREMENT,
  `DELIVERY_DATE` date NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `QTY` double NOT NULL,
  `PRICE` varchar(15) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `SALES` double NOT NULL,
  `RETURNED` double NOT NULL,
  `STAT` int(10) NOT NULL,
  PRIMARY KEY (`rec_no`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=latin1;

INSERT INTO delivery VALUES("101","2021-05-03","09400307","Red Horse 1000ml","36","525","OUT FOR DELIVERY","36","0","1");
INSERT INTO delivery VALUES("102","2021-05-03","09371007","Pilsen Litro 1000ml","15","535","COMPLETED","1","14","1");
INSERT INTO delivery VALUES("103","2021-05-03","09410307","Red Horse 500ml","4","520","COMPLETED","1","3","1");
INSERT INTO delivery VALUES("104","2021-05-03","09281407","All Litro 1 Liter","20","334","COMPLETED","18","2","1");
INSERT INTO delivery VALUES("105","2021-05-03","09292407","All 1.5  1.5 Liter","3","655","COMPLETED","1","2","1");
INSERT INTO delivery VALUES("106","2021-05-03","09235107","All 8oz 8oz","50","154","COMPLETED","46","4","1");
INSERT INTO delivery VALUES("107","2021-05-03","09342507","All Swakto swakto","15","106","COMPLETED","3","12","1");
INSERT INTO delivery VALUES("108","2021-05-03","09330307","All Cobra yellow","4","280","OUT FOR DELIVERY","4","0","1");
INSERT INTO delivery VALUES("109","2021-05-03","09435807","Vino Kulafu 700ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("110","2021-05-03","09454307","Vino Kulafu 350ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("111","2021-05-03","09483707","Emperador Brandy 700ML","1","1315","COMPLETED","0","1","1");
INSERT INTO delivery VALUES("112","2021-05-03","09462707","Primera Light 750ML","1","1100","COMPLETED","0","1","1");
INSERT INTO delivery VALUES("113","2021-05-05","09400307","Red Horse 1000ml","3","525","OUT FOR DELIVERY","3","0","1");
INSERT INTO delivery VALUES("114","2021-05-05","09371007","Pilsen Litro 1000ml","24","535","COMPLETED","6","18","1");
INSERT INTO delivery VALUES("115","2021-05-05","09410307","Red Horse 500ml","12","520","COMPLETED","10","2","1");
INSERT INTO delivery VALUES("116","2021-05-05","09281407","All Litro 1 Liter","42","334","COMPLETED","38.5","3.5","1");
INSERT INTO delivery VALUES("117","2021-05-05","09292407","All 1.5  1.5 Liter","2","655","COMPLETED","0","2","1");
INSERT INTO delivery VALUES("118","2021-05-05","09235107","All 8oz 8oz","41","154","COMPLETED","33.5","7.5","1");
INSERT INTO delivery VALUES("119","2021-05-05","09342507","All Swakto swakto","15","106","COMPLETED","6","9","1");
INSERT INTO delivery VALUES("120","2021-05-05","09330307","All Cobra yellow","7","280","COMPLETED","4","3","1");
INSERT INTO delivery VALUES("121","2021-05-05","09435807","Vino Kulafu 700ML","6","840","OUT FOR DELIVERY","6","0","1");
INSERT INTO delivery VALUES("122","2021-05-05","09454307","Vino Kulafu 350ML","3","840","OUT FOR DELIVERY","3","0","1");
INSERT INTO delivery VALUES("123","2021-05-05","09350607","All Minute Maid Apple","4","85","COMPLETED","1","3","1");
INSERT INTO delivery VALUES("124","2021-05-05","09483707","Emperador Brandy 700ML","1","1315","OUT FOR DELIVERY","1","0","1");
INSERT INTO delivery VALUES("125","2021-05-07","09462707","Primera Light 750ML","1","1100","COMPLETED","0","1","1");
INSERT INTO delivery VALUES("126","2021-05-07","09400307","Red Horse 1000ml","39","525","COMPLETED","37","2","1");
INSERT INTO delivery VALUES("127","2021-05-07","09371007","Pilsen Litro 1000ml","3","535","COMPLETED","0","3","1");
INSERT INTO delivery VALUES("128","2021-05-07","09410307","Red Horse 500ml","6","520","OUT FOR DELIVERY","6","0","1");
INSERT INTO delivery VALUES("129","2021-05-07","09281407","All Litro 1 Liter","24","334","COMPLETED","12","12","1");
INSERT INTO delivery VALUES("130","2021-05-07","09292407","All 1.5  1.5 Liter","1","655","OUT FOR DELIVERY","1","0","1");
INSERT INTO delivery VALUES("131","2021-05-07","09235107","All 8oz 8oz","30","154","COMPLETED","18","12","1");
INSERT INTO delivery VALUES("132","2021-05-07","09342507","All Swakto swakto","15","106","COMPLETED","4","11","1");
INSERT INTO delivery VALUES("133","2021-05-07","09330307","All Cobra yellow","15","280","COMPLETED","8","7","1");
INSERT INTO delivery VALUES("134","2021-05-07","09483707","Emperador Brandy 700ML","1","1315","COMPLETED","0","1","1");
INSERT INTO delivery VALUES("135","2021-05-07","09415107","Red Horse Stallion","2","780","COMPLETED","0","2","1");
INSERT INTO delivery VALUES("136","2021-05-08","09400307","Red Horse 1000ml","31","525","COMPLETED","27","4","1");
INSERT INTO delivery VALUES("137","2021-05-08","09371007","Pilsen Litro 1000ml","17","535","COMPLETED","10","7","1");
INSERT INTO delivery VALUES("138","2021-05-08","09281407","All Litro 1 Liter","24","334","COMPLETED","23.5","0.5","1");
INSERT INTO delivery VALUES("139","2021-05-08","09235107","All 8oz 8oz","36","154","COMPLETED","28","8","1");
INSERT INTO delivery VALUES("140","2021-05-08","09342507","All Swakto swakto","15","106","COMPLETED","0","15","1");
INSERT INTO delivery VALUES("141","2021-05-08","09330307","All Cobra yellow","6","280","OUT FOR DELIVERY","6","0","1");
INSERT INTO delivery VALUES("142","2021-05-08","09435807","Vino Kulafu 700ML","4","840","OUT FOR DELIVERY","4","0","1");
INSERT INTO delivery VALUES("143","2021-05-08","09454307","Vino Kulafu 350ML","3","840","COMPLETED","2","1","1");
INSERT INTO delivery VALUES("144","2021-05-08","09350607","All Minute Maid Apple","5","85","OUT FOR DELIVERY","5","0","1");
INSERT INTO delivery VALUES("145","2021-05-08","09415107","Red Horse Stallion","6","780","COMPLETED","2","4","1");
INSERT INTO delivery VALUES("147","2021-05-13","09400307","Red Horse 1000ml","36","525","COMPLETED","28","8","1");
INSERT INTO delivery VALUES("148","2021-05-13","09410307","Red Horse 500ml","8","525","COMPLETED","5","3","1");
INSERT INTO delivery VALUES("149","2021-05-13","09281407","All Litro 1 Liter","28","334","COMPLETED","25","3","1");
INSERT INTO delivery VALUES("150","2021-05-13","09235107","All 8oz 8oz","36","154","COMPLETED","35.5","0.5","1");
INSERT INTO delivery VALUES("151","2021-05-13","09342507","All Swakto swakto","15","106","COMPLETED","4","11","1");
INSERT INTO delivery VALUES("152","2021-05-13","09330307","All Cobra yellow","9","280","COMPLETED","6.5","2.5","1");
INSERT INTO delivery VALUES("153","2021-05-13","09435807","Vino Kulafu 700ML","4","840","OUT FOR DELIVERY","4","0","1");
INSERT INTO delivery VALUES("154","2021-05-13","09454307","Vino Kulafu 350ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("155","2021-05-14","09400307","Red Horse 1000ml","29","535","COMPLETED","28","1","1");
INSERT INTO delivery VALUES("156","2021-05-14","09371007","Pilsen Litro 1000ml","9","535","COMPLETED","5","4","1");
INSERT INTO delivery VALUES("157","2021-05-14","09410307","Red Horse 500ml","3","525","OUT FOR DELIVERY","3","0","1");
INSERT INTO delivery VALUES("158","2021-05-14","09281407","All Litro 1 Liter","28","334","COMPLETED","17","11","1");
INSERT INTO delivery VALUES("159","2021-05-14","09292407","All 1.5  1.5 Liter","2","655","COMPLETED","1","1","1");
INSERT INTO delivery VALUES("160","2021-05-14","09235107","All 8oz 8oz","39","154","COMPLETED","34","5","1");
INSERT INTO delivery VALUES("161","2021-05-14","09342507","All Swakto swakto","15","106","COMPLETED","2","13","1");
INSERT INTO delivery VALUES("162","2021-05-14","09330307","All Cobra yellow","6","280","COMPLETED","4","2","1");
INSERT INTO delivery VALUES("163","2021-05-14","09435807","Vino Kulafu 700ML","2","840","COMPLETED","1","1","1");
INSERT INTO delivery VALUES("164","2021-05-14","09454307","Vino Kulafu 350ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("165","2021-05-14","09483707","Emperador Brandy 700ML","1","1315","OUT FOR DELIVERY","1","0","1");
INSERT INTO delivery VALUES("166","2021-05-15","09400307","Red Horse 1000ml","40","535","COMPLETED","18","22","1");
INSERT INTO delivery VALUES("167","2021-05-15","09371007","Pilsen Litro 1000ml","11","535","COMPLETED","3","8","1");
INSERT INTO delivery VALUES("168","2021-05-15","09410307","Red Horse 500ml","5","525","OUT FOR DELIVERY","5","0","1");
INSERT INTO delivery VALUES("169","2021-05-15","09281407","All Litro 1 Liter","28","334","COMPLETED","8.5","19.5","1");
INSERT INTO delivery VALUES("170","2021-05-15","09235107","All 8oz 8oz","33","154","COMPLETED","12","21","1");
INSERT INTO delivery VALUES("171","2021-05-15","09342507","All Swakto swakto","10","106","COMPLETED","7","3","1");
INSERT INTO delivery VALUES("172","2021-05-15","09330307","All Cobra yellow","3","280","OUT FOR DELIVERY","3","0","1");
INSERT INTO delivery VALUES("173","2021-05-15","09435807","Vino Kulafu 700ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("174","2021-05-15","09454307","Vino Kulafu 350ML","2","840","COMPLETED","1","1","1");
INSERT INTO delivery VALUES("176","2021-05-15","09234308","Primera Light 750ML","6","92","COMPLETED","4","2","1");
INSERT INTO delivery VALUES("177","2021-05-18","09400307","Red Horse 1000ml","39","535","COMPLETED","28","11","1");
INSERT INTO delivery VALUES("178","2021-05-18","09371007","Pilsen Litro 1000ml","6","535","COMPLETED","1","5","1");
INSERT INTO delivery VALUES("179","2021-05-18","09410307","Red Horse 500ml","6","525","COMPLETED","3","3","1");
INSERT INTO delivery VALUES("180","2021-05-18","09281407","All Litro 1 Liter","24","334","COMPLETED","19","5","1");
INSERT INTO delivery VALUES("181","2021-05-18","09292407","All 1.5  1.5 Liter","2","655","COMPLETED","0","2","1");
INSERT INTO delivery VALUES("182","2021-05-18","09235107","All 8oz 8oz","39","154","OUT FOR DELIVERY","39","0","1");
INSERT INTO delivery VALUES("183","2021-05-18","09342507","All Swakto swakto","10","106","OUT FOR DELIVERY","10","0","1");
INSERT INTO delivery VALUES("184","2021-05-18","09330307","All Cobra yellow","6","280","COMPLETED","1","5","1");
INSERT INTO delivery VALUES("185","2021-05-18","09435807","Vino Kulafu 700ML","4","840","OUT FOR DELIVERY","4","0","1");
INSERT INTO delivery VALUES("186","2021-05-18","09454307","Vino Kulafu 350ML","4","840","COMPLETED","0","4","1");
INSERT INTO delivery VALUES("187","2021-05-18","09350607","All Minute Maid Apple","3","85","COMPLETED","2","1","1");
INSERT INTO delivery VALUES("188","2021-05-18","09415107","Red Horse Stallion","3","780","COMPLETED","1","2","1");
INSERT INTO delivery VALUES("189","2021-05-21","09400307","Red Horse 1000ml","32","535","COMPLETED","22","10","1");
INSERT INTO delivery VALUES("190","2021-05-21","09371007","Pilsen Litro 1000ml","9","535","COMPLETED","8","1","1");
INSERT INTO delivery VALUES("191","2021-05-21","09410307","Red Horse 500ml","4","525","OUT FOR DELIVERY","4","0","1");
INSERT INTO delivery VALUES("192","2021-05-21","09281407","All Litro 1 Liter","28","334","OUT FOR DELIVERY","28","0","1");
INSERT INTO delivery VALUES("193","2021-05-21","09235107","All 8oz 8oz","33","154","OUT FOR DELIVERY","33","0","1");
INSERT INTO delivery VALUES("194","2021-05-21","09342507","All Swakto swakto","10","106","OUT FOR DELIVERY","10","0","1");
INSERT INTO delivery VALUES("195","2021-05-21","09330307","All Cobra yellow","9","280","COMPLETED","7","2","1");
INSERT INTO delivery VALUES("196","2021-05-21","09435807","Vino Kulafu 700ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("197","2021-05-21","09454307","Vino Kulafu 350ML","3","840","OUT FOR DELIVERY","3","0","1");
INSERT INTO delivery VALUES("198","2021-05-21","09483707","Emperador Brandy 700ML","1","1315","OUT FOR DELIVERY","1","0","1");
INSERT INTO delivery VALUES("199","2021-05-22","09400307","Red Horse 1000ml","29","535","OUT FOR DELIVERY","29","0","1");
INSERT INTO delivery VALUES("200","2021-05-22","09371007","Pilsen Litro 1000ml","9","535","COMPLETED","4","5","1");
INSERT INTO delivery VALUES("201","2021-05-22","09281407","All Litro 1 Liter","24","334","COMPLETED","14","10","1");
INSERT INTO delivery VALUES("202","2021-05-22","09235107","All 8oz 8oz","28","154","COMPLETED","16","12","1");
INSERT INTO delivery VALUES("203","2021-05-22","09342507","All Swakto swakto","12","106","OUT FOR DELIVERY","12","0","1");
INSERT INTO delivery VALUES("204","2021-05-22","09330307","All Cobra yellow","6","280","OUT FOR DELIVERY","6","0","1");
INSERT INTO delivery VALUES("205","2021-05-22","09435807","Vino Kulafu 700ML","2","840","COMPLETED","0","2","1");
INSERT INTO delivery VALUES("206","2021-05-22","09454307","Vino Kulafu 350ML","2","840","COMPLETED","1","1","1");
INSERT INTO delivery VALUES("207","2021-05-24","09400307","Red Horse 1000ml","44","535","COMPLETED","33","11","1");
INSERT INTO delivery VALUES("208","2021-05-24","09371007","Pilsen Litro 1000ml","7","535","COMPLETED","0","7","1");
INSERT INTO delivery VALUES("209","2021-05-24","09281407","All Litro 1 Liter","20","334","COMPLETED","15","5","1");
INSERT INTO delivery VALUES("210","2021-05-24","09235107","All 8oz 8oz","34","154","COMPLETED","18","16","1");
INSERT INTO delivery VALUES("211","2021-05-24","09342507","All Swakto swakto","6","106","COMPLETED","2","4","1");
INSERT INTO delivery VALUES("212","2021-05-24","09435807","Vino Kulafu 700ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("213","2021-05-24","09454307","Vino Kulafu 350ML","2","840","COMPLETED","0","2","1");
INSERT INTO delivery VALUES("214","2021-05-24","09292407","All 1.5  1.5 Liter","1","655","OUT FOR DELIVERY","1","0","1");
INSERT INTO delivery VALUES("215","2021-05-26","09400307","Red Horse 1000ml","42","535","COMPLETED","21","21","1");
INSERT INTO delivery VALUES("216","2021-05-26","09410307","Red Horse 500ml","9","525","COMPLETED","5","4","1");
INSERT INTO delivery VALUES("217","2021-05-26","09281407","All Litro 1 Liter","30","334","COMPLETED","28.5","1.5","1");
INSERT INTO delivery VALUES("218","2021-05-26","09292407","All 1.5  1.5 Liter","2","655","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("219","2021-05-26","09235107","All 8oz 8oz","48","154","COMPLETED","18.5","29.5","1");
INSERT INTO delivery VALUES("220","2021-05-26","09342507","All Swakto swakto","5","106","OUT FOR DELIVERY","5","0","1");
INSERT INTO delivery VALUES("221","2021-05-26","09330307","All Cobra yellow","6","280","COMPLETED","5","1","1");
INSERT INTO delivery VALUES("222","2021-05-26","09454307","Vino Kulafu 350ML","4","840","COMPLETED","1","3","1");
INSERT INTO delivery VALUES("223","2021-05-26","09234308","Primera Light 750ML","6","92","COMPLETED","4","2","1");
INSERT INTO delivery VALUES("224","2021-05-29","09400307","Red Horse 1000ml","39","535","COMPLETED","26","13","1");
INSERT INTO delivery VALUES("225","2021-05-29","09410307","Red Horse 500ml","3","525","OUT FOR DELIVERY","3","0","1");
INSERT INTO delivery VALUES("226","2021-05-29","09281407","All Litro 1 Liter","28","334","COMPLETED","11.5","16.5","1");
INSERT INTO delivery VALUES("227","2021-05-29","09235107","All 8oz 8oz","39","154","COMPLETED","28.5","10.5","1");
INSERT INTO delivery VALUES("228","2021-05-29","09342507","All Swakto swakto","15","106","COMPLETED","14","1","1");
INSERT INTO delivery VALUES("229","2021-05-29","09330307","All Cobra yellow","6","280","OUT FOR DELIVERY","6","0","1");
INSERT INTO delivery VALUES("230","2021-05-29","09454307","Vino Kulafu 350ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("231","2021-05-29","09234308","Primera Light 750ML","6","92","OUT FOR DELIVERY","6","0","1");
INSERT INTO delivery VALUES("232","2021-06-01","09415107","Red Horse Stallion","2","780","COMPLETED","0","2","1");
INSERT INTO delivery VALUES("233","2021-06-01","09400307","Red Horse 1000ml","49","535","COMPLETED","46","3","1");
INSERT INTO delivery VALUES("234","2021-06-01","09281407","All Litro 1 Liter","24","334","COMPLETED","15.5","8.5","1");
INSERT INTO delivery VALUES("235","2021-06-01","09235107","All 8oz 8oz","40","154","COMPLETED","19","21","1");
INSERT INTO delivery VALUES("236","2021-06-01","09342507","All Swakto swakto","10","106","COMPLETED","9","1","1");
INSERT INTO delivery VALUES("237","2021-06-01","09330307","All Cobra yellow","3","280","COMPLETED","2.5","0.5","1");
INSERT INTO delivery VALUES("238","2021-06-01","09435807","Vino Kulafu 700ML","1","840","OUT FOR DELIVERY","1","0","1");
INSERT INTO delivery VALUES("239","2021-06-01","09454307","Vino Kulafu 350ML","1","840","OUT FOR DELIVERY","1","0","1");
INSERT INTO delivery VALUES("240","2021-06-02","09400307","Red Horse 1000ml","48","535","COMPLETED","44","4","1");
INSERT INTO delivery VALUES("241","2021-06-02","09281407","All Litro 1 Liter","28","334","COMPLETED","27.5","0.5","1");
INSERT INTO delivery VALUES("242","2021-06-02","09235107","All 8oz 8oz","42","154","COMPLETED","18","24","1");
INSERT INTO delivery VALUES("243","2021-06-02","09342507","All Swakto swakto","15","106","COMPLETED","4","11","1");
INSERT INTO delivery VALUES("244","2021-06-02","09435807","Vino Kulafu 700ML","6","840","COMPLETED","5","1","1");
INSERT INTO delivery VALUES("245","2021-06-02","09454307","Vino Kulafu 350ML","2","840","COMPLETED","0","2","1");
INSERT INTO delivery VALUES("246","2021-06-02","09350607","All Minute Maid Apple","4","85","OUT FOR DELIVERY","4","0","1");
INSERT INTO delivery VALUES("247","2021-06-04","09400307","Red Horse 1000ml","28","530","OUT FOR DELIVERY","28","0","1");
INSERT INTO delivery VALUES("248","2021-06-04","09410307","Red Horse 500ml","8","525","COMPLETED","6","2","1");
INSERT INTO delivery VALUES("249","2021-06-04","09281407","All Litro 1 Liter","24","334","COMPLETED","20.5","3.5","1");
INSERT INTO delivery VALUES("250","2021-06-04","09235107","All 8oz 8oz","28","154","COMPLETED","17","11","1");
INSERT INTO delivery VALUES("251","2021-06-04","09342507","All Swakto swakto","15","106","COMPLETED","2","13","1");
INSERT INTO delivery VALUES("252","2021-06-04","09330307","All Cobra yellow","8","280","COMPLETED","4","4","1");
INSERT INTO delivery VALUES("253","2021-06-04","09435807","Vino Kulafu 700ML","3","840","COMPLETED","1","2","1");
INSERT INTO delivery VALUES("254","2021-06-04","09454307","Vino Kulafu 350ML","1","840","OUT FOR DELIVERY","1","0","1");
INSERT INTO delivery VALUES("255","2021-06-05","09400307","Red Horse 1000ml","31","530","COMPLETED","17","14","1");
INSERT INTO delivery VALUES("256","2021-06-05","09371007","Pilsen Litro 1000ml","8","535","OUT FOR DELIVERY","8","0","1");
INSERT INTO delivery VALUES("258","2021-06-05","09281407","All Litro 1 Liter","24","334","COMPLETED","16","8","1");
INSERT INTO delivery VALUES("259","2021-06-05","09342507","All Swakto swakto","13","106","COMPLETED","11","2","1");
INSERT INTO delivery VALUES("260","2021-06-05","09330307","All Cobra yellow","4","280","OUT FOR DELIVERY","4","0","1");
INSERT INTO delivery VALUES("261","2021-06-05","09435807","Vino Kulafu 700ML","3","840","OUT FOR DELIVERY","3","0","1");
INSERT INTO delivery VALUES("262","2021-06-05","09454307","Vino Kulafu 350ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("263","2021-06-05","09410307","Red Horse 500ml","6","525","COMPLETED","3","3","1");
INSERT INTO delivery VALUES("264","2021-06-05","09235107","All 8oz 8oz","28","154","COMPLETED","27","1","1");
INSERT INTO delivery VALUES("266","2021-06-08","09400307","Red Horse 1000ml","38","530","COMPLETED","33","5","1");
INSERT INTO delivery VALUES("267","2021-06-08","09371007","Pilsen Litro 1000ml","6","535","COMPLETED","1","5","1");
INSERT INTO delivery VALUES("268","2021-06-08","09410307","Red Horse 500ml","2","525","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("269","2021-06-08","09281407","All Litro 1 Liter","16","334","COMPLETED","10","6","1");
INSERT INTO delivery VALUES("271","2021-06-08","09292407","All 1.5  1.5 Liter","2","655","COMPLETED","1.5","0.5","1");
INSERT INTO delivery VALUES("272","2021-06-08","09235107","All 8oz 8oz","42","154","COMPLETED","22","20","1");
INSERT INTO delivery VALUES("273","2021-06-08","09342507","All Swakto swakto","10","106","COMPLETED","2","8","1");
INSERT INTO delivery VALUES("274","2021-06-08","09330307","All Cobra yellow","9","280","COMPLETED","3","6","1");
INSERT INTO delivery VALUES("275","2021-06-08","09435807","Vino Kulafu 700ML","4","840","COMPLETED","3","1","1");
INSERT INTO delivery VALUES("276","2021-06-08","09454307","Vino Kulafu 350ML","4","840","COMPLETED","2","2","1");



CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NUMBER` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `MIDDLE_NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `GENDER` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` varchar(15) NOT NULL,
  `JOB_ID` int(20) NOT NULL,
  `JOB_TITLE` varchar(100) NOT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(20) NOT NULL,
  `ATTENDANCE` varchar(10) NOT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO employee VALUES("1","1234567890","Aljohn","Llanos","Amora","Candaguit, Sibonga, Cebu","Male","llanos.aj96@gmail.com","09616212544","3","","2020-11-09","113","");
INSERT INTO employee VALUES("5","2147483647","Maria Salome","Dakay","","Guimbangco-an, Sibonga, Cebu","Female","n/a","09205517952","4","","2021-04-24","168","");
INSERT INTO employee VALUES("6","0","ALMA","SANGILA","","","Female","N/A","N/A","2","","2021-05-17","172","");



CREATE TABLE `inventory_update` (
  `rec_no` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_CODE` varchar(100) NOT NULL,
  `UPDATED_DATE` varchar(50) NOT NULL,
  `IN_STOCK` double NOT NULL,
  PRIMARY KEY (`rec_no`)
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=latin1;

INSERT INTO inventory_update VALUES("435","09235107","2021-05-03","0");
INSERT INTO inventory_update VALUES("436","09281407","2021-05-03","0");
INSERT INTO inventory_update VALUES("437","09292407","2021-05-03","0");
INSERT INTO inventory_update VALUES("438","09330307","2021-05-03","0");
INSERT INTO inventory_update VALUES("439","09342507","2021-05-03","0");
INSERT INTO inventory_update VALUES("440","09350607","2021-05-03","0");
INSERT INTO inventory_update VALUES("441","09371007","2021-05-03","0");
INSERT INTO inventory_update VALUES("442","09391607","2021-05-03","0");
INSERT INTO inventory_update VALUES("443","09400307","2021-05-03","0");
INSERT INTO inventory_update VALUES("444","09410307","2021-05-03","0");
INSERT INTO inventory_update VALUES("445","09415107","2021-05-03","0");
INSERT INTO inventory_update VALUES("446","09435807","2021-05-03","0");
INSERT INTO inventory_update VALUES("447","09454307","2021-05-03","0");
INSERT INTO inventory_update VALUES("448","09462707","2021-05-03","0");
INSERT INTO inventory_update VALUES("449","09483707","2021-05-03","0");
INSERT INTO inventory_update VALUES("450","09540907","2021-05-03","0");
INSERT INTO inventory_update VALUES("451","09592107","2021-05-03","0");
INSERT INTO inventory_update VALUES("452","10073607","2021-05-03","0");
INSERT INTO inventory_update VALUES("453","10083007","2021-05-03","0");
INSERT INTO inventory_update VALUES("454","10100607","2021-05-03","0");
INSERT INTO inventory_update VALUES("455","10452307","2021-05-05","0");
INSERT INTO inventory_update VALUES("456","10465007","2021-05-05","0");
INSERT INTO inventory_update VALUES("457","10524807","2021-05-07","0");
INSERT INTO inventory_update VALUES("458","10542207","2021-05-07","0");
INSERT INTO inventory_update VALUES("459","10582607","2021-05-07","0");
INSERT INTO inventory_update VALUES("460","09400307","2021-05-05","0");
INSERT INTO inventory_update VALUES("461","09371007","2021-05-05","27");
INSERT INTO inventory_update VALUES("462","09400307","2021-05-06","44");
INSERT INTO inventory_update VALUES("463","09410307","2021-05-06","10");
INSERT INTO inventory_update VALUES("464","13160707","2021-05-06","0");
INSERT INTO inventory_update VALUES("465","13175207","2021-05-06","0");
INSERT INTO inventory_update VALUES("466","09281407","2021-05-06","60");
INSERT INTO inventory_update VALUES("467","09235107","2021-05-06","65");
INSERT INTO inventory_update VALUES("468","09330307","2021-05-06","15");
INSERT INTO inventory_update VALUES("469","09234308","2021-05-03","0");
INSERT INTO inventory_update VALUES("470","09454307","2021-05-07","30");
INSERT INTO inventory_update VALUES("471","09435807","2021-05-07","20");
INSERT INTO inventory_update VALUES("472","08151910","2021-05-10","0");
INSERT INTO inventory_update VALUES("473","09235107","2021-05-12","100");
INSERT INTO inventory_update VALUES("474","09330307","2021-05-12","16");
INSERT INTO inventory_update VALUES("475","09281407","2021-05-12","60");
INSERT INTO inventory_update VALUES("476","09400307","2021-05-12","130");
INSERT INTO inventory_update VALUES("477","09410307","2021-05-12","15");
INSERT INTO inventory_update VALUES("478","13425514","2021-05-03","0");
INSERT INTO inventory_update VALUES("479","09281407","2021-05-15","42");
INSERT INTO inventory_update VALUES("480","09235107","2021-05-15","70");
INSERT INTO inventory_update VALUES("481","09330307","2021-05-15","12");
INSERT INTO inventory_update VALUES("482","09400307","2021-05-15","30");
INSERT INTO inventory_update VALUES("483","09400307","2021-05-17","62");
INSERT INTO inventory_update VALUES("484","09400307","2021-05-20","29");
INSERT INTO inventory_update VALUES("485","09281407","2021-05-22","58");
INSERT INTO inventory_update VALUES("486","09235107","2021-05-22","100");
INSERT INTO inventory_update VALUES("487","09330307","2021-05-22","9");
INSERT INTO inventory_update VALUES("488","09400307","2021-05-22","42");
INSERT INTO inventory_update VALUES("489","09234308","2021-05-03","36");
INSERT INTO inventory_update VALUES("490","09400307","2021-05-26","140");
INSERT INTO inventory_update VALUES("491","09410307","2021-05-26","9");
INSERT INTO inventory_update VALUES("492","10100607","2021-05-14","300");
INSERT INTO inventory_update VALUES("494","09400307","2021-05-05","29");
INSERT INTO inventory_update VALUES("495","09281407","2021-05-28","58");
INSERT INTO inventory_update VALUES("496","09235107","2021-05-28","60");
INSERT INTO inventory_update VALUES("497","09342507","2021-05-28","40");
INSERT INTO inventory_update VALUES("498","09350607","2021-05-28","20");
INSERT INTO inventory_update VALUES("499","09235107","2021-06-05","0");
INSERT INTO inventory_update VALUES("500","09281407","2021-06-05","0");
INSERT INTO inventory_update VALUES("501","09292407","2021-06-05","0");
INSERT INTO inventory_update VALUES("502","09330307","2021-06-05","0");
INSERT INTO inventory_update VALUES("503","09342507","2021-06-05","0");
INSERT INTO inventory_update VALUES("504","09350607","2021-06-05","0");
INSERT INTO inventory_update VALUES("505","09371007","2021-06-05","0");
INSERT INTO inventory_update VALUES("506","09391607","2021-06-05","0");
INSERT INTO inventory_update VALUES("507","09400307","2021-06-05","0");
INSERT INTO inventory_update VALUES("508","09410307","2021-06-05","0");
INSERT INTO inventory_update VALUES("509","09415107","2021-06-05","0");
INSERT INTO inventory_update VALUES("510","09435807","2021-06-05","0");
INSERT INTO inventory_update VALUES("511","09454307","2021-06-05","0");
INSERT INTO inventory_update VALUES("512","09462707","2021-06-05","0");
INSERT INTO inventory_update VALUES("513","09483707","2021-06-05","0");
INSERT INTO inventory_update VALUES("514","09540907","2021-06-05","0");
INSERT INTO inventory_update VALUES("515","09592107","2021-06-05","0");
INSERT INTO inventory_update VALUES("516","10073607","2021-06-05","0");
INSERT INTO inventory_update VALUES("517","10083007","2021-06-05","0");
INSERT INTO inventory_update VALUES("518","10100607","2021-06-05","0");
INSERT INTO inventory_update VALUES("519","13160707","2021-06-05","0");
INSERT INTO inventory_update VALUES("520","13175207","2021-06-05","0");
INSERT INTO inventory_update VALUES("521","09234308","2021-06-05","0");
INSERT INTO inventory_update VALUES("522","13425514","2021-06-05","0");
INSERT INTO inventory_update VALUES("523","09435807","2021-06-01","50");
INSERT INTO inventory_update VALUES("524","09454307","2021-06-01","10");
INSERT INTO inventory_update VALUES("525","09400307","2021-06-02","41");
INSERT INTO inventory_update VALUES("526","09400307","2021-06-03","51");
INSERT INTO inventory_update VALUES("527","09371007","2021-06-03","15");
INSERT INTO inventory_update VALUES("528","09410307","2021-06-03","12");
INSERT INTO inventory_update VALUES("529","09235107","2021-06-03","87");
INSERT INTO inventory_update VALUES("530","09281407","2021-06-03","35");
INSERT INTO inventory_update VALUES("531","09330307","2021-06-03","20");
INSERT INTO inventory_update VALUES("532","09342507","2021-06-03","30");
INSERT INTO inventory_update VALUES("533","08125707","2021-05-03","0");
INSERT INTO inventory_update VALUES("534","08125707","2021-06-05","0");
INSERT INTO inventory_update VALUES("535","09400307","2021-06-07","103");
INSERT INTO inventory_update VALUES("536","09371007","2021-06-07","24");
INSERT INTO inventory_update VALUES("537","09410307","2021-06-07","30");
INSERT INTO inventory_update VALUES("538","09235107","2021-06-08","65");
INSERT INTO inventory_update VALUES("539","09330307","2021-06-08","8");
INSERT INTO inventory_update VALUES("540","09281407","2021-06-08","55");
INSERT INTO inventory_update VALUES("541","13160707","2021-05-06","1");
INSERT INTO inventory_update VALUES("542","13175207","2021-05-06","1");



CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO job VALUES("1","Manager");
INSERT INTO job VALUES("2","Cashier");
INSERT INTO job VALUES("3","IT Technician");
INSERT INTO job VALUES("4","Posting Clerk");



CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;

INSERT INTO location VALUES("111","Negros Occidental","Bacolod City");
INSERT INTO location VALUES("112","Negros Occidental","Bacolod City");
INSERT INTO location VALUES("113","Cebu","Sibonga");
INSERT INTO location VALUES("114","Negros Occidental","Himamaylan");
INSERT INTO location VALUES("115","Negros Oriental","Dumaguette City");
INSERT INTO location VALUES("116","Negros Occidental","Isabella");
INSERT INTO location VALUES("126","Negros Occidental","Binalbagan");
INSERT INTO location VALUES("130","Cebu","Bogo City");
INSERT INTO location VALUES("131","Negros Occidental","Himamaylan");
INSERT INTO location VALUES("132","Negros","Jupiter");
INSERT INTO location VALUES("133","Aincrad","Floor 91");
INSERT INTO location VALUES("134","negros","binalbagan");
INSERT INTO location VALUES("135","hehe","tehee");
INSERT INTO location VALUES("136","PLANET YEKOK","KOKEY");
INSERT INTO location VALUES("137","Camiguin","Catarman");
INSERT INTO location VALUES("138","Camiguin","Catarman");
INSERT INTO location VALUES("139","Negros Occidental","Binalbagan");
INSERT INTO location VALUES("140","Batangas","Lemery");
INSERT INTO location VALUES("141","Capiz","Panay");
INSERT INTO location VALUES("142","Camarines Norte","Labo");
INSERT INTO location VALUES("143","Camarines Norte","Labo");
INSERT INTO location VALUES("144","Camarines Norte","Labo");
INSERT INTO location VALUES("145","Camarines Norte","Labo");
INSERT INTO location VALUES("146","Capiz","Pilar");
INSERT INTO location VALUES("147","Negros Occidental","Moises Padilla");
INSERT INTO location VALUES("148","a","a");
INSERT INTO location VALUES("149","1","1");
INSERT INTO location VALUES("150","Negros Occidental","Himamaylan");
INSERT INTO location VALUES("151","Masbate","Mandaon");
INSERT INTO location VALUES("152","Aklanas","Madalagsasa");
INSERT INTO location VALUES("153","Batangas","Mabini");
INSERT INTO location VALUES("154","Bataan","Morong");
INSERT INTO location VALUES("155","Capiz","Pillar");
INSERT INTO location VALUES("156","Negros Occidental","Bacolod");
INSERT INTO location VALUES("157","Camarines Norte","Labo");
INSERT INTO location VALUES("158","Negros Occidental","Binalbagan");
INSERT INTO location VALUES("159","Cebu","Carcar");
INSERT INTO location VALUES("160","Cebu","Sibonga");
INSERT INTO location VALUES("161","Cebu","Carcar");
INSERT INTO location VALUES("162","Cebu","Carcar");
INSERT INTO location VALUES("163","Cebu","Argao");
INSERT INTO location VALUES("164","Cebu","Carcar");
INSERT INTO location VALUES("165","Cebu","Carcar");
INSERT INTO location VALUES("166","Cebu","Cebu City");
INSERT INTO location VALUES("167","Cebu","Argao");
INSERT INTO location VALUES("168","Cebu","Sibonga");
INSERT INTO location VALUES("169","Cebu","Carcar");
INSERT INTO location VALUES("170","Cebu","Sibonga");
INSERT INTO location VALUES("171","Cebu","Minglanilla");
INSERT INTO location VALUES("172","Cebu","Sibonga");



CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `LOCATION_ID` int(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `notes` (
  `stat` int(5) NOT NULL,
  `NOTES` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO notes VALUES("1","ANG 1.5 LITER SOFTDRINKS NGA GI BAYRAN SA SAN MIGUEL IS NAA SA MAY 3, 2021 NA SULOD NGA TRANSACTION INSTEAD OF APRIL.....

MAM JELIAN ANGKAT MAY 25, 2021 - RECORDED!

DIFF. 
RED HORSE LITRO 4
EMPERADOR NAAY 3 NA SOLD
BUT NO BEGINNING AND NO PURCHASE");



CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `CASEORBOTTLE` varchar(100) NOT NULL,
  `QTY_STOCK` double NOT NULL,
  `ON_HAND` double NOT NULL,
  `BALANCE` double NOT NULL,
  `OLD_PRICE` double NOT NULL,
  `OLD_TOTAL` double NOT NULL,
  `SOLD` double NOT NULL,
  `PRICE` double NOT NULL,
  `REGULAR_PRICE` int(50) NOT NULL,
  `CATEGORY_ID` int(15) NOT NULL,
  `VARIANT_ID` int(20) NOT NULL,
  `SUPPLIER_ID` int(15) NOT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL,
  `ENDED` varchar(10) NOT NULL,
  `DATE_STOCK_IN_MONTH` varchar(5) NOT NULL,
  `DATE_STOCK_IN_YEAR` varchar(5) NOT NULL,
  `DATE_STOCK_IN_DAY` int(10) NOT NULL,
  `CASH` double NOT NULL,
  `CREDIT` double NOT NULL,
  `ADDED_STOCKS` double NOT NULL,
  `DELIVERY_QTY` double NOT NULL,
  `DELIVERY_ID` int(10) NOT NULL,
  `REF_ID` int(20) NOT NULL,
  `DELIVERY_ENDED` varchar(20) NOT NULL,
  `DELIVERY_RETURNED` double NOT NULL,
  `CHECK_IT` int(5) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=467 DEFAULT CHARSET=latin1;

INSERT INTO product VALUES("411","09235107","All 8oz","All 8oz soft drinks","per case","565","88.5","170","154","4389","476.5","154","141","2","3","9","2021-05-03","YES","05","2021","3","451.5","25","0","0","227","1","NO","10.5","1");
INSERT INTO product VALUES("412","09281407","All Litro","All litro soft drinks","per case","377","82.5","99","334","8183","294.5","334","321","2","2","9","2021-05-03","YES","05","2021","3","286.5","8","0","0","226","1","NO","16.5","1");
INSERT INTO product VALUES("413","09292407","All 1.5 ","All 1.5 liter soft drinks","per case","13","3","13","0","0","10","655","645","2","1","9","2021-05-03","YES","05","2021","3","10","0","0","0","218","1","NO","2","2");
INSERT INTO product VALUES("414","09330307","All Cobra","All cobra drinks as yellow","per case","72","7.5","20","280","3500","64.5","280","267","2","23","9","2021-05-03","YES","05","2021","3","64.5","0","0","0","229","1","NO","1","2");
INSERT INTO product VALUES("415","09342507","All Swakto","All swakto soft drinks","per case","152","43","112","106","318","109","106","96","2","16","9","2021-05-03","YES","05","2021","3","104","5","0","0","228","1","NO","1","1");
INSERT INTO product VALUES("416","09350607","All Minute Maid","All minute maid drinks as apple flavor","per bottle","50","29","30","85","1190","21","85","72","2","19","9","2021-05-03","YES","05","2021","3","21","0","0","0","187","1","NO","1","1");
INSERT INTO product VALUES("417","09371007","Pilsen Litro","Pilsen litro","per case","54","0","27","535","0","54","535","504","5","13","9","2021-05-03","YES","05","2021","3","35","19","0","0","208","1","NO","7","1");
INSERT INTO product VALUES("418","09391607","Pale Pilsen","Pale pilsen small","per case","11","7","11","0","0","4","755","732","5","29","9","2021-05-03","YES","05","2021","3","4","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("419","09400307","Red Horse","Red horse litro","per case","553","119","47","535","59385","434","535","508","5","13","9","2021-05-03","YES","05","2021","3","354","80","0","0","224","1","NO","13","1");
INSERT INTO product VALUES("420","09410307","Red Horse","Red horse 500ml","per case","54","2","20","525","525","52","525","497","5","14","9","2021-05-03","YES","05","2021","3","52","0","0","0","225","1","NO","4","1");
INSERT INTO product VALUES("421","09415107","Red Horse","Red horse stallion","per case","7","4","7","0","0","3","780","751","5","35","4","2021-05-03","YES","05","2021","3","3","0","0","0","188","1","NO","2","2");
INSERT INTO product VALUES("422","09435807","Vino Kulafu","Vino kulafu 700ml","per box","20","3","11","840","0","28","840","740","10","33","8","2021-05-03","YES","05","2021","3","28","0","0","0","212","1","NO","2","2");
INSERT INTO product VALUES("423","09454307","Vino Kulafu","Vino kulafu 350ml","per box","30","12","5","840","0","23","840","764","10","32","8","2021-05-03","YES","05","2021","3","19","4","0","0","230","1","NO","3","1");
INSERT INTO product VALUES("424","09462707","Primera Light","Primera light 750ml","per box","2","1","2","0","0","1","1100","1034","10","34","8","2021-05-03","YES","05","2021","3","0","1","0","0","125","1","NO","1","1");
INSERT INTO product VALUES("425","09483707","Emperador Brandy","Empredor brandy 700ml","per box","3","0","3","0","0","3","1315","1272","10","33","8","2021-05-03","YES","05","2021","3","3","0","0","0","198","1","NO","1","2");
INSERT INTO product VALUES("426","09540907","Excellent","Excellent rice","per sack","51","15","51","0","0","36","2120","2020","15","42","10","2021-05-03","YES","05","2021","3","4","32","0","0","0","0","","0","1");
INSERT INTO product VALUES("427","09592107","Lion Ivory","Lion ivory 50kg","per sack","15","12","15","0","0","3","2200","2100","15","42","10","2021-05-03","YES","05","2021","3","0","3","0","0","0","0","","0","1");
INSERT INTO product VALUES("428","10073607","Lion Ivory","Lion ivory 25kg","per case","54","45","54","0","0","9","1130","1070","15","41","10","2021-05-03","YES","05","2021","3","3","6","0","0","0","0","","0","1");
INSERT INTO product VALUES("429","10083007","PEPC Gas","Pepc gas green","per bottle","108","65","108","0","0","43","25","15","16","43","12","2021-05-03","YES","05","2021","3","43","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("430","10100607","PEPC Gas","Pepc gas blue","per bottle","58","285","58","20","180","73","20","15","16","44","12","2021-05-03","YES","05","2021","3","73","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("436","13160707","San Mig","San mig light beer","per case","1","1","0.5","0","0","0.5","880","855","5","30","4","2021-05-06","YES","05","2021","6","0.5","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("437","13175207","San Mig","San mig flavored beer","per case","1","1","0.5","0","0","0.5","707","682","5","31","4","2021-05-06","YES","05","2021","6","0.5","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("438","09234308","Primera Light","Primera light per bottle","per bottle","36","8","6","92","0","34","92","90","10","34","8","2021-05-03","YES","05","2021","3","32","2","0","0","231","1","NO","2","2");
INSERT INTO product VALUES("440","13425514","Pilapil","PILAPIL 50KG","per sack","1","0","1","0","0","1","2020","1820","15","42","10","2021-05-03","YES","05","2021","3","0","1","0","0","0","0","","0","1");
INSERT INTO product VALUES("441","09235107","All 8oz","All 8oz soft drinks","per case","152","107.5","88.5","154","12397","133","154","141","2","3","9","2021-06-05","NO","06","2021","5","133","0","0","0","272","1","NO","20","1");
INSERT INTO product VALUES("442","09281407","All Litro","All litro soft drinks","per case","90","73.5","82.5","334","9519","99","334","321","2","2","9","2021-06-05","NO","06","2021","5","99","0","0","0","269","1","NO","6","2");
INSERT INTO product VALUES("443","09292407","All 1.5 ","All 1.5 liter soft drinks","per case","0","1.5","3","0","0","1.5","655","645","2","1","9","2021-06-05","NO","06","2021","5","1.5","0","0","0","271","1","NO","0.5","2");
INSERT INTO product VALUES("444","09330307","All Cobra","All cobra drinks as yellow","per case","28","21","7.5","280","4760","14.5","280","267","2","23","9","2021-06-05","NO","06","2021","5","14.5","0","0","0","274","1","NO","6","1");
INSERT INTO product VALUES("445","09342507","All Swakto","All swakto soft drinks","per case","30","43","43","106","3180","30","106","96","2","16","9","2021-06-05","NO","06","2021","5","30","0","0","0","273","1","NO","8","2");
INSERT INTO product VALUES("446","09350607","All Minute Maid","All minute maid drinks as apple flavor","per bottle","0","23","29","85","1190","6","85","72","2","19","9","2021-06-05","NO","06","2021","5","6","0","0","0","246","1","NO","0","1");
INSERT INTO product VALUES("447","09371007","Pilsen Litro","Pilsen litro","per case","39","28","0","535","2675","11","535","504","5","13","9","2021-06-05","NO","06","2021","5","11","0","0","0","267","1","NO","5","2");
INSERT INTO product VALUES("448","09391607","Pale Pilsen","Pale pilsen small","per case","0","7","7","0","0","0","755","732","5","29","9","2021-06-05","NO","06","2021","5","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("449","09400307","Red Horse","Red horse litro","per case","195","127","119","530","30210","187","530","508","5","13","9","2021-06-05","NO","06","2021","5","187","0","0","0","266","1","NO","5","2");
INSERT INTO product VALUES("450","09410307","Red Horse","Red horse 500ml","per case","42","33","2","525","2625","11","525","497","5","14","9","2021-06-05","NO","06","2021","5","11","0","0","0","268","1","NO","3","2");
INSERT INTO product VALUES("451","09415107","Red Horse","Red horse stallion","per case","0","4","4","0","0","0","780","751","5","35","4","2021-06-05","NO","06","2021","5","0","0","0","0","232","1","NO","2","0");
INSERT INTO product VALUES("452","09435807","Vino Kulafu","Vino kulafu 700ml","per box","50","40","3","840","2520","13","840","740","10","33","8","2021-06-05","NO","06","2021","5","13","0","0","0","275","1","NO","1","2");
INSERT INTO product VALUES("453","09454307","Vino Kulafu","Vino kulafu 350ml","per box","10","16","12","840","10080","6","840","764","10","32","8","2021-06-05","NO","06","2021","5","6","0","0","0","276","1","NO","2","2");
INSERT INTO product VALUES("454","09462707","Primera Light","Primera light 750ml","per box","0","1","1","0","0","0","1100","1034","10","34","8","2021-06-05","NO","06","2021","5","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("455","09483707","Emperador Brandy","Empredor brandy 700ml","per box","0","0","0","0","0","0","1315","1272","10","33","8","2021-06-05","NO","06","2021","5","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("456","09540907","Excellent","Excellent rice","per sack","0","5","15","0","0","10","2120","2020","15","42","10","2021-06-05","NO","06","2021","5","1","9","0","0","0","0","","0","1");
INSERT INTO product VALUES("457","09592107","Lion Ivory","Lion ivory 50kg","per sack","0","4","12","0","0","8","2200","2100","15","42","10","2021-06-05","NO","06","2021","5","2","6","0","0","0","0","","0","1");
INSERT INTO product VALUES("458","10073607","Lion Ivory","Lion ivory 25kg","per case","0","44","45","0","0","1","1130","1070","15","41","10","2021-06-05","NO","06","2021","5","0","1","0","0","0","0","","0","1");
INSERT INTO product VALUES("459","10083007","PEPC Gas","Pepc gas green","per bottle","0","54","65","0","0","11","25","15","16","43","12","2021-06-05","NO","06","2021","5","11","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("460","10100607","PEPC Gas","Pepc gas blue","per bottle","0","275","285","20","180","10","20","15","16","44","12","2021-06-05","NO","06","2021","5","10","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("461","13160707","San Mig","San mig light beer","per case","0","1","1","0","0","0","880","855","5","30","4","2021-06-05","NO","06","2021","5","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("462","13175207","San Mig","San mig flavored beer","per case","0","1","1","0","0","0","707","682","5","31","4","2021-06-05","NO","06","2021","5","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("463","09234308","Primera Light","Primera light per bottle","per bottle","0","6","8","92","0","2","92","90","10","34","8","2021-06-05","NO","06","2021","5","2","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("464","13425514","Pilapil","PILAPIL 50KG","per sack","0","0","0","0","0","0","2020","1820","15","42","10","2021-06-05","NO","06","2021","5","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("465","08125707","Ginebra ","Ginebra San Miguel","per bottle","0","8","8","0","0","0","100","94","10","33","8","2021-05-03","YES","05","2021","3","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("466","08125707","Ginebra ","Ginebra San Miguel","per bottle","0","8","8","0","0","0","100","94","10","33","8","2021-06-05","NO","06","2021","5","0","0","0","0","0","0","","0","0");



CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `LOCATION_ID` int(15) NOT NULL,
  `PHONE_NUMBER` varchar(50) NOT NULL,
  PRIMARY KEY (`SUPPLIER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO supplier VALUES("4","EFN Logistics","162","487-7248");
INSERT INTO supplier VALUES("5","Cabillon Merchandise","163","485-5129");
INSERT INTO supplier VALUES("8","Grantix Corporation","166","416-8375");
INSERT INTO supplier VALUES("9","Sayago General Merchandise","167","09225905240/09173186378");
INSERT INTO supplier VALUES("10","Clemence Store","169","09184534540");
INSERT INTO supplier VALUES("11","Dandan Store","170","09283227351");
INSERT INTO supplier VALUES("12","PEPC GAS","171","na");



CREATE TABLE `transaction` (
  `TRANS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUST_ID` int(15) NOT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` float NOT NULL,
  `C_CHANGE` float NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `OR_NUMBER` int(20) NOT NULL,
  PRIMARY KEY (`TRANS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=757 DEFAULT CHARSET=latin1;

INSERT INTO transaction VALUES("242","19","5","29,946.00","3,208.50","26,737.50","3,208.50","29,946.00","29946","0","2021-05-03","0507102458","6521");
INSERT INTO transaction VALUES("243","19","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-05-03","0507102525","6522");
INSERT INTO transaction VALUES("244","20","2","869.00","93.11","775.89","93.11","869.00","869","0","2021-05-03","0507102553","6523");
INSERT INTO transaction VALUES("245","21","2","859.00","92.04","766.96","92.04","859.00","859","0","2021-05-03","0507102636","6524");
INSERT INTO transaction VALUES("246","22","2","1,228.00","131.57","1,096.43","131.57","1,228.00","1228","0","2021-05-03","0507102714","6525");
INSERT INTO transaction VALUES("247","23","4","1,208.00","129.43","1,078.57","129.43","1,208.00","1208","0","2021-05-03","0507102746","6526");
INSERT INTO transaction VALUES("248","24","2","880.00","94.29","785.71","94.29","880.00","880","0","2021-05-03","0507102814","6527");
INSERT INTO transaction VALUES("249","25","2","614.00","65.79","548.21","65.79","614.00","614","0","2021-05-03","0507102835","6528");
INSERT INTO transaction VALUES("250","26","2","1,772.00","189.86","1,582.14","189.86","1,772.00","1772","0","2021-05-03","0507102935","6529");
INSERT INTO transaction VALUES("251","19","1","665.00","71.25","593.75","71.25","665.00","665","0","2021-05-03","0507103021","6530");
INSERT INTO transaction VALUES("252","47","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-03","0507103243","6469");
INSERT INTO transaction VALUES("253","48","1","40.00","4.29","35.71","4.29","40.00","40","0","2021-05-03","0507103319","6475");
INSERT INTO transaction VALUES("254","47","1","100.00","10.71","89.29","10.71","100.00","100","0","2021-05-03","0507103347","6476");
INSERT INTO transaction VALUES("255","49","1","200.00","21.43","178.57","21.43","200.00","200","0","2021-05-03","0507103411","6477");
INSERT INTO transaction VALUES("256","1","2","634.50","67.98","566.52","67.98","634.50","635","0","2021-05-03","0507103614","6479");
INSERT INTO transaction VALUES("257","1","1","72.00","7.71","64.29","7.71","72.00","72","0","2021-05-04","0507103723","6481");
INSERT INTO transaction VALUES("258","27","1","1,545.00","165.54","1,379.46","165.54","1,545.00","1545","0","2021-05-04","0507103810","6483");
INSERT INTO transaction VALUES("259","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-04","0507103842","6485");
INSERT INTO transaction VALUES("260","28","5","3,190.00","341.79","2,848.21","341.79","3,190.00","3190","0","2021-05-05","0507113003","6531");
INSERT INTO transaction VALUES("261","28","1","535.00","57.32","477.68","57.32","535.00","535","0","2021-05-05","0507113038","6532");
INSERT INTO transaction VALUES("262","29","1","668.00","71.57","596.43","71.57","668.00","668","0","2021-05-05","0507113119","6533");
INSERT INTO transaction VALUES("263","30","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-05-05","0507113151","6534");
INSERT INTO transaction VALUES("264","31","3","2,063.00","221.04","1,841.96","221.04","2,063.00","2063","0","2021-05-05","0507113228","6535");
INSERT INTO transaction VALUES("265","32","1","2,672.00","286.29","2,385.71","286.29","2,672.00","2675","3","2021-05-05","0507113252","6536");
INSERT INTO transaction VALUES("266","33","3","1,524.00","163.29","1,360.71","163.29","1,524.00","1524","0","2021-05-05","0507114114","6537");
INSERT INTO transaction VALUES("267","34","6","5,449.00","583.82","4,865.18","583.82","5,449.00","5449","0","2021-05-05","0507114255","6538");
INSERT INTO transaction VALUES("268","35","3","1,816.00","194.57","1,621.43","194.57","1,816.00","1816","0","2021-05-05","0507114455","6539");
INSERT INTO transaction VALUES("269","33","1","535.00","57.32","477.68","57.32","535.00","535","0","2021-05-05","0507114520","6540");
INSERT INTO transaction VALUES("270","20","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-05","0507114557","6541");
INSERT INTO transaction VALUES("271","21","3","1,013.00","108.54","904.46","108.54","1,013.00","1013","0","2021-05-05","0507114659","6542");
INSERT INTO transaction VALUES("272","36","5","1,566.00","167.79","1,398.21","167.79","1,566.00","1566","0","2021-05-05","0507114751","6543");
INSERT INTO transaction VALUES("273","37","2","679.00","72.75","606.25","72.75","679.00","679","0","2021-05-05","0507114842","6544");
INSERT INTO transaction VALUES("274","38","3","3,144.00","336.86","2,807.14","336.86","3,144.00","3144","0","2021-05-05","0507114920","6545");
INSERT INTO transaction VALUES("275","39","2","815.00","87.32","727.68","87.32","815.00","815","0","2021-05-05","0507114949","6546");
INSERT INTO transaction VALUES("276","40","2","1,772.00","189.86","1,582.14","189.86","1,772.00","1772","0","2021-05-05","0507115027","6547");
INSERT INTO transaction VALUES("277","41","2","2,176.00","233.14","1,942.86","233.14","2,176.00","2176","0","2021-05-05","0507115103","6548");
INSERT INTO transaction VALUES("278","42","3","2,991.00","320.46","2,670.54","320.46","2,991.00","2991","0","2021-05-05","0507115150","6549");
INSERT INTO transaction VALUES("279","43","6","3,482.00","373.07","3,108.93","373.07","3,482.00","3482","0","2021-05-05","0507115243","6550");
INSERT INTO transaction VALUES("280","44","3","1,522.00","163.07","1,358.93","163.07","1,522.00","1522","0","2021-05-05","0507115416","6390");
INSERT INTO transaction VALUES("281","45","2","365.00","39.11","325.89","39.11","365.00","365","0","2021-05-05","0507115442","6391");
INSERT INTO transaction VALUES("282","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-05","0507115821","6487");
INSERT INTO transaction VALUES("283","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-05-05","0507115840","6488");
INSERT INTO transaction VALUES("284","46","1","288.00","30.86","257.14","30.86","288.00","288","0","2021-05-05","0507115928","6491");
INSERT INTO transaction VALUES("285","50","1","2,200.00","235.71","1,964.29","235.71","2,200.00","2200","0","2021-05-05","0507120137","6492");
INSERT INTO transaction VALUES("286","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-05","0507140020","6495");
INSERT INTO transaction VALUES("287","51","1","770.00","82.50","687.50","82.50","770.00","770","0","2021-05-07","0507161613","6392");
INSERT INTO transaction VALUES("288","52","3","1,202.00","128.79","1,073.21","128.79","1,202.00","1202","0","2021-05-07","0507161728","6393");
INSERT INTO transaction VALUES("289","53","5","5,383.00","576.75","4,806.25","576.75","5,383.00","5383","0","2021-05-07","0507161907","6394");
INSERT INTO transaction VALUES("290","54","4","3,359.00","359.89","2,999.11","359.89","3,359.00","3359","0","2021-05-07","0507162034","6395");
INSERT INTO transaction VALUES("291","55","2","810.00","86.79","723.21","86.79","810.00","810","0","2021-05-07","0507162214","6396");
INSERT INTO transaction VALUES("292","21","2","1,055.00","113.04","941.96","113.04","1,055.00","1055","0","2021-05-07","0507162305","6397");
INSERT INTO transaction VALUES("293","23","3","1,347.00","144.32","1,202.68","144.32","1,347.00","1347","0","2021-05-07","0507162419","6398");
INSERT INTO transaction VALUES("294","36","2","2,993.00","320.68","2,672.32","320.68","2,993.00","2993","0","2021-05-07","0507162515","6399");
INSERT INTO transaction VALUES("295","38","1","3,210.00","343.93","2,866.07","343.93","3,210.00","3210","0","2021-05-07","0507162601","6400");
INSERT INTO transaction VALUES("296","56","2","822.00","88.07","733.93","88.07","822.00","822","0","2021-05-07","0507162659","6651");
INSERT INTO transaction VALUES("297","40","2","1,228.00","131.57","1,096.43","131.57","1,228.00","1228","0","2021-05-07","0507162738","6652");
INSERT INTO transaction VALUES("298","41","1","2,675.00","286.61","2,388.39","286.61","2,675.00","2675","0","2021-05-07","0507162840","6653");
INSERT INTO transaction VALUES("299","42","2","2,731.00","292.61","2,438.39","292.61","2,731.00","2731","0","2021-05-07","0507162959","6654");
INSERT INTO transaction VALUES("300","43","2","2,273.00","243.54","2,029.46","243.54","2,273.00","2273","0","2021-05-07","0507163041","6655");
INSERT INTO transaction VALUES("301","43","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-05-07","0507163116","6656");
INSERT INTO transaction VALUES("302","44","2","689.00","73.82","615.18","73.82","689.00","689","0","2021-05-07","0507163209","6657");
INSERT INTO transaction VALUES("303","57","4","2,073.00","222.11","1,850.89","222.11","2,073.00","2073","0","2021-05-07","0507163532","6658");
INSERT INTO transaction VALUES("304","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-05-07","050890334","6602");
INSERT INTO transaction VALUES("305","58","1","184.00","19.71","164.29","19.71","184.00","184","0","2021-05-07","050892625","6601");
INSERT INTO transaction VALUES("306","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-05-06","0508113946","6496");
INSERT INTO transaction VALUES("307","59","2","962.00","103.07","858.93","103.07","962.00","962","0","2021-05-06","0508114156","6497");
INSERT INTO transaction VALUES("308","60","1","432.00","46.29","385.71","46.29","432.00","432","0","2021-05-06","0508114329","6498");
INSERT INTO transaction VALUES("309","46","1","515.00","55.18","459.82","55.18","515.00","515","0","2021-05-06","0508114455","6499");
INSERT INTO transaction VALUES("310","61","1","184.00","19.71","164.29","19.71","184.00","184","0","2021-05-06","0508114537","6500");
INSERT INTO transaction VALUES("311","62","1","425.00","45.54","379.46","45.54","425.00","425","0","2021-05-08","0508162238","6659");
INSERT INTO transaction VALUES("312","63","1","770.00","82.50","687.50","82.50","770.00","770","0","2021-05-08","0508162332","6660");
INSERT INTO transaction VALUES("313","19","5","9,783.00","1,048.18","8,734.82","1,048.18","9,783.00","9783","0","2021-05-08","0508162648","6661");
INSERT INTO transaction VALUES("314","64","2","976.00","104.57","871.43","104.57","976.00","976","0","2021-05-08","0508162743","6662");
INSERT INTO transaction VALUES("315","65","3","2,782.00","298.07","2,483.93","298.07","2,782.00","2782","0","2021-05-08","0508162905","6663");
INSERT INTO transaction VALUES("316","55","5","9,780.00","1,047.86","8,732.14","1,047.86","9,780.00","9780","0","2021-05-08","0508163033","6664");
INSERT INTO transaction VALUES("317","66","3","2,566.00","274.93","2,291.07","274.93","2,566.00","2566","0","2021-05-08","0508163157","6665");
INSERT INTO transaction VALUES("318","67","3","1,558.00","166.93","1,391.07","166.93","1,558.00","1558","0","2021-05-08","0508163321","6666");
INSERT INTO transaction VALUES("319","68","3","1,536.00","164.57","1,371.43","164.57","1,536.00","1536","0","2021-05-08","0508163422","6667");
INSERT INTO transaction VALUES("320","50","1","280.00","30.00","250.00","30.00","280.00","280","0","2021-05-08","0508163455","6668");
INSERT INTO transaction VALUES("321","69","4","3,321.00","355.82","2,965.18","355.82","3,321.00","3321","0","2021-05-08","0508163620","6669");
INSERT INTO transaction VALUES("322","20","2","869.00","93.11","775.89","93.11","869.00","869","0","2021-05-08","0508163823","6670");
INSERT INTO transaction VALUES("323","21","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-08","0508163850","6671");
INSERT INTO transaction VALUES("324","22","1","840.00","90.00","750.00","90.00","840.00","840","0","2021-05-08","0508163913","6672");
INSERT INTO transaction VALUES("325","24","3","3,142.00","336.64","2,805.36","336.64","3,142.00","3142","0","2021-05-08","0508164038","6673");
INSERT INTO transaction VALUES("326","25","3","1,344.00","144.00","1,200.00","144.00","1,344.00","1344","0","2021-05-08","0508164139","6674");
INSERT INTO transaction VALUES("327","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-08","051094525","6606");
INSERT INTO transaction VALUES("328","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-08","051094607","6607");
INSERT INTO transaction VALUES("329","70","2","451.50","48.38","403.13","48.38","451.50","452","0","2021-05-08","051094733","6608");
INSERT INTO transaction VALUES("330","71","4","3,052.00","327.00","2,725.00","327.00","3,052.00","3052","0","2021-05-08","051095141","6609");
INSERT INTO transaction VALUES("331","46","1","515.00","55.18","459.82","55.18","515.00","515","0","2021-05-08","051095332","6610");
INSERT INTO transaction VALUES("332","72","1","184.00","19.71","164.29","19.71","184.00","184","0","2021-05-08","051095529","6611");
INSERT INTO transaction VALUES("333","1","1","864.00","92.57","771.43","92.57","864.00","864","0","2021-05-08","051095620","6612");
INSERT INTO transaction VALUES("334","73","1","1,944.00","208.29","1,735.71","208.29","1,944.00","1944","0","2021-05-03","0510100153","6463");
INSERT INTO transaction VALUES("335","74","2","2,230.00","238.93","1,991.07","238.93","2,230.00","2230","0","2021-05-10","051280716","6613");
INSERT INTO transaction VALUES("336","75","2","942.00","100.93","841.07","100.93","942.00","942","0","2021-05-10","051280849","6614");
INSERT INTO transaction VALUES("337","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-05-10","051280924","6615");
INSERT INTO transaction VALUES("338","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-10","051281008","6616");
INSERT INTO transaction VALUES("339","1","1","576.00","61.71","514.29","61.71","576.00","576","0","2021-05-10","051281102","6618");
INSERT INTO transaction VALUES("340","1","2","634.50","67.98","566.52","67.98","634.50","635","0","2021-05-10","051281212","6619");
INSERT INTO transaction VALUES("341","27","5","2,213.00","237.11","1,975.89","237.11","2,213.00","2213","0","2021-05-10","051293605","6621");
INSERT INTO transaction VALUES("342","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-10","051293639","6623");
INSERT INTO transaction VALUES("343","49","1","200.00","21.43","178.57","21.43","200.00","200","0","2021-05-11","051294346","6627");
INSERT INTO transaction VALUES("344","76","1","972.00","104.14","867.86","104.14","972.00","972","0","2021-05-11","051294610","6628");
INSERT INTO transaction VALUES("345","76","1","2,070.00","221.79","1,848.21","221.79","2,070.00","2070","0","2021-05-11","051294750","6629");
INSERT INTO transaction VALUES("346","47","1","25.00","2.68","22.32","2.68","25.00","25","0","2021-05-11","051294824","6630");
INSERT INTO transaction VALUES("347","47","1","200.00","21.43","178.57","21.43","200.00","200","0","2021-05-11","051294928","6631");
INSERT INTO transaction VALUES("348","1","1","216.00","23.14","192.86","23.14","216.00","216","0","2021-05-11","051295426","6632");
INSERT INTO transaction VALUES("349","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-05-11","051295459","6633");
INSERT INTO transaction VALUES("350","1","1","75.00","8.04","66.96","8.04","75.00","75","0","2021-05-11","051295535","6634");
INSERT INTO transaction VALUES("351","1","1","75.00","8.04","66.96","8.04","75.00","75","0","2021-05-11","051295610","6635");
INSERT INTO transaction VALUES("352","77","1","150.00","16.07","133.93","16.07","150.00","150","0","2021-05-12","051482112","6638");
INSERT INTO transaction VALUES("353","77","2","414.00","44.36","369.64","44.36","414.00","414","0","2021-05-12","051482229","6639");
INSERT INTO transaction VALUES("354","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-05-12","051482304","6640");
INSERT INTO transaction VALUES("355","48","1","120.00","12.86","107.14","12.86","120.00","120","0","2021-05-12","051482337","6641");
INSERT INTO transaction VALUES("356","78","1","1,540.00","165.00","1,375.00","165.00","1,540.00","1540","0","2021-05-13","051494552","6675");
INSERT INTO transaction VALUES("357","25","5","1,723.00","184.61","1,538.39","184.61","1,723.00","1723","0","2021-05-13","051494655","6676");
INSERT INTO transaction VALUES("358","24","5","2,612.00","279.86","2,332.14","279.86","2,612.00","2612","0","2021-05-13","051494754","6677");
INSERT INTO transaction VALUES("359","31","5","2,517.00","269.68","2,247.32","269.68","2,517.00","2517","0","2021-05-13","051494856","6678");
INSERT INTO transaction VALUES("360","79","1","668.00","71.57","596.43","71.57","668.00","668","0","2021-05-13","051494946","6679");
INSERT INTO transaction VALUES("361","34","3","1,691.00","181.18","1,509.82","181.18","1,691.00","1691","0","2021-05-13","051495027","6680");
INSERT INTO transaction VALUES("362","80","2","869.00","93.11","775.89","93.11","869.00","869","0","2021-05-13","051495135","6681");
INSERT INTO transaction VALUES("363","33","2","869.00","93.11","775.89","93.11","869.00","869","0","2021-05-13","051495204","6682");
INSERT INTO transaction VALUES("364","35","2","1,130.00","121.07","1,008.93","121.07","1,130.00","1130","0","2021-05-13","051495237","6683");
INSERT INTO transaction VALUES("365","81","1","1,070.00","114.64","955.36","114.64","1,070.00","1070","0","2021-05-13","051495604","6684");
INSERT INTO transaction VALUES("366","21","1","525.00","56.25","468.75","56.25","525.00","525","0","2021-05-13","051495630","6685");
INSERT INTO transaction VALUES("367","82","4","2,488.00","266.57","2,221.43","266.57","2,488.00","2488","0","2021-05-13","051495742","6686");
INSERT INTO transaction VALUES("368","62","2","1,130.00","121.07","1,008.93","121.07","1,130.00","1130","0","2021-05-13","0514100011","6687");
INSERT INTO transaction VALUES("369","36","6","2,568.00","275.14","2,292.86","275.14","2,568.00","2568","0","2021-05-13","0514100132","6688");
INSERT INTO transaction VALUES("370","83","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-13","0514100258","6689");
INSERT INTO transaction VALUES("371","38","7","10,348.00","1,108.71","9,239.29","1,108.71","10,348.00","10348","0","2021-05-13","0514100442","6690");
INSERT INTO transaction VALUES("372","39","3","1,529.00","163.82","1,365.18","163.82","1,529.00","1529","0","2021-05-13","0514100544","6691");
INSERT INTO transaction VALUES("373","84","3","1,558.00","166.93","1,391.07","166.93","1,558.00","1558","0","2021-05-13","0514100641","6692");
INSERT INTO transaction VALUES("374","56","3","768.00","82.29","685.71","82.29","768.00","768","0","2021-05-13","0514100719","6693");
INSERT INTO transaction VALUES("375","85","3","2,093.00","224.25","1,868.75","224.25","2,093.00","2093","0","2021-05-13","0514100830","6694");
INSERT INTO transaction VALUES("376","86","1","462.00","49.50","412.50","49.50","462.00","462","0","2021-05-13","0514100921","6695");
INSERT INTO transaction VALUES("377","87","1","2,020.00","216.43","1,803.57","216.43","2,020.00","2020","0","2021-05-03","0514134858","8969");
INSERT INTO transaction VALUES("378","88","1","1,180.00","126.43","1,053.57","126.43","1,180.00","1180","0","2021-05-03","0514135604","8970");
INSERT INTO transaction VALUES("379","49","1","2,300.00","246.43","2,053.57","246.43","2,300.00","2300","0","2021-05-04","0514135919","8971");
INSERT INTO transaction VALUES("380","87","1","1,180.00","126.43","1,053.57","126.43","1,180.00","1180","0","2021-05-04","0514140010","8972");
INSERT INTO transaction VALUES("381","89","1","1,180.00","126.43","1,053.57","126.43","1,180.00","1180","0","2021-05-05","0514140108","8973");
INSERT INTO transaction VALUES("382","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-05","0514140157","8974");
INSERT INTO transaction VALUES("383","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-05","0514140252","8975");
INSERT INTO transaction VALUES("384","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-05","0514140343","8976");
INSERT INTO transaction VALUES("385","90","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-05","0514140453","8977");
INSERT INTO transaction VALUES("386","91","1","4,440.00","475.71","3,964.29","475.71","4,440.00","4440","0","2021-05-06","0514140642","8978");
INSERT INTO transaction VALUES("387","87","1","2,300.00","246.43","2,053.57","246.43","2,300.00","2300","0","2021-05-07","0514140727","8979");
INSERT INTO transaction VALUES("388","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-08","0514140810","8980");
INSERT INTO transaction VALUES("389","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-10","0514140851","8981");
INSERT INTO transaction VALUES("390","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-10","0514140941","8982");
INSERT INTO transaction VALUES("391","92","1","2,250.00","241.07","2,008.93","241.07","2,250.00","2250","0","2021-05-12","0514141302","8983");
INSERT INTO transaction VALUES("392","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-12","0514141338","8984");
INSERT INTO transaction VALUES("393","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-14","0514141432","8985");
INSERT INTO transaction VALUES("394","93","4","3,596.00","385.29","3,210.71","385.29","3,596.00","3596","0","2021-05-14","0517101533","6696");
INSERT INTO transaction VALUES("395","52","1","280.00","30.00","250.00","30.00","280.00","280","0","2021-05-14","0517101609","6697");
INSERT INTO transaction VALUES("396","53","2","3,514.00","376.50","3,137.50","376.50","3,514.00","3514","0","2021-05-14","0517101703","6698");
INSERT INTO transaction VALUES("397","21","2","1,874.00","200.79","1,673.21","200.79","1,874.00","1874","0","2021-05-14","0517101743","6699");
INSERT INTO transaction VALUES("398","85","3","2,093.00","224.25","1,868.75","224.25","2,093.00","2093","0","2021-05-14","0517102549","6700");
INSERT INTO transaction VALUES("399","84","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-14","0517102654","6751");
INSERT INTO transaction VALUES("400","94","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-05-14","0517102746","6752");
INSERT INTO transaction VALUES("401","95","1","462.00","49.50","412.50","49.50","462.00","462","0","2021-05-14","0517102859","6753");
INSERT INTO transaction VALUES("402","41","2","1,282.00","137.36","1,144.64","137.36","1,282.00","1282","0","2021-05-14","0517102943","6754");
INSERT INTO transaction VALUES("403","43","5","6,713.00","719.25","5,993.75","719.25","6,713.00","6713","0","2021-05-14","0517103522","6755");
INSERT INTO transaction VALUES("404","96","2","1,404.00","150.43","1,253.57","150.43","1,404.00","1404","0","2021-05-14","0517103622","6756");
INSERT INTO transaction VALUES("405","44","5","9,845.00","1,054.82","8,790.18","1,054.82","9,845.00","9845","0","2021-05-14","0517103842","6757");
INSERT INTO transaction VALUES("406","57","5","2,477.00","265.39","2,211.61","265.39","2,477.00","2477","0","2021-05-14","0517104034","6758");
INSERT INTO transaction VALUES("407","98","3","1,219.00","130.61","1,088.39","130.61","1,219.00","1219","0","2021-05-14","0517104207","6759");
INSERT INTO transaction VALUES("408","98","1","280.00","30.00","250.00","30.00","280.00","280","0","2021-05-14","0517104236","6760");
INSERT INTO transaction VALUES("409","77","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-14","0517104827","6650");
INSERT INTO transaction VALUES("410","27","4","2,348.50","251.63","2,096.88","251.63","2,348.50","2349","0","2021-05-14","0517105024","6702");
INSERT INTO transaction VALUES("411","27","2","1,331.00","142.61","1,188.39","142.61","1,331.00","1331","0","2021-05-14","0517105108","6703");
INSERT INTO transaction VALUES("412","99","3","1,132.00","121.29","1,010.71","121.29","1,132.00","1132","0","2021-05-14","0517105258","6704");
INSERT INTO transaction VALUES("413","1","1","288.00","30.86","257.14","30.86","288.00","288","0","2021-05-14","0517105335","6705");
INSERT INTO transaction VALUES("414","1","1","400.00","42.86","357.14","42.86","400.00","400","0","2021-05-14","0517105413","6706");
INSERT INTO transaction VALUES("415","1","1","327.00","35.04","291.96","35.04","327.00","327","0","2021-05-14","0517105450","6707");
INSERT INTO transaction VALUES("416","1","1","75.00","8.04","66.96","8.04","75.00","75","0","2021-05-14","0517105522","6708");
INSERT INTO transaction VALUES("417","54","4","1,780.00","190.71","1,589.29","190.71","1,780.00","1780","0","2021-05-15","0517110836","6761");
INSERT INTO transaction VALUES("418","23","2","1,680.00","180.00","1,500.00","180.00","1,680.00","1680","0","2021-05-15","0517110925","6762");
INSERT INTO transaction VALUES("419","100","2","2,968.00","318.00","2,650.00","318.00","2,968.00","2968","0","2021-05-15","0517111149","6764");
INSERT INTO transaction VALUES("420","66","4","3,263.00","349.61","2,913.39","349.61","3,263.00","3263","0","2021-05-15","0517111254","6765");
INSERT INTO transaction VALUES("421","101","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-15","0517111404","6766");
INSERT INTO transaction VALUES("422","102","3","856.00","91.71","764.29","91.71","856.00","856","0","2021-05-15","0517111550","6767");
INSERT INTO transaction VALUES("423","102","1","184.00","19.71","164.29","19.71","184.00","184","0","2021-05-15","0517112138","6768");
INSERT INTO transaction VALUES("424","68","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-05-15","0517112206","6769");
INSERT INTO transaction VALUES("425","65","3","1,023.00","109.61","913.39","109.61","1,023.00","1023","0","2021-05-15","0517112302","6770");
INSERT INTO transaction VALUES("426","64","2","642.00","68.79","573.21","68.79","642.00","642","0","2021-05-15","0517112333","6771");
INSERT INTO transaction VALUES("427","22","1","1,575.00","168.75","1,406.25","168.75","1,575.00","1575","0","2021-05-15","0517112413","6772");
INSERT INTO transaction VALUES("428","22","2","709.00","75.96","633.04","75.96","709.00","709","0","2021-05-15","0517112454","6773");
INSERT INTO transaction VALUES("429","103","1","1,060.00","113.57","946.43","113.57","1,060.00","1060","0","2021-05-15","0517112603","6774");
INSERT INTO transaction VALUES("430","25","3","969.00","103.82","865.18","103.82","969.00","969","0","2021-05-15","0517112641","6775");
INSERT INTO transaction VALUES("431","104","4","5,396.00","578.14","4,817.86","578.14","5,396.00","5396","0","2021-05-15","0517112911","6776");
INSERT INTO transaction VALUES("432","1","2","543.00","58.18","484.82","58.18","543.00","543","0","2021-05-15","0517114427","6709");
INSERT INTO transaction VALUES("433","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-15","0517114502","6710");
INSERT INTO transaction VALUES("434","48","1","184.00","19.71","164.29","19.71","184.00","184","0","2021-05-15","0517114605","6715");
INSERT INTO transaction VALUES("435","1","1","525.00","56.25","468.75","56.25","525.00","525","0","2021-05-15","0517114649","6720");
INSERT INTO transaction VALUES("436","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-15","0517132426","8986");
INSERT INTO transaction VALUES("437","105","1","1,180.00","126.43","1,053.57","126.43","1,180.00","1180","0","2021-05-15","0517132546","8987");
INSERT INTO transaction VALUES("438","75","2","942.00","100.93","841.07","100.93","942.00","942","0","2021-05-17","0518103942","6723");
INSERT INTO transaction VALUES("439","106","3","1,955.00","209.46","1,745.54","209.46","1,955.00","1955","0","2021-05-17","0518104322","6724");
INSERT INTO transaction VALUES("440","107","1","720.00","77.14","642.86","77.14","720.00","720","0","2021-05-17","0518104427","6725");
INSERT INTO transaction VALUES("441","77","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-17","0518104501","6726");
INSERT INTO transaction VALUES("442","108","1","2,120.00","227.14","1,892.86","227.14","2,120.00","2120","0","2021-05-17","0518104658","6729");
INSERT INTO transaction VALUES("443","63","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-05-18","0518152908","6777");
INSERT INTO transaction VALUES("444","109","1","308.00","33.00","275.00","33.00","308.00","308","0","2021-05-18","0518153012","6778");
INSERT INTO transaction VALUES("445","19","6","21,624.00","2,316.86","19,307.14","2,316.86","21,624.00","21624","0","2021-05-18","0518153152","6779");
INSERT INTO transaction VALUES("446","110","1","154.00","16.50","137.50","16.50","154.00","154","0","2021-05-18","0518153257","6780");
INSERT INTO transaction VALUES("447","111","2","864.00","92.57","771.43","92.57","864.00","864","0","2021-05-18","0518153420","6781");
INSERT INTO transaction VALUES("448","111","1","154.00","16.50","137.50","16.50","154.00","154","0","2021-05-18","0518153504","6782");
INSERT INTO transaction VALUES("449","20","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-05-18","0518153538","6783");
INSERT INTO transaction VALUES("450","21","4","1,543.00","165.32","1,377.68","165.32","1,543.00","1543","0","2021-05-18","0518153639","6784");
INSERT INTO transaction VALUES("451","22","4","4,389.00","470.25","3,918.75","470.25","4,389.00","4389","0","2021-05-18","0518162317","6785");
INSERT INTO transaction VALUES("452","82","4","1,919.00","205.61","1,713.39","205.61","1,919.00","1919","0","2021-05-18","0518162443","6786");
INSERT INTO transaction VALUES("453","24","1","668.00","71.57","596.43","71.57","668.00","668","0","2021-05-18","0518162532","6787");
INSERT INTO transaction VALUES("454","62","1","308.00","33.00","275.00","33.00","308.00","308","0","2021-05-18","0518162557","6788");
INSERT INTO transaction VALUES("455","112","5","2,133.00","228.54","1,904.46","228.54","2,133.00","2133","0","2021-05-18","0518162726","6789");
INSERT INTO transaction VALUES("456","1","1","288.00","30.86","257.14","30.86","288.00","288","0","2021-05-18","052295453","6733");
INSERT INTO transaction VALUES("457","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-05-18","052295523","6735");
INSERT INTO transaction VALUES("458","46","2","414.00","44.36","369.64","44.36","414.00","414","0","2021-05-18","052295709","6736");
INSERT INTO transaction VALUES("459","47","1","1,130.00","121.07","1,008.93","121.07","1,130.00","1130","0","2021-05-18","052295825","6738");
INSERT INTO transaction VALUES("460","113","1","75.00","8.04","66.96","8.04","75.00","75","0","2021-05-18","052295910","6739");
INSERT INTO transaction VALUES("461","1","2","1,155.00","123.75","1,031.25","123.75","1,155.00","1155","0","2021-05-19","0522100110","6740");
INSERT INTO transaction VALUES("462","114","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-19","0522100217","6741");
INSERT INTO transaction VALUES("463","70","1","216.00","23.14","192.86","23.14","216.00","216","0","2021-05-19","0522100354","6742");
INSERT INTO transaction VALUES("464","1","2","615.00","65.89","549.11","65.89","615.00","615","0","2021-05-20","0522100628","6744");
INSERT INTO transaction VALUES("465","1","1","288.00","30.86","257.14","30.86","288.00","288","0","2021-05-20","0522100700","6745");
INSERT INTO transaction VALUES("466","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-05-20","0522100721","6746");
INSERT INTO transaction VALUES("467","47","1","25.00","2.68","22.32","2.68","25.00","25","0","2021-05-20","0522100748","6748");
INSERT INTO transaction VALUES("468","47","1","150.00","16.07","133.93","16.07","150.00","150","0","2021-05-20","0522100955","6749");
INSERT INTO transaction VALUES("469","116","3","1,023.00","109.61","913.39","109.61","1,023.00","1023","0","2021-05-21","0522102016","6791");
INSERT INTO transaction VALUES("470","63","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-21","0522102103","6790");
INSERT INTO transaction VALUES("471","34","4","3,220.00","345.00","2,875.00","345.00","3,220.00","3220","0","2021-05-21","0522102200","6792");
INSERT INTO transaction VALUES("472","33","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-21","0522102235","6793");
INSERT INTO transaction VALUES("473","104","6","3,543.00","379.61","3,163.39","379.61","3,543.00","3543","0","2021-05-21","0522102348","6794");
INSERT INTO transaction VALUES("474","104","1","840.00","90.00","750.00","90.00","840.00","840","0","2021-05-21","0522102417","6795");
INSERT INTO transaction VALUES("475","117","2","822.00","88.07","733.93","88.07","822.00","822","0","2021-05-21","0522102513","6796");
INSERT INTO transaction VALUES("476","20","2","642.00","68.79","573.21","68.79","642.00","642","0","2021-05-21","0522102553","6797");
INSERT INTO transaction VALUES("477","21","2","414.00","44.36","369.64","44.36","414.00","414","0","2021-05-21","0522102626","6798");
INSERT INTO transaction VALUES("478","22","3","1,582.00","169.50","1,412.50","169.50","1,582.00","1582","0","2021-05-21","0522102711","6799");
INSERT INTO transaction VALUES("479","82","1","1,315.00","140.89","1,174.11","140.89","1,315.00","1315","0","2021-05-21","0522102736","6800");
INSERT INTO transaction VALUES("480","118","1","2,310.00","247.50","2,062.50","247.50","2,310.00","2310","0","2021-05-21","0522102822","6801");
INSERT INTO transaction VALUES("481","25","3","1,009.00","108.11","900.89","108.11","1,009.00","1009","0","2021-05-21","0522102932","6802");
INSERT INTO transaction VALUES("482","36","5","3,275.00","350.89","2,924.11","350.89","3,275.00","3275","0","2021-05-21","0522103110","6803");
INSERT INTO transaction VALUES("483","37","4","1,548.00","165.86","1,382.14","165.86","1,548.00","1548","0","2021-05-21","0522103201","6804");
INSERT INTO transaction VALUES("484","38","4","2,715.00","290.89","2,424.11","290.89","2,715.00","2715","0","2021-05-21","0522103321","6805");
INSERT INTO transaction VALUES("485","39","5","1,654.00","177.21","1,476.79","177.21","1,654.00","1654","0","2021-05-21","0522103430","6806");
INSERT INTO transaction VALUES("486","39","1","280.00","30.00","250.00","30.00","280.00","280","0","2021-05-21","0522103456","6807");
INSERT INTO transaction VALUES("487","119","5","2,554.00","273.64","2,280.36","273.64","2,554.00","2554","0","2021-05-21","0522103846","6808");
INSERT INTO transaction VALUES("488","40","2","1,282.00","137.36","1,144.64","137.36","1,282.00","1282","0","2021-05-21","0522103935","6809");
INSERT INTO transaction VALUES("489","40","2","1,060.00","113.57","946.43","113.57","1,060.00","1060","0","2021-05-21","0522104024","6810");
INSERT INTO transaction VALUES("490","40","1","424.00","45.43","378.57","45.43","424.00","424","0","2021-05-21","0522104050","6811");
INSERT INTO transaction VALUES("491","41","1","2,650.00","283.93","2,366.07","283.93","2,650.00","2650","0","2021-05-21","0522104129","6812");
INSERT INTO transaction VALUES("492","42","2","2,406.00","257.79","2,148.21","257.79","2,406.00","2406","0","2021-05-21","0522104215","6813");
INSERT INTO transaction VALUES("493","43","3","3,460.00","370.71","3,089.29","370.71","3,460.00","3460","0","2021-05-21","0522104320","6814");
INSERT INTO transaction VALUES("494","77","1","1,130.00","121.07","1,008.93","121.07","1,130.00","1130","0","2021-05-21","0522105609","6851");
INSERT INTO transaction VALUES("495","46","2","468.00","50.14","417.86","50.14","468.00","468","0","2021-05-21","0522105743","6858");
INSERT INTO transaction VALUES("496","70","1","216.00","23.14","192.86","23.14","216.00","216","0","2021-05-21","0522105836","6859");
INSERT INTO transaction VALUES("497","1","1","2,120.00","227.14","1,892.86","227.14","2,120.00","2120","0","2021-05-21","0522110001","6860");
INSERT INTO transaction VALUES("498","77","1","150.00","16.07","133.93","16.07","150.00","150","0","2021-05-21","0522110055","6868");
INSERT INTO transaction VALUES("499","53","4","2,592.00","277.71","2,314.29","277.71","2,592.00","2592","0","2021-05-22","0524105421","6815");
INSERT INTO transaction VALUES("500","120","1","560.00","60.00","500.00","60.00","560.00","560","0","2021-05-22","0524105542","6816");
INSERT INTO transaction VALUES("501","121","1","462.00","49.50","412.50","49.50","462.00","462","0","2021-05-22","0524105650","6817");
INSERT INTO transaction VALUES("502","122","3","1,712.00","183.43","1,528.57","183.43","1,712.00","1712","0","2021-05-22","0524105817","6818");
INSERT INTO transaction VALUES("503","123","2","1,696.00","181.71","1,514.29","181.71","1,696.00","1696","0","2021-05-22","0524105919","6819");
INSERT INTO transaction VALUES("504","124","1","5,300.00","567.86","4,732.14","567.86","5,300.00","5300","0","2021-05-22","0524110026","6820");
INSERT INTO transaction VALUES("505","125","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-22","0524110102","6821");
INSERT INTO transaction VALUES("506","92","2","3,210.00","343.93","2,866.07","343.93","3,210.00","3210","0","2021-05-22","0524110213","6822");
INSERT INTO transaction VALUES("507","66","4","2,902.00","310.93","2,591.07","310.93","2,902.00","2902","0","2021-05-22","0524110310","6823");
INSERT INTO transaction VALUES("508","102","2","1,394.00","149.36","1,244.64","149.36","1,394.00","1394","0","2021-05-22","0524110354","6824");
INSERT INTO transaction VALUES("509","21","3","1,524.00","163.29","1,360.71","163.29","1,524.00","1524","0","2021-05-22","0524110434","6825");
INSERT INTO transaction VALUES("510","44","4","2,900.00","310.71","2,589.29","310.71","2,900.00","2900","0","2021-05-22","0524110534","6826");
INSERT INTO transaction VALUES("511","43","2","976.00","104.57","871.43","104.57","976.00","976","0","2021-05-22","0524110608","6827");
INSERT INTO transaction VALUES("512","122","3","768.00","82.29","685.71","82.29","768.00","768","0","2021-05-22","0524110653","6828");
INSERT INTO transaction VALUES("513","57","2","976.00","104.57","871.43","104.57","976.00","976","0","2021-05-22","0524110722","6829");
INSERT INTO transaction VALUES("514","126","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-22","0524110803","6830");
INSERT INTO transaction VALUES("515","98","2","474.00","50.79","423.21","50.79","474.00","474","0","2021-05-22","0524110835","6831");
INSERT INTO transaction VALUES("516","1","2","942.00","100.93","841.07","100.93","942.00","942","0","2021-05-22","0524111918","6869");
INSERT INTO transaction VALUES("517","99","5","3,108.00","333.00","2,775.00","333.00","3,108.00","3108","0","2021-05-22","0524112629","6870");
INSERT INTO transaction VALUES("518","127","1","184.00","19.71","164.29","19.71","184.00","184","0","2021-05-22","0524112729","6870");
INSERT INTO transaction VALUES("519","49","1","75.00","8.04","66.96","8.04","75.00","75","0","2021-05-22","0524112902","6874");
INSERT INTO transaction VALUES("520","19","5","23,625.00","2,531.25","21,093.75","2,531.25","23,625.00","23625","0","2021-05-24","0524153009","6832");
INSERT INTO transaction VALUES("521","22","2","1,787.00","191.46","1,595.54","191.46","1,787.00","1787","0","2021-05-24","0524153214","6833");
INSERT INTO transaction VALUES("522","82","2","796.00","85.29","710.71","85.29","796.00","796","0","2021-05-24","0524153456","6834");
INSERT INTO transaction VALUES("523","106","1","668.00","71.57","596.43","71.57","668.00","668","0","2021-05-24","0524153603","6835");
INSERT INTO transaction VALUES("524","128","1","668.00","71.57","596.43","71.57","668.00","668","0","2021-05-24","0526114841","0");
INSERT INTO transaction VALUES("525","129","1","50.00","5.36","44.64","5.36","50.00","50","0","2021-05-24","0526115224","6875");
INSERT INTO transaction VALUES("526","130","1","500.00","53.57","446.43","53.57","500.00","500","0","2021-05-24","0526115310","6876");
INSERT INTO transaction VALUES("527","70","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-24","0526115349","6877");
INSERT INTO transaction VALUES("528","46","2","468.00","50.14","417.86","50.14","468.00","468","0","2021-05-24","0526115455","6878");
INSERT INTO transaction VALUES("529","131","1","184.00","19.71","164.29","19.71","184.00","184","0","2021-05-24","0526115538","6883");
INSERT INTO transaction VALUES("530","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-25","0526115658","6884");
INSERT INTO transaction VALUES("531","46","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-25","0526115723","6885");
INSERT INTO transaction VALUES("532","132","2","120.00","12.86","107.14","12.86","120.00","120","0","2021-05-25","0526115801","6889");
INSERT INTO transaction VALUES("533","58","1","184.00","19.71","164.29","19.71","184.00","184","0","2021-05-25","0526115821","6890");
INSERT INTO transaction VALUES("534","25","3","768.00","82.29","685.71","82.29","768.00","768","0","2021-05-26","0527103307","6836");
INSERT INTO transaction VALUES("535","24","5","2,183.00","233.89","1,949.11","233.89","2,183.00","2183","0","2021-05-26","0527103638","6837");
INSERT INTO transaction VALUES("536","133","2","371.00","39.75","331.25","39.75","371.00","371","0","2021-05-26","0527103917","6838");
INSERT INTO transaction VALUES("537","21","2","833.00","89.25","743.75","89.25","833.00","833","0","2021-05-26","0527104309","6839");
INSERT INTO transaction VALUES("538","21","2","742.00","79.50","662.50","79.50","742.00","742","0","2021-05-26","0527104419","6840");
INSERT INTO transaction VALUES("539","20","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-26","0527104450","6841");
INSERT INTO transaction VALUES("540","68","1","154.00","16.50","137.50","16.50","154.00","154","0","2021-05-26","0527104818","6842");
INSERT INTO transaction VALUES("541","134","1","3,006.00","322.07","2,683.93","322.07","3,006.00","3006","0","2021-05-26","0527104905","6843");
INSERT INTO transaction VALUES("542","34","1","668.00","71.57","596.43","71.57","668.00","668","0","2021-05-26","0527111613","6844");
INSERT INTO transaction VALUES("543","33","2","2,062.00","220.93","1,841.07","220.93","2,062.00","2062","0","2021-05-26","0527111727","6845");
INSERT INTO transaction VALUES("544","104","4","2,218.00","237.64","1,980.36","237.64","2,218.00","2218","0","2021-05-26","0527112436","6846");
INSERT INTO transaction VALUES("545","35","4","2,367.00","253.61","2,113.39","253.61","2,367.00","2367","0","2021-05-26","0527112645","6847");
INSERT INTO transaction VALUES("546","31","4","2,603.00","278.89","2,324.11","278.89","2,603.00","2603","0","2021-05-26","0527112844","6848");
INSERT INTO transaction VALUES("547","55","4","2,303.00","246.75","2,056.25","246.75","2,303.00","2303","0","2021-05-26","0527113100","6849");
INSERT INTO transaction VALUES("548","116","3","551.00","59.04","491.96","59.04","551.00","551","0","2021-05-26","0527113228","6850");
INSERT INTO transaction VALUES("549","37","2","869.00","93.11","775.89","93.11","869.00","869","0","2021-05-26","0527113258","6901");
INSERT INTO transaction VALUES("550","36","6","1,962.00","210.21","1,751.79","210.21","1,962.00","1962","0","2021-05-26","0527113420","6902");
INSERT INTO transaction VALUES("551","135","1","167.00","17.89","149.11","17.89","167.00","167","0","2021-05-26","0527113455","6903");
INSERT INTO transaction VALUES("552","38","4","4,188.00","448.71","3,739.29","448.71","4,188.00","4188","0","2021-05-26","0527113603","6904");
INSERT INTO transaction VALUES("553","39","1","840.00","90.00","750.00","90.00","840.00","840","0","2021-05-26","0527113630","6905");
INSERT INTO transaction VALUES("554","86","2","973.00","104.25","868.75","104.25","973.00","973","0","2021-05-26","0527113726","6906");
INSERT INTO transaction VALUES("555","24","1","106.00","11.36","94.64","11.36","106.00","106","0","2021-05-26","0527145721","6837");
INSERT INTO transaction VALUES("556","136","1","340.00","36.43","303.57","36.43","340.00","340","0","2021-05-26","0527151301","6891");
INSERT INTO transaction VALUES("557","1","2","634.50","67.98","566.52","67.98","634.50","635","0","2021-05-26","0527151356","6894");
INSERT INTO transaction VALUES("558","1","1","654.00","70.07","583.93","70.07","654.00","654","0","2021-05-26","0527151434","6896");
INSERT INTO transaction VALUES("559","1","1","270.00","28.93","241.07","28.93","270.00","270","0","2021-05-26","0527151535","6897");
INSERT INTO transaction VALUES("560","89","1","368.00","39.43","328.57","39.43","368.00","368","0","2021-05-26","0527151605","6898");
INSERT INTO transaction VALUES("561","49","1","288.00","30.86","257.14","30.86","288.00","288","0","2021-05-26","0527151643","6899");
INSERT INTO transaction VALUES("562","137","1","184.00","19.71","164.29","19.71","184.00","184","0","2021-05-26","052995747","0");
INSERT INTO transaction VALUES("563","70","1","216.00","23.14","192.86","23.14","216.00","216","0","2021-05-27","0529100828","6958");
INSERT INTO transaction VALUES("564","138","1","225.00","24.11","200.89","24.11","225.00","225","0","2021-05-27","0529100921","6959");
INSERT INTO transaction VALUES("565","63","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-29","053190318","6907");
INSERT INTO transaction VALUES("566","63","1","616.00","66.00","550.00","66.00","616.00","616","0","2021-05-29","053190735","6908");
INSERT INTO transaction VALUES("567","139","3","1,013.00","108.54","904.46","108.54","1,013.00","1013","0","2021-05-29","053190904","6909");
INSERT INTO transaction VALUES("568","54","4","2,756.00","295.29","2,460.71","295.29","2,756.00","2756","0","2021-05-29","053191001","6910");
INSERT INTO transaction VALUES("569","81","1","530.00","56.79","473.21","56.79","530.00","530","0","2021-05-29","053191043","6911");
INSERT INTO transaction VALUES("570","140","1","212.00","22.71","189.29","22.71","212.00","212","0","2021-05-29","053191147","6912");
INSERT INTO transaction VALUES("571","124","2","642.00","68.79","573.21","68.79","642.00","642","0","2021-05-29","053191233","6913");
INSERT INTO transaction VALUES("572","65","3","3,138.00","336.21","2,801.79","336.21","3,138.00","3138","0","2021-05-29","053191425","6914");
INSERT INTO transaction VALUES("573","64","4","1,071.00","114.75","956.25","114.75","1,071.00","1071","0","2021-05-29","053191636","6915");
INSERT INTO transaction VALUES("574","141","2","992.00","106.29","885.71","106.29","992.00","992","0","2021-05-29","053191843","6916");
INSERT INTO transaction VALUES("575","55","3","3,354.00","359.36","2,994.64","359.36","3,354.00","3354","0","2021-05-29","053192106","6917");
INSERT INTO transaction VALUES("576","102","3","2,296.00","246.00","2,050.00","246.00","2,296.00","2296","0","2021-05-29","053192413","6918");
INSERT INTO transaction VALUES("577","66","4","2,358.00","252.64","2,105.36","252.64","2,358.00","2358","0","2021-05-29","053192535","6919");
INSERT INTO transaction VALUES("578","142","2","1,341.00","143.68","1,197.32","143.68","1,341.00","1341","0","2021-05-29","053192654","6920");
INSERT INTO transaction VALUES("579","24","2","1,174.00","125.79","1,048.21","125.79","1,174.00","1174","0","2021-05-29","053192808","6921");
INSERT INTO transaction VALUES("580","20","1","530.00","56.79","473.21","56.79","530.00","530","0","2021-05-29","053192851","6922");
INSERT INTO transaction VALUES("581","22","1","424.00","45.43","378.57","45.43","424.00","424","0","2021-05-29","053192918","6923");
INSERT INTO transaction VALUES("582","82","3","2,024.00","216.86","1,807.14","216.86","2,024.00","2024","0","2021-05-29","053194151","6924");
INSERT INTO transaction VALUES("583","143","1","616.00","66.00","550.00","66.00","616.00","616","0","2021-05-29","053194251","6925");
INSERT INTO transaction VALUES("584","144","1","212.00","22.71","189.29","22.71","212.00","212","0","2021-05-29","053194349","6926");
INSERT INTO transaction VALUES("585","112","4","2,330.00","249.64","2,080.36","249.64","2,330.00","2330","0","2021-05-29","053194513","6927");
INSERT INTO transaction VALUES("586","145","2","864.00","92.57","771.43","92.57","864.00","864","0","2021-05-29","053194622","6928");
INSERT INTO transaction VALUES("587","1","2","857.00","91.82","765.18","91.82","857.00","857","0","2021-05-29","0531103424","6960");
INSERT INTO transaction VALUES("588","113","1","75.00","8.04","66.96","8.04","75.00","75","0","2021-05-29","0531103503","6961");
INSERT INTO transaction VALUES("589","49","1","300.00","32.14","267.86","32.14","300.00","300","0","2021-05-29","0531103529","6963");
INSERT INTO transaction VALUES("590","131","1","216.00","23.14","192.86","23.14","216.00","216","0","2021-05-29","0531103609","6964");
INSERT INTO transaction VALUES("591","131","1","520.00","55.71","464.29","55.71","520.00","520","0","2021-05-29","0531103654","6966");
INSERT INTO transaction VALUES("592","77","1","75.00","8.04","66.96","8.04","75.00","75","0","2021-05-31","0601151844","6968");
INSERT INTO transaction VALUES("593","46","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-31","0601151921","6969");
INSERT INTO transaction VALUES("594","131","1","288.00","30.86","257.14","30.86","288.00","288","0","2021-05-31","0601152009","6971");
INSERT INTO transaction VALUES("595","1","3","2,017.00","216.11","1,800.89","216.11","2,017.00","2017","0","2021-05-31","0601152116","6972");
INSERT INTO transaction VALUES("596","1","1","100.00","10.71","89.29","10.71","100.00","100","0","2021-05-31","0601152143","6973");
INSERT INTO transaction VALUES("597","1","2","471.00","50.46","420.54","50.46","471.00","471","0","2021-05-31","0601152225","6974");
INSERT INTO transaction VALUES("598","1","1","100.00","10.71","89.29","10.71","100.00","100","0","2021-05-31","0601152309","6975");
INSERT INTO transaction VALUES("599","132","2","95.00","10.18","84.82","10.18","95.00","95","0","2021-05-31","0601152337","6976");
INSERT INTO transaction VALUES("600","113","1","75.00","8.04","66.96","8.04","75.00","75","0","2021-05-31","0601152403","6977");
INSERT INTO transaction VALUES("601","77","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-31","0601152434","6967");
INSERT INTO transaction VALUES("602","146","7","63,118.00","6,762.64","56,355.36","6,762.64","63,118.00","63118","0","2021-05-25","060284617","3660");
INSERT INTO transaction VALUES("603","147","1","2,325.00","249.11","2,075.89","249.11","2,325.00","2325","0","2021-05-03","0602100627","10050");
INSERT INTO transaction VALUES("604","148","1","2,325.00","249.11","2,075.89","249.11","2,325.00","2325","0","2021-05-03","0602101945","3601");
INSERT INTO transaction VALUES("605","149","1","2,325.00","249.11","2,075.89","249.11","2,325.00","2325","0","2021-05-17","0602102133","3606");
INSERT INTO transaction VALUES("606","150","1","2,325.00","249.11","2,075.89","249.11","2,325.00","2325","0","2021-05-17","0602102604","3612");
INSERT INTO transaction VALUES("607","150","1","2,325.00","249.11","2,075.89","249.11","2,325.00","2325","0","2021-05-17","0602102707","3617");
INSERT INTO transaction VALUES("608","151","1","2,325.00","249.11","2,075.89","249.11","2,325.00","2325","0","2021-05-24","0602102810","3621");
INSERT INTO transaction VALUES("609","152","1","4,650.00","498.21","4,151.79","498.21","4,650.00","4650","0","2021-05-24","0602103043","3625");
INSERT INTO transaction VALUES("610","153","1","4,650.00","498.21","4,151.79","498.21","4,650.00","4650","0","2021-05-24","0602103150","3630");
INSERT INTO transaction VALUES("611","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-21","0602104626","3651");
INSERT INTO transaction VALUES("612","154","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-21","0602104725","3652");
INSERT INTO transaction VALUES("613","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-21","0602105002","3653");
INSERT INTO transaction VALUES("614","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-22","0602105047","3654");
INSERT INTO transaction VALUES("615","155","1","1,180.00","126.43","1,053.57","126.43","1,180.00","1180","0","2021-05-22","0602105147","3655");
INSERT INTO transaction VALUES("616","87","1","1,180.00","126.43","1,053.57","126.43","1,180.00","1180","0","2021-05-22","0602105230","3656");
INSERT INTO transaction VALUES("617","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-24","0602105554","3657");
INSERT INTO transaction VALUES("618","87","1","2,360.00","252.86","2,107.14","252.86","2,360.00","2360","0","2021-05-25","0602105742","3659");
INSERT INTO transaction VALUES("619","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-26","0602105832","3661");
INSERT INTO transaction VALUES("620","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-28","0602105954","3662");
INSERT INTO transaction VALUES("621","113","1","1,180.00","126.43","1,053.57","126.43","1,180.00","1180","0","2021-05-28","0602110035","3663");
INSERT INTO transaction VALUES("622","156","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-28","0602110124","3664");
INSERT INTO transaction VALUES("623","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-05-31","0602110211","3665");
INSERT INTO transaction VALUES("624","25","4","1,158.00","124.07","1,033.93","124.07","1,158.00","1158","0","2021-06-01","060594141","6930");
INSERT INTO transaction VALUES("625","63","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-06-01","060594211","6931");
INSERT INTO transaction VALUES("626","21","3","1,076.00","115.29","960.71","115.29","1,076.00","1076","0","2021-06-01","060594258","6932");
INSERT INTO transaction VALUES("627","20","1","501.00","53.68","447.32","53.68","501.00","501","0","2021-06-01","060594330","6933");
INSERT INTO transaction VALUES("628","19","5","21,076.00","2,258.14","18,817.86","2,258.14","21,076.00","21076","0","2021-06-01","060594436","6934");
INSERT INTO transaction VALUES("629","102","2","864.00","92.57","771.43","92.57","864.00","864","0","2021-06-01","060594549","6936");
INSERT INTO transaction VALUES("630","19","2","1,802.00","193.07","1,608.93","193.07","1,802.00","1802","0","2021-06-01","060594653","6937");
INSERT INTO transaction VALUES("631","157","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-06-01","060594738","6938");
INSERT INTO transaction VALUES("632","158","2","1,198.00","128.36","1,069.64","128.36","1,198.00","1198","0","2021-06-01","060594934","6939");
INSERT INTO transaction VALUES("633","158","1","106.00","11.36","94.64","11.36","106.00","106","0","2021-06-01","060594954","6940");
INSERT INTO transaction VALUES("634","53","4","4,632.00","496.29","4,135.71","496.29","4,632.00","4632","0","2021-06-01","060595059","6941");
INSERT INTO transaction VALUES("635","53","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-06-01","060595124","6942");
INSERT INTO transaction VALUES("636","159","4","1,760.00","188.57","1,571.43","188.57","1,760.00","1760","0","2021-06-01","060595230","6943");
INSERT INTO transaction VALUES("637","22","1","280.00","30.00","250.00","30.00","280.00","280","0","2021-06-01","060595255","6944");
INSERT INTO transaction VALUES("638","160","1","212.00","22.71","189.29","22.71","212.00","212","0","2021-06-01","060595336","6945");
INSERT INTO transaction VALUES("639","48","1","80.00","8.57","71.43","8.57","80.00","80","0","2021-06-01","060595623","6978");
INSERT INTO transaction VALUES("640","76","3","5,555.00","595.18","4,959.82","595.18","5,555.00","5555","0","2021-06-01","060595743","6979");
INSERT INTO transaction VALUES("641","86","2","796.00","85.29","710.71","85.29","796.00","796","0","2021-06-02","0605100303","6946");
INSERT INTO transaction VALUES("642","36","4","3,946.00","422.79","3,523.21","422.79","3,946.00","3946","0","2021-06-02","0605100411","6947");
INSERT INTO transaction VALUES("643","161","1","668.00","71.57","596.43","71.57","668.00","668","0","2021-06-02","0605100457","6948");
INSERT INTO transaction VALUES("644","38","4","16,922.00","1,813.07","15,108.93","1,813.07","16,922.00","16922","0","2021-06-02","0605100844","6949");
INSERT INTO transaction VALUES("645","39","2","1,214.00","130.07","1,083.93","130.07","1,214.00","1214","0","2021-06-02","0605100922","6950");
INSERT INTO transaction VALUES("646","119","3","1,136.00","121.71","1,014.29","121.71","1,136.00","1136","0","2021-06-02","0605101014","7001");
INSERT INTO transaction VALUES("647","119","1","530.00","56.79","473.21","56.79","530.00","530","0","2021-06-02","0605101045","7002");
INSERT INTO transaction VALUES("648","84","3","2,608.00","279.43","2,328.57","279.43","2,608.00","2608","0","2021-06-02","0605101132","7003");
INSERT INTO transaction VALUES("649","84","1","167.00","17.89","149.11","17.89","167.00","167","0","2021-06-02","0605101158","7004");
INSERT INTO transaction VALUES("650","56","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-06-02","0605101228","7005");
INSERT INTO transaction VALUES("651","41","1","1,002.00","107.36","894.64","107.36","1,002.00","1002","0","2021-06-02","0605101253","7006");
INSERT INTO transaction VALUES("652","43","4","1,458.00","156.21","1,301.79","156.21","1,458.00","1458","0","2021-06-02","0605101338","7007");
INSERT INTO transaction VALUES("653","44","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-06-02","0605101433","7008");
INSERT INTO transaction VALUES("654","98","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-06-02","0605101454","7009");
INSERT INTO transaction VALUES("655","32","2","3,318.00","355.50","2,962.50","355.50","3,318.00","3318","0","2021-06-02","0605101536","7010");
INSERT INTO transaction VALUES("656","33","2","1,744.00","186.86","1,557.14","186.86","1,744.00","1744","0","2021-06-02","0605101613","7011");
INSERT INTO transaction VALUES("657","104","1","2,120.00","227.14","1,892.86","227.14","2,120.00","2120","0","2021-06-02","0605101646","7012");
INSERT INTO transaction VALUES("658","104","1","840.00","90.00","750.00","90.00","840.00","840","0","2021-06-02","0605101716","7013");
INSERT INTO transaction VALUES("659","35","1","308.00","33.00","275.00","33.00","308.00","308","0","2021-06-02","0605101739","7014");
INSERT INTO transaction VALUES("660","31","1","154.00","16.50","137.50","16.50","154.00","154","0","2021-06-02","0605101801","7015");
INSERT INTO transaction VALUES("661","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-06-02","0605103545","6981");
INSERT INTO transaction VALUES("662","1","3","1,001.00","107.25","893.75","107.25","1,001.00","1001","0","2021-06-03","0605104714","6984");
INSERT INTO transaction VALUES("663","1","1","530.00","56.79","473.21","56.79","530.00","530","0","2021-06-03","0605104800","6987");
INSERT INTO transaction VALUES("664","28","4","1,858.00","199.07","1,658.93","199.07","1,858.00","1858","0","2021-06-04","061191730","7016");
INSERT INTO transaction VALUES("665","162","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-06-04","061191817","7017");
INSERT INTO transaction VALUES("666","29","2","2,080.00","222.86","1,857.14","222.86","2,080.00","2080","0","2021-06-04","061191903","7018");
INSERT INTO transaction VALUES("667","163","2","1,370.00","146.79","1,223.21","146.79","1,370.00","1370","0","2021-06-04","061191940","7019");
INSERT INTO transaction VALUES("668","31","3","3,509.00","375.96","3,133.04","375.96","3,509.00","3509","0","2021-06-04","061192014","7020");
INSERT INTO transaction VALUES("669","164","3","7,749.00","830.25","6,918.75","830.25","7,749.00","7749","0","2021-06-04","061192104","7021");
INSERT INTO transaction VALUES("670","35","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-06-04","061192123","7022");
INSERT INTO transaction VALUES("671","104","1","501.00","53.68","447.32","53.68","501.00","501","0","2021-06-04","061192146","7023");
INSERT INTO transaction VALUES("672","33","2","1,365.00","146.25","1,218.75","146.25","1,365.00","1365","0","2021-06-04","061192214","7024");
INSERT INTO transaction VALUES("673","165","1","212.00","22.71","189.29","22.71","212.00","212","0","2021-06-04","061192244","7025");
INSERT INTO transaction VALUES("674","165","1","1,060.00","113.57","946.43","113.57","1,060.00","1060","0","2021-06-04","061192305","7026");
INSERT INTO transaction VALUES("675","55","3","768.00","82.29","685.71","82.29","768.00","768","0","2021-06-04","061192334","7027");
INSERT INTO transaction VALUES("676","166","4","1,661.00","177.96","1,483.04","177.96","1,661.00","1661","0","2021-06-04","061192428","7028");
INSERT INTO transaction VALUES("677","21","3","1,013.00","108.54","904.46","108.54","1,013.00","1013","0","2021-06-04","061192457","7029");
INSERT INTO transaction VALUES("678","63","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-06-04","061192520","7030");
INSERT INTO transaction VALUES("679","57","4","1,828.00","195.86","1,632.14","195.86","1,828.00","1828","0","2021-06-04","061192640","7031");
INSERT INTO transaction VALUES("680","167","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-06-04","061192718","7032");
INSERT INTO transaction VALUES("681","168","2","434.00","46.50","387.50","46.50","434.00","434","0","2021-06-04","061192745","7033");
INSERT INTO transaction VALUES("682","44","1","1,050.00","112.50","937.50","112.50","1,050.00","1050","0","2021-06-04","061192808","7035");
INSERT INTO transaction VALUES("683","42","3","1,835.00","196.61","1,638.39","196.61","1,835.00","1835","0","2021-06-04","061192849","7036");
INSERT INTO transaction VALUES("684","57","1","530.00","56.79","473.21","56.79","530.00","530","0","2021-06-04","061194625","7016");
INSERT INTO transaction VALUES("685","77","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-06-04","0611100016","6992");
INSERT INTO transaction VALUES("686","169","1","2,300.00","246.43","2,053.57","246.43","2,300.00","2300","0","2021-06-04","0611100126","6993");
INSERT INTO transaction VALUES("687","1","1","530.00","56.79","473.21","56.79","530.00","530","0","2021-06-04","0611100151","6995");
INSERT INTO transaction VALUES("688","25","3","768.00","82.29","685.71","82.29","768.00","768","0","2021-06-05","0611100856","7037");
INSERT INTO transaction VALUES("689","24","4","2,726.00","292.07","2,433.93","292.07","2,726.00","2726","0","2021-06-05","0611101003","7038");
INSERT INTO transaction VALUES("690","170","4","3,525.00","377.68","3,147.32","377.68","3,525.00","3525","0","2021-06-05","0611101111","7039");
INSERT INTO transaction VALUES("691","171","1","154.00","16.50","137.50","16.50","154.00","154","0","2021-06-05","0611101146","7040");
INSERT INTO transaction VALUES("692","172","1","106.00","11.36","94.64","11.36","106.00","106","0","2021-06-05","0611101221","7041");
INSERT INTO transaction VALUES("693","65","2","642.00","68.79","573.21","68.79","642.00","642","0","2021-06-05","0611101252","7042");
INSERT INTO transaction VALUES("694","64","2","602.00","64.50","537.50","64.50","602.00","602","0","2021-06-05","0611101327","7043");
INSERT INTO transaction VALUES("695","23","4","2,576.00","276.00","2,300.00","276.00","2,576.00","2576","0","2021-06-05","0611101409","7044");
INSERT INTO transaction VALUES("696","100","3","4,202.00","450.21","3,751.79","450.21","4,202.00","4202","0","2021-06-05","0611101459","7045");
INSERT INTO transaction VALUES("697","114","2","684.00","73.29","610.71","73.29","684.00","684","0","2021-06-05","0611101530","7046");
INSERT INTO transaction VALUES("698","102","3","1,524.00","163.29","1,360.71","163.29","1,524.00","1524","0","2021-06-05","0611101711","7047");
INSERT INTO transaction VALUES("699","102","1","1,060.00","113.57","946.43","113.57","1,060.00","1060","0","2021-06-05","0611101734","7048");
INSERT INTO transaction VALUES("700","66","4","2,526.00","270.64","2,255.36","270.64","2,526.00","2526","0","2021-06-05","0611101822","7049");
INSERT INTO transaction VALUES("701","173","2","1,052.00","112.71","939.29","112.71","1,052.00","1052","0","2021-06-05","0611101904","7050");
INSERT INTO transaction VALUES("702","67","3","2,234.00","239.36","1,994.64","239.36","2,234.00","2234","0","2021-06-05","0611102028","7101");
INSERT INTO transaction VALUES("703","68","2","1,193.00","127.82","1,065.18","127.82","1,193.00","1193","0","2021-06-05","0611102100","7102");
INSERT INTO transaction VALUES("704","125","2","864.00","92.57","771.43","92.57","864.00","864","0","2021-06-05","0611102130","7103");
INSERT INTO transaction VALUES("705","112","4","3,553.00","380.68","3,172.32","380.68","3,553.00","3553","0","2021-06-05","0611102213","7105");
INSERT INTO transaction VALUES("706","145","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-06-05","0611102238","7106");
INSERT INTO transaction VALUES("707","86","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-06-05","0611102300","7107");
INSERT INTO transaction VALUES("708","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-06-05","0611104158","6998");
INSERT INTO transaction VALUES("709","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-06-05","0611104223","7000");
INSERT INTO transaction VALUES("710","47","1","200.00","21.43","178.57","21.43","200.00","200","0","2021-06-05","0611104302","7151");
INSERT INTO transaction VALUES("711","174","1","2,120.00","227.14","1,892.86","227.14","2,120.00","2120","0","2021-06-05","0611104407","7156");
INSERT INTO transaction VALUES("712","113","1","75.00","8.04","66.96","8.04","75.00","75","0","2021-06-05","0611105650","7164");
INSERT INTO transaction VALUES("713","175","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-06-05","0611105754","7165");
INSERT INTO transaction VALUES("714","132","2","95.00","10.18","84.82","10.18","95.00","95","0","2021-06-05","0611105849","7166");
INSERT INTO transaction VALUES("715","75","2","5,300.00","567.86","4,732.14","567.86","5,300.00","5300","0","2021-06-05","0611105946","7168");
INSERT INTO transaction VALUES("716","1","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-06-05","0611110030","7169");
INSERT INTO transaction VALUES("717","70","3","1,164.50","124.77","1,039.73","124.77","1,164.50","1165","0","2021-06-07","0611110332","7171");
INSERT INTO transaction VALUES("718","1","1","654.00","70.07","583.93","70.07","654.00","654","0","2021-06-07","0611110438","7173");
INSERT INTO transaction VALUES("719","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-06-07","0611110456","7174");
INSERT INTO transaction VALUES("720","1","1","654.00","70.07","583.93","70.07","654.00","654","0","2021-06-07","0611110520","7175");
INSERT INTO transaction VALUES("721","46","1","324.00","34.71","289.29","34.71","324.00","324","0","2021-06-07","0611110548","7176");
INSERT INTO transaction VALUES("722","132","2","70.00","7.50","62.50","7.50","70.00","70","0","2021-06-07","0611110627","7177");
INSERT INTO transaction VALUES("723","21","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-06-08","0611132634","7108");
INSERT INTO transaction VALUES("724","153","1","280.00","30.00","250.00","30.00","280.00","280","0","2021-06-08","0611132819","7109");
INSERT INTO transaction VALUES("725","20","3","1,328.00","142.29","1,185.71","142.29","1,328.00","1328","0","2021-06-08","0611132921","7110");
INSERT INTO transaction VALUES("726","110","1","154.00","16.50","137.50","16.50","154.00","154","0","2021-06-08","0611133004","7111");
INSERT INTO transaction VALUES("727","19","6","22,245.50","2,383.45","19,862.05","2,383.45","22,245.50","22246","0","2021-06-08","0611133157","7112");
INSERT INTO transaction VALUES("728","102","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-06-08","0611133228","7113");
INSERT INTO transaction VALUES("729","176","2","492.00","52.71","439.29","52.71","492.00","492","0","2021-06-08","0611133316","7114");
INSERT INTO transaction VALUES("730","34","2","976.00","104.57","871.43","104.57","976.00","976","0","2021-06-08","0611133345","7115");
INSERT INTO transaction VALUES("731","164","3","768.00","82.29","685.71","82.29","768.00","768","0","2021-06-08","0611133427","7116");
INSERT INTO transaction VALUES("732","82","5","4,456.00","477.43","3,978.57","477.43","4,456.00","4456","0","2021-06-08","0611134134","7117");
INSERT INTO transaction VALUES("733","116","1","530.00","56.79","473.21","56.79","530.00","530","0","2021-06-08","0611134305","7118");
INSERT INTO transaction VALUES("734","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-06-08","0611135946","7182");
INSERT INTO transaction VALUES("735","132","2","45.00","4.82","40.18","4.82","45.00","45","0","2021-06-08","0611140023","7183");
INSERT INTO transaction VALUES("736","131","1","184.00","19.71","164.29","19.71","184.00","184","0","2021-06-08","0611140145","7184");
INSERT INTO transaction VALUES("737","178","1","882.00","94.50","787.50","94.50","882.00","882","0","2021-06-09","0611140506","7185");
INSERT INTO transaction VALUES("738","46","1","270.00","28.93","241.07","28.93","270.00","270","0","2021-06-09","0611140714","7186");
INSERT INTO transaction VALUES("739","77","1","150.00","16.07","133.93","16.07","150.00","150","0","2021-06-09","0611140757","7190");
INSERT INTO transaction VALUES("740","77","1","1,386.00","148.50","1,237.50","148.50","1,386.00","1386","0","2021-06-09","0611140832","7191");
INSERT INTO transaction VALUES("741","132","1","50.00","5.36","44.64","5.36","50.00","50","0","2021-06-09","0611140853","7192");
INSERT INTO transaction VALUES("742","87","1","2,300.00","246.43","2,053.57","246.43","2,300.00","2300","0","2021-06-01","0611160540","3666");
INSERT INTO transaction VALUES("743","49","1","2,300.00","246.43","2,053.57","246.43","2,300.00","2300","0","2021-06-02","0611160637","3667");
INSERT INTO transaction VALUES("744","87","1","2,300.00","246.43","2,053.57","246.43","2,300.00","2300","0","2021-06-03","0611160720","3668");
INSERT INTO transaction VALUES("745","179","1","2,300.00","246.43","2,053.57","246.43","2,300.00","2300","0","2021-06-03","0611160805","3669");
INSERT INTO transaction VALUES("746","180","1","1,180.00","126.43","1,053.57","126.43","1,180.00","1180","0","2021-06-03","0611161142","3670");
INSERT INTO transaction VALUES("747","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-06-04","0611161426","3672");
INSERT INTO transaction VALUES("748","91","1","4,440.00","475.71","3,964.29","475.71","4,440.00","4440","0","2021-06-04","0611161510","3673");
INSERT INTO transaction VALUES("749","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-06-05","0611161548","3674");
INSERT INTO transaction VALUES("750","131","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-06-05","0611161620","3675");
INSERT INTO transaction VALUES("751","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-06-07","0611161656","3677");
INSERT INTO transaction VALUES("752","132","1","2,300.00","246.43","2,053.57","246.43","2,300.00","2300","0","2021-06-07","0611161729","3678");
INSERT INTO transaction VALUES("753","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-06-09","0611161808","3679");
INSERT INTO transaction VALUES("754","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-06-09","0611161842","3680");
INSERT INTO transaction VALUES("755","87","1","2,220.00","237.86","1,982.14","237.86","2,220.00","2220","0","2021-06-11","0611162009","3681");
INSERT INTO transaction VALUES("756","181","1","2,300.00","246.43","2,053.57","246.43","2,300.00","2300","0","2021-06-11","0611162103","3682");



CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` varchar(20) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` double NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL,
  `CASH` double NOT NULL,
  `CREDIT` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1349 DEFAULT CHARSET=latin1;

INSERT INTO transaction_details VALUES("333","411","0507102458","All 8oz 8oz","40","154","Aljohn","IT Technician","40","0");
INSERT INTO transaction_details VALUES("334","419","0507102458","Red Horse 1000ml","36","521","Aljohn","IT Technician","36","0");
INSERT INTO transaction_details VALUES("335","422","0507102458","Vino Kulafu 700ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("336","423","0507102458","Vino Kulafu 350ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("337","412","0507102458","All Litro 1 Liter","5","334","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("338","412","0507102525","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("339","412","0507102553","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("340","417","0507102553","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("341","420","0507102636","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("342","412","0507102636","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("343","412","0507102714","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("344","414","0507102714","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("345","412","0507102746","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("346","414","0507102746","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("347","411","0507102746","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("348","415","0507102746","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("349","415","0507102814","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("350","412","0507102814","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("351","412","0507102835","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("352","414","0507102835","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("353","412","0507102935","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("354","411","0507102935","All 8oz 8oz","5","154","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("355","413","0507103021","All 1.5  1.5 Liter","1","665","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("356","411","0507103243","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("357","430","0507103319","PEPC Gas blue","2","20","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("358","415","0507103347","All Swakto swakto","1","100","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("359","430","0507103411","PEPC Gas blue","10","20","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("360","411","0507103614","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("361","412","0507103614","All Litro 1 Liter","1.5","327","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("362","411","0507103723","All 8oz 8oz","0.5","144","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("363","419","0507103810","Red Horse ","3","515","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("364","411","0507103842","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("365","422","0507113003","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("366","423","0507113003","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("367","412","0507113003","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("368","419","0507113003","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("369","415","0507113003","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("370","419","0507113038","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("371","412","0507113119","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("372","412","0507113151","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("373","420","0507113228","Red Horse 500ml","3","525","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("374","411","0507113228","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("375","412","0507113228","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("376","412","0507113252","All Litro 1 Liter","8","334","Aljohn","IT Technician","8","0");
INSERT INTO transaction_details VALUES("377","417","0507114114","Pilsen Litro 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("378","412","0507114114","All Litro 1 Liter","2.5","334","Aljohn","IT Technician","2.5","0");
INSERT INTO transaction_details VALUES("379","411","0507114114","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("380","412","0507114255","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("381","422","0507114255","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("382","411","0507114255","All 8oz 8oz","8","154","Aljohn","IT Technician","8","0");
INSERT INTO transaction_details VALUES("383","425","0507114255","Emperador Brandy 700ML","1","1315","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("384","417","0507114255","Pilsen Litro 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("385","420","0507114255","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("386","411","0507114455","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("387","412","0507114455","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("388","423","0507114455","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("389","417","0507114520","Pilsen Litro 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("390","412","0507114557","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("391","411","0507114557","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("392","412","0507114659","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("393","411","0507114659","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("394","420","0507114659","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("395","420","0507114751","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("396","417","0507114751","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("397","411","0507114751","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("398","414","0507114751","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("399","415","0507114751","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("400","420","0507114842","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("401","411","0507114842","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("402","412","0507114920","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("403","411","0507114920","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("404","422","0507114920","Vino Kulafu 700ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("405","417","0507114949","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("406","414","0507114949","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("407","412","0507115027","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("408","411","0507115027","All 8oz 8oz","5","154","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("409","412","0507115103","All Litro 1 Liter","4","334","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("410","422","0507115103","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("411","412","0507115150","All Litro 1 Liter","6","334","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("412","420","0507115150","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("413","411","0507115150","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("414","422","0507115243","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("415","423","0507115243","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("416","420","0507115243","Red Horse 500ml","2","525","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("417","414","0507115243","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("418","411","0507115243","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("419","415","0507115243","All Swakto swakto","3","106","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("420","411","0507115416","All 8oz 8oz","5.5","154","Aljohn","IT Technician","5.5","0");
INSERT INTO transaction_details VALUES("421","417","0507115416","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("422","414","0507115416","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("423","414","0507115442","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("424","416","0507115442","All Minute Maid Apple","1","85","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("425","411","0507115821","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("426","430","0507115840","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("427","411","0507115928","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("428","426","0507120137","Excellent 50KG","1","2200","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("429","411","0507140020","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("430","411","0507161613","All 8oz 8oz","5","154","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("431","414","0507161728","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("432","411","0507161728","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("433","412","0507161728","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("434","419","0507161907","Red Horse 1000ml","6","530","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("435","411","0507161907","All 8oz 8oz","6","154","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("436","412","0507161907","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("437","414","0507161907","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("438","413","0507161907","All 1.5  1.5 Liter","1","665","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("439","414","0507162034","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("440","411","0507162034","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("441","420","0507162034","Red Horse 500ml","3","525","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("442","419","0507162034","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("443","414","0507162214","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("444","419","0507162214","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("445","419","0507162305","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("446","420","0507162305","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("447","420","0507162419","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("448","412","0507162419","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("449","411","0507162419","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("450","419","0507162515","Red Horse 1000ml","5","535","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("451","415","0507162515","All Swakto swakto","3","106","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("452","419","0507162601","Red Horse 1000ml","6","535","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("453","412","0507162659","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("454","411","0507162659","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("455","414","0507162738","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("456","412","0507162738","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("457","419","0507162840","Red Horse 1000ml","5","535","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("458","419","0507162959","Red Horse 1000ml","5","525","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("459","415","0507162959","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("460","419","0507163041","Red Horse 1000ml","3","535","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("461","412","0507163041","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("462","412","0507163116","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("463","419","0507163209","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("464","411","0507163209","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("465","412","0507163532","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("466","411","0507163532","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("467","420","0507163532","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("468","419","0507163532","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("469","430","050890334","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("470","438","050892625","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("471","430","0508113946","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("472","411","0508114156","All 8oz 8oz","3","144","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("473","420","0508114156","Red Horse 500ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("474","411","0508114329","All 8oz 8oz","3","144","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("475","419","0508114455","Red Horse 1000ml","1","515","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("476","438","0508114537","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("477","416","0508162238","All Minute Maid Apple","5","85","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("478","411","0508162332","All 8oz 8oz","5","154","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("479","411","0508162648","All 8oz 8oz","10","154","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("480","419","0508162648","Red Horse 1000ml","8","521","Aljohn","IT Technician","8","0");
INSERT INTO transaction_details VALUES("481","417","0508162648","Pilsen Litro 1000ml","1","521","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("482","421","0508162648","Red Horse Stallion","2","775","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("483","412","0508162648","All Litro 1 Liter","6","334","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("484","412","0508162743","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("485","411","0508162743","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("486","419","0508162905","Red Horse 1000ml","4","535","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("487","411","0508162905","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("488","412","0508162905","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("489","417","0508163033","Pilsen Litro 1000ml","5","530","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("490","419","0508163033","Red Horse 1000ml","5","530","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("491","414","0508163033","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("492","422","0508163033","Vino Kulafu 700ML","4","840","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("493","423","0508163033","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("494","412","0508163157","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("495","419","0508163157","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("496","411","0508163157","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("497","417","0508163321","Pilsen Litro 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("498","412","0508163321","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("499","411","0508163321","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("500","412","0508163422","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("501","411","0508163422","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("502","414","0508163422","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("503","414","0508163455","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("504","419","0508163620","Red Horse 1000ml","3","535","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("505","411","0508163620","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("506","412","0508163620","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("507","414","0508163620","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("508","419","0508163823","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("509","412","0508163823","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("510","412","0508163850","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("511","411","0508163850","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("512","423","0508163913","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("513","417","0508164038","Pilsen Litro 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("514","419","0508164038","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("515","412","0508164038","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("516","419","0508164139","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("517","412","0508164139","All Litro 1 Liter","1.5","334","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("518","411","0508164139","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("519","411","051094525","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("520","411","051094607","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("521","411","051094733","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("522","412","051094733","All Litro 1 Liter","0.5","327","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("523","412","051095141","All Litro 1 Liter","2","327","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("524","411","051095141","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("525","419","051095141","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("526","420","051095141","Red Horse 500ml","1","520","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("527","419","051095332","Red Horse 1000ml","1","515","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("528","438","051095529","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("529","411","051095620","All 8oz 8oz","6","144","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("530","413","0510100153","All 1.5  1.5 Liter","3","648","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("531","418","051280716","Pale Pilsen Small","2","755","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("532","411","051280716","All 8oz 8oz","5","144","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("533","411","051280849","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("534","412","051280849","All Litro 1 Liter","2","327","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("535","430","051280924","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("536","411","051281008","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("537","411","051281102","All 8oz 8oz","4","144","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("538","412","051281212","All Litro 1 Liter","1.5","327","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("539","411","051281212","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("540","415","051293605","All Swakto swakto","1","100","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("541","411","051293605","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("542","419","051293605","Red Horse 1000ml","2","520","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("543","414","051293605","All Cobra yellow","1","275","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("544","412","051293605","All Litro 1 Liter","2","327","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("545","411","051293639","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("546","430","051294346","PEPC Gas blue","10","20","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("547","412","051294610","All Litro 1 Liter","3","324","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("548","426","051294750","Excellent 50KG","1","2070","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("549","429","051294824","PEPC Gas green","1","25","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("550","415","051294928","All Swakto swakto","2","100","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("551","411","051295426","All 8oz 8oz","1.5","144","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("552","430","051295459","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("553","416","051295535","All Minute Maid Apple","1","75","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("554","416","051295610","All Minute Maid Apple","1","75","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("555","416","051482112","All Minute Maid Apple","2","75","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("556","411","051482229","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("557","414","051482229","All Cobra yellow","1","270","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("558","430","051482304","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("559","430","051482337","PEPC Gas blue","6","20","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("560","411","051494552","All 8oz 8oz","10","154","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("561","412","051494655","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("562","419","051494655","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("563","423","051494655","Vino Kulafu 350ML","0.5","840","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("564","411","051494655","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("565","414","051494655","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("566","419","051494754","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("567","411","051494754","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("568","412","051494754","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("569","414","051494754","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("570","415","051494754","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("571","419","051494856","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("572","420","051494856","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("573","412","051494856","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("574","411","051494856","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("575","414","051494856","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("576","412","051494946","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("577","412","051495027","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("578","419","051495027","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("579","411","051495027","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("580","419","051495135","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("581","412","051495135","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("582","419","051495204","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("583","412","051495204","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("584","411","051495237","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("585","412","051495237","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("586","419","051495604","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("587","420","051495630","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("588","419","051495742","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("589","414","051495742","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("590","411","051495742","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("591","423","051495742","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("592","412","0514100011","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("593","411","0514100011","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("594","412","0514100132","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("595","411","0514100132","All 8oz 8oz","0.5","154","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("596","420","0514100132","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("597","415","0514100132","All Swakto swakto","3","106","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("598","422","0514100132","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("599","414","0514100132","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("600","412","0514100258","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("601","411","0514100258","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("602","422","0514100442","Vino Kulafu 700ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("603","423","0514100442","Vino Kulafu 350ML","0.5","840","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("604","419","0514100442","Red Horse 1000ml","10","530","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("605","420","0514100442","Red Horse 500ml","2","525","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("606","412","0514100442","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("607","411","0514100442","All 8oz 8oz","4","154","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("608","414","0514100442","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("609","419","0514100544","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("610","411","0514100544","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("611","422","0514100544","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("612","419","0514100641","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("613","412","0514100641","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("614","411","0514100641","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("615","412","0514100719","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("616","414","0514100719","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("617","411","0514100719","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("618","419","0514100830","Red Horse 1000ml","3","535","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("619","412","0514100830","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("620","411","0514100830","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("621","411","0514100921","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("622","440","0514134858","Pilapil 50KG","1","2020","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("623","428","0514135604","Lion Ivory 25KG","1","1180","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("624","427","0514135919","Lion Ivory 50KG","1","2300","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("625","428","0514140010","Lion Ivory 25KG","1","1180","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("626","428","0514140108","Lion Ivory 25KG","1","1180","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("627","426","0514140157","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("628","426","0514140252","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("629","426","0514140343","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("630","426","0514140453","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("631","426","0514140642","Excellent 50KG","2","2220","Aljohn","IT Technician","0","2");
INSERT INTO transaction_details VALUES("632","427","0514140727","Lion Ivory 50KG","1","2300","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("633","426","0514140810","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("634","426","0514140851","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("635","426","0514140941","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("636","426","0514141302","Excellent 50KG","1","2250","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("637","426","0514141338","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("638","426","0514141432","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("639","412","0517101533","All Litro 1 Liter","1.5","334","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("640","419","0517101533","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("641","422","0517101533","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("642","413","0517101533","All 1.5  1.5 Liter","1","665","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("643","414","0517101609","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("644","419","0517101703","Red Horse 1000ml","6","530","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("645","412","0517101703","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("646","411","0517101743","All 8oz 8oz","10","154","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("647","412","0517101743","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("648","417","0517102549","Pilsen Litro 1000ml","3","535","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("649","412","0517102549","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("650","411","0517102549","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("651","412","0517102654","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("652","411","0517102654","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("653","412","0517102746","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("654","411","0517102859","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("655","412","0517102943","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("656","414","0517102943","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("657","412","0517103522","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("658","411","0517103522","All 8oz 8oz","10","154","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("659","419","0517103522","Red Horse 1000ml","4","535","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("660","420","0517103522","Red Horse 500ml","2","525","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("661","425","0517103522","Emperador Brandy 700ML","1","1315","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("662","419","0517103622","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("663","412","0517103622","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("664","419","0517103842","Red Horse 1000ml","12","530","Aljohn","IT Technician","12","0");
INSERT INTO transaction_details VALUES("665","420","0517103842","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("666","417","0517103842","Pilsen Litro 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("667","411","0517103842","All 8oz 8oz","8","154","Aljohn","IT Technician","8","0");
INSERT INTO transaction_details VALUES("668","412","0517103842","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("669","412","0517104034","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("670","419","0517104034","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("671","411","0517104034","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("672","414","0517104034","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("673","423","0517104034","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("674","412","0517104207","All Litro 1 Liter","0.5","334","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("675","423","0517104207","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("676","415","0517104207","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("677","414","0517104236","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("678","411","0517104827","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("679","419","0517105024","Red Horse 1000ml","2","520","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("680","420","0517105024","Red Horse 500ml","1","515","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("681","436","0517105024","San Mig Light","0.5","880","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("682","437","0517105024","San Mig Flavored Beer","0.5","707","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("683","418","0517105108","Pale Pilsen Small","1","755","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("684","411","0517105108","All 8oz 8oz","4","144","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("685","412","0517105258","All Litro 1 Liter","1","324","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("686","411","0517105258","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("687","419","0517105258","Red Horse 1000ml","1","520","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("688","411","0517105335","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("689","415","0517105413","All Swakto swakto","4","100","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("690","412","0517105450","All Litro 1 Liter","1","327","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("691","416","0517105522","All Minute Maid Apple","1","75","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("692","415","0517110836","All Swakto swakto","4","106","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("693","412","0517110836","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("694","414","0517110836","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("695","411","0517110836","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("696","422","0517110925","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("697","423","0517110925","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("698","419","0517111149","Red Horse 1000ml","5","530","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("699","415","0517111149","All Swakto swakto","3","106","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("700","422","0517111254","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("701","419","0517111254","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("702","420","0517111254","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("703","411","0517111254","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("704","412","0517111404","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("705","411","0517111404","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("706","412","0517111550","All Litro 1 Liter","0.5","334","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("707","411","0517111550","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("708","419","0517111550","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("709","438","0517112138","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("710","412","0517112206","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("711","419","0517112302","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("712","412","0517112302","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("713","411","0517112302","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("714","412","0517112333","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("715","411","0517112333","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("716","420","0517112413","Red Horse 500ml","3","525","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("717","420","0517112454","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("718","438","0517112454","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("719","417","0517112603","Pilsen Litro 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("720","414","0517112641","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("721","419","0517112641","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("722","411","0517112641","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("723","417","0517112911","Pilsen Litro 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("724","419","0517112911","Red Horse 1000ml","7","530","Aljohn","IT Technician","7","0");
INSERT INTO transaction_details VALUES("725","412","0517112911","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("726","411","0517112911","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("727","411","0517114427","All 8oz 8oz","1.5","144","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("728","412","0517114427","All Litro 1 Liter","1","327","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("729","411","0517114502","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("730","438","0517114605","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("731","419","0517114649","Red Horse 1000ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("732","426","0517132426","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("733","428","0517132546","Lion Ivory 25KG","1","1180","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("734","412","0518103942","All Litro 1 Liter","2","327","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("735","411","0518103942","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("736","415","0518104322","All Swakto swakto","5","100","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("737","413","0518104322","All 1.5  1.5 Liter","1","655","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("738","422","0518104322","Vino Kulafu 700ML","1","800","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("739","411","0518104427","All 8oz 8oz","5","144","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("740","411","0518104501","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("741","426","0518104658","Excellent 50KG","1","2120","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("742","412","0518152908","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("743","411","0518153012","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("744","419","0518153152","Red Horse 1000ml","20","521","Aljohn","IT Technician","20","0");
INSERT INTO transaction_details VALUES("745","411","0518153152","All 8oz 8oz","30","154","Aljohn","IT Technician","30","0");
INSERT INTO transaction_details VALUES("746","412","0518153152","All Litro 1 Liter","11","334","Aljohn","IT Technician","11","0");
INSERT INTO transaction_details VALUES("747","422","0518153152","Vino Kulafu 700ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("748","415","0518153152","All Swakto swakto","10","106","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("749","416","0518153152","All Minute Maid Apple","2","85","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("750","411","0518153257","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("751","419","0518153420","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("752","412","0518153420","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("753","411","0518153504","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("754","412","0518153538","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("755","420","0518153639","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("756","419","0518153639","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("757","412","0518153639","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("758","411","0518153639","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("759","419","0518162317","Red Horse 1000ml","5","525","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("760","411","0518162317","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("761","421","0518162317","Red Horse Stallion","1","770","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("762","422","0518162317","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("763","417","0518162443","Pilsen Litro 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("764","420","0518162443","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("765","419","0518162443","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("766","412","0518162443","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("767","412","0518162532","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("768","411","0518162557","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("769","414","0518162726","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("770","412","0518162726","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("771","420","0518162726","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("772","422","0518162726","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("773","411","0518162726","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("774","411","052295453","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("775","430","052295523","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("776","411","052295709","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("777","414","052295709","All Cobra yellow","1","270","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("778","428","052295825","Lion Ivory 25KG","1","1130","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("779","429","052295910","PEPC Gas green","3","25","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("780","418","0522100110","Pale Pilsen Small","1","755","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("781","415","0522100110","All Swakto swakto","4","100","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("782","411","0522100217","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("783","411","0522100354","All 8oz 8oz","1.5","144","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("784","411","0522100628","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("785","412","0522100628","All Litro 1 Liter","1","327","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("786","411","0522100700","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("787","430","0522100721","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("788","429","0522100748","PEPC Gas green","1","25","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("789","416","0522100955","All Minute Maid Apple","2","75","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("790","412","0522102016","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("791","417","0522102016","Pilsen Litro 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("792","411","0522102016","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("793","412","0522102103","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("794","411","0522102103","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("795","419","0522102200","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("796","412","0522102200","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("797","411","0522102200","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("798","422","0522102200","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("799","412","0522102235","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("800","411","0522102235","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("801","423","0522102348","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("802","422","0522102348","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("803","420","0522102348","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("804","419","0522102348","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("805","412","0522102348","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("806","414","0522102348","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("807","423","0522102417","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("808","412","0522102513","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("809","411","0522102513","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("810","411","0522102553","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("811","412","0522102553","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("812","411","0522102626","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("813","415","0522102626","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("814","423","0522102711","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("815","411","0522102711","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("816","414","0522102711","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("817","425","0522102736","Emperador Brandy 700ML","1","1315","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("818","411","0522102822","All 8oz 8oz","15","154","Aljohn","IT Technician","15","0");
INSERT INTO transaction_details VALUES("819","412","0522102932","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("820","419","0522102932","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("821","414","0522102932","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("822","419","0522103110","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("823","420","0522103110","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("824","414","0522103110","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("825","412","0522103110","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("826","415","0522103110","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("827","412","0522103201","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("828","411","0522103201","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("829","420","0522103201","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("830","419","0522103201","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("831","417","0522103321","Pilsen Litro 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("832","412","0522103321","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("833","411","0522103321","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("834","420","0522103321","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("835","417","0522103430","Pilsen Litro 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("836","419","0522103430","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("837","412","0522103430","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("838","411","0522103430","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("839","415","0522103430","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("840","414","0522103456","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("841","417","0522103846","Pilsen Litro 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("842","419","0522103846","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("843","412","0522103846","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("844","414","0522103846","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("845","415","0522103846","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("846","414","0522103935","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("847","412","0522103935","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("848","417","0522104024","Pilsen Litro 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("849","419","0522104024","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("850","415","0522104050","All Swakto swakto","4","106","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("851","419","0522104129","Red Horse 1000ml","5","530","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("852","412","0522104215","All Litro 1 Liter","4","334","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("853","419","0522104215","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("854","417","0522104320","Pilsen Litro 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("855","419","0522104320","Red Horse 1000ml","4","530","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("856","414","0522104320","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("857","428","0522105609","Lion Ivory 25KG","1","1130","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("858","412","0522105743","All Litro 1 Liter","1","324","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("859","411","0522105743","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("860","411","0522105836","All 8oz 8oz","1.5","144","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("861","426","0522110001","Excellent 50KG","1","2120","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("862","416","0522110055","All Minute Maid Apple","2","75","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("863","419","0524105421","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("864","417","0524105421","Pilsen Litro 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("865","411","0524105421","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("866","415","0524105421","All Swakto swakto","3","106","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("867","414","0524105542","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("868","411","0524105650","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("869","419","0524105817","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("870","412","0524105817","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("871","415","0524105817","All Swakto swakto","3","106","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("872","419","0524105919","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("873","415","0524105919","All Swakto swakto","6","106","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("874","419","0524110026","Red Horse 1000ml","10","530","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("875","411","0524110102","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("876","412","0524110102","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("877","419","0524110213","Red Horse 1000ml","5","530","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("878","414","0524110213","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("879","419","0524110310","Red Horse 1000ml","4","530","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("880","412","0524110310","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("881","411","0524110310","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("882","414","0524110310","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("883","419","0524110354","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("884","412","0524110354","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("885","417","0524110434","Pilsen Litro 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("886","411","0524110434","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("887","423","0524110434","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("888","419","0524110534","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("889","417","0524110534","Pilsen Litro 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("890","411","0524110534","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("891","412","0524110534","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("892","412","0524110608","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("893","411","0524110608","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("894","412","0524110653","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("895","414","0524110653","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("896","411","0524110653","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("897","412","0524110722","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("898","411","0524110722","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("899","412","0524110803","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("900","411","0524110803","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("901","412","0524110835","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("902","414","0524110835","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("903","412","0524111918","All Litro 1 Liter","2","327","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("904","411","0524111918","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("905","419","0524112629","Red Horse 1000ml","3","525","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("906","417","0524112629","Pilsen Litro 1000ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("907","412","0524112629","All Litro 1 Liter","1","324","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("908","415","0524112629","All Swakto swakto","5","100","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("909","438","0524112629","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("910","438","0524112729","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("911","429","0524112902","PEPC Gas green","3","25","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("912","419","0524153009","Red Horse 1000ml","30","521","Aljohn","IT Technician","30","0");
INSERT INTO transaction_details VALUES("913","411","0524153009","All 8oz 8oz","15","154","Aljohn","IT Technician","15","0");
INSERT INTO transaction_details VALUES("914","422","0524153009","Vino Kulafu 700ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("915","412","0524153009","All Litro 1 Liter","10","334","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("916","413","0524153009","All 1.5  1.5 Liter","1","665","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("917","419","0524153214","Red Horse 1000ml","3","525","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("918","415","0524153214","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("919","412","0524153456","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("920","411","0524153456","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("921","412","0524153603","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("922","412","0526114841","All Litro 1 Liter","2","334","Aljohn","IT Technician","0","2");
INSERT INTO transaction_details VALUES("923","429","0526115224","PEPC Gas green","2","25","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("924","429","0526115310","PEPC Gas green","20","25","Aljohn","IT Technician","20","0");
INSERT INTO transaction_details VALUES("925","411","0526115349","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("926","412","0526115455","All Litro 1 Liter","1","324","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("927","411","0526115455","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("928","438","0526115538","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("929","411","0526115658","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("930","411","0526115723","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("931","429","0526115801","PEPC Gas green","4","25","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("932","430","0526115801","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("933","438","0526115821","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("934","412","0527103307","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("935","411","0527103307","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("936","414","0527103307","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("937","412","0527103638","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("938","411","0527103638","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("939","419","0527103638","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("940","415","0527103638","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("941","414","0527103638","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("942","411","0527103917","All 8oz 8oz","1.5","154","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("943","414","0527103917","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("944","420","0527104309","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("945","411","0527104309","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("946","419","0527104419","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("947","415","0527104419","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("948","412","0527104450","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("949","411","0527104450","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("950","411","0527104818","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("951","412","0527104905","All Litro 1 Liter","9","334","Aljohn","IT Technician","9","0");
INSERT INTO transaction_details VALUES("952","412","0527111613","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("953","419","0527111727","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("954","412","0527111727","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("955","419","0527112436","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("956","412","0527112436","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("957","414","0527112436","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("958","411","0527112436","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("959","413","0527112645","All 1.5  1.5 Liter","1","665","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("960","419","0527112645","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("961","411","0527112645","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("962","412","0527112645","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("963","419","0527112844","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("964","420","0527112844","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("965","412","0527112844","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("966","411","0527112844","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("967","412","0527113100","All Litro 1 Liter","1.5","334","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("968","411","0527113100","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("969","414","0527113100","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("970","419","0527113100","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("971","412","0527113228","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("972","411","0527113228","All 8oz 8oz","0.5","154","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("973","414","0527113228","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("974","412","0527113258","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("975","419","0527113258","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("976","412","0527113420","All Litro 1 Liter","1.5","334","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("977","414","0527113420","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("978","411","0527113420","All 8oz 8oz","0.5","154","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("979","420","0527113420","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("980","438","0527113420","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("981","419","0527113420","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("982","412","0527113455","All Litro 1 Liter","0.5","334","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("983","419","0527113603","Red Horse 1000ml","5","530","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("984","411","0527113603","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("985","412","0527113603","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("986","420","0527113603","Red Horse 500ml","2","525","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("987","423","0527113630","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("988","413","0527113726","All 1.5  1.5 Liter","1","665","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("989","411","0527113726","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("990","415","0527145721","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("991","430","0527151301","PEPC Gas blue","20","17","Aljohn","IT Technician","20","0");
INSERT INTO transaction_details VALUES("992","411","0527151356","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("993","412","0527151356","All Litro 1 Liter","1.5","327","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("994","412","0527151434","All Litro 1 Liter","2","327","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("995","414","0527151535","All Cobra yellow","1","270","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("996","438","0527151605","Primera Light 750ML","4","92","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("997","411","0527151643","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("998","438","052995747","Primera Light 750ML","2","92","Aljohn","IT Technician","0","2");
INSERT INTO transaction_details VALUES("999","411","0529100828","All 8oz 8oz","1.5","144","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("1000","416","0529100921","All Minute Maid Apple","3","75","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1001","412","053190318","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1002","411","053190318","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1003","411","053190735","All 8oz 8oz","4","154","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1004","412","053190904","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1005","411","053190904","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1006","420","053190904","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1007","419","053191001","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1008","420","053191001","Red Horse 500ml","2","525","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1009","414","053191001","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1010","411","053191001","All 8oz 8oz","4","154","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1011","419","053191043","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1012","415","053191147","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1013","412","053191233","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1014","411","053191233","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1015","419","053191425","Red Horse 1000ml","5","530","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("1016","412","053191425","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1017","411","053191425","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1018","411","053191636","All 8oz 8oz","2.5","154","Aljohn","IT Technician","2.5","0");
INSERT INTO transaction_details VALUES("1019","415","053191636","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1020","414","053191636","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("1021","412","053191636","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1022","419","053191843","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1023","411","053191843","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1024","419","053192106","Red Horse 1000ml","5","530","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("1025","415","053192106","All Swakto swakto","4","106","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1026","414","053192106","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1027","438","053192413","Primera Light 750ML","6","92","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("1028","419","053192413","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1029","411","053192413","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1030","419","053192535","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1031","411","053192535","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1032","412","053192535","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1033","414","053192535","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1034","412","053192654","All Litro 1 Liter","1.5","334","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("1035","423","053192654","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1036","412","053192808","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1037","423","053192808","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1038","419","053192851","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1039","415","053192918","All Swakto swakto","4","106","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1040","414","053194151","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1041","419","053194151","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1042","411","053194151","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1043","411","053194251","All 8oz 8oz","4","154","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1044","415","053194349","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1045","419","053194513","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1046","411","053194513","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1047","414","053194513","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("1048","412","053194513","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1049","412","053194622","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1050","419","053194622","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1051","419","0531103424","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1052","412","0531103424","All Litro 1 Liter","1","327","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1053","429","0531103503","PEPC Gas green","3","25","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1054","430","0531103529","PEPC Gas blue","15","20","Aljohn","IT Technician","15","0");
INSERT INTO transaction_details VALUES("1055","411","0531103609","All 8oz 8oz","1.5","144","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("1056","420","0531103654","Red Horse 500ml","1","520","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1057","416","0601151844","All Minute Maid Apple","1","75","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1058","411","0601151921","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1059","411","0601152009","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1060","419","0601152116","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1061","412","0601152116","All Litro 1 Liter","1","327","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1062","415","0601152116","All Swakto swakto","1","100","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1063","415","0601152143","All Swakto swakto","1","100","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1064","411","0601152225","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1065","412","0601152225","All Litro 1 Liter","1","327","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1066","415","0601152309","All Swakto swakto","1","100","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1067","429","0601152337","PEPC Gas green","3","25","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1068","430","0601152337","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1069","429","0601152403","PEPC Gas green","3","25","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1070","411","0601152434","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1071","419","060284617","Red Horse 1000ml","80","530","Aljohn","IT Technician","0","80");
INSERT INTO transaction_details VALUES("1072","417","060284617","Pilsen Litro 1000ml","19","530","Aljohn","IT Technician","0","19");
INSERT INTO transaction_details VALUES("1073","412","060284617","All Litro 1 Liter","6","329","Aljohn","IT Technician","0","6");
INSERT INTO transaction_details VALUES("1074","415","060284617","All Swakto swakto","5","105","Aljohn","IT Technician","0","5");
INSERT INTO transaction_details VALUES("1075","424","060284617","Primera Light 750ML","1","1104","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1076","411","060284617","All 8oz 8oz","25","149","Aljohn","IT Technician","0","25");
INSERT INTO transaction_details VALUES("1077","423","060284617","Vino Kulafu 350ML","4","830","Aljohn","IT Technician","0","4");
INSERT INTO transaction_details VALUES("1078","426","0602100627","Excellent 50KG","1","2325","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1079","426","0602101945","Excellent 50KG","1","2325","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1080","426","0602102133","Excellent 50KG","1","2325","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1081","426","0602102604","Excellent 50KG","1","2325","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1082","426","0602102707","Excellent 50KG","1","2325","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1083","426","0602102810","Excellent 50KG","1","2325","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1084","426","0602103043","Excellent 50KG","2","2325","Aljohn","IT Technician","0","2");
INSERT INTO transaction_details VALUES("1085","426","0602103150","Excellent 50KG","2","2325","Aljohn","IT Technician","0","2");
INSERT INTO transaction_details VALUES("1086","426","0602104626","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1087","426","0602104725","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1088","426","0602105002","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1089","426","0602105047","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1090","428","0602105147","Lion Ivory 25KG","1","1180","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1091","428","0602105230","Lion Ivory 25KG","1","1180","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1092","426","0602105554","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1093","427","0602105742","Lion Ivory 50KG","1","2360","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1094","426","0602105832","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1095","426","0602105954","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1096","428","0602110035","Lion Ivory 25KG","1","1180","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1097","426","0602110124","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1098","426","0602110211","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1099","442","060594141","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1100","449","060594141","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1101","444","060594141","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("1102","441","060594141","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1103","442","060594211","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1104","442","060594258","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1105","449","060594258","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1106","445","060594258","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1107","442","060594330","All Litro 1 Liter","1.5","334","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("1108","442","060594436","All Litro 1 Liter","4","334","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1109","449","060594436","Red Horse 1000ml","30","525","Aljohn","IT Technician","30","0");
INSERT INTO transaction_details VALUES("1110","441","060594436","All 8oz 8oz","15","154","Aljohn","IT Technician","15","0");
INSERT INTO transaction_details VALUES("1111","452","060594436","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1112","453","060594436","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1113","449","060594549","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1114","442","060594549","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1115","449","060594653","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1116","445","060594653","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1117","442","060594738","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1118","442","060594934","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1119","449","060594934","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1120","445","060594954","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1121","449","060595059","Red Horse 1000ml","7","530","Aljohn","IT Technician","7","0");
INSERT INTO transaction_details VALUES("1122","444","060595059","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1123","442","060595059","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1124","441","060595059","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1125","442","060595124","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1126","449","060595230","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1127","442","060595230","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1128","441","060595230","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1129","445","060595230","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1130","444","060595255","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1131","445","060595336","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1132","460","060595623","PEPC Gas blue","4","20","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1133","441","060595743","All 8oz 8oz","9","144","Aljohn","IT Technician","9","0");
INSERT INTO transaction_details VALUES("1134","442","060595743","All Litro 1 Liter","2","327","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1135","449","060595743","Red Horse 1000ml","7","515","Aljohn","IT Technician","7","0");
INSERT INTO transaction_details VALUES("1136","441","0605100303","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1137","442","0605100303","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1138","449","0605100411","Red Horse 1000ml","4","530","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1139","442","0605100411","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1140","445","0605100411","All Swakto swakto","3","106","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1141","452","0605100411","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1142","442","0605100457","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1143","449","0605100844","Red Horse 1000ml","20","530","Aljohn","IT Technician","20","0");
INSERT INTO transaction_details VALUES("1144","452","0605100844","Vino Kulafu 700ML","3","840","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1145","441","0605100844","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1146","442","0605100844","All Litro 1 Liter","10","334","Aljohn","IT Technician","10","0");
INSERT INTO transaction_details VALUES("1147","449","0605100922","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1148","441","0605100922","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1149","441","0605101014","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1150","446","0605101014","All Minute Maid Apple","4","85","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1151","442","0605101014","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1152","449","0605101045","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1153","449","0605101132","Red Horse 1000ml","4","530","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1154","442","0605101132","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1155","441","0605101132","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1156","442","0605101158","All Litro 1 Liter","0.5","334","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("1157","442","0605101228","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1158","441","0605101228","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1159","442","0605101253","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1160","442","0605101338","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1161","441","0605101338","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1162","445","0605101338","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1163","449","0605101338","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1164","442","0605101433","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1165","441","0605101433","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1166","442","0605101454","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1167","442","0605101536","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1168","449","0605101536","Red Horse 1000ml","5","530","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("1169","449","0605101613","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1170","441","0605101613","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1171","449","0605101646","Red Horse 1000ml","4","530","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1172","452","0605101716","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1173","441","0605101739","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1174","441","0605101801","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1175","460","0605103545","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1176","449","0605104714","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1177","442","0605104714","All Litro 1 Liter","1","327","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1178","441","0605104714","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1179","449","0605104800","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1180","453","061191730","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1181","449","061191730","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1182","441","061191730","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1183","442","061191730","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1184","442","061191817","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1185","441","061191903","All 8oz 8oz","7","154","Aljohn","IT Technician","7","0");
INSERT INTO transaction_details VALUES("1186","442","061191903","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1187","449","061191940","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1188","452","061191940","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1189","450","061192014","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1190","449","061192014","Red Horse 1000ml","5","530","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("1191","442","061192014","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1192","449","061192104","Red Horse 1000ml","13","530","Aljohn","IT Technician","13","0");
INSERT INTO transaction_details VALUES("1193","450","061192104","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1194","442","061192104","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1195","442","061192123","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1196","442","061192146","All Litro 1 Liter","1.5","334","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("1197","442","061192214","All Litro 1 Liter","2.5","334","Aljohn","IT Technician","2.5","0");
INSERT INTO transaction_details VALUES("1198","449","061192214","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1199","445","061192244","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1200","449","061192305","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1201","441","061192334","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1202","444","061192334","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1203","442","061192334","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1204","444","061192428","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1205","441","061192428","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1206","449","061192428","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1207","442","061192428","All Litro 1 Liter","0.5","334","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("1208","450","061192457","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1209","442","061192457","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1210","441","061192457","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1211","442","061192520","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1212","441","061192520","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1213","449","061192640","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1214","442","061192640","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1215","441","061192640","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1216","444","061192640","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1217","442","061192718","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1218","441","061192718","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1219","444","061192745","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1220","441","061192745","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1221","450","061192808","Red Horse 500ml","2","525","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1222","442","061192849","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1223","450","061192849","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1224","441","061192849","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1225","449","061194625","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1226","441","0611100016","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1227","457","0611100126","Lion Ivory 50KG","1","2300","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1228","449","0611100151","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1229","442","0611100856","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1230","441","0611100856","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1231","444","0611100856","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1232","441","0611101003","All 8oz 8oz","5","154","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("1233","442","0611101003","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1234","445","0611101003","All Swakto swakto","4","106","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1235","447","0611101003","Pilsen Litro 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1236","442","0611101111","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1237","449","0611101111","Red Horse 1000ml","4","530","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1238","450","0611101111","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1239","445","0611101111","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1240","441","0611101146","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1241","445","0611101221","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1242","442","0611101252","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1243","441","0611101252","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1244","441","0611101327","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1245","444","0611101327","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("1246","453","0611101409","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1247","452","0611101409","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1248","441","0611101409","All 8oz 8oz","4","154","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("1249","444","0611101409","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1250","444","0611101459","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1251","447","0611101459","Pilsen Litro 1000ml","7","530","Aljohn","IT Technician","7","0");
INSERT INTO transaction_details VALUES("1252","445","0611101459","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1253","449","0611101530","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1254","441","0611101530","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1255","453","0611101711","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1256","449","0611101711","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1257","441","0611101711","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1258","449","0611101734","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1259","449","0611101822","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1260","441","0611101822","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1261","442","0611101822","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1262","444","0611101822","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("1263","452","0611101904","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1264","445","0611101904","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1265","452","0611102028","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1266","449","0611102028","Red Horse 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1267","442","0611102028","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1268","450","0611102100","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1269","442","0611102100","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1270","449","0611102130","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1271","442","0611102130","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1272","442","0611102213","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1273","441","0611102213","All 8oz 8oz","5","154","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("1274","449","0611102213","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1275","450","0611102213","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1276","442","0611102238","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1277","441","0611102238","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1278","442","0611102300","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1279","441","0611104158","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1280","460","0611104223","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1281","445","0611104302","All Swakto swakto","2","100","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1282","456","0611104407","Excellent 50KG","1","2120","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1283","459","0611105650","PEPC Gas green","3","25","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1284","441","0611105754","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1285","459","0611105849","PEPC Gas green","3","25","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1286","460","0611105849","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1287","449","0611105946","Red Horse 1000ml","8","530","Aljohn","IT Technician","8","0");
INSERT INTO transaction_details VALUES("1288","447","0611105946","Pilsen Litro 1000ml","2","530","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1289","457","0611110030","Lion Ivory 50KG","1","2220","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1290","441","0611110332","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1291","442","0611110332","All Litro 1 Liter","1.5","327","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("1292","449","0611110332","Red Horse 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1293","442","0611110438","All Litro 1 Liter","2","327","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1294","460","0611110456","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1295","442","0611110520","All Litro 1 Liter","2","327","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1296","442","0611110548","All Litro 1 Liter","1","324","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1297","459","0611110627","PEPC Gas green","2","25","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1298","460","0611110627","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1299","442","0611132634","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1300","444","0611132819","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1301","453","0611132921","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1302","442","0611132921","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1303","441","0611132921","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1304","441","0611133004","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1305","449","0611133157","Red Horse 1000ml","30","525","Aljohn","IT Technician","30","0");
INSERT INTO transaction_details VALUES("1306","443","0611133157","All 1.5  1.5 Liter","1.5","665","Aljohn","IT Technician","1.5","0");
INSERT INTO transaction_details VALUES("1307","441","0611133157","All 8oz 8oz","15","154","Aljohn","IT Technician","15","0");
INSERT INTO transaction_details VALUES("1308","442","0611133157","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1309","453","0611133157","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1310","452","0611133157","Vino Kulafu 700ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1311","442","0611133228","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1312","444","0611133316","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1313","445","0611133316","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1314","442","0611133345","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1315","441","0611133345","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1316","444","0611133427","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1317","441","0611133427","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1318","442","0611133427","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1319","449","0611134134","Red Horse 1000ml","3","530","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("1320","441","0611134134","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1321","442","0611134134","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1322","450","0611134134","Red Horse 500ml","2","525","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1323","452","0611134134","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1324","447","0611134305","Pilsen Litro 1000ml","1","530","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1325","441","0611135946","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1326","460","0611140023","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1327","459","0611140023","PEPC Gas green","1","25","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1328","463","0611140145","Primera Light 750ML","2","92","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1329","441","0611140506","All 8oz 8oz","6","147","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("1330","444","0611140714","All Cobra yellow","1","270","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("1331","446","0611140757","All Minute Maid Apple","2","75","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1332","441","0611140832","All 8oz 8oz","9","154","Aljohn","IT Technician","9","0");
INSERT INTO transaction_details VALUES("1333","459","0611140853","PEPC Gas green","2","25","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("1334","457","0611160540","Lion Ivory 50KG","1","2300","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1335","457","0611160637","Lion Ivory 50KG","1","2300","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1336","457","0611160720","Lion Ivory 50KG","1","2300","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1337","457","0611160805","Lion Ivory 50KG","1","2300","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1338","458","0611161142","Lion Ivory 25KG","1","1180","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1339","456","0611161426","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1340","456","0611161510","Excellent 50KG","2","2220","Aljohn","IT Technician","0","2");
INSERT INTO transaction_details VALUES("1341","456","0611161548","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1342","456","0611161620","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1343","456","0611161656","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1344","457","0611161729","Lion Ivory 50KG","1","2300","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1345","456","0611161808","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1346","456","0611161842","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1347","456","0611162009","Excellent 50KG","1","2220","Aljohn","IT Technician","0","1");
INSERT INTO transaction_details VALUES("1348","457","0611162103","Lion Ivory 50KG","1","2300","Aljohn","IT Technician","0","1");



CREATE TABLE `type` (
  `TYPE_ID` int(20) NOT NULL,
  `TYPE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO type VALUES("1","Admin");
INSERT INTO type VALUES("2","User");



CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` int(15) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `TYPE_ID` int(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","1","admin1996","6c9e460844ed9ee9b96b1b15ce738ac79ddd4fce","1");
INSERT INTO users VALUES("3","5","msdakay","9fd3decf7b09560d547e405ea8b34720fef49c28","1");
INSERT INTO users VALUES("4","6","ALMAA","5b0bc839e93b21c0de1bede933d4cac079c06c57","2");



CREATE TABLE `variation` (
  `rec_no` int(11) NOT NULL AUTO_INCREMENT,
  `variant` varchar(100) NOT NULL,
  `category_id` int(20) NOT NULL,
  PRIMARY KEY (`rec_no`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

INSERT INTO variation VALUES("1","1.5 Liter","2");
INSERT INTO variation VALUES("2","1 Liter","2");
INSERT INTO variation VALUES("3","8oz","2");
INSERT INTO variation VALUES("4","blue","2");
INSERT INTO variation VALUES("5","green","2");
INSERT INTO variation VALUES("13","1000ml","5");
INSERT INTO variation VALUES("14","500ml","5");
INSERT INTO variation VALUES("16","swakto","2");
INSERT INTO variation VALUES("17","mismo","2");
INSERT INTO variation VALUES("19","Apple","2");
INSERT INTO variation VALUES("20","Orange","2");
INSERT INTO variation VALUES("21","Pineapple","2");
INSERT INTO variation VALUES("22","Mango","2");
INSERT INTO variation VALUES("23","yellow","2");
INSERT INTO variation VALUES("24","green","2");
INSERT INTO variation VALUES("26","choco","2");
INSERT INTO variation VALUES("28","Grande","5");
INSERT INTO variation VALUES("29","Small","5");
INSERT INTO variation VALUES("30","Light","5");
INSERT INTO variation VALUES("31","Flavored Beer","5");
INSERT INTO variation VALUES("32","350ML","10");
INSERT INTO variation VALUES("33","700ML","10");
INSERT INTO variation VALUES("34","750ML","10");
INSERT INTO variation VALUES("35","Stallion","5");
INSERT INTO variation VALUES("36","per pack","2");
INSERT INTO variation VALUES("37","500ML","13");
INSERT INTO variation VALUES("38","250ML","13");
INSERT INTO variation VALUES("39","Metro","14");
INSERT INTO variation VALUES("40","Grand","14");
INSERT INTO variation VALUES("41","25KG","15");
INSERT INTO variation VALUES("42","50KG","15");
INSERT INTO variation VALUES("43","green","16");
INSERT INTO variation VALUES("44","blue","16");

