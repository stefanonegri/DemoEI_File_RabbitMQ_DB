CREATE TABLE `NotifierEmployee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeNumber` varchar(45) NOT NULL,
  `insert_time` datetime DEFAULT NULL,
  `insertFlag` tinyint(4) DEFAULT NULL,
  `updateFlag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1
