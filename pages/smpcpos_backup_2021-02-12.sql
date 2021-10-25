

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO category VALUES("1","Softdrinks(Coca-cola Product)");
INSERT INTO category VALUES("2","Butane");
INSERT INTO category VALUES("3","Rice");
INSERT INTO category VALUES("4","P.O");
INSERT INTO category VALUES("5","San Miguel Products");
INSERT INTO category VALUES("9","Other");
INSERT INTO category VALUES("10","Liquor");



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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO customer VALUES("1","Walk-In","Customer","N/A","","","0","","");
INSERT INTO customer VALUES("6","JOHN","LLANOS","09616212544","Candaguit, Sibonga, Cebu","YES","456985996","2021-01-08","2021-03-08");



CREATE TABLE `database_download` (
  `REC_NO` int(11) NOT NULL AUTO_INCREMENT,
  `DOWNLOAD_DATE` varchar(20) NOT NULL,
  `DOWNLOAD_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`REC_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO database_download VALUES("14","2021-02-12 | 11:57:4","smpcpos_backup_2021-02-12.sql");
INSERT INTO database_download VALUES("15","2021-02-12 | 11:57:5","smpcpos_backup_2021-02-12.sql");



CREATE TABLE `day` (
  `NAME` varchar(10) NOT NULL,
  `CHECKED` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO day VALUES("IN","1");
INSERT INTO day VALUES("OUT","1");



CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NUMBER` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `MIDDLE_NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `GENDER` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` int(15) NOT NULL,
  `JOB_ID` int(20) NOT NULL,
  `JOB_TITLE` varchar(100) NOT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(20) NOT NULL,
  `ATTENDANCE` varchar(10) NOT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO employee VALUES("1","1234567890","Aljohn","Llanos","","","Male","llanos.aj96@gmail.com","2147483647","1","","2020-11-28","113","");
INSERT INTO employee VALUES("3","2147483647","ALJOHN","LLANOS","AMORA","Candaguit, Sibonga, Cebu","Male","llanos.aj96@gmail.com","2147483647","0","IT ","2020-11-09","0","YES");



CREATE TABLE `inventory_update` (
  `rec_no` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_CODE` varchar(100) NOT NULL,
  `UPDATED_DATE` varchar(50) NOT NULL,
  `IN_STOCK` double NOT NULL,
  PRIMARY KEY (`rec_no`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=latin1;

INSERT INTO inventory_update VALUES("202","12590811","2020-11-30","0");
INSERT INTO inventory_update VALUES("203","13091611","2020-11-30","0");
INSERT INTO inventory_update VALUES("204","13105511","2020-11-30","0");
INSERT INTO inventory_update VALUES("205","13131511","2020-11-30","0");
INSERT INTO inventory_update VALUES("206","13145611","2020-11-30","0");
INSERT INTO inventory_update VALUES("207","13170211","2020-11-30","0");
INSERT INTO inventory_update VALUES("208","13185111","2020-11-30","0");
INSERT INTO inventory_update VALUES("209","13200811","2020-11-30","0");
INSERT INTO inventory_update VALUES("210","13213711","2020-11-30","0");
INSERT INTO inventory_update VALUES("211","13230311","2020-11-30","0");
INSERT INTO inventory_update VALUES("212","13243611","2020-11-30","0");
INSERT INTO inventory_update VALUES("213","13255811","2020-11-30","0");
INSERT INTO inventory_update VALUES("214","13271311","2020-11-30","0");
INSERT INTO inventory_update VALUES("215","13282611","2020-11-30","0");
INSERT INTO inventory_update VALUES("216","13301011","2020-11-30","0");
INSERT INTO inventory_update VALUES("217","13362111","2020-12-31","0");
INSERT INTO inventory_update VALUES("218","13395311","2020-12-31","0");
INSERT INTO inventory_update VALUES("219","13412911","2020-12-31","0");
INSERT INTO inventory_update VALUES("220","13432011","2020-12-31","0");
INSERT INTO inventory_update VALUES("221","13441111","2020-12-31","0");
INSERT INTO inventory_update VALUES("222","13452211","2020-12-31","0");
INSERT INTO inventory_update VALUES("223","13465011","2020-12-31","0");
INSERT INTO inventory_update VALUES("224","13474811","2020-12-31","0");
INSERT INTO inventory_update VALUES("225","13492011","2020-12-31","0");
INSERT INTO inventory_update VALUES("226","13504211","2020-12-31","0");
INSERT INTO inventory_update VALUES("227","13515111","2020-12-31","0");
INSERT INTO inventory_update VALUES("228","13525911","2020-12-31","0");
INSERT INTO inventory_update VALUES("229","13540411","2020-12-31","0");
INSERT INTO inventory_update VALUES("230","13551711","2020-12-31","0");
INSERT INTO inventory_update VALUES("231","13562111","2020-12-31","0");
INSERT INTO inventory_update VALUES("232","14021311","2020-12-31","0");
INSERT INTO inventory_update VALUES("233","14141211","2020-12-31","0");
INSERT INTO inventory_update VALUES("234","14150111","2020-12-31","0");
INSERT INTO inventory_update VALUES("235","14160511","2020-12-31","0");



CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO job VALUES("1","Manager");
INSERT INTO job VALUES("2","Cashier");
INSERT INTO job VALUES("3","IT Technician");



CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;

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



CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `LOCATION_ID` int(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




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
  `ADDED_STOCKS` int(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;

INSERT INTO product VALUES("190","12590811","All 8oz","all 8oz drinks","per case","100","0","220","0","0","184.5","144","141","1","1","5","2020-11-30","YES","11","2020","30","184.5","0","0");
INSERT INTO product VALUES("191","13091611","All Litro","assorted litro drinks","per case","30","0","142","0","0","130","324","321","1","2","5","2020-11-30","YES","11","2020","30","130","0","0");
INSERT INTO product VALUES("192","13105511","All 1.5 ","assorted 1.5 liter drinks","per case","36","0","17","0","0","18","648","645","1","1","5","2020-11-30","YES","11","2020","30","18","0","0");
INSERT INTO product VALUES("193","13131511","All 1.5 ","assorted 1.5 bottles","per bottle","0","0","12","0","0","3","53","53","1","1","5","2020-11-30","YES","11","2020","30","3","0","0");
INSERT INTO product VALUES("194","13145611","All Swakto","assorted swakto drinks","per box","10","0","164","0","0","93","100","96","1","16","5","2020-11-30","YES","11","2020","30","93","0","0");
INSERT INTO product VALUES("195","13170211","All Mismo","assorted mismo drinks","per box","0","0","20","0","0","19","148","145","1","17","5","2020-11-30","YES","11","2020","30","19","0","0");
INSERT INTO product VALUES("196","13185111","All Minute Maid","assorted minute maid drinks","per box","100","0","51","0","0","63","75","72","1","19","5","2020-11-30","YES","11","2020","30","63","0","0");
INSERT INTO product VALUES("197","13200811","All Cobra","assorted cobra drinks","per case","40","0","36","0","0","36.5","270","267","1","23","5","2020-11-30","YES","11","2020","30","36.5","0","0");
INSERT INTO product VALUES("198","13213711","All Vita Milk","assorted vita milk drinks","per box","0","0","3","0","0","0","557","554","1","26","5","2020-11-30","YES","11","2020","30","0","0","0");
INSERT INTO product VALUES("199","13230311","Red Horse","Red horse 1 liter","per case","97","0","0","0","0","56","530","508","5","13","5","2020-11-30","YES","11","2020","30","56","0","0");
INSERT INTO product VALUES("200","13243611","Pale Pilsen","Pale pilsen 1 liter","per case","50","0","0","0","0","0","530","504","5","13","5","2020-11-30","YES","11","2020","30","0","0","0");
INSERT INTO product VALUES("201","13255811","Red Horse","Red horse 500ml","per case","44","0","0","0","0","22","520","497","5","14","5","2020-11-30","YES","11","2020","30","22","0","0");
INSERT INTO product VALUES("202","13271311","Pale Pilsen","Pale pilsen small","per case","10","0","0","0","0","1","755","732","5","29","4","2020-11-30","YES","11","2020","30","1","0","0");
INSERT INTO product VALUES("203","13282611","San Mig","San mig light beer","per case","3","0","0","0","0","0.5","880","855","5","30","4","2020-11-30","YES","11","2020","30","0.5","0","0");
INSERT INTO product VALUES("204","13301011","San Mig","San mig flavored beer ","per case","3","0","0","0","0","1.5","707","682","5","31","4","2020-11-30","YES","11","2020","30","1.5","0","0");



CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `LOCATION_ID` int(15) NOT NULL,
  `PHONE_NUMBER` varchar(50) NOT NULL,
  PRIMARY KEY (`SUPPLIER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO supplier VALUES("4","Nacua Supplies","162","487-7248");
INSERT INTO supplier VALUES("5","Cabillon Merchandise","163","485-5129");
INSERT INTO supplier VALUES("6","Metro Gaisano","164","N/A");
INSERT INTO supplier VALUES("7","Gaisano Grand","165","N/A");
INSERT INTO supplier VALUES("8","Grantix Corporation","166","416-8375");



CREATE TABLE `transaction` (
  `TRANS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUST_ID` int(15) NOT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `C_CHANGE` int(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  PRIMARY KEY (`TRANS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;




CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` varchar(20) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL,
  `CASH` int(20) NOT NULL,
  `CREDIT` int(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;




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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","1","admin1996","4412b197ce45e53746024e6bc24a27529eb72611","1");
INSERT INTO users VALUES("2","1","llanosaj","8dd8f6788e5ab5d08a471357094eb504604011e1","2");



CREATE TABLE `variation` (
  `rec_no` int(11) NOT NULL AUTO_INCREMENT,
  `variant` varchar(100) NOT NULL,
  `category_id` int(20) NOT NULL,
  PRIMARY KEY (`rec_no`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

INSERT INTO variation VALUES("1","1.5 Liter","1");
INSERT INTO variation VALUES("2","1 Liter","1");
INSERT INTO variation VALUES("3","8oz","1");
INSERT INTO variation VALUES("4","blue","2");
INSERT INTO variation VALUES("5","green","2");
INSERT INTO variation VALUES("6","50kg","3");
INSERT INTO variation VALUES("7","25kg","3");
INSERT INTO variation VALUES("8","Metro","4");
INSERT INTO variation VALUES("9","Grand","4");
INSERT INTO variation VALUES("13","1000ml","5");
INSERT INTO variation VALUES("14","500ml","5");
INSERT INTO variation VALUES("16","swakto","1");
INSERT INTO variation VALUES("17","mismo","1");
INSERT INTO variation VALUES("19","Apple","1");
INSERT INTO variation VALUES("20","Orange","1");
INSERT INTO variation VALUES("21","Pineapple","1");
INSERT INTO variation VALUES("22","Mango","1");
INSERT INTO variation VALUES("23","yellow","1");
INSERT INTO variation VALUES("24","green","1");
INSERT INTO variation VALUES("26","choco","1");
INSERT INTO variation VALUES("27","Other","9");
INSERT INTO variation VALUES("28","Grande","5");
INSERT INTO variation VALUES("29","Small","5");
INSERT INTO variation VALUES("30","Light","5");
INSERT INTO variation VALUES("31","Flavored Beer","5");
INSERT INTO variation VALUES("32","350ML","10");
INSERT INTO variation VALUES("33","700ML","10");

