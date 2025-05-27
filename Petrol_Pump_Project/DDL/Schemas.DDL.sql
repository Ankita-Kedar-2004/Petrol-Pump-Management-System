 1.Machine Allocation;

CREATE TABLE `allocation` (
  `eid` int NOT NULL,
  `machinecode` varchar(45) NOT NULL,
  `startTime` varchar(45) NOT NULL,
  `endTime` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

2.Customer

CREATE TABLE `customer` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `fuelType` varchar(45) NOT NULL,
  `totalAmount` float NOT NULL,
  `date` date NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

3.Employee

CREATE TABLE `employee` (
  `eid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `contact` varchar(64) NOT NULL,
  `sal` int NOT NULL,
  `address` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `status` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


4.Machine

CREATE TABLE `machine` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `machinecode` varchar(45) NOT NULL,
  `fuelType` varchar(45) NOT NULL,
  `capacity` varchar(45) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

5.User
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
