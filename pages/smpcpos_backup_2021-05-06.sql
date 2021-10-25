

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

INSERT INTO category VALUES("1","Softdrinks(Coca-cola Product)");
INSERT INTO category VALUES("5","San Miguel Products");
INSERT INTO category VALUES("10","Liquor");
INSERT INTO category VALUES("12","Delivery");
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

INSERT INTO customer VALUES("1","Walk-In","Customer","N/A","","","0","","");
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
INSERT INTO customer VALUES("30","BEATRIZ","YARANON","","","","0","","");
INSERT INTO customer VALUES("31","FRAS","SANTA RITA","","","","0","","");
INSERT INTO customer VALUES("32","LUGO","MANATAD","","","","0","","");
INSERT INTO customer VALUES("33","CARTIE","PERESORES","","","","0","","");
INSERT INTO customer VALUES("34","NONAT","MANATAD","","","","0","","");
INSERT INTO customer VALUES("35","VIOLONG","BACOMO","","","","0","","");
INSERT INTO customer VALUES("36","ROY","SUICO","","","","0","","");
INSERT INTO customer VALUES("37","REBECA","PERESORES","","","","0","","");
INSERT INTO customer VALUES("38","JOAN","ESCUADRO","","","","0","","");
INSERT INTO customer VALUES("39","MARISA","AVILA","","","","0","","");
INSERT INTO customer VALUES("40","FERMINA","ESPINA","","","","0","","");
INSERT INTO customer VALUES("41","MARGIE","ALIGADO","","","","0","","");
INSERT INTO customer VALUES("42","GLENN","TORRES","","","","0","","");
INSERT INTO customer VALUES("43","CECILE ","RECOPILACION","","","","0","","");
INSERT INTO customer VALUES("44","NORCEL","REGIDOR","","","","0","","");
INSERT INTO customer VALUES("45","CHARING","","","","","0","","");
INSERT INTO customer VALUES("46","PING2x","","","","","0","","");
INSERT INTO customer VALUES("47","HERMANA","PERDIGUEZ","","","","0","","");
INSERT INTO customer VALUES("48","FRANCIO","IMPIS","","","","0","","");



CREATE TABLE `database_download` (
  `REC_NO` int(11) NOT NULL AUTO_INCREMENT,
  `DOWNLOAD_DATE` varchar(20) NOT NULL,
  `DOWNLOAD_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`REC_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;




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
  `QTY` varchar(10) NOT NULL,
  `PRICE` varchar(15) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `SALES` int(10) NOT NULL,
  `RETURNED` float NOT NULL,
  `STAT` int(10) NOT NULL,
  PRIMARY KEY (`rec_no`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO delivery VALUES("77","2021-05-03","09383403","Red Horse 1000ml","36","535","OUT FOR DELIVERY","36","0","1");
INSERT INTO delivery VALUES("78","2021-05-03","09452303","Pale Pilsen Grande","15","545","COMPLETED","1","14","1");
INSERT INTO delivery VALUES("79","2021-05-03","09424403","Red Horse 500ml","4","530","COMPLETED","1","3","1");
INSERT INTO delivery VALUES("80","2021-05-03","09280103","All Litro 1 Liter","20","334","COMPLETED","18","2","1");
INSERT INTO delivery VALUES("81","2021-05-03","09484803","All 1.5 Liter 1.5 Liter","3","665","COMPLETED","1","2","1");
INSERT INTO delivery VALUES("82","2021-05-03","09282403","All 8oz 8oz","50","154","COMPLETED","46","4","1");
INSERT INTO delivery VALUES("83","2021-05-03","09304703","All Swakto swakto","15","110","COMPLETED","3","12","1");
INSERT INTO delivery VALUES("84","2021-05-03","09293803","All Cobra yellow","4","280","OUT FOR DELIVERY","4","0","1");
INSERT INTO delivery VALUES("85","2021-05-03","09335303","Vino Kulafu 700ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("86","2021-05-03","09325503","Vino Kulafu 350ML","2","840","OUT FOR DELIVERY","2","0","1");
INSERT INTO delivery VALUES("87","2021-05-03","09493903","Emperador Brandy 700ML","1","1342","COMPLETED","0","1","1");
INSERT INTO delivery VALUES("88","2021-05-03","09344503","Primera Light 750ML","1","1100","COMPLETED","0","1","1");
INSERT INTO delivery VALUES("89","2021-05-05","09383403","Red Horse 1000ml","3","535","OUT FOR DELIVERY","3","0","1");
INSERT INTO delivery VALUES("90","2021-05-05","09452303","Pale Pilsen Grande","24","545","COMPLETED","6","18","1");
INSERT INTO delivery VALUES("91","2021-05-05","09424403","Red Horse 500ml","12","530","COMPLETED","10","2","1");
INSERT INTO delivery VALUES("92","2021-05-05","09280103","All Litro 1 Liter","42","334","COMPLETED","39","3","1");
INSERT INTO delivery VALUES("93","2021-05-05","09484803","All 1.5 Liter 1.5 Liter","2","665","COMPLETED","0","2","1");
INSERT INTO delivery VALUES("94","2021-05-05","09282403","All 8oz 8oz","41","154","COMPLETED","34","7","1");
INSERT INTO delivery VALUES("95","2021-05-05","09304703","All Swakto swakto","15","110","COMPLETED","6","9","1");
INSERT INTO delivery VALUES("96","2021-05-05","09293803","All Cobra yellow","7","280","COMPLETED","4","3","1");
INSERT INTO delivery VALUES("97","2021-05-05","09335303","Vino Kulafu 700ML","6","840","OUT FOR DELIVERY","6","0","1");
INSERT INTO delivery VALUES("98","2021-05-05","09325503","Vino Kulafu 350ML","3","840","OUT FOR DELIVERY","3","0","1");
INSERT INTO delivery VALUES("99","2021-05-05","09320703","All Minute Maid Apple","4","85","COMPLETED","1","3","1");
INSERT INTO delivery VALUES("100","2021-05-05","09493903","Emperador Brandy 700ML","1","1342","OUT FOR DELIVERY","1","0","1");



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
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=latin1;

INSERT INTO inventory_update VALUES("403","09243503","2021-05-03","0");
INSERT INTO inventory_update VALUES("404","09280103","2021-04-30","0");
INSERT INTO inventory_update VALUES("405","09282403","2021-04-30","0");
INSERT INTO inventory_update VALUES("406","09293803","2021-04-30","0");
INSERT INTO inventory_update VALUES("407","09304703","2021-04-30","0");
INSERT INTO inventory_update VALUES("408","09320703","2021-04-30","0");
INSERT INTO inventory_update VALUES("409","09325503","2021-04-30","0");
INSERT INTO inventory_update VALUES("410","09335303","2021-04-30","0");
INSERT INTO inventory_update VALUES("411","09344503","2021-04-30","0");
INSERT INTO inventory_update VALUES("412","09383403","2021-04-30","0");
INSERT INTO inventory_update VALUES("413","09424403","2021-04-30","0");
INSERT INTO inventory_update VALUES("414","09441803","2021-04-30","0");
INSERT INTO inventory_update VALUES("415","09452303","2021-04-30","0");
INSERT INTO inventory_update VALUES("416","09465003","2021-04-30","0");
INSERT INTO inventory_update VALUES("417","09484803","2021-04-30","0");
INSERT INTO inventory_update VALUES("418","09493903","2021-04-30","0");
INSERT INTO inventory_update VALUES("419","09543703","2021-04-30","0");
INSERT INTO inventory_update VALUES("420","09571203","2021-04-30","0");
INSERT INTO inventory_update VALUES("421","10164703","2021-04-30","0");
INSERT INTO inventory_update VALUES("422","10192703","2021-04-30","0");
INSERT INTO inventory_update VALUES("423","10200303","2021-04-30","0");
INSERT INTO inventory_update VALUES("424","10205803","2021-04-30","0");
INSERT INTO inventory_update VALUES("425","10260103","2021-04-30","0");
INSERT INTO inventory_update VALUES("426","10263203","2021-04-30","0");



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

INSERT INTO notes VALUES("1","SOFTDRINKS FOR SALE: 
STOCK: 8oz 1 case, Cobra 1 case, 7btls. 1Liter

1btl(8oz)-sir franie unpaid

9btls(8oz)- mam ann
2btls(8oz)-aljohn     
1btl(8oz)-jovlinch
2btls(8oz)-Jet
4btls(8oz)-Tig razo
2btls(8oz)-Mam salome/Andine");



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
  `DELIVERY_QTY` float NOT NULL,
  `DELIVERY_ID` int(10) NOT NULL,
  `REF_ID` int(20) NOT NULL,
  `DELIVERY_ENDED` varchar(20) NOT NULL,
  `DELIVERY_RETURNED` float NOT NULL,
  `CHECK_IT` int(5) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;

INSERT INTO product VALUES("382","09280103","All Litro","All litro soft drinks","per case","89","46","0","0","0","56.5","334","321","1","2","4","2021-04-30","NO","04","2021","30","56.5","0","0","0.5","92","12","NO","3","2");
INSERT INTO product VALUES("383","09282403","All 8oz","All 8oz soft drinks","per case","177","92.5","0","0","0","84","154","144","1","3","4","2021-04-30","NO","04","2021","30","84","0","0","0.5","94","12","NO","7","1");
INSERT INTO product VALUES("384","09293803","All Cobra","All cobra as yellow flavor","per case","16","8","0","0","0","8","280","270","1","23","4","2021-04-30","NO","04","2021","30","8","0","0","0","96","12","NO","3","2");
INSERT INTO product VALUES("385","09304703","All Swakto","All swakto soft drinks","per box","111","102","0","0","0","9","110","100","1","16","4","2021-04-30","NO","04","2021","30","9","0","0","0","95","12","NO","9","2");
INSERT INTO product VALUES("386","09320703","All Minute Maid","All minute maid as apple flavor","per box","30","29","0","0","0","1","85","75","1","19","4","2021-04-30","NO","04","2021","30","1","0","0","0","99","12","NO","3","2");
INSERT INTO product VALUES("387","09325503","Vino Kulafu","Vino kulafu 350ml","per box","5","1","0","0","0","5","840","825","10","32","8","2021-04-30","NO","04","2021","30","5","0","0","0","98","12","YES","0","2");
INSERT INTO product VALUES("388","09335303","Vino Kulafu","Vino kulafu 700ml","per box","8","2","0","0","0","8","840","810","10","33","8","2021-04-30","NO","04","2021","30","8","0","0","0","97","12","YES","0","2");
INSERT INTO product VALUES("389","09344503","Primera Light","Primera light 750ml","per box","5","5","0","0","0","0","1100","1044","10","34","8","2021-04-30","NO","04","2021","30","0","0","0","0","88","12","NO","1","0");
INSERT INTO product VALUES("390","09383403","Red Horse","Red horse 1liter","per case","39","5","0","0","0","39","535","508","5","13","4","2021-04-30","NO","04","2021","30","39","0","0","0","89","12","YES","5","2");
INSERT INTO product VALUES("391","09424403","Red Horse","Red horse 500ml","per case","19","5","0","0","0","14","530","497","5","14","4","2021-04-30","NO","04","2021","30","14","0","0","0","91","12","NO","2","2");
INSERT INTO product VALUES("392","09441803","Pale Pilsen","Pale pilsen small","per case","11","11","0","0","0","0","765","732","5","29","4","2021-04-30","NO","04","2021","30","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("393","09452303","Pale Pilsen","Pale pilsen grande","per case","31","24","0","0","0","7","545","504","5","28","4","2021-04-30","NO","04","2021","30","7","0","0","0","90","12","NO","18","2");
INSERT INTO product VALUES("394","09465003","Red Horse","Red horse stallion","per case","7","7","0","0","0","0","784","751","5","35","4","2021-04-30","NO","04","2021","30","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("395","09484803","All 1.5 Liter","All 1.5liter soft drinks","per case","16","16","0","0","0","1","665","645","1","1","4","2021-04-30","NO","04","2021","30","1","0","0","0","93","12","NO","2","0");
INSERT INTO product VALUES("396","09493903","Emperador Brandy","Emperador brandy","per bottle","3","2","0","0","0","1","1342","1272","10","33","8","2021-04-30","NO","04","2021","30","1","0","0","0","100","12","YES","1","2");
INSERT INTO product VALUES("397","09543703","Isoprophyl Alcohol","Isoprophyl alcohol 250ml","per item","60","60","0","0","0","0","42","37","13","38","8","2021-04-30","NO","04","2021","30","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("398","09571203","Isoprophyl Alcohol","Isoprophyl alcohol 500ml","per item","30","30","0","0","0","0","70","63","13","37","8","2021-04-30","NO","04","2021","30","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("400","10192703","Excellent","Excellent 50KG","per sack","51","51","0","0","0","0","2120","2020","15","42","10","2021-04-30","NO","04","2021","30","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("401","10200303","Lion Ivory","Lion ivory 50kg","per sack","15","15","0","0","0","0","2200","2100","15","42","10","2021-04-30","NO","04","2021","30","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("402","10205803","Lion Ivory","Lion Ivory ","per sack","50","50","0","0","0","0","1130","1020","15","41","10","2021-04-30","NO","04","2021","30","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("403","10260103","PEPC Gas","PEPC Gas green","per bottle","103","103","0","0","0","0","25","15","16","43","12","2021-04-30","NO","04","2021","30","0","0","0","0","0","0","","0","0");
INSERT INTO product VALUES("404","10263203","PEPC Gas","PEPC Gas blue","per bottle","46","45","0","0","0","1","20","15","16","44","12","2021-04-30","NO","04","2021","30","1","0","0","0","0","0","","0","1");



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
INSERT INTO supplier VALUES("9","Sayago General Merchandise","167","09225905240");
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
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=latin1;

INSERT INTO transaction VALUES("197","19","5","29,946.00","3,208.50","26,737.50","3,208.50","29,946.00","29946","0","2021-05-03 16:54 pm","0503165432","6521");
INSERT INTO transaction VALUES("198","19","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-05-03 16:54 pm","0503165505","6522");
INSERT INTO transaction VALUES("199","20","2","869.00","93.11","775.89","93.11","869.00","869","0","2021-05-03 16:56 pm","0503165635","6523");
INSERT INTO transaction VALUES("200","21","2","859.00","92.04","766.96","92.04","859.00","859","0","2021-05-03 16:57 pm","0503165750","6524");
INSERT INTO transaction VALUES("201","22","2","1,228.00","131.57","1,096.43","131.57","1,228.00","1228","0","2021-05-03 16:59 pm","0503170019","6525");
INSERT INTO transaction VALUES("202","23","4","1,208.00","129.43","1,078.57","129.43","1,208.00","1208","0","2021-05-03 17:02 pm","0503170228","6526");
INSERT INTO transaction VALUES("203","24","2","880.00","94.29","785.71","94.29","880.00","880","0","2021-05-03 17:04 pm","0503170427","6527");
INSERT INTO transaction VALUES("204","25","2","614.00","65.79","548.21","65.79","614.00","614","0","2021-05-03 17:09 pm","0503170945","6528");
INSERT INTO transaction VALUES("205","26","2","1,772.00","189.86","1,582.14","189.86","1,772.00","1772","0","2021-05-03 17:10 pm","0503171151","6529");
INSERT INTO transaction VALUES("206","19","1","665.00","71.25","593.75","71.25","665.00","665","0","2021-05-03 17:12 pm","0503171244","6530");
INSERT INTO transaction VALUES("207","1","1","72.00","7.71","64.29","7.71","72.00","72","0","2021-05-05 13:48 pm","0505134951","6481");
INSERT INTO transaction VALUES("208","27","1","1,545.00","165.54","1,379.46","165.54","1,545.00","1545","0","2021-05-05 13:53 pm","0505135346","6483");
INSERT INTO transaction VALUES("209","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-05 13:54 pm","0505135452","6485");
INSERT INTO transaction VALUES("210","30","5","3,190.00","341.79","2,848.21","341.79","3,190.00","3190","0","2021-05-06 11:17 am","0506111718","6531");
INSERT INTO transaction VALUES("211","30","1","535.00","57.32","477.68","57.32","535.00","535","0","2021-05-06 11:18 am","0506111902","6532");
INSERT INTO transaction VALUES("212","31","1","668.00","71.57","596.43","71.57","668.00","668","0","2021-05-06 11:20 am","0506112106","6533");
INSERT INTO transaction VALUES("213","32","1","334.00","35.79","298.21","35.79","334.00","334","0","2021-05-06 11:21 am","0506112151","6534");
INSERT INTO transaction VALUES("214","33","3","2,063.00","221.04","1,841.96","221.04","2,063.00","2063","0","2021-05-06 11:29 am","0506112925","6535");
INSERT INTO transaction VALUES("215","34","1","2,672.00","286.29","2,385.71","286.29","2,672.00","2672","0","2021-05-06 11:30 am","0506113052","6536");
INSERT INTO transaction VALUES("216","35","3","1,524.00","163.29","1,360.71","163.29","1,524.00","1524","0","2021-05-06 11:33 am","0506113404","6537");
INSERT INTO transaction VALUES("217","36","6","5,449.00","583.82","4,865.18","583.82","5,449.00","5449","0","2021-05-06 11:41 am","0506114136","6538");
INSERT INTO transaction VALUES("218","37","3","1,816.00","194.57","1,621.43","194.57","1,816.00","1816","0","2021-05-06 12:01 pm","0506120124","6539");
INSERT INTO transaction VALUES("219","35","1","535.00","57.32","477.68","57.32","535.00","535","0","2021-05-06 12:08 pm","0506120908","6540");
INSERT INTO transaction VALUES("220","20","2","488.00","52.29","435.71","52.29","488.00","488","0","2021-05-06 12:31 pm","0506123145","6541");
INSERT INTO transaction VALUES("221","21","3","1,013.00","108.54","904.46","108.54","1,013.00","1013","0","2021-05-06 13:27 pm","0506132749","6542");
INSERT INTO transaction VALUES("222","38","5","1,566.00","167.79","1,398.21","167.79","1,566.00","1566","0","2021-05-06 13:30 pm","0506133049","6543");
INSERT INTO transaction VALUES("223","39","2","679.00","72.75","606.25","72.75","679.00","679","0","2021-05-06 13:32 pm","0506133230","6544");
INSERT INTO transaction VALUES("224","40","3","3,144.00","336.86","2,807.14","336.86","3,144.00","3144","0","2021-05-06 13:33 pm","0506133414","6545");
INSERT INTO transaction VALUES("225","41","2","815.00","87.32","727.68","87.32","815.00","815","0","2021-05-06 13:35 pm","0506133537","6546");
INSERT INTO transaction VALUES("226","42","2","1,772.00","189.86","1,582.14","189.86","1,772.00","1772","0","2021-05-06 13:37 pm","0506133826","6547");
INSERT INTO transaction VALUES("227","43","2","2,176.00","233.14","1,942.86","233.14","2,176.00","2176","0","2021-05-06 13:41 pm","0506134128","6548");
INSERT INTO transaction VALUES("228","44","3","2,991.00","320.46","2,670.54","320.46","2,991.00","2991","0","2021-05-06 13:43 pm","0506134335","6548");
INSERT INTO transaction VALUES("229","45","6","3,482.00","373.07","3,108.93","373.07","3,482.00","3482","0","2021-05-06 13:46 pm","0506134650","6550");
INSERT INTO transaction VALUES("230","46","3","1,522.00","163.07","1,358.93","163.07","1,522.00","1522","0","2021-05-06 13:48 pm","0506134822","6390");
INSERT INTO transaction VALUES("231","47","2","365.00","39.11","325.89","39.11","365.00","365","0","2021-05-06 13:49 pm","0506134950","6391");
INSERT INTO transaction VALUES("232","1","1","144.00","15.43","128.57","15.43","144.00","144","0","2021-05-06 14:41 pm","0506144154","6487");
INSERT INTO transaction VALUES("233","1","1","20.00","2.14","17.86","2.14","20.00","20","0","2021-05-06 14:42 pm","0506144228","6488");
INSERT INTO transaction VALUES("234","48","1","288.00","30.86","257.14","30.86","288.00","288","0","2021-05-06 14:44 pm","0506144454","6491");



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
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=latin1;

INSERT INTO transaction_details VALUES("235","383","0503165432","All 8oz 8oz","40","154","Aljohn","IT Technician","40","0");
INSERT INTO transaction_details VALUES("236","390","0503165432","Red Horse 1000ml","36","521","Aljohn","IT Technician","36","0");
INSERT INTO transaction_details VALUES("237","388","0503165432","Vino Kulafu 700ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("238","387","0503165432","Vino Kulafu 350ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("239","382","0503165432","All Litro 1 Liter","5","334","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("240","382","0503165505","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("241","382","0503165635","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("242","393","0503165635","Pale Pilsen Grande","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("243","391","0503165750","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("244","382","0503165750","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("245","382","0503170019","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("246","384","0503170019","All Cobra yellow","2","280","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("247","382","0503170228","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("248","384","0503170228","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("249","383","0503170228","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("250","385","0503170228","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("251","385","0503170427","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("252","382","0503170427","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("253","382","0503170945","All Litro 1 Liter","1","334","Maria Salome","Posting Clerk","1","0");
INSERT INTO transaction_details VALUES("254","384","0503170945","All Cobra yellow","1","280","Maria Salome","Posting Clerk","1","0");
INSERT INTO transaction_details VALUES("255","382","0503171151","All Litro 1 Liter","3","334","Maria Salome","Posting Clerk","3","0");
INSERT INTO transaction_details VALUES("256","383","0503171151","All 8oz 8oz","5","154","Maria Salome","Posting Clerk","5","0");
INSERT INTO transaction_details VALUES("257","395","0503171244","All 1.5 Liter 1.5 Liter","1","665","Maria Salome","Posting Clerk","1","0");
INSERT INTO transaction_details VALUES("258","383","0505134951","All 8oz 8oz",".5","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("259","391","0505135346","Red Horse 500ml","3","515","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("260","383","0505135452","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("261","388","0506111718","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("262","387","0506111718","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("263","382","0506111718","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("264","390","0506111718","Red Horse 1000ml","2","535","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("265","385","0506111718","All Swakto swakto","1","106","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("266","390","0506111902","Red Horse 1000ml","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("267","382","0506112106","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("268","382","0506112151","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("269","391","0506112925","Red Horse 500ml","3","525","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("270","383","0506112925","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("271","382","0506112925","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("272","382","0506113052","All Litro 1 Liter","8","334","Aljohn","IT Technician","8","0");
INSERT INTO transaction_details VALUES("273","393","0506113404","Pale Pilsen Grande","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("274","382","0506113404","All Litro 1 Liter","2.5","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("275","383","0506113404","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("276","382","0506114136","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("277","388","0506114136","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("278","383","0506114136","All 8oz 8oz","8","154","Aljohn","IT Technician","8","0");
INSERT INTO transaction_details VALUES("279","396","0506114136","Emperador Brandy 700ML","1","1315","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("280","393","0506114136","Pale Pilsen Grande","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("281","391","0506114136","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("282","383","0506120124","All 8oz 8oz","2","154","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("283","382","0506120124","All Litro 1 Liter","2","334","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("284","387","0506120124","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("285","393","0506120908","Pale Pilsen Grande","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("286","382","0506123145","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("287","383","0506123145","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("288","382","0506132749","All Litro 1 Liter","1","334","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("289","383","0506132749","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("290","391","0506132749","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("291","391","0506133049","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("292","393","0506133049","Pale Pilsen Grande","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("293","383","0506133049","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("294","384","0506133049","All Cobra yellow",".5","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("295","385","0506133049","All Swakto swakto","2","106","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("296","391","0506133230","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("297","383","0506133230","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("298","382","0506133414","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("299","383","0506133414","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("300","388","0506133414","Vino Kulafu 700ML","2","840","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("301","393","0506133537","Pale Pilsen Grande","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("302","384","0506133537","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("303","382","0506133826","All Litro 1 Liter","3","334","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("304","383","0506133826","All 8oz 8oz","5","154","Aljohn","IT Technician","5","0");
INSERT INTO transaction_details VALUES("305","382","0506134128","All Litro 1 Liter","4","334","Aljohn","IT Technician","4","0");
INSERT INTO transaction_details VALUES("306","388","0506134128","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("307","382","0506134335","All Litro 1 Liter","6","334","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("308","391","0506134335","Red Horse 500ml","1","525","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("309","383","0506134335","All 8oz 8oz","3","154","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("310","388","0506134650","Vino Kulafu 700ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("311","387","0506134650","Vino Kulafu 350ML","1","840","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("312","391","0506134650","Red Horse 500ml","2","525","Aljohn","IT Technician","2","0");
INSERT INTO transaction_details VALUES("313","384","0506134650","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("314","383","0506134650","All 8oz 8oz","1","154","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("315","385","0506134650","All Swakto swakto","3","106","Aljohn","IT Technician","3","0");
INSERT INTO transaction_details VALUES("316","383","0506134822","All 8oz 8oz","5.5","154","Aljohn","IT Technician","6","0");
INSERT INTO transaction_details VALUES("317","393","0506134822","Pale Pilsen Grande","1","535","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("318","384","0506134822","All Cobra yellow",".5","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("319","384","0506134950","All Cobra yellow","1","280","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("320","386","0506134950","All Minute Maid Apple","1","85","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("321","383","0506144154","All 8oz 8oz","1","144","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("322","404","0506144228","PEPC Gas blue","1","20","Aljohn","IT Technician","1","0");
INSERT INTO transaction_details VALUES("323","383","0506144454","All 8oz 8oz","2","144","Aljohn","IT Technician","2","0");



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

INSERT INTO variation VALUES("1","1.5 Liter","1");
INSERT INTO variation VALUES("2","1 Liter","1");
INSERT INTO variation VALUES("3","8oz","1");
INSERT INTO variation VALUES("4","blue","2");
INSERT INTO variation VALUES("5","green","2");
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
INSERT INTO variation VALUES("28","Grande","5");
INSERT INTO variation VALUES("29","Small","5");
INSERT INTO variation VALUES("30","Light","5");
INSERT INTO variation VALUES("31","Flavored Beer","5");
INSERT INTO variation VALUES("32","350ML","10");
INSERT INTO variation VALUES("33","700ML","10");
INSERT INTO variation VALUES("34","750ML","10");
INSERT INTO variation VALUES("35","Stallion","5");
INSERT INTO variation VALUES("36","per pack","1");
INSERT INTO variation VALUES("37","500ML","13");
INSERT INTO variation VALUES("38","250ML","13");
INSERT INTO variation VALUES("39","Metro","14");
INSERT INTO variation VALUES("40","Grand","14");
INSERT INTO variation VALUES("41","25KG","15");
INSERT INTO variation VALUES("42","50KG","15");
INSERT INTO variation VALUES("43","green","16");
INSERT INTO variation VALUES("44","blue","16");

