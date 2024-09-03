-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sqlll
CREATE DATABASE IF NOT EXISTS `sqlll` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `sqlll`;

-- Dumping structure for table sqlll.friends
CREATE TABLE IF NOT EXISTS `friends` (
  `FriendID` int(11) NOT NULL AUTO_INCREMENT,
  `FriendWhoAdded` int(11) DEFAULT NULL,
  `FriendBeingAdded` int(11) DEFAULT NULL,
  `IsAccepted` tinyint(1) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`FriendID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sqlll.friends: ~0 rows (approximately)
INSERT INTO `friends` (`FriendID`, `FriendWhoAdded`, `FriendBeingAdded`, `IsAccepted`, `DateAdded`) VALUES
	(1, 1, 2, 1, '2024-09-03 09:48:23'),
	(2, 1, 3, 0, '2024-09-03 09:48:23'),
	(3, 2, 4, 1, '2024-09-03 09:48:23'),
	(4, 3, 5, 1, '2024-09-03 09:48:23'),
	(5, 4, 1, 0, '2024-09-03 09:48:23');

-- Dumping structure for table sqlll.groupmembershiprequests
CREATE TABLE IF NOT EXISTS `groupmembershiprequests` (
  `GroupMemberShipRequestsID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) DEFAULT NULL,
  `GroupMemberUserID` int(11) DEFAULT NULL,
  `IsGroupMemberShipAccepted` tinyint(1) DEFAULT NULL,
  `DateAccepted` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`GroupMemberShipRequestsID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sqlll.groupmembershiprequests: ~0 rows (approximately)
INSERT INTO `groupmembershiprequests` (`GroupMemberShipRequestsID`, `GroupID`, `GroupMemberUserID`, `IsGroupMemberShipAccepted`, `DateAccepted`) VALUES
	(1, 1, 2, 1, '2024-09-03 09:48:23'),
	(2, 2, 3, 0, '2024-09-03 09:48:23'),
	(3, 3, 4, 1, '2024-09-03 09:48:23'),
	(4, 1, 5, 0, '2024-09-03 09:48:23'),
	(5, 2, 1, 1, '2024-09-03 09:48:23');

-- Dumping structure for table sqlll.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `GroupID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(100) DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sqlll.groups: ~0 rows (approximately)
INSERT INTO `groups` (`GroupID`, `GroupName`, `CreatedBy`, `DateAdded`) VALUES
	(1, 'Book Lovers Club', 1, '2024-09-03 09:48:23'),
	(2, 'Photography Enthusiasts', 2, '2024-09-03 09:48:23'),
	(3, 'Fitness Freaks', 3, '2024-09-03 09:48:23');

-- Dumping structure for table sqlll.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `PostID` int(11) NOT NULL AUTO_INCREMENT,
  `PostDescription` varchar(255) DEFAULT NULL,
  `PostedBy` int(11) DEFAULT NULL,
  `IsPublic` tinyint(1) DEFAULT NULL,
  `IsOnlyForFriends` tinyint(1) DEFAULT NULL,
  `GroupID` int(11) DEFAULT NULL,
  `DatePosted` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`PostID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sqlll.posts: ~0 rows (approximately)
INSERT INTO `posts` (`PostID`, `PostDescription`, `PostedBy`, `IsPublic`, `IsOnlyForFriends`, `GroupID`, `DatePosted`) VALUES
	(1, 'Just finished reading a great book!', 1, 1, 0, 1, '2024-09-03 09:48:23'),
	(2, 'Captured some amazing landscapes today!', 2, 0, 1, 2, '2024-09-03 09:48:23'),
	(3, 'Feeling motivated after a great workout!', 3, 1, 0, 3, '2024-09-03 09:48:23'),
	(4, 'Anyone up for a book discussion?', 1, 0, 1, 1, '2024-09-03 09:48:23'),
	(5, 'Looking for workout partners!', 4, 1, 0, NULL, '2024-09-03 09:48:23');

-- Dumping structure for table sqlll.users
CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table sqlll.users: ~5 rows (approximately)
INSERT INTO `users` (`UserID`, `Username`, `FirstName`, `LastName`, `DateOfBirth`, `Password`, `DateAdded`) VALUES
	(1, 'Ken', 'Buni', 'Sauro', '1990-04-15', 'password123', '2024-09-03 09:48:23'),
	(2, 'James', 'Smith', 'Militar', '1985-07-22', 'securePass!', '2024-09-03 09:48:23'),
	(3, 'David', 'Michael', 'Luna', '1992-09-05', 'pass4Michael', '2024-09-03 09:48:23'),
	(4, 'Luisa', 'Mill', 'Jones', '1998-02-17', 'LindaSafe@2024', '2024-09-03 09:48:23'),
	(5, 'david_wilson', 'David', 'Wilson', '1987-12-30', 'DavidPass2024', '2024-09-03 09:48:23');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
