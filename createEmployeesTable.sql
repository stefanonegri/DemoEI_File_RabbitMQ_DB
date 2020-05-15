CREATE TABLE `Employees` (
  `EmployeeNumber` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Salary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmployeeNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
