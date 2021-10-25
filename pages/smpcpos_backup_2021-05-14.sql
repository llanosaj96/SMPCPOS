

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

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
INSERT INTO customer VALUES("67","CHEVRY","MANGIRAN","","","","0","","");
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



CREATE TABLE `database_download` (
  `REC_NO` int(11) NOT NULL AUTO_INCREMENT,
  `DOWNLOAD_DATE` varchar(20) NOT NULL,
  `DOWNLOAD_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`REC_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO database_download VALUES("27","2021-05-10 | 08:30","smpcpos_backup_2021-05-10.sql");
INSERT INTO database_download VALUES("28","2021-05-10 | 10:16","smpcpos_backup_2021-05-10.sql");
INSERT INTO database_download VALUES("29","2021-05-12 | 16:00","smpcpos_backup_2021-05-12.sql");



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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO employee VALUES("1","1234567890","Aljohn","Llanos","Amora","Candaguit, Sibonga, Cebu","Male","llanos.aj96@gmail.com","09616212544","3","","2020-11-09","113","");
INSERT INTO employee VALUES("5","2147483647","Maria Salome","Dakay","","Guimbangco-an, Sibonga, Cebu","Female","n/a","09205517952","4","","2021-04-24","168","");



CREATE TABLE `inventory_update` (
  `rec_no` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_CODE` varchar(100) NOT NULL,
  `UPDATED_DATE` varchar(50) NOT NULL,
  `IN_STOCK` double NOT NULL,
  PRIMARY KEY (`rec_no`)
) ENGINE=InnoDB AUTO_INCREMENT=478 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

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

INSERT INTO notes VALUES("1","ANG 1.5 LITER SOFTDRINKS NGA GI BAYRAN SA SAN MIGUEL IS NAA SA MAY 3, 2021 NA SULOD NGA TRANSACTION INSTEAD OF APRIL.....");



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
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=latin1;

INSERT INTO product VALUES("411","09235107","All 8oz","All 8oz soft drinks","per case","342","138","0","154","11473","204","154","141","2","3","9","2021-05-03","NO","05","2021","3","204","0","0","0","150","1","NO","0.5","2");
INSERT INTO product VALUES("412","09281407","All Litro","All litro soft drinks","per case","209","79.5","0","334","14863","129.5","334","321","2","2","9","2021-05-03","NO","05","2021","3","129.5","0","0","0","149","1","NO","3","2");
INSERT INTO product VALUES("413","09292407","All 1.5 ","All 1.5 liter soft drinks","per case","16","11","0","0","0","5","655","645","2","1","9","2021-05-03","NO","05","2021","3","5","0","0","0","130","1","NO","2","0");
INSERT INTO product VALUES("414","09330307","All Cobra","All cobra drinks as yellow","per case","47","16.5","0","280","2240","30.5","280","267","2","23","9","2021-05-03","NO","05","2021","3","30.5","0","0","0","152","1","NO","2.5","2");
INSERT INTO product VALUES("415","09342507","All Swakto","All swakto soft drinks","per case","111","90","0","0","0","21","106","96","2","16","9","2021-05-03","NO","05","2021","3","21","0","0","0","151","1","NO","11","2");
INSERT INTO product VALUES("416","09350607","All Minute Maid","All minute maid drinks as apple flavor","per bottle","30","25","0","0","0","10","85","72","2","19","9","2021-05-03","NO","05","2021","3","10","0","0","0","144","1","NO","0","1");
INSERT INTO product VALUES("417","09371007","Pilsen Litro","Pilsen litro","per case","58","41","0","535","16050","17","535","504","5","13","9","2021-05-03","NO","05","2021","3","17","0","0","0","137","1","NO","7","2");
INSERT INTO product VALUES("418","09391607","Pale Pilsen","Pale pilsen small","per case","11","9","0","0","0","2","755","732","5","29","9","2021-05-03","NO","05","2021","3","2","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("419","09400307","Red Horse","Red horse litro","per case","242","104","0","525","1050","138","535","508","5","13","9","2021-05-03","NO","05","2021","3","141","0","0","0","147","1","NO","8","2");
INSERT INTO product VALUES("420","09410307","Red Horse","Red horse 500ml","per case","44","17","0","520","3640","27","525","497","5","14","9","2021-05-03","NO","05","2021","3","24","0","0","0","148","1","NO","3","2");
INSERT INTO product VALUES("421","09415107","Red Horse","Red horse stallion","per case","7","5","0","0","0","2","780","751","5","35","4","2021-05-03","NO","05","2021","3","2","0","0","0","145","1","NO","4","2");
INSERT INTO product VALUES("422","09435807","Vino Kulafu","Vino kulafu 700ml","per box","28","12","0","840","0","16","840","740","10","33","8","2021-05-03","NO","05","2021","3","16","0","0","0","153","1","NO","0","2");
INSERT INTO product VALUES("423","09454307","Vino Kulafu","Vino kulafu 350ml","per box","35","26","0","840","0","9","840","764","10","32","8","2021-05-03","NO","05","2021","3","9","0","0","0","154","1","NO","1","2");
INSERT INTO product VALUES("424","09462707","Primera Light","Primera light 750ml","per box","4","4","0","0","0","0","1100","1034","10","34","8","2021-05-03","NO","05","2021","3","0","0","0","0","125","1","NO","1","0");
INSERT INTO product VALUES("425","09483707","Emperador Brandy","Empredor brandy 700ml","per box","3","2","0","0","0","1","1315","1272","10","33","8","2021-05-03","NO","05","2021","3","1","0","0","0","134","1","NO","1","2");
INSERT INTO product VALUES("426","09540907","Excellent","Excellent rice","per sack","51","49","0","0","0","2","2120","2020","15","42","10","2021-05-03","NO","05","2021","3","2","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("427","09592107","Lion Ivory","Lion ivory 50kg","per sack","15","15","0","0","0","0","2200","2100","15","42","10","2021-05-03","NO","05","2021","3","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("428","10073607","Lion Ivory","Lion ivory","per case","50","50","0","0","0","0","1130","1070","15","41","10","2021-05-03","NO","05","2021","3","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("429","10083007","PEPC Gas","Pepc gas green","per bottle","106","105","0","0","0","1","25","15","16","43","12","2021-05-03","NO","05","2021","3","1","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("430","10100607","PEPC Gas","Pepc gas blue","per bottle","46","12","0","0","0","34","20","15","16","44","12","2021-05-03","NO","05","2021","3","34","0","0","0","0","0","","0","1");
INSERT INTO product VALUES("436","13160707","San Mig","San mig light beer","per case","1","1","0","0","0","0","880","855","5","30","4","2021-05-06","NO","05","2021","6","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("437","13175207","San Mig","San mig flavored beer","per case","1","1","0","0","0","0","707","682","5","31","4","2021-05-06","NO","05","2021","6","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("438","09234308","Primera Light","Primera light per bottle","per bottle","12","6","0","0","0","6","92","90","10","34","8","2021-05-03","NO","05","2021","3","6","0","0","0","0","0","","0","1");



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
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=622 DEFAULT CHARSET=latin1;

INSERT INTO transaction_details VALUES("333","411","0507102458","All 8oz 8oz","40","154","Aljohn","IT Technician","40","0");
INSERT INTO transaction_details VALUES("334","419","0507102458","Red Horse 1000ml","36","521","Aljohn","IT Technician","36","0");
INSERT INTO transaction_details VALUES("335","422","0507102458","Vino Kulafu 700ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("336","423","0507102458","Vino Kulafu 350ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("337","412","0507102458","All Litro 1 Liter","5","334","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("338","412","0507102525","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("339","412","0507102553","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("340","417","0507102553","Pilsen Litro 1000ml","1","535","Aljohn","IT Technician","1","0");
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
INSERT INTO transaction_details VALUES("396","417","0507114751","Pilsen Litro 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("397","411","0507114751","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("398","414","0507114751","All Cobra yellow","0.5","280","Aljohn","IT Technician","0.5","0");
INSERT INTO transaction_details VALUES("399","415","0507114751","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("400","420","0507114842","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("401","411","0507114842","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("402","412","0507114920","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("403","411","0507114920","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("404","422","0507114920","Vino Kulafu 700ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("405","417","0507114949","Pilsen Litro 1000ml","1","535","Aljohn","IT Technician","1","0");
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
INSERT INTO transaction_details VALUES("421","417","0507115416","Pilsen Litro 1000ml","1","535","Aljohn","IT Technician","1","0");
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","1","admin1996","6c9e460844ed9ee9b96b1b15ce738ac79ddd4fce","1");
INSERT INTO users VALUES("3","5","msdakay","9fd3decf7b09560d547e405ea8b34720fef49c28","1");



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

