-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.20-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for education
CREATE DATABASE IF NOT EXISTS `education` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `education`;

-- Dumping structure for table education.alertsandnotifications
CREATE TABLE IF NOT EXISTS `alertsandnotifications` (
  `autoId` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `messageType` varchar(20) NOT NULL,
  `producerId` varchar(50) DEFAULT NULL,
  `scheduledDate` varchar(50) DEFAULT NULL,
  `expiryDate` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_alertsandnotifications_producers` (`producerId`),
  CONSTRAINT `FK_alertsandnotifications_producers` FOREIGN KEY (`producerId`) REFERENCES `producers` (`producerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.alertsandnotifications: ~0 rows (approximately)
DELETE FROM `alertsandnotifications`;
/*!40000 ALTER TABLE `alertsandnotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `alertsandnotifications` ENABLE KEYS */;

-- Dumping structure for table education.allocatedquestions
CREATE TABLE IF NOT EXISTS `allocatedquestions` (
  `autoId` bigint(20) NOT NULL AUTO_INCREMENT,
  `consumerExamId` varchar(50) NOT NULL,
  `questionId` varchar(50) NOT NULL,
  `answerId` varchar(50) DEFAULT NULL,
  `unanswered` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- Dumping data for table education.allocatedquestions: ~100 rows (approximately)
DELETE FROM `allocatedquestions`;
/*!40000 ALTER TABLE `allocatedquestions` DISABLE KEYS */;
INSERT INTO `allocatedquestions` (`autoId`, `consumerExamId`, `questionId`, `answerId`, `unanswered`) VALUES
	(1, 'CSREXM0001', 'QST0058', NULL, b'0'),
	(2, 'CSREXM0001', 'QST0039', NULL, b'0'),
	(3, 'CSREXM0001', 'QST0041', NULL, b'0'),
	(4, 'CSREXM0001', 'QST0046', NULL, b'0'),
	(5, 'CSREXM0001', 'QST0053', NULL, b'0'),
	(6, 'CSREXM0001', 'QST0040', NULL, b'0'),
	(7, 'CSREXM0001', 'QST0050', NULL, b'0'),
	(8, 'CSREXM0001', 'QST0059', NULL, b'0'),
	(9, 'CSREXM0001', 'QST0037', NULL, b'0'),
	(10, 'CSREXM0001', 'QST0033', NULL, b'0'),
	(11, 'CSREXM0001', 'QST0032', NULL, b'0'),
	(12, 'CSREXM0001', 'QST0060', NULL, b'0'),
	(13, 'CSREXM0001', 'QST0049', NULL, b'0'),
	(14, 'CSREXM0001', 'QST0035', NULL, b'0'),
	(15, 'CSREXM0001', 'QST0056', NULL, b'0'),
	(16, 'CSREXM0001', 'QST0036', NULL, b'0'),
	(17, 'CSREXM0001', 'QST0055', NULL, b'0'),
	(18, 'CSREXM0001', 'QST0043', NULL, b'0'),
	(19, 'CSREXM0001', 'QST0034', NULL, b'0'),
	(20, 'CSREXM0001', 'QST0047', NULL, b'0'),
	(21, 'CSREXM0001', 'QST0051', NULL, b'0'),
	(22, 'CSREXM0001', 'QST0057', NULL, b'0'),
	(23, 'CSREXM0001', 'QST0048', NULL, b'0'),
	(24, 'CSREXM0001', 'QST0038', NULL, b'0'),
	(25, 'CSREXM0001', 'QST0045', NULL, b'0'),
	(26, 'CSREXM0001', 'QST0031', NULL, b'0'),
	(27, 'CSREXM0001', 'QST0044', NULL, b'0'),
	(28, 'CSREXM0001', 'QST0054', NULL, b'0'),
	(29, 'CSREXM0001', 'QST0052', NULL, b'0'),
	(30, 'CSREXM0001', 'QST0042', NULL, b'0'),
	(31, 'CSREXM0001', 'QST0013', NULL, b'0'),
	(32, 'CSREXM0001', 'QST0010', NULL, b'0'),
	(33, 'CSREXM0001', 'QST0030', NULL, b'0'),
	(34, 'CSREXM0001', 'QST0017', NULL, b'0'),
	(35, 'CSREXM0001', 'QST0011', NULL, b'0'),
	(36, 'CSREXM0001', 'QST0015', NULL, b'0'),
	(37, 'CSREXM0001', 'QST0012', NULL, b'0'),
	(38, 'CSREXM0001', 'QST0001', NULL, b'0'),
	(39, 'CSREXM0001', 'QST0027', NULL, b'0'),
	(40, 'CSREXM0001', 'QST0029', NULL, b'0'),
	(41, 'CSREXM0001', 'QST0018', NULL, b'0'),
	(42, 'CSREXM0001', 'QST0007', NULL, b'0'),
	(43, 'CSREXM0001', 'QST0024', NULL, b'0'),
	(44, 'CSREXM0001', 'QST0022', NULL, b'0'),
	(45, 'CSREXM0001', 'QST0016', NULL, b'0'),
	(46, 'CSREXM0001', 'QST0009', NULL, b'0'),
	(47, 'CSREXM0001', 'QST0004', NULL, b'0'),
	(48, 'CSREXM0001', 'QST0003', NULL, b'0'),
	(49, 'CSREXM0001', 'QST0023', NULL, b'0'),
	(50, 'CSREXM0001', 'QST0021', NULL, b'0'),
	(51, 'CSREXM0001', 'QST0014', NULL, b'0'),
	(52, 'CSREXM0001', 'QST0002', NULL, b'0'),
	(53, 'CSREXM0001', 'QST0025', NULL, b'0'),
	(54, 'CSREXM0001', 'QST0020', NULL, b'0'),
	(55, 'CSREXM0001', 'QST0019', NULL, b'0'),
	(56, 'CSREXM0001', 'QST0005', NULL, b'0'),
	(57, 'CSREXM0001', 'QST0008', NULL, b'0'),
	(58, 'CSREXM0001', 'QST0006', NULL, b'0'),
	(59, 'CSREXM0001', 'QST0026', NULL, b'0'),
	(60, 'CSREXM0001', 'QST0028', NULL, b'0'),
	(61, 'CSREXM0001', 'QST0079', NULL, b'0'),
	(62, 'CSREXM0001', 'QST0078', NULL, b'0'),
	(63, 'CSREXM0001', 'QST0070', NULL, b'0'),
	(64, 'CSREXM0001', 'QST0092', NULL, b'0'),
	(65, 'CSREXM0001', 'QST0073', NULL, b'0'),
	(66, 'CSREXM0001', 'QST0076', NULL, b'0'),
	(67, 'CSREXM0001', 'QST0083', NULL, b'0'),
	(68, 'CSREXM0001', 'QST0098', NULL, b'0'),
	(69, 'CSREXM0001', 'QST0061', NULL, b'0'),
	(70, 'CSREXM0001', 'QST0072', NULL, b'0'),
	(71, 'CSREXM0001', 'QST0087', NULL, b'0'),
	(72, 'CSREXM0001', 'QST0077', NULL, b'0'),
	(73, 'CSREXM0001', 'QST0075', NULL, b'0'),
	(74, 'CSREXM0001', 'QST0099', NULL, b'0'),
	(75, 'CSREXM0001', 'QST0081', NULL, b'0'),
	(76, 'CSREXM0001', 'QST0093', NULL, b'0'),
	(77, 'CSREXM0001', 'QST0091', NULL, b'0'),
	(78, 'CSREXM0001', 'QST0069', NULL, b'0'),
	(79, 'CSREXM0001', 'QST0089', NULL, b'0'),
	(80, 'CSREXM0001', 'QST0062', NULL, b'0'),
	(81, 'CSREXM0001', 'QST0067', NULL, b'0'),
	(82, 'CSREXM0001', 'QST0096', NULL, b'0'),
	(83, 'CSREXM0001', 'QST0064', NULL, b'0'),
	(84, 'CSREXM0001', 'QST0066', NULL, b'0'),
	(85, 'CSREXM0001', 'QST0100', NULL, b'0'),
	(86, 'CSREXM0001', 'QST0085', NULL, b'0'),
	(87, 'CSREXM0001', 'QST0065', NULL, b'0'),
	(88, 'CSREXM0001', 'QST0095', NULL, b'0'),
	(89, 'CSREXM0001', 'QST0084', NULL, b'0'),
	(90, 'CSREXM0001', 'QST0080', NULL, b'0'),
	(91, 'CSREXM0001', 'QST0063', NULL, b'0'),
	(92, 'CSREXM0001', 'QST0094', NULL, b'0'),
	(93, 'CSREXM0001', 'QST0071', NULL, b'0'),
	(94, 'CSREXM0001', 'QST0074', NULL, b'0'),
	(95, 'CSREXM0001', 'QST0068', NULL, b'0'),
	(96, 'CSREXM0001', 'QST0097', NULL, b'0'),
	(97, 'CSREXM0001', 'QST0088', NULL, b'0'),
	(98, 'CSREXM0001', 'QST0082', NULL, b'0'),
	(99, 'CSREXM0001', 'QST0086', NULL, b'0'),
	(100, 'CSREXM0001', 'QST0090', NULL, b'0');
/*!40000 ALTER TABLE `allocatedquestions` ENABLE KEYS */;

-- Dumping structure for table education.assessment
CREATE TABLE IF NOT EXISTS `assessment` (
  `assessmentId` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `repoMode` varchar(50) DEFAULT 'Dedicated',
  `assessmentDate` varchar(50) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `dateElapsed` bit(1) DEFAULT b'0',
  `dateReached` bit(1) DEFAULT b'0',
  `noOfQuestions` int(11) DEFAULT '0',
  `broadCast` bit(1) DEFAULT b'0',
  `producerId` varchar(50) NOT NULL,
  `courseId` varchar(50) NOT NULL,
  `chapterId` varchar(50) NOT NULL,
  `patternId` varchar(50) NOT NULL DEFAULT 'DEFAULT',
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`assessmentId`),
  KEY `FK_assessment_courses` (`courseId`),
  KEY `FK_assessment_chapters` (`chapterId`),
  KEY `FK_assessment_assessmentpattern` (`patternId`),
  KEY `FK_assessment_producers` (`producerId`),
  CONSTRAINT `FK_assessment_assessmentpattern` FOREIGN KEY (`patternId`) REFERENCES `assessmentpattern` (`patternId`),
  CONSTRAINT `FK_assessment_chapters` FOREIGN KEY (`chapterId`) REFERENCES `chapters` (`chapterId`),
  CONSTRAINT `FK_assessment_courses` FOREIGN KEY (`courseId`) REFERENCES `courses` (`courseId`),
  CONSTRAINT `FK_assessment_producers` FOREIGN KEY (`producerId`) REFERENCES `producers` (`producerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.assessment: ~3 rows (approximately)
DELETE FROM `assessment`;
/*!40000 ALTER TABLE `assessment` DISABLE KEYS */;
INSERT INTO `assessment` (`assessmentId`, `name`, `type`, `repoMode`, `assessmentDate`, `duration`, `dateElapsed`, `dateReached`, `noOfQuestions`, `broadCast`, `producerId`, `courseId`, `chapterId`, `patternId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('AST00001', 'Test1', NULL, 'Dedicated', NULL, NULL, b'0', b'0', 0, b'0', 'PRD000001', 'CS000001', 'CHP000001', 'Default', 'SuperAdmin', '2018-03-11 17:34:15', NULL, NULL, b'1'),
	('AST00002', 'Test2', NULL, 'Dedicated', NULL, NULL, b'0', b'0', 0, b'0', 'PRD000001', 'CS000001', 'CHP000002', 'Default', 'SuperAdmin', '2018-03-11 17:34:15', NULL, NULL, b'1'),
	('AST00003', 'Test3', NULL, 'Dedicated', NULL, NULL, b'0', b'0', 0, b'0', 'PRD000001', 'CS000001', 'CHP000003', 'Default', 'SuperAdmin', '2018-03-11 17:34:15', NULL, NULL, b'1');
/*!40000 ALTER TABLE `assessment` ENABLE KEYS */;

-- Dumping structure for table education.assessmentanswer
CREATE TABLE IF NOT EXISTS `assessmentanswer` (
  `answerId` varchar(50) NOT NULL,
  `questionId` varchar(50) NOT NULL,
  `textAnswer` text NOT NULL,
  `patternMode` varchar(20) NOT NULL DEFAULT 'Option',
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileFolderURL` varchar(200) DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileNameForDisplay` varchar(100) DEFAULT NULL,
  `uploadFileSize` bigint(20) NOT NULL DEFAULT '0',
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`answerId`),
  KEY `FK_assessmentanswer_assessmentquestion` (`questionId`),
  CONSTRAINT `FK_assessmentanswer_assessmentquestion` FOREIGN KEY (`questionId`) REFERENCES `assessmentquestion` (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.assessmentanswer: ~3 rows (approximately)
DELETE FROM `assessmentanswer`;
/*!40000 ALTER TABLE `assessmentanswer` DISABLE KEYS */;
INSERT INTO `assessmentanswer` (`answerId`, `questionId`, `textAnswer`, `patternMode`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileLastModifiedDate`, `uploadFileName`, `uploadFileNameForDisplay`, `uploadFileSize`, `uploadDocumentForType`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	('ANS0001', 'QST0001', 'Ananth1', 'Option', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('ANS0002', 'QST0001', 'Ananth2', 'Option', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('ANS0003', 'QST0001', 'Ananth3', 'Option', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('ANS0004', 'QST0001', 'Ananth4', 'Option', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1');
/*!40000 ALTER TABLE `assessmentanswer` ENABLE KEYS */;

-- Dumping structure for table education.assessmentexplanation
CREATE TABLE IF NOT EXISTS `assessmentexplanation` (
  `explanationId` varchar(50) NOT NULL,
  `questionId` varchar(50) NOT NULL,
  `explanation` text NOT NULL,
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileFolderURL` varchar(200) DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileNameForDisplay` varchar(100) DEFAULT NULL,
  `uploadFileSize` bigint(20) NOT NULL DEFAULT '0',
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`explanationId`),
  KEY `FK_assessmentexplanation_assessmentquestion` (`questionId`),
  CONSTRAINT `FK_assessmentexplanation_assessmentquestion` FOREIGN KEY (`questionId`) REFERENCES `assessmentquestion` (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.assessmentexplanation: ~0 rows (approximately)
DELETE FROM `assessmentexplanation`;
/*!40000 ALTER TABLE `assessmentexplanation` DISABLE KEYS */;
INSERT INTO `assessmentexplanation` (`explanationId`, `questionId`, `explanation`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileLastModifiedDate`, `uploadFileName`, `uploadFileNameForDisplay`, `uploadFileSize`, `uploadDocumentForType`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	('EXP0001', 'QST0001', 'He is an Idiot', '2018-03-11 21:01:02', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1');
/*!40000 ALTER TABLE `assessmentexplanation` ENABLE KEYS */;

-- Dumping structure for table education.assessmentpattern
CREATE TABLE IF NOT EXISTS `assessmentpattern` (
  `patternId` varchar(50) NOT NULL,
  `producerId` varchar(50) NOT NULL,
  `patternName` varchar(100) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`patternId`),
  KEY `FK_assessmentpattern_producers` (`producerId`),
  CONSTRAINT `FK_assessmentpattern_producers` FOREIGN KEY (`producerId`) REFERENCES `producers` (`producerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.assessmentpattern: ~0 rows (approximately)
DELETE FROM `assessmentpattern`;
/*!40000 ALTER TABLE `assessmentpattern` DISABLE KEYS */;
INSERT INTO `assessmentpattern` (`patternId`, `producerId`, `patternName`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('Default', 'PRD000001', 'Default', 'SuperAdmin', '2018-01-01 16:34:28', NULL, NULL, b'1');
/*!40000 ALTER TABLE `assessmentpattern` ENABLE KEYS */;

-- Dumping structure for table education.assessmentpatterninfo
CREATE TABLE IF NOT EXISTS `assessmentpatterninfo` (
  `autoId` int(11) NOT NULL,
  `patternId` varchar(50) NOT NULL,
  `weightage` varchar(50) NOT NULL,
  `percentage` int(11) NOT NULL DEFAULT '100',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_assessmentpatterninfo_assessmentpattern` (`patternId`),
  CONSTRAINT `FK_assessmentpatterninfo_assessmentpattern` FOREIGN KEY (`patternId`) REFERENCES `assessmentpattern` (`patternId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.assessmentpatterninfo: ~4 rows (approximately)
DELETE FROM `assessmentpatterninfo`;
/*!40000 ALTER TABLE `assessmentpatterninfo` DISABLE KEYS */;
INSERT INTO `assessmentpatterninfo` (`autoId`, `patternId`, `weightage`, `percentage`, `status`) VALUES
	(1, 'Default', 'High', 50, b'1'),
	(2, 'Default', 'Medium', 30, b'1'),
	(3, 'Default', 'Low', 20, b'1');
/*!40000 ALTER TABLE `assessmentpatterninfo` ENABLE KEYS */;

-- Dumping structure for table education.assessmentquestion
CREATE TABLE IF NOT EXISTS `assessmentquestion` (
  `questionId` varchar(50) NOT NULL,
  `assessmentId` varchar(50) NOT NULL,
  `textQuestion` text NOT NULL,
  `correctAnswer1` varchar(50) NOT NULL,
  `correctAnswer2` varchar(50) DEFAULT NULL,
  `correctAnswer3` varchar(50) DEFAULT NULL,
  `correctAnswer4` varchar(50) DEFAULT NULL,
  `answerMode` bit(1) NOT NULL DEFAULT b'0',
  `markPerQuestion` decimal(3,1) NOT NULL DEFAULT '1.0',
  `negativeMarkPerQuestion` decimal(3,1) NOT NULL DEFAULT '1.0',
  `askedYears` varchar(100) DEFAULT NULL,
  `weightage` varchar(20) NOT NULL DEFAULT 'Default',
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileFolderURL` varchar(200) DEFAULT NULL,
  `uploadFileNameForDisplay` varchar(50) NOT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileName` varchar(50) DEFAULT NULL,
  `uploadFileSize` bigint(20) NOT NULL DEFAULT '0',
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`questionId`),
  KEY `FK_assessmentquestion_assessment` (`assessmentId`),
  CONSTRAINT `FK_assessmentquestion_assessment` FOREIGN KEY (`assessmentId`) REFERENCES `assessment` (`assessmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.assessmentquestion: ~100 rows (approximately)
DELETE FROM `assessmentquestion`;
/*!40000 ALTER TABLE `assessmentquestion` DISABLE KEYS */;
INSERT INTO `assessmentquestion` (`questionId`, `assessmentId`, `textQuestion`, `correctAnswer1`, `correctAnswer2`, `correctAnswer3`, `correctAnswer4`, `answerMode`, `markPerQuestion`, `negativeMarkPerQuestion`, `askedYears`, `weightage`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileNameForDisplay`, `uploadFileLastModifiedDate`, `uploadFileName`, `uploadFileSize`, `uploadDocumentForType`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	('QST0001', 'AST00001', 'What is your name01?', 'ANS0001', 'ANS0002', NULL, NULL, b'1', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0002', 'AST00001', 'What is your name02?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0003', 'AST00001', 'What is your name03?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0004', 'AST00001', 'What is your name04?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0005', 'AST00001', 'What is your name05?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0006', 'AST00001', 'What is your name06?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0007', 'AST00001', 'What is your name07?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0008', 'AST00001', 'What is your name08?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0009', 'AST00001', 'What is your name09?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0010', 'AST00001', 'What is your name10?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0011', 'AST00001', 'What is your name11?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0012', 'AST00001', 'What is your name12?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0013', 'AST00001', 'What is your name13?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0014', 'AST00001', 'What is your name14?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0015', 'AST00001', 'What is your name15?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0016', 'AST00001', 'What is your name16?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0017', 'AST00001', 'What is your name17?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0018', 'AST00001', 'What is your name18?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0019', 'AST00001', 'What is your name19?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0020', 'AST00001', 'What is your name20?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0021', 'AST00001', 'What is your name21?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0022', 'AST00001', 'What is your name22?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0023', 'AST00001', 'What is your name23?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0024', 'AST00001', 'What is your name24?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0025', 'AST00001', 'What is your name25?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0026', 'AST00001', 'What is your name26?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0027', 'AST00001', 'What is your name27?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0028', 'AST00001', 'What is your name28?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0029', 'AST00001', 'What is your name29?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0030', 'AST00001', 'What is your name30?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0031', 'AST00002', 'What is your name31?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0032', 'AST00002', 'What is your name32?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0033', 'AST00002', 'What is your name33?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0034', 'AST00002', 'What is your name34?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0035', 'AST00002', 'What is your name35?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0036', 'AST00002', 'What is your name36?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0037', 'AST00002', 'What is your name37?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0038', 'AST00002', 'What is your name38?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0039', 'AST00002', 'What is your name39?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0040', 'AST00002', 'What is your name40?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0041', 'AST00002', 'What is your name41?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0042', 'AST00002', 'What is your name42?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0043', 'AST00002', 'What is your name43?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0044', 'AST00002', 'What is your name44?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0045', 'AST00002', 'What is your name45?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0046', 'AST00002', 'What is your name46?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0047', 'AST00002', 'What is your name47?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0048', 'AST00002', 'What is your name48?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0049', 'AST00002', 'What is your name49?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0050', 'AST00002', 'What is your name50?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0051', 'AST00002', 'What is your name51?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0052', 'AST00002', 'What is your name52?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0053', 'AST00002', 'What is your name53?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0054', 'AST00002', 'What is your name54?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0055', 'AST00002', 'What is your name55?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0056', 'AST00002', 'What is your name56?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0057', 'AST00002', 'What is your name57?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0058', 'AST00002', 'What is your name58?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0059', 'AST00002', 'What is your name59?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0060', 'AST00002', 'What is your name60?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0061', 'AST00003', 'What is your name61?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0062', 'AST00003', 'What is your name62?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0063', 'AST00003', 'What is your name63?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0064', 'AST00003', 'What is your name64?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0065', 'AST00003', 'What is your name65?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0066', 'AST00003', 'What is your name66?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0067', 'AST00003', 'What is your name67?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0068', 'AST00003', 'What is your name68?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0069', 'AST00003', 'What is your name69?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0070', 'AST00003', 'What is your name70?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0071', 'AST00003', 'What is your name71?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0072', 'AST00003', 'What is your name72?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0073', 'AST00003', 'What is your name73?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0074', 'AST00003', 'What is your name74?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0075', 'AST00003', 'What is your name75?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0076', 'AST00003', 'What is your name76?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0077', 'AST00003', 'What is your name77?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0078', 'AST00003', 'What is your name78?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0079', 'AST00003', 'What is your name79?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0080', 'AST00003', 'What is your name80?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0081', 'AST00003', 'What is your name81?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0082', 'AST00003', 'What is your name82?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0083', 'AST00003', 'What is your name83?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0084', 'AST00003', 'What is your name84?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0085', 'AST00003', 'What is your name85?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0086', 'AST00003', 'What is your name86?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0087', 'AST00003', 'What is your name87?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0088', 'AST00003', 'What is your name88?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0089', 'AST00003', 'What is your name89?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0090', 'AST00003', 'What is your name90?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0091', 'AST00003', 'What is your name91?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0092', 'AST00003', 'What is your name92?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0093', 'AST00003', 'What is your name93?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0094', 'AST00003', 'What is your name94?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0095', 'AST00003', 'What is your name95?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0096', 'AST00003', 'What is your name96?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0097', 'AST00003', 'What is your name97?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0098', 'AST00003', 'What is your name98?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0099', 'AST00003', 'What is your name99?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1'),
	('QST0100', 'AST00003', 'What is your name100?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, b'1');
/*!40000 ALTER TABLE `assessmentquestion` ENABLE KEYS */;

-- Dumping structure for table education.authkeygen
CREATE TABLE IF NOT EXISTS `authkeygen` (
  `serialKey` varchar(50) NOT NULL,
  `usEmployeeId` varchar(50) DEFAULT NULL,
  `schemeId` varchar(50) NOT NULL DEFAULT 'DEFAULT',
  `serialKeyStatus` varchar(50) DEFAULT NULL,
  `sellingPrice` double(10,2) NOT NULL DEFAULT '0.00',
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`serialKey`),
  KEY `FK_authkeygen_users` (`usEmployeeId`),
  KEY `FK_authkeygen_scheme` (`schemeId`),
  CONSTRAINT `FK_authkeygen_scheme` FOREIGN KEY (`schemeId`) REFERENCES `scheme` (`schemeId`),
  CONSTRAINT `FK_authkeygen_users` FOREIGN KEY (`usEmployeeId`) REFERENCES `users` (`usEmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.authkeygen: ~6 rows (approximately)
DELETE FROM `authkeygen`;
/*!40000 ALTER TABLE `authkeygen` DISABLE KEYS */;
INSERT INTO `authkeygen` (`serialKey`, `usEmployeeId`, `schemeId`, `serialKeyStatus`, `sellingPrice`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('906X62M8C4YR8HX', 'USR1513438024801', 'PLN000001', 'Not Sold', 999.00, 'USR1513438024801', '2018-03-04 22:09:06', NULL, NULL, b'1'),
	('AGIIYPR8RK9MIJ9', 'USR1513438024801', 'PLN000001', 'Not Sold', 222.00, 'USR1513438024801', '2018-03-04 22:10:54', NULL, NULL, b'1'),
	('B1BB8LGXOVX6FBZ', 'USR1513438024801', 'PLN000001', 'Not Sold', 5667.00, 'USR1513438024801', '2018-03-18 13:23:58', NULL, NULL, b'1'),
	('GW6AYT1RRKTE03E', 'USR1513438024801', 'PLN000001', 'Not Sold', 5667.00, 'USR1513438024801', '2018-03-18 13:23:58', NULL, NULL, b'1'),
	('R8IE8D7RMKDLN18', 'USR1513438024801', 'PLN000001', 'Not Sold', 222.00, 'USR1513438024801', '2018-03-04 22:10:59', NULL, NULL, b'1'),
	('U6UWP85PV7QJHNT', 'USR1513438024801', 'PLN000001', 'Not Sold', 999.00, 'USR1513438024801', '2018-03-04 22:09:06', NULL, NULL, b'1'),
	('YTZXUYW7R9J18VM', 'USR1513438024801', 'PLN000001', 'Not Sold', 5667.00, 'USR1513438024801', '2018-03-18 13:23:58', NULL, NULL, b'1');
/*!40000 ALTER TABLE `authkeygen` ENABLE KEYS */;

-- Dumping structure for table education.authkeygenconsumer
CREATE TABLE IF NOT EXISTS `authkeygenconsumer` (
  `usEmployeeId` varchar(50) NOT NULL,
  `serialKey` varchar(50) NOT NULL,
  PRIMARY KEY (`usEmployeeId`),
  KEY `FK_authkeygenusermapping_users` (`usEmployeeId`),
  KEY `FK_authkeygenusermapping_authkeygen` (`serialKey`),
  CONSTRAINT `FK_authkeygenusermapping_authkeygen` FOREIGN KEY (`serialKey`) REFERENCES `authkeygen` (`serialKey`),
  CONSTRAINT `FK_authkeygenusermapping_users` FOREIGN KEY (`usEmployeeId`) REFERENCES `users` (`usEmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.authkeygenconsumer: ~0 rows (approximately)
DELETE FROM `authkeygenconsumer`;
/*!40000 ALTER TABLE `authkeygenconsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `authkeygenconsumer` ENABLE KEYS */;

-- Dumping structure for table education.autogeneratedid
CREATE TABLE IF NOT EXISTS `autogeneratedid` (
  `idKey` varchar(50) NOT NULL,
  `idFormat` varchar(50) DEFAULT NULL,
  `idValue` varchar(50) NOT NULL,
  `idDescription` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.autogeneratedid: ~4 rows (approximately)
DELETE FROM `autogeneratedid`;
/*!40000 ALTER TABLE `autogeneratedid` DISABLE KEYS */;
INSERT INTO `autogeneratedid` (`idKey`, `idFormat`, `idValue`, `idDescription`) VALUES
	('Employee', 'c', '035', 'EAEMP14001'),
	('Franchisee', 'EACP', '005', 'EACP14001'),
	('SerialNo', NULL, '4478', '14001'),
	('Student', 'EDU', '2222', 'EDU14001');
/*!40000 ALTER TABLE `autogeneratedid` ENABLE KEYS */;

-- Dumping structure for table education.chapterattachments
CREATE TABLE IF NOT EXISTS `chapterattachments` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `chapterId` varchar(50) DEFAULT NULL,
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileFolderURL` varchar(500) DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileNameForDisplay` varchar(100) DEFAULT NULL,
  `uploadFileSize` bigint(20) NOT NULL DEFAULT '0',
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.chapterattachments: ~0 rows (approximately)
DELETE FROM `chapterattachments`;
/*!40000 ALTER TABLE `chapterattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapterattachments` ENABLE KEYS */;

-- Dumping structure for table education.chapters
CREATE TABLE IF NOT EXISTS `chapters` (
  `chapterId` varchar(50) NOT NULL,
  `chapterName` varchar(100) DEFAULT NULL,
  `courseId` varchar(50) DEFAULT NULL,
  `trialMode` bit(1) NOT NULL DEFAULT b'0',
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`chapterId`),
  KEY `FK_chapters_courses` (`courseId`),
  CONSTRAINT `FK_chapters_courses` FOREIGN KEY (`courseId`) REFERENCES `courses` (`courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.chapters: ~4 rows (approximately)
DELETE FROM `chapters`;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` (`chapterId`, `chapterName`, `courseId`, `trialMode`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('CHP000000', 'All Chapters', 'CS000001', b'0', NULL, NULL, NULL, NULL, b'1'),
	('CHP000001', 'Measurements', 'CS000001', b'0', NULL, NULL, NULL, NULL, b'1'),
	('CHP000002', 'Algebra', 'CS000001', b'0', NULL, NULL, NULL, NULL, b'1'),
	('CHP000003', 'Matrices', 'CS000001', b'0', NULL, NULL, NULL, NULL, b'1');
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;

-- Dumping structure for table education.consumerassessment
CREATE TABLE IF NOT EXISTS `consumerassessment` (
  `consumerExamId` varchar(50) NOT NULL,
  `usEmployeeId` varchar(50) DEFAULT NULL,
  `assessmentMode` varchar(50) DEFAULT NULL,
  `assessmentStatus` varchar(50) NOT NULL DEFAULT 'Ready',
  `assignedDate` varchar(50) DEFAULT NULL,
  `noOfQuestions` int(11) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`consumerExamId`),
  KEY `FK__users` (`usEmployeeId`),
  CONSTRAINT `FK__users` FOREIGN KEY (`usEmployeeId`) REFERENCES `users` (`usEmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.consumerassessment: ~1 rows (approximately)
DELETE FROM `consumerassessment`;
/*!40000 ALTER TABLE `consumerassessment` DISABLE KEYS */;
INSERT INTO `consumerassessment` (`consumerExamId`, `usEmployeeId`, `assessmentMode`, `assessmentStatus`, `assignedDate`, `noOfQuestions`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('CSREXM0001', 'USR1513438024799', NULL, 'Ready', NULL, 10, NULL, '2018-03-11 22:20:22', NULL, NULL, b'1');
/*!40000 ALTER TABLE `consumerassessment` ENABLE KEYS */;

-- Dumping structure for table education.consumerassessmentgroup
CREATE TABLE IF NOT EXISTS `consumerassessmentgroup` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `consumerExamId` varchar(50) NOT NULL,
  `assessmentId` varchar(50) NOT NULL,
  PRIMARY KEY (`autoId`),
  KEY `FK_consumerassessmentgroup_consumerassessment` (`consumerExamId`),
  KEY `FK_consumerassessmentgroup_assessment` (`assessmentId`),
  CONSTRAINT `FK_consumerassessmentgroup_assessment` FOREIGN KEY (`assessmentId`) REFERENCES `assessment` (`assessmentId`),
  CONSTRAINT `FK_consumerassessmentgroup_consumerassessment` FOREIGN KEY (`consumerExamId`) REFERENCES `consumerassessment` (`consumerExamId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table education.consumerassessmentgroup: ~3 rows (approximately)
DELETE FROM `consumerassessmentgroup`;
/*!40000 ALTER TABLE `consumerassessmentgroup` DISABLE KEYS */;
INSERT INTO `consumerassessmentgroup` (`autoId`, `consumerExamId`, `assessmentId`) VALUES
	(1, 'CSREXM0001', 'AST00001'),
	(2, 'CSREXM0001', 'AST00002'),
	(3, 'CSREXM0001', 'AST00003');
/*!40000 ALTER TABLE `consumerassessmentgroup` ENABLE KEYS */;

-- Dumping structure for table education.consumercourses
CREATE TABLE IF NOT EXISTS `consumercourses` (
  `autoId` int(11) NOT NULL,
  `usEmployeeId` varchar(50) NOT NULL,
  `courseId` varchar(50) NOT NULL,
  `courseYear` varchar(50) NOT NULL,
  `schemeId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`autoId`),
  KEY `FK_consumercourses_users` (`usEmployeeId`),
  KEY `FK_consumercourses_courses` (`courseId`),
  KEY `FK_consumercourses_scheme` (`schemeId`),
  CONSTRAINT `FK_consumercourses_courses` FOREIGN KEY (`courseId`) REFERENCES `courses` (`courseId`),
  CONSTRAINT `FK_consumercourses_scheme` FOREIGN KEY (`schemeId`) REFERENCES `scheme` (`schemeId`),
  CONSTRAINT `FK_consumercourses_users` FOREIGN KEY (`usEmployeeId`) REFERENCES `users` (`usEmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.consumercourses: ~2 rows (approximately)
DELETE FROM `consumercourses`;
/*!40000 ALTER TABLE `consumercourses` DISABLE KEYS */;
INSERT INTO `consumercourses` (`autoId`, `usEmployeeId`, `courseId`, `courseYear`, `schemeId`) VALUES
	(1, 'USR1513438024799', 'CS000001', '2017_2018', 'PLN000003'),
	(2, 'USR1513438024799', 'CS000002', '2018_2019', 'PLN000003');
/*!40000 ALTER TABLE `consumercourses` ENABLE KEYS */;

-- Dumping structure for table education.consumerorganisation
CREATE TABLE IF NOT EXISTS `consumerorganisation` (
  `usEmployeeId` varchar(50) NOT NULL,
  `organisationId` varchar(50) NOT NULL,
  KEY `FK_consumerorganisation_users` (`usEmployeeId`),
  KEY `FK_consumerorganisation_organisation` (`organisationId`),
  CONSTRAINT `FK_consumerorganisation_organisation` FOREIGN KEY (`organisationId`) REFERENCES `organisation` (`organisationId`),
  CONSTRAINT `FK_consumerorganisation_users` FOREIGN KEY (`usEmployeeId`) REFERENCES `users` (`usEmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.consumerorganisation: ~1 rows (approximately)
DELETE FROM `consumerorganisation`;
/*!40000 ALTER TABLE `consumerorganisation` DISABLE KEYS */;
INSERT INTO `consumerorganisation` (`usEmployeeId`, `organisationId`) VALUES
	('USR1513438024799', 'ORG000001');
/*!40000 ALTER TABLE `consumerorganisation` ENABLE KEYS */;

-- Dumping structure for table education.country
CREATE TABLE IF NOT EXISTS `country` (
  `country` varchar(2) NOT NULL,
  `countryName` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0',
  `displayOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.country: ~248 rows (approximately)
DELETE FROM `country`;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`country`, `countryName`, `status`, `displayOrder`) VALUES
	('00', 'No Country', b'0', 0),
	('AD', 'Andorra', b'0', 0),
	('AE', 'United Arab Emirates', b'0', 0),
	('AF', 'Afghanistan', b'0', 0),
	('AG', 'Antigua & Barbuda', b'0', 0),
	('AI', 'Anguilla', b'0', 0),
	('AL', 'Albania', b'0', 0),
	('AM', 'Armenia', b'0', 0),
	('AO', 'Angola', b'0', 0),
	('AQ', 'Antarctica', b'0', 0),
	('AR', 'Argentina', b'0', 0),
	('AS', 'Samoa (American)', b'0', 0),
	('AT', 'Austria', b'0', 0),
	('AU', 'Australia', b'0', 0),
	('AW', 'Aruba', b'0', 0),
	('AX', 'Aaland Islands', b'0', 0),
	('AZ', 'Azerbaijan', b'0', 0),
	('BA', 'Bosnia & Herzegovina', b'0', 0),
	('BB', 'Barbados', b'0', 0),
	('BD', 'Bangladesh', b'0', 0),
	('BE', 'Belgium', b'0', 0),
	('BF', 'Burkina Faso', b'0', 0),
	('BG', 'Bulgaria', b'0', 0),
	('BH', 'Bahrain', b'0', 0),
	('BI', 'Burundi', b'0', 0),
	('BJ', 'Benin', b'0', 0),
	('BL', 'St Barthelemy', b'0', 0),
	('BM', 'Bermuda', b'0', 0),
	('BN', 'Brunei', b'0', 0),
	('BO', 'Bolivia', b'0', 0),
	('BQ', 'Caribbean Netherlands', b'0', 0),
	('BR', 'Brazil', b'0', 0),
	('BS', 'Bahamas', b'0', 0),
	('BT', 'Bhutan', b'0', 0),
	('BW', 'Botswana', b'0', 0),
	('BY', 'Belarus', b'0', 0),
	('BZ', 'Belize', b'0', 0),
	('CA', 'Canada', b'0', 0),
	('CC', 'Cocos (Keeling) Islands', b'0', 0),
	('CD', 'Congo (Dem. Rep.)', b'0', 0),
	('CF', 'Central African Rep.', b'0', 0),
	('CG', 'Congo (Rep.)', b'0', 0),
	('CH', 'Switzerland', b'0', 0),
	('CI', 'Cote d\'Ivoire', b'0', 0),
	('CK', 'Cook Islands', b'0', 0),
	('CL', 'Chile', b'0', 0),
	('CM', 'Cameroon', b'0', 0),
	('CN', 'China', b'0', 0),
	('CO', 'Colombia', b'0', 0),
	('CR', 'Costa Rica', b'0', 0),
	('CU', 'Cuba', b'0', 0),
	('CV', 'Cape Verde', b'0', 0),
	('CW', 'Curacao', b'0', 0),
	('CX', 'Christmas Island', b'0', 0),
	('CY', 'Cyprus', b'0', 0),
	('CZ', 'Czech Republic', b'0', 0),
	('DE', 'Germany', b'0', 0),
	('DJ', 'Djibouti', b'0', 0),
	('DK', 'Denmark', b'0', 0),
	('DM', 'Dominica', b'0', 0),
	('DO', 'Dominican Republic', b'0', 0),
	('DZ', 'Algeria', b'0', 0),
	('EC', 'Ecuador', b'0', 0),
	('EE', 'Estonia', b'0', 0),
	('EG', 'Egypt', b'0', 0),
	('EH', 'Western Sahara', b'0', 0),
	('ER', 'Eritrea', b'0', 0),
	('ES', 'Spain', b'0', 0),
	('ET', 'Ethiopia', b'0', 0),
	('FI', 'Finland', b'0', 0),
	('FJ', 'Fiji', b'0', 0),
	('FK', 'Falkland Islands', b'0', 0),
	('FM', 'Micronesia', b'0', 0),
	('FO', 'Faroe Islands', b'0', 0),
	('FR', 'France', b'0', 0),
	('GA', 'Gabon', b'0', 0),
	('GB', 'United Kingdom', b'0', 0),
	('GD', 'Grenada', b'0', 0),
	('GE', 'Georgia', b'0', 0),
	('GF', 'French Guiana', b'0', 0),
	('GG', 'Guernsey', b'0', 0),
	('GH', 'Ghana', b'0', 0),
	('GI', 'Gibraltar', b'0', 0),
	('GL', 'Greenland', b'0', 0),
	('GM', 'Gambia', b'0', 0),
	('GN', 'Guinea', b'0', 0),
	('GP', 'Guadeloupe', b'0', 0),
	('GQ', 'Equatorial Guinea', b'0', 0),
	('GR', 'Greece', b'0', 0),
	('GS', 'South Georgia & the South Sandwich Islands', b'0', 0),
	('GT', 'Guatemala', b'0', 0),
	('GU', 'Guam', b'0', 0),
	('GW', 'Guinea-Bissau', b'0', 0),
	('GY', 'Guyana', b'0', 0),
	('HK', 'Hong Kong', b'0', 0),
	('HN', 'Honduras', b'0', 0),
	('HR', 'Croatia', b'0', 0),
	('HT', 'Haiti', b'0', 0),
	('HU', 'Hungary', b'0', 0),
	('ID', 'Indonesia', b'1', 3),
	('IE', 'Ireland', b'0', 0),
	('IL', 'Israel', b'0', 0),
	('IM', 'Isle of Man', b'0', 0),
	('IN', 'India', b'1', 1),
	('IO', 'British Indian Ocean Territory', b'0', 0),
	('IQ', 'Iraq', b'0', 0),
	('IR', 'Iran', b'0', 0),
	('IS', 'Iceland', b'0', 0),
	('IT', 'Italy', b'0', 0),
	('JE', 'Jersey', b'0', 0),
	('JM', 'Jamaica', b'0', 0),
	('JO', 'Jordan', b'0', 0),
	('JP', 'Japan', b'0', 0),
	('KE', 'Kenya', b'0', 0),
	('KG', 'Kyrgyzstan', b'0', 0),
	('KH', 'Cambodia', b'0', 0),
	('KI', 'Kiribati', b'0', 0),
	('KM', 'Comoros', b'0', 0),
	('KN', 'St Kitts & Nevis', b'0', 0),
	('KP', 'Korea (North)', b'0', 0),
	('KR', 'Korea (South)', b'0', 0),
	('KW', 'Kuwait', b'0', 0),
	('KY', 'Cayman Islands', b'0', 0),
	('KZ', 'Kazakhstan', b'0', 0),
	('LA', 'Laos', b'0', 0),
	('LB', 'Lebanon', b'0', 0),
	('LC', 'St Lucia', b'0', 0),
	('LI', 'Liechtenstein', b'0', 0),
	('LK', 'Sri Lanka', b'1', 4),
	('LR', 'Liberia', b'0', 0),
	('LS', 'Lesotho', b'0', 0),
	('LT', 'Lithuania', b'0', 0),
	('LU', 'Luxembourg', b'0', 0),
	('LV', 'Latvia', b'0', 0),
	('LY', 'Libya', b'0', 0),
	('MA', 'Morocco', b'0', 0),
	('MC', 'Monaco', b'0', 0),
	('MD', 'Moldova', b'0', 0),
	('ME', 'Montenegro', b'0', 0),
	('MF', 'St Martin (French part)', b'0', 0),
	('MG', 'Madagascar', b'0', 0),
	('MH', 'Marshall Islands', b'0', 0),
	('MK', 'Macedonia', b'0', 0),
	('ML', 'Mali', b'0', 0),
	('MM', 'Myanmar (Burma)', b'1', 10),
	('MN', 'Mongolia', b'0', 0),
	('MO', 'Macau', b'0', 0),
	('MP', 'Northern Mariana Islands', b'0', 0),
	('MQ', 'Martinique', b'0', 0),
	('MR', 'Mauritania', b'0', 0),
	('MS', 'Montserrat', b'0', 0),
	('MT', 'Malta', b'0', 0),
	('MU', 'Mauritius', b'0', 0),
	('MV', 'Maldives', b'0', 0),
	('MW', 'Malawi', b'0', 0),
	('MX', 'Mexico', b'0', 0),
	('MY', 'Malaysia', b'1', 5),
	('MZ', 'Mozambique', b'0', 0),
	('NA', 'Namibia', b'0', 0),
	('NC', 'New Caledonia', b'0', 0),
	('NE', 'Niger', b'0', 0),
	('NF', 'Norfolk Island', b'0', 0),
	('NG', 'Nigeria', b'0', 0),
	('NI', 'Nicaragua', b'0', 0),
	('NL', 'Netherlands', b'0', 0),
	('NO', 'Norway', b'0', 0),
	('NP', 'Nepal', b'1', 7),
	('NR', 'Nauru', b'0', 0),
	('NU', 'Niue', b'0', 0),
	('NZ', 'New Zealand', b'0', 0),
	('OM', 'Oman', b'0', 0),
	('PA', 'Panama', b'0', 0),
	('PE', 'Peru', b'0', 0),
	('PF', 'French Polynesia', b'0', 0),
	('PG', 'Papua New Guinea', b'0', 0),
	('PH', 'Philippines', b'1', 8),
	('PK', 'Pakistan', b'1', 9),
	('PL', 'Poland', b'0', 0),
	('PM', 'St Pierre & Miquelon', b'0', 0),
	('PN', 'Pitcairn', b'0', 0),
	('PR', 'Puerto Rico', b'0', 0),
	('PS', 'Palestine', b'0', 0),
	('PT', 'Portugal', b'0', 0),
	('PW', 'Palau', b'0', 0),
	('PY', 'Paraguay', b'0', 0),
	('QA', 'Qatar', b'0', 0),
	('RE', 'Reunion', b'0', 0),
	('RO', 'Romania', b'0', 0),
	('RS', 'Serbia', b'0', 0),
	('RU', 'Russia', b'0', 0),
	('RW', 'Rwanda', b'0', 0),
	('SA', 'Saudi Arabia', b'0', 0),
	('SB', 'Solomon Islands', b'0', 0),
	('SC', 'Seychelles', b'0', 0),
	('SD', 'Sudan', b'0', 0),
	('SE', 'Sweden', b'0', 0),
	('SG', 'Singapore', b'1', 2),
	('SH', 'St Helena', b'0', 0),
	('SI', 'Slovenia', b'0', 0),
	('SJ', 'Svalbard & Jan Mayen', b'0', 0),
	('SK', 'Slovakia', b'0', 0),
	('SL', 'Sierra Leone', b'0', 0),
	('SM', 'San Marino', b'0', 0),
	('SN', 'Senegal', b'0', 0),
	('SO', 'Somalia', b'0', 0),
	('SR', 'Suriname', b'0', 0),
	('SS', 'South Sudan', b'0', 0),
	('ST', 'Sao Tome & Principe', b'0', 0),
	('SV', 'El Salvador', b'0', 0),
	('SX', 'St Maarten (Dutch part)', b'0', 0),
	('SY', 'Syria', b'0', 0),
	('SZ', 'Swaziland', b'0', 0),
	('TC', 'Turks & Caicos Is', b'0', 0),
	('TD', 'Chad', b'0', 0),
	('TF', 'French Southern & Antarctic Lands', b'0', 0),
	('TG', 'Togo', b'0', 0),
	('TH', 'Thailand', b'0', 0),
	('TJ', 'Tajikistan', b'0', 0),
	('TK', 'Tokelau', b'0', 0),
	('TL', 'East Timor', b'0', 0),
	('TM', 'Turkmenistan', b'0', 0),
	('TN', 'Tunisia', b'0', 0),
	('TO', 'Tonga', b'0', 0),
	('TR', 'Turkey', b'0', 0),
	('TT', 'Trinidad & Tobago', b'0', 0),
	('TV', 'Tuvalu', b'0', 0),
	('TW', 'Taiwan', b'0', 0),
	('TZ', 'Tanzania', b'0', 0),
	('UA', 'Ukraine', b'0', 0),
	('UG', 'Uganda', b'0', 0),
	('UM', 'US minor outlying islands', b'0', 0),
	('US', 'United States', b'1', 6),
	('UY', 'Uruguay', b'0', 0),
	('UZ', 'Uzbekistan', b'0', 0),
	('VA', 'Vatican City', b'0', 0),
	('VC', 'St Vincent', b'0', 0),
	('VE', 'Venezuela', b'0', 0),
	('VG', 'Virgin Islands (UK)', b'0', 0),
	('VI', 'Virgin Islands (US)', b'0', 0),
	('VN', 'Vietnam', b'0', 0),
	('VU', 'Vanuatu', b'0', 0),
	('WF', 'Wallis & Futuna', b'0', 0),
	('WS', 'Samoa (western)', b'0', 0),
	('YE', 'Yemen', b'0', 0),
	('YT', 'Mayotte', b'0', 0),
	('ZA', 'South Africa', b'0', 0),
	('ZM', 'Zambia', b'0', 0),
	('ZW', 'Zimbabwe', b'0', 0);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Dumping structure for table education.courseattachments
CREATE TABLE IF NOT EXISTS `courseattachments` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `courseId` varchar(50) DEFAULT NULL,
  `attachmentDesc` varchar(100) DEFAULT NULL,
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileFolderURL` varchar(500) DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileNameForDisplay` varchar(100) DEFAULT NULL,
  `uploadFileSize` bigint(20) NOT NULL,
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_courseattachments_courses` (`courseId`),
  CONSTRAINT `FK_courseattachments_courses` FOREIGN KEY (`courseId`) REFERENCES `courses` (`courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.courseattachments: ~0 rows (approximately)
DELETE FROM `courseattachments`;
/*!40000 ALTER TABLE `courseattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `courseattachments` ENABLE KEYS */;

-- Dumping structure for table education.coursegroup
CREATE TABLE IF NOT EXISTS `coursegroup` (
  `courseGroupId` varchar(50) NOT NULL,
  `courseBatch` varchar(50) DEFAULT NULL,
  `courseGroupSection` varchar(50) DEFAULT NULL,
  `courseDesc` varchar(500) DEFAULT NULL,
  `startMonth` int(11) DEFAULT NULL,
  `endMonth` int(11) DEFAULT NULL,
  `producerId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`courseGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.coursegroup: ~5 rows (approximately)
DELETE FROM `coursegroup`;
/*!40000 ALTER TABLE `coursegroup` DISABLE KEYS */;
INSERT INTO `coursegroup` (`courseGroupId`, `courseBatch`, `courseGroupSection`, `courseDesc`, `startMonth`, `endMonth`, `producerId`) VALUES
	('CG000001', 'STATE_BOARD', 'XI', 'XI State Board', 4, 3, 'PRD000001'),
	('CG000002', 'STATE_BOARD', 'XII', 'XII State Board', 3, 2, 'PRD000001'),
	('CG000003', 'CBSE', 'XI', 'XI CBSE', 4, 3, 'PRD000001'),
	('CG000004', 'CBSE', 'XII', 'XII CBSE', 3, 2, 'PRD000001'),
	('CG000005', 'SSC', 'SSC', 'Staff Selection Commision', 6, 12, 'PRD000001');
/*!40000 ALTER TABLE `coursegroup` ENABLE KEYS */;

-- Dumping structure for table education.courses
CREATE TABLE IF NOT EXISTS `courses` (
  `courseId` varchar(50) NOT NULL,
  `courseName` varchar(100) NOT NULL,
  `courseGroupId` varchar(50) NOT NULL,
  `producerId` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`courseId`),
  KEY `FK_courses_coursegroup` (`courseGroupId`),
  KEY `FK_courses_producers` (`producerId`),
  CONSTRAINT `FK_courses_coursegroup` FOREIGN KEY (`courseGroupId`) REFERENCES `coursegroup` (`courseGroupId`),
  CONSTRAINT `FK_courses_producers` FOREIGN KEY (`producerId`) REFERENCES `producers` (`producerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.courses: ~12 rows (approximately)
DELETE FROM `courses`;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` (`courseId`, `courseName`, `courseGroupId`, `producerId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('CS000001', 'Mathematics', 'CG000001', 'PRD000001', 'SuperAdmin', '2017-12-22 17:49:57', NULL, NULL, b'1'),
	('CS000002', 'Mathematics', 'CG000003', 'PRD000001', 'SuperAdmin', '2017-12-22 18:37:16', NULL, NULL, b'1'),
	('CS000003', 'Physics', 'CG000001', 'PRD000001', 'SuperAdmin', '2017-12-28 22:05:41', NULL, NULL, b'1'),
	('CS000004', 'Physics', 'CG000003', 'PRD000001', 'SuperAdmin', '2017-12-28 22:06:35', NULL, NULL, b'1'),
	('CS000005', 'Chemistry', 'CG000001', 'PRD000001', 'SuperAdmin', '2017-12-28 22:06:35', NULL, NULL, b'1'),
	('CS000006', 'Chemistry', 'CG000003', 'PRD000001', 'SuperAdmin', '2017-12-28 22:06:35', NULL, NULL, b'1'),
	('CS000007', 'Biology Botany', 'CG000001', 'PRD000001', 'SuperAdmin', '2017-12-28 22:06:35', NULL, NULL, b'1'),
	('CS000008', 'Biology Botany', 'CG000003', 'PRD000001', 'SuperAdmin', '2017-12-28 22:06:35', NULL, NULL, b'1'),
	('CS000009', 'Biology Zoology', 'CG000001', 'PRD000001', 'SuperAdmin', '2017-12-28 22:06:35', NULL, NULL, b'1'),
	('CS000010', 'Biology Zoology', 'CG000003', 'PRD000001', 'SuperAdmin', '2017-12-28 22:06:35', NULL, NULL, b'1'),
	('CS000011', 'Computer Science', 'CG000001', 'PRD000001', 'SuperAdmin', '2017-12-28 22:06:35', NULL, NULL, b'1'),
	('CS000012', 'Computer Science', 'CG000003', 'PRD000001', 'SuperAdmin', '2017-12-28 22:06:35', NULL, NULL, b'1');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;

-- Dumping structure for table education.layoutelements
CREATE TABLE IF NOT EXISTS `layoutelements` (
  `elementId` varchar(20) NOT NULL,
  `displayName` varchar(200) NOT NULL,
  `displayPropertyAlias` varchar(50) NOT NULL,
  `displayProperty` varchar(200) DEFAULT NULL,
  `displayPropertyGetter` varchar(200) DEFAULT NULL,
  `isEmbeddedClass` bit(1) NOT NULL DEFAULT b'0',
  `render` longtext,
  `columnType` varchar(50) NOT NULL,
  `dataType` varchar(50) NOT NULL,
  `transformerBeanName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`elementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.layoutelements: ~58 rows (approximately)
DELETE FROM `layoutelements`;
/*!40000 ALTER TABLE `layoutelements` DISABLE KEYS */;
INSERT INTO `layoutelements` (`elementId`, `displayName`, `displayPropertyAlias`, `displayProperty`, `displayPropertyGetter`, `isEmbeddedClass`, `render`, `columnType`, `dataType`, `transformerBeanName`) VALUES
	('AKCountry', ' ', 'AK', 'createdUser.country.country', NULL, b'0', NULL, 'String', 'String', NULL),
	('AKCreatedDate', 'Created Date', 'AK', 'createdDate', 'getCreatedDateByTimeZone()', b'0', NULL, 'String', 'String', 'org.hbs.util.transformer.DateTimeTransformer'),
	('AKCreatedFirstName', 'Created By', 'AK', 'createdUser.usUserName', NULL, b'0', NULL, 'String', 'String', NULL),
	('AKCreatedLastName', '', 'AK', 'createdUser.usLastName', NULL, b'0', NULL, 'String', 'String', NULL),
	('AKFirstName', 'Assigned To', 'AK', 'users.usUserName', NULL, b'0', NULL, 'String', 'String', NULL),
	('AKKeyStatus', 'Key Status', 'AK', 'serialKeyStatus', NULL, b'0', NULL, 'String', 'String', NULL),
	('AKLastName', '', 'AK', 'users.usLastName', NULL, b'0', NULL, 'String', 'String', NULL),
	('AKSchemeCost', 'Scheme Cost', 'AK', 'scheme.schemeCost', NULL, b'0', NULL, 'String', 'String', NULL),
	('AKSchemeName', 'Scheme', 'AK', 'scheme.schemeName', NULL, b'0', NULL, 'String', 'String', NULL),
	('AKSellingPrice', 'Selling', 'AK', 'sellingPrice', NULL, b'0', NULL, 'String', 'String', NULL),
	('AKSerialKey', 'Serial Key', 'AK', 'serialKey', NULL, b'0', NULL, 'String', 'String', NULL),
	('AKSerialKeyChkBox', '<center><input type="checkbox" class="editor-active" name="serialKeyColumnHeadId" id="serialKeyColumnHeadId" value="" onchange="onSelectAllCheckBox();"></input></center>', 'AK', 'serialKey', NULL, b'0', NULL, 'String', 'String', NULL),
	('EXPAND', '', ' ', ' ', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGAdd1', '', 'OA', 'addressLine1', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGAdd2', '', 'OA', 'addressLine2', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGAdd3', '', 'OA', 'addressLine3', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGCity', 'City', 'OA', 'city', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGCountry', 'Country', 'OA', 'country.countryName', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGCreatedCountry', ' ', 'OA', 'organisation.createdUser.country.country', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGCreatedDate', 'Created Date', 'OA', 'organisation.createdDate', 'getCreatedDateByTimeZone()', b'0', NULL, 'String', 'String', 'org.hbs.util.transformer.DateTimeTransformer'),
	('ORGCreatedFirstName', 'Created By', 'OA', 'organisation.createdUser.usUserName', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGCreatedLastName', '', 'OA', 'organisation.createdUser.usLastName', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGEmail', 'Email', 'OA', 'email', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGId', '', 'OA', 'organisation.organisationId', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGImage', 'View', 'OA', 'uploadFileVirtualURL', NULL, b'0', NULL, 'String', 'String', 'org.hbs.util.transformer.AttachmentTransformer'),
	('ORGLandmark', 'Landmark', 'OA', 'landmark', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGMobile', 'Mobile', 'OA', 'mobileNo', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGName', 'Name', 'OA', 'organisation.organisationName', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGPhone', 'Phone', 'OA', 'primaryPhoneNo', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGPincode', 'Pincode', 'OA', 'pincode', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGState', 'State', 'OA', 'state.state', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGStatus', 'Status', 'OA', 'status', NULL, b'0', NULL, 'String', 'String', NULL),
	('ORGWebsite', 'Website', 'OA', 'website', NULL, b'0', NULL, 'String', 'String', NULL),
	('ULGCountryCode', 'Country', 'UL', 'users.country.country', NULL, b'0', NULL, 'String', 'String', NULL),
	('ULGFirstName', 'Name', 'UL', 'users.usUserName', NULL, b'0', NULL, 'String', 'String', NULL),
	('ULGIPAddress', 'IP Address', 'UL', 'ulIpaddress', NULL, b'0', NULL, 'String', 'String', NULL),
	('ULGLastName', '', 'UL', 'users.usLastName', NULL, b'0', NULL, 'String', 'String', NULL),
	('ULGLoginTime', 'Login Time', 'UL', 'ulUserLoginTime', 'getCreatedDateByTimeZone()', b'0', NULL, 'String', 'String', NULL),
	('ULGLogoutTime', 'Logout Time', 'UL', 'ulUserLogoutTime', 'getCreatedDateByTimeZone()', b'0', NULL, 'String', 'String', NULL),
	('USRAdd1', 'Address', 'UA', 'addressLine1', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRAdd2', '', 'UA', 'addressLine2', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRAdd3', '', 'UA', 'addressLine3', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRCity', 'City', 'UA', 'city', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRCountry', 'Country', 'UA', 'country.countryName', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRCreatedCountry', ' ', 'UA', 'users.createdUser.country.country', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRCreatedDate', 'Created Date', 'UA', 'users.createdDate', 'getCreatedDateByTimeZone()', b'0', NULL, 'String', 'String', 'org.hbs.util.transformer.DateTimeTransformer'),
	('USRCreatedFirstName', 'Created By', 'UA', 'users.createdUser.usUserName', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRCreatedLastName', '', 'UA', 'users.createdUser.usLastName', NULL, b'0', NULL, 'String', 'String', NULL),
	('USREmail', 'Email', 'UA', 'email', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRId', '', 'UA', 'users.usEmployeeId', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRLandmark', 'Landmark', 'UA', 'landmark', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRLastName', 'Name', 'UA', 'users.usLastName', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRMobile', 'Mobile', 'UA', 'mobileNo', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRName', 'Name', 'UA', 'users.usUserName', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRPhone', 'Phone', 'UA', 'primaryPhoneNo', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRPincode', 'Pincode', 'UA', 'pincode', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRState', 'State', 'UA', 'state.state', NULL, b'0', NULL, 'String', 'String', NULL),
	('USRStatus', 'Status', 'UA', 'status', NULL, b'0', NULL, 'String', 'String', NULL);
/*!40000 ALTER TABLE `layoutelements` ENABLE KEYS */;

-- Dumping structure for table education.layouts
CREATE TABLE IF NOT EXISTS `layouts` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `layoutName` varchar(50) NOT NULL,
  `layoutSubName` varchar(50) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `displayName` varchar(200) DEFAULT NULL,
  `displayScriptColumn` varchar(50) DEFAULT NULL,
  `elementId` varchar(20) DEFAULT NULL,
  `visible` bit(1) NOT NULL DEFAULT b'1',
  `orderable` bit(1) NOT NULL DEFAULT b'1',
  `searchable` bit(1) NOT NULL DEFAULT b'1',
  `displayWidth` varchar(10) DEFAULT NULL,
  `render` varchar(1500) DEFAULT NULL,
  `cssClassName` varchar(100) DEFAULT NULL,
  `defaultContent` text,
  `searchName` varchar(50) DEFAULT NULL,
  `searchOrder` int(11) DEFAULT NULL,
  `baseBeanNameWithFullPackage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- Dumping data for table education.layouts: ~112 rows (approximately)
DELETE FROM `layouts`;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` (`autoId`, `layoutName`, `layoutSubName`, `displayOrder`, `displayName`, `displayScriptColumn`, `elementId`, `visible`, `orderable`, `searchable`, `displayWidth`, `render`, `cssClassName`, `defaultContent`, `searchName`, `searchOrder`, `baseBeanNameWithFullPackage`) VALUES
	(7, 'AuthKeyGen', '', 2, NULL, 'serialKey', 'AKSerialKey', b'1', b'1', b'1', '15', NULL, NULL, NULL, NULL, 1, NULL),
	(8, 'AuthKeyGen', '', 3, NULL, 'assignedFirstName', 'AKFirstName', b'1', b'1', b'1', '15', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return data\\[assignedFirstName\\] + \\\' \\\' + data\\[assignedLastName\\]; } }', NULL, NULL, NULL, 1, NULL),
	(9, 'AuthKeyGen', '', 4, NULL, 'assignedLastName', 'AKLastName', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(10, 'AuthKeyGen', '', 5, NULL, 'scheme', 'AKSchemeName', b'1', b'1', b'1', '20', NULL, NULL, NULL, NULL, 1, NULL),
	(11, 'AuthKeyGen', '', 6, NULL, 'cost', 'AKSchemeCost', b'1', b'1', b'1', '6', NULL, NULL, NULL, NULL, 1, NULL),
	(12, 'AuthKeyGen', '', 7, NULL, 'selling', 'AKSellingPrice', b'1', b'1', b'1', '6', NULL, NULL, NULL, NULL, 1, NULL),
	(13, 'AuthKeyGen', '', 8, NULL, 'status', 'AKKeyStatus', b'1', b'1', b'1', '9', 'function(data, type, full, meta) { if (type === \\\'display\\\') { if(data\\[status\\] === \'Not Sold\'){ return \\"<center><span class=\\\\"label label-sm label-success\\\\">\\"+data\\[status\\]+\\" </span></center>\\"; }else if(data\\[status\\] === \'Suspended\'){ return \\"<center><span class=\\\\"label label-sm label-danger\\\\">\\"+data\\[status\\]+\\" </span></center>\\";  } } else { return data\\[status\\]; } }', NULL, NULL, NULL, 1, NULL),
	(15, 'AuthKeyGen', '', 9, NULL, 'createdFirstName', 'AKCreatedFirstName', b'1', b'1', b'1', '15', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return data\\[createdFirstName\\] + \\\' \\\' + data\\[createdLastName\\]; } }', NULL, NULL, NULL, 1, NULL),
	(16, 'AuthKeyGen', '', 10, NULL, 'createdLastName', 'AKCreatedLastName', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(17, 'AuthKeyGen', '', 12, NULL, 'createdDate', 'AKCreatedDate', b'1', b'1', b'1', '20', NULL, NULL, NULL, NULL, 1, NULL),
	(18, 'OrganisationAddress', '', 2, NULL, 'orgId', 'ORGId', b'0', b'0', b'0', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(19, 'OrganisationAddress', '', 3, NULL, 'orgName', 'ORGName', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[2\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(20, 'OrganisationAddress', '', 4, NULL, 'mobileNo', 'ORGMobile', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(21, 'OrganisationAddress', '', 5, NULL, 'phoneNo', 'ORGPhone', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(22, 'OrganisationAddress', '', 7, NULL, 'email', 'ORGEmail', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[email\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(23, 'OrganisationAddress', '', 15, NULL, 'city', 'ORGCity', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(24, 'OrganisationAddress', '', 8, NULL, 'firstName', 'ORGCreatedFirstName', b'1', b'1', b'1', '10', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(25, 'OrganisationAddress', '', 9, NULL, 'lastName', 'ORGCreatedLastName', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(26, 'OrganisationAddress', '', 11, NULL, 'createdDate', 'ORGCreatedDate', b'1', b'1', b'1', '15', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(27, 'OrganisationAddress', '', 6, NULL, 'website', 'ORGWebsite', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[website\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(28, 'OrganisationAddress', '', 1, ' ', 'chkBox', 'EXPAND', b'1', b'0', b'0', '1', NULL, 'control', NULL, NULL, 0, NULL),
	(29, 'OrganisationAddress', '', 16, NULL, 'state', 'ORGState', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(30, 'OrganisationAddress', '', 17, NULL, 'country', 'ORGCountry', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(31, 'OrganisationAddress', '', 12, NULL, 'add1', 'ORGAdd1', b'1', b'1', b'1', '10', 'function(data, type, full, meta) { if (type === \\\'display\\\') { if(data\\[add1\\] == \\\'\\\'){return \\"<div class=\\\'row\\\'><div class=\\\'col-md-12\\\'><div class=\\\'col-md-1\\\'>&nbsp;<\\/div><div class=\\\'col-md-11\\\'><b>Profile Picture<\\/b><br><div class=\\\'mt-card-item\\\'><div class=\\\'mt-card-avatar mt-overlay-1\\\'><img src=\\\'#\\\' width=\\\'175px;\\\'><\\/div><\\/div><\\/div><\\/div>\\";}else{    return \\"<div class=\\\'row\\\'><div class=\\\'col-md-12\\\'><div class=\\\'col-md-1\\\'>&nbsp;<\\/div><div class=\\\'col-md-3\\\'><b>Address<\\/b><br><span class=\\\'td-span175\\\'>\\" + data\\[add1\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[add2\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[add3\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[landmark\\]+ \\"<\\/span><\\/div><div class=\\\'col-md-3\\\'>&nbsp;<br><span class=\\\'td-span175\\\'>\\" + data\\[city\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[state\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[country\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[pincode\\]+ \\"<\\/span><\\/div><div class=\\\'col-md-5\\\'><b>Profile Picture<\\/b><br><div class=\\\'mt-card-item\\\'><div class=\\\'mt-card-avatar mt-overlay-1\\\'><img src=\\\'#\\\' width=\\\'175px;\\\'><\\/div><\\/div><\\/div><\\/div>\\";}}}', NULL, NULL, NULL, 1, NULL),
	(32, 'OrganisationAddress', '', 13, NULL, 'add2', 'ORGAdd2', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(33, 'OrganisationAddress', '', 14, NULL, 'add3', 'ORGAdd3', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(34, 'OrganisationAddress', '', 19, NULL, 'landmark', 'ORGLandmark', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(35, 'OrganisationAddress', '', 18, NULL, 'pincode', 'ORGPincode', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(49, 'AuthKeyGen', '', 1, '<div style="text-align:center"><input type="checkbox" class="editor-active" name="serialKeyColumnHeadId" id="serialKeyColumnHeadId" value="" onchange="onSelectAllCheckBox();"></input></div>', 'chkBox', 'AKSerialKeyChkBox', b'1', b'0', b'0', '5', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<input type=\\\\"checkbox\\\\" class=\\\\"editor-active\\\\" name=\\\\"serialKey\\\\" value=\\\\"\\" + data\\[chkBox\\] + \\"\\\\"  onchange=\\\\\'onShow();\\\\\'>\\"; }else { return data\\[chkBox\\];}}', 'dt-body-center', NULL, NULL, 0, NULL),
	(50, 'Assessment', '', 1, NULL, NULL, 'ASS0001', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(51, 'Assessment', '', 1, NULL, NULL, 'ASS0002', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(52, 'Assessment', '', 1, NULL, NULL, 'ASS0003', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(53, 'Assessment', '', 1, NULL, NULL, 'ASS0004', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(54, 'Assessment', '', 1, NULL, NULL, 'ASS0005', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(55, 'Assessment', '', 1, NULL, NULL, 'ASS0006', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(56, 'Assessment', '', 1, NULL, NULL, 'ASS0007', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(57, 'Assessment', '', 1, NULL, NULL, 'ASS0008', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(58, 'Assessment', '', 1, NULL, NULL, 'ASS0008-1', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(59, 'Assessment', '', 1, NULL, NULL, 'ASS0009', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(60, 'Assessment', '', 1, NULL, NULL, 'ASS0010', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(61, 'Assessment', '', 1, NULL, NULL, 'ASS0011', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(62, 'Assessment', '', 1, NULL, NULL, 'ASS0012', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(95, 'OrganisationAddress', '', 10, NULL, 'countryCode', 'ORGCreatedCountry', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(96, 'AuthKeyGen', '', 11, NULL, 'countryCode', 'AKCountry', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(97, 'UsersAddress', 'Consumer', 1, ' ', 'chkBox', 'EXPAND', b'1', b'0', b'0', '1', NULL, 'control', NULL, NULL, 0, NULL),
	(98, 'UsersAddress', 'Consumer', 2, NULL, 'userId', 'USRId', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(99, 'UsersAddress', 'Consumer', 3, NULL, 'userFirstName', 'USRName', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[userFirstName\\] + \\\' \\\' + data\\[userLastName\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(100, 'UsersAddress', 'Consumer', 4, NULL, 'userLastName', 'USRLastName', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(101, 'UsersAddress', 'Consumer', 5, NULL, 'mobileNo', 'USRMobile', b'1', b'1', b'1', '15', NULL, NULL, NULL, NULL, 1, NULL),
	(102, 'UsersAddress', 'Consumer', 6, NULL, 'phoneNo', 'USRPhone', b'1', b'1', b'1', '15', NULL, NULL, NULL, NULL, 1, NULL),
	(104, 'UsersAddress', 'Consumer', 7, NULL, 'email', 'USREmail', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[email\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(105, 'UsersAddress', 'Consumer', 8, NULL, 'firstName', 'USRCreatedFirstName', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(106, 'UsersAddress', 'Consumer', 9, NULL, 'lastName', 'USRCreatedLastName', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(107, 'UsersAddress', 'Consumer', 10, NULL, 'countryCode', 'USRCreatedCountry', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(108, 'UsersAddress', 'Consumer', 11, NULL, 'createdDate', 'USRCreatedDate', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(109, 'UsersAddress', 'Consumer', 12, NULL, 'add1', 'USRAdd1', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(110, 'UsersAddress', 'Consumer', 13, NULL, 'add2', 'USRAdd2', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(111, 'UsersAddress', 'Consumer', 14, NULL, 'add3', 'USRAdd3', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(112, 'UsersAddress', 'Consumer', 15, NULL, 'city', 'USRCity', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(113, 'UsersAddress', 'Consumer', 16, NULL, 'state', 'USRState', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(114, 'UsersAddress', 'Consumer', 17, NULL, 'country', 'USRCountry', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(115, 'UsersAddress', 'Consumer', 18, NULL, 'pincode', 'USRPincode', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(116, 'UsersAddress', 'Consumer', 19, NULL, 'landmark', 'USRLandmark', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(117, 'UsersAddress', 'Employee', 1, ' ', 'chkBox', 'EXPAND', b'1', b'0', b'0', '1', NULL, 'control', NULL, NULL, 0, NULL),
	(118, 'UsersAddress', 'Employee', 2, NULL, 'userId', 'USRId', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(119, 'UsersAddress', 'Employee', 3, NULL, 'userFirstName', 'USRName', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[userFirstName\\] + \\\' \\\' + data\\[userLastName\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(120, 'UsersAddress', 'Employee', 4, NULL, 'userLastName', 'USRLastName', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(121, 'UsersAddress', 'Employee', 5, NULL, 'mobileNo', 'USRMobile', b'1', b'1', b'1', '15', NULL, NULL, NULL, NULL, 1, NULL),
	(122, 'UsersAddress', 'Employee', 6, NULL, 'phoneNo', 'USRPhone', b'1', b'1', b'1', '15', NULL, NULL, NULL, NULL, 1, NULL),
	(123, 'UsersAddress', 'Employee', 7, NULL, 'email', 'USREmail', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[email\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(124, 'UsersAddress', 'Employee', 8, NULL, 'firstName', 'USRCreatedFirstName', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(125, 'UsersAddress', 'Employee', 9, NULL, 'lastName', 'USRCreatedLastName', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(126, 'UsersAddress', 'Employee', 10, NULL, 'countryCode', 'USRCreatedCountry', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(127, 'UsersAddress', 'Employee', 11, NULL, 'createdDate', 'USRCreatedDate', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(128, 'UsersAddress', 'Employee', 12, NULL, 'add1', 'USRAdd1', b'1', b'1', b'1', '10', 'function(data, type, full, meta) { if (type === \\\'display\\\') { if(data\\[add1\\] == \\\'\\\'){return \\"<div class=\\\'row\\\'><div class=\\\'col-md-12\\\'><div class=\\\'col-md-1\\\'>&nbsp;<\\/div><div class=\\\'col-md-11\\\'><b>Profile Picture<\\/b><br><div class=\\\'mt-card-item\\\'><div class=\\\'mt-card-avatar mt-overlay-1\\\'><img src=\\\'#\\\' width=\\\'175px;\\\'><\\/div><\\/div><\\/div><\\/div>\\";}else{    return \\"<div class=\\\'row\\\'><div class=\\\'col-md-12\\\'><div class=\\\'col-md-1\\\'>&nbsp;<\\/div><div class=\\\'col-md-3\\\'><b>Address<\\/b><br><span class=\\\'td-span175\\\'>\\" + data\\[add1\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[add2\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[add3\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[landmark\\]+ \\"<\\/span><\\/div><div class=\\\'col-md-3\\\'>&nbsp;<br><span class=\\\'td-span175\\\'>\\" + data\\[city\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[state\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[country\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[pincode\\]+ \\"<\\/span><\\/div><div class=\\\'col-md-5\\\'><b>Profile Picture<\\/b><br><div class=\\\'mt-card-item\\\'><div class=\\\'mt-card-avatar mt-overlay-1\\\'><img src=\\\'#\\\' width=\\\'175px;\\\'><\\/div><\\/div><\\/div><\\/div>\\";}}}', NULL, NULL, NULL, 1, NULL),
	(129, 'UsersAddress', 'Employee', 13, NULL, 'add2', 'USRAdd2', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(130, 'UsersAddress', 'Employee', 14, NULL, 'add3', 'USRAdd3', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(131, 'UsersAddress', 'Employee', 15, NULL, 'city', 'USRCity', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(132, 'UsersAddress', 'Employee', 16, NULL, 'state', 'USRState', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(133, 'UsersAddress', 'Employee', 17, NULL, 'country', 'USRCountry', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(134, 'UsersAddress', 'Employee', 18, NULL, 'pincode', 'USRPincode', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(135, 'UsersAddress', 'Employee', 19, NULL, 'landmark', 'USRLandmark', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(136, 'UsersAddress', 'Producer', 1, ' ', 'chkBox', 'EXPAND', b'1', b'0', b'0', '1', NULL, 'control', NULL, NULL, 0, NULL),
	(137, 'UsersAddress', 'Producer', 2, NULL, 'userId', 'USRId', b'0', b'0', b'0', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(138, 'UsersAddress', 'Producer', 3, NULL, 'userFirstName', 'USRName', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[userFirstName\\] + \\\' \\\' + data\\[userLastName\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(139, 'UsersAddress', 'Producer', 4, NULL, 'userLastName', 'USRLastName', b'0', b'0', b'0', '20', NULL, NULL, NULL, NULL, 1, NULL),
	(140, 'UsersAddress', 'Producer', 5, NULL, 'mobileNo', 'USRMobile', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(141, 'UsersAddress', 'Producer', 6, NULL, 'phoneNo', 'USRPhone', b'1', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(142, 'UsersAddress', 'Producer', 7, NULL, 'email', 'USREmail', b'1', b'1', b'1', '20', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[email\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(143, 'UsersAddress', 'Producer', 8, NULL, 'firstName', 'USRCreatedFirstName', b'1', b'1', b'1', '10', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(144, 'UsersAddress', 'Producer', 9, NULL, 'lastName', 'USRCreatedLastName', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(145, 'UsersAddress', 'Producer', 10, NULL, 'countryCode', 'USRCreatedCountry', b'0', b'0', b'0', '0', NULL, NULL, NULL, NULL, 1, NULL),
	(146, 'UsersAddress', 'Producer', 11, NULL, 'createdDate', 'USRCreatedDate', b'1', b'1', b'1', '15', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, NULL, 1, NULL),
	(147, 'UsersAddress', 'Producer', 12, NULL, 'add1', 'USRAdd1', b'1', b'1', b'1', '10', 'function(data, type, full, meta) { if (type === \\\'display\\\') { if(data\\[add1\\] == \\\'\\\'){return \\"<div class=\\\'row\\\'><div class=\\\'col-md-12\\\'><div class=\\\'col-md-1\\\'>&nbsp;<\\/div><div class=\\\'col-md-11\\\'><b>Profile Picture<\\/b><br><div class=\\\'mt-card-item\\\'><div class=\\\'mt-card-avatar mt-overlay-1\\\'><img src=\\\'#\\\' width=\\\'175px;\\\'><\\/div><\\/div><\\/div><\\/div>\\";}else{    return \\"<div class=\\\'row\\\'><div class=\\\'col-md-12\\\'><div class=\\\'col-md-1\\\'>&nbsp;<\\/div><div class=\\\'col-md-3\\\'><b>Address<\\/b><br><span class=\\\'td-span175\\\'>\\" + data\\[add1\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[add2\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[add3\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[landmark\\]+ \\"<\\/span><\\/div><div class=\\\'col-md-3\\\'>&nbsp;<br><span class=\\\'td-span175\\\'>\\" + data\\[city\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[state\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[country\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[pincode\\]+ \\"<\\/span><\\/div><div class=\\\'col-md-5\\\'><b>Profile Picture<\\/b><br><div class=\\\'mt-card-item\\\'><div class=\\\'mt-card-avatar mt-overlay-1\\\'><img src=\\\'#\\\' width=\\\'175px;\\\'><\\/div><\\/div><\\/div><\\/div>\\";}}}', NULL, NULL, NULL, 1, NULL),
	(148, 'UsersAddress', 'Producer', 13, NULL, 'add2', 'USRAdd2', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(149, 'UsersAddress', 'Producer', 14, NULL, 'add3', 'USRAdd3', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(150, 'UsersAddress', 'Producer', 15, NULL, 'city', 'USRCity', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(151, 'UsersAddress', 'Producer', 16, NULL, 'state', 'USRState', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(152, 'UsersAddress', 'Producer', 17, NULL, 'country', 'USRCountry', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(153, 'UsersAddress', 'Producer', 18, NULL, 'pincode', 'USRPincode', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL),
	(154, 'UsersAddress', 'Producer', 19, NULL, 'landmark', 'USRLandmark', b'0', b'1', b'1', '10', NULL, NULL, NULL, NULL, 1, NULL);
/*!40000 ALTER TABLE `layouts` ENABLE KEYS */;

-- Dumping structure for table education.mamenu
CREATE TABLE IF NOT EXISTS `mamenu` (
  `maMenuId` varchar(10) NOT NULL,
  `parentId` varchar(10) DEFAULT NULL,
  `menuName` varchar(50) DEFAULT NULL,
  `cssClassIcon` varchar(100) DEFAULT NULL,
  `actionURL` varchar(200) DEFAULT NULL,
  `cssClass` varchar(100) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `haveSubMenu` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`maMenuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.mamenu: ~16 rows (approximately)
DELETE FROM `mamenu`;
/*!40000 ALTER TABLE `mamenu` DISABLE KEYS */;
INSERT INTO `mamenu` (`maMenuId`, `parentId`, `menuName`, `cssClassIcon`, `actionURL`, `cssClass`, `level`, `haveSubMenu`) VALUES
	('M0001\r\n', 'M0001\r\n', 'Dashboard\r\n', 'icon-home\r\n', 'dc7161be3dbf2250c8954e560cc35060', 'title\r\n', 'A', b'0'),
	('M0002\r\n', 'M0002\r\n', 'Settings\r\n', 'icon-basket\r\n', 'javascript:;', 'title\r\n', 'B', b'1'),
	('M0003\r\n', 'M0002\r\n', 'Generate Key\r\n', 'icon-tag', 'javascript:loadContent(\'a9dc3f7729b51d26dc20af48c03dfee6\', \'\',\'false\');', 'title\r\n', 'BA', b'0'),
	('M0004', 'M0002\r\n', 'Messages\r\n', 'icon-handbag\r\n', 'javascript:loadContent(\'b849acc3458c9ba2d432bcc3aaba2708\', \'messages\',\'false\');', 'title\r\n', 'BB', b'0'),
	('M0005\r\n', 'M0005\r\n', 'Search\r\n', 'icon-pencil\r\n', 'javascript:;', 'title\r\n', 'C', b'1'),
	('M0007\r\n', 'M0005\r\n', 'Student Search\r\n', 'icon-bar-chart\r\n', 'javascript:loadContent(\'bcca2120ed2c00bcf732c74ca8026490/Consumer\', \'\',\'false\');', 'title\r\n', 'CA', b'0'),
	('M0007_1', 'M0005\r\n', 'Employee Search\r\n', 'icon-bar-chart\r\n', 'javascript:loadContent(\'bcca2120ed2c00bcf732c74ca8026490/Employee\', \'\',\'false\');', 'title\r\n', 'CB', b'0'),
	('M0008', 'M0005\r\n', 'Producer Search', 'icon-bar-chart\r\n', 'javascript:loadContent(\'bcca2120ed2c00bcf732c74ca8026490/Producer\', \'\',\'false\');', 'title\r\n', 'CC', b'0'),
	('M00081', 'M0005\r\n', 'Organisation Search', 'icon-bar-chart\r\n', 'javascript:loadContent(\'ba6443f8aa1c6e707ccb0cd4f03aa1e9\', \'\',\'false\');', 'title\r\n', 'CD', b'0'),
	('M0009', 'M0009', 'Uploads', 'icon-bar-chart', 'javascript:;', 'title\r\n', 'D', b'1'),
	('M0010', 'M0009', 'E-Books', 'icon-tag', 'javascript:loadContent(\'e-books\',\'false\');', 'title\r\n', 'DA', b'0'),
	('M0011', 'M0009', 'E-BluePrints', 'icon-tag', 'javascript:loadContent(\'e-blueprint\',\'false\');', 'title\r\n', 'DB', b'0'),
	('M0012', 'M0009', 'E-KeyPoints', 'icon-tag', 'javascript:loadContent(\'e-keypoint\',\'false\');', 'title\r\n', 'DC', b'0'),
	('M0016', 'M0002\r\n', 'Information Alerts', 'icon-bar-chart\r\n', 'javascript:loadContent(\'information-alert\',\'false\');', 'title\r\n', 'BC', b'0');
/*!40000 ALTER TABLE `mamenu` ENABLE KEYS */;

-- Dumping structure for table education.mamenurole
CREATE TABLE IF NOT EXISTS `mamenurole` (
  `maMRAutoId` int(11) NOT NULL AUTO_INCREMENT,
  `maMenuId` varchar(50) NOT NULL,
  `producerId` varchar(50) NOT NULL DEFAULT 'PRD000001',
  `rlRoleId` varchar(50) NOT NULL,
  PRIMARY KEY (`maMRAutoId`),
  KEY `FK_mamenurole_mamenu` (`maMenuId`),
  KEY `FK_mamenurole_producers` (`producerId`),
  KEY `FK_mamenurole_roles` (`rlRoleId`),
  CONSTRAINT `FK_mamenurole_mamenu` FOREIGN KEY (`maMenuId`) REFERENCES `mamenu` (`maMenuId`),
  CONSTRAINT `FK_mamenurole_producers` FOREIGN KEY (`producerId`) REFERENCES `producers` (`producerId`),
  CONSTRAINT `FK_mamenurole_roles` FOREIGN KEY (`rlRoleId`) REFERENCES `roles` (`rlRoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Dumping data for table education.mamenurole: ~32 rows (approximately)
DELETE FROM `mamenurole`;
/*!40000 ALTER TABLE `mamenurole` DISABLE KEYS */;
INSERT INTO `mamenurole` (`maMRAutoId`, `maMenuId`, `producerId`, `rlRoleId`) VALUES
	(1, 'M0001\r\n', 'PRD000001', 'SuperAdminRole'),
	(2, 'M0002\r\n', 'PRD000001', 'SuperAdminRole'),
	(4, 'M0003\r\n', 'PRD000001', 'SuperAdminRole'),
	(5, 'M0004', 'PRD000001', 'SuperAdminRole'),
	(6, 'M0005\r\n', 'PRD000001', 'SuperAdminRole'),
	(8, 'M0007\r\n', 'PRD000001', 'SuperAdminRole'),
	(9, 'M0001\r\n', 'PRD000001', 'Student'),
	(10, 'M0002\r\n', 'PRD000001', 'Student'),
	(11, 'M0003\r\n', 'PRD000001', 'Student'),
	(12, 'M0004', 'PRD000001', 'Student'),
	(13, 'M0005\r\n', 'PRD000001', 'Student'),
	(15, 'M0007\r\n', 'PRD000001', 'Student'),
	(16, 'M0008', 'PRD000001', 'Student'),
	(17, 'M0009', 'PRD000001', 'Student'),
	(18, 'M0010', 'PRD000001', 'Student'),
	(19, 'M0011', 'PRD000001', 'Student'),
	(20, 'M0012', 'PRD000001', 'Student'),
	(21, 'M0016', 'PRD000001', 'Student'),
	(22, 'M0001\r\n', 'PRD000001', 'Employee'),
	(23, 'M0002\r\n', 'PRD000001', 'Employee'),
	(24, 'M0003\r\n', 'PRD000001', 'Employee'),
	(25, 'M0004', 'PRD000001', 'Employee'),
	(26, 'M0005\r\n', 'PRD000001', 'Employee'),
	(28, 'M0007\r\n', 'PRD000001', 'Employee'),
	(29, 'M0008', 'PRD000001', 'Employee'),
	(30, 'M0009', 'PRD000001', 'Employee'),
	(31, 'M0010', 'PRD000001', 'Employee'),
	(32, 'M0011', 'PRD000001', 'Employee'),
	(33, 'M0012', 'PRD000001', 'Employee'),
	(34, 'M0016', 'PRD000001', 'Employee'),
	(35, 'M00081', 'PRD000001', 'Employee'),
	(36, 'M0007_1', 'PRD000001', 'Employee');
/*!40000 ALTER TABLE `mamenurole` ENABLE KEYS */;

-- Dumping structure for table education.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `messageId` varchar(50) NOT NULL,
  `messageName` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `messageType` varchar(50) DEFAULT 'SMS',
  `messageSubject` varchar(200) DEFAULT '',
  `deliveryDate` datetime DEFAULT NULL,
  `nextDeliveryDate` datetime DEFAULT NULL,
  `dataMapTemplateName` varchar(100) DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.messages: ~20 rows (approximately)
DELETE FROM `messages`;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` (`messageId`, `messageName`, `message`, `messageType`, `messageSubject`, `deliveryDate`, `nextDeliveryDate`, `dataMapTemplateName`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('MSG150207124354600', 'Testing', 'Dear  ${Users.usUserName}$  ( ${Users.usUserID}$)\r\nCandidates of AIPMT-2015 can avail corrections on particulars filled in the On-line Application form submitted \r\nfor the Test. For availing this facility, visit website www.aipmt.nic.in \r\nduring the period 4th to 18th Feb, 2015 or call EDUTEL ACADEMY-7401259090.\r\n', 'SMS', '', '2015-02-07 12:11:00', NULL, NULL, 'SuperAdmin', '2015-02-07 12:13:54', NULL, NULL, b'1'),
	('MSG150213093756622', 'CRASH COURSE', 'Dear ${Users.usUserName}$ (${Users.usUserID}$),Engineering & Medical entrance exams Coaching classes in near your locality for  \r\nJEE-MAIN,BITSAT,VIT,SRM,AMRITA,AIPMT,AIIMS,CMC,\r\nJIPMER,MANIPAL,ST.JOHNS,MGIMS to book your seats \r\ncall immediately @ 74012 59090 get FREE FULL YEAR SUPPORT PROGRAM & get CENTUM in your board exam. EDUTEL ACADEMY.\r\n ', 'SMS', '', '2015-02-13 21:06:00', NULL, NULL, 'SuperAdmin', '2015-02-13 21:07:56', NULL, NULL, b'1'),
	('MSG150629053623427', 'NDA', 'Dear ${Users.usUserName}$(${Users.usUserID}$), NDA (2015 - 2016) exam application form open date - June 20th 2015, Closing Date -17th July,\r\nDate of exam - 27th sep 2015. For more details visit your dashboard.Edutel Academy.     ', 'SMS', '', '2015-06-29 16:03:00', NULL, NULL, 'SuperAdmin', '2015-06-29 16:06:23', NULL, NULL, b'1'),
	('MSG150704042453086', 'FASHION', '\r\nDear  ${Users.usUserName}$ (${Users.usUserID}$), Information on Fashion Design has been published in your dashboard,Kindly visit your dashboard for more \r\ndetails.EDUTEL ACADEMY.  ', 'SMS', '', '2015-07-04 14:53:00', NULL, NULL, 'SuperAdmin', '2015-07-04 14:54:53', NULL, NULL, b'1'),
	('MSG150812121431995', 'AGRICULTURE', 'Dear ${Users.usUserName}$( ${Users.usUserID}$), Information on Agricultural research scientist has been published in your dashboard.\r\nKindly visit your dashboard for more details. EDUTEL ACADEMY.\r\n   ', 'SMS', '', '2015-08-12 10:43:00', NULL, NULL, 'SuperAdmin', '2015-08-12 10:44:31', NULL, NULL, b'1'),
	('MSG150812121550758', 'NUTRITIONIST', 'Dear ${Users.usUserName}$ (${Users.usUserID}$), Career related to nutritionist has been published in your dashboard. Kindly visit your dashboard for more \r\ndetails. EDUTEL ACADEMY.\r\n    ', 'SMS', '', '2015-08-12 10:45:00', NULL, NULL, 'SuperAdmin', '2015-08-12 10:45:50', NULL, NULL, b'1'),
	('MSG150812121802351', 'FORENSIC SCIENCE', 'Dear ${Users.usUserName}$ (${Users.usUserID}$), Career in forensic science has been published in your dashboard. Kindly visit your login for more \r\ndetails. EDUTEL ACADEMY.\r\n    ', 'SMS', '', '2015-08-12 10:46:00', NULL, NULL, 'SuperAdmin', '2015-08-12 10:48:02', NULL, NULL, b'1'),
	('MSG151018041333332', 'MANIPAL-2016', 'Dear ${Users.usUserName}$(${Users.usUserID}$), MANIPAL -(MU-OET-2016) Entrance Exam application form for B.TECH & MBBS is open now,closing date - 11.03.2016, EXAM DATES : 14th April to 15th May 2016,Application Cost -Rs.600/-, Entrance Fee - Rs.1400/-. kindly visit your dashboard for more details or  call @ 7401259090. EDUTEL ACADEMY.\r\n   ', 'SMS', '', '2015-10-18 14:41:00', NULL, NULL, 'SuperAdmin', '2015-10-18 14:43:33', NULL, NULL, b'1'),
	('MSG151117113721700', 'SRM - 2016', 'Dear ${Users.usUserName}$(${Users.usUserID}$),SRMJEEE-2015 Entrance Exam application form opened, closing date - 15.03.2016(Midnight),EXAM \r\nDATES - Online Mode : 19 to 25th Apr 2016, Form cost -Rs.1000/-. Please visit your dashboard for more Details.call @ 7401259090.EDUTEL ACADEMY.\r\n    ', 'SMS', '', '2015-11-18 11:06:00', NULL, NULL, 'SuperAdmin', '2015-11-18 11:07:21', NULL, NULL, b'1'),
	('MSG151117113859853', 'AMRITA - 2016', 'Dear ${Users.usUserName}$(${Users.usUserID}$), AMRITA Entrance Examination-Engineering 2016 has been opened, Last Date - 21st Mar 2016, Exam Date - 23 Apr 2016,Form Cost - Rs.1000/-. Please visit your dashboard for more Details.call @ 7401259090.EDUTEL ACADEMY.    ', 'SMS', '', '2015-11-18 11:07:00', NULL, NULL, 'SuperAdmin', '2015-11-18 11:08:59', NULL, NULL, b'1'),
	('MSG151126122109119', 'VIT-2016', 'Dear ${Users.usUserName}$(${Users.usUserID}$), VIT-2016 (ENGINEERING)  has been opened, Last Date - 29th  Feb 2016, Exam Date(online) - 6th to 17th Apr 2016,\r\nForm Cost - Rs.960/-. For details visit your dashboard. To apply  call @ 7401259090. EDUTEL ACADEMY.\r\n    ', 'SMS', '', '2015-11-26 11:50:00', NULL, NULL, 'SuperAdmin', '2015-11-26 11:51:09', NULL, NULL, b'1'),
	('MSG160603011658064', 'NEET II', '\r\nDear ${Users.usUserName}$(${Users.usUserID}$), As per the last news NEET is compulsory for all the private, Deemed & 15% Quota on all Govt. Medical colleges this year.From Next Year all Medical Admission is only through NEET ENTRANCE EXAM. EDUTEL ACADEMY.    ', 'SMS', '', '2016-06-03 11:45:00', NULL, NULL, 'SuperAdmin', '2016-06-03 11:46:58', NULL, NULL, b'1'),
	('UserIdPassword_Email', 'UserIdPassword_Email', '<html> <head> <body> <table cellpadding="25px;"  width="850px;"  > <tr>	<td><p ><input type="image" src="http://www.edutelacademy.com/images/png/edutellogo.png"></p><p><span style="font-size:11pt;font-family:Trebuchet MS,Helvitica,Arial">Dear${Users.usUserName}$&nbsp;,</span></p><br><p><span style="font-size:11pt;font-family:Trebuchet MS,Helvitica,Arial">Your account has been created successfully with Edutel Academy.</span></p><br><p><span style="font-size:11pt;font-family:Trebuchet MS,Helvitica,Arial">Your USER ID is &nbsp;<b>${Users.usUserID}$</b></span></p><p><span style="font-size:11pt;font-family:Trebuchet MS,Helvitica,Arial">Your PWD is&nbsp;&nbsp;<b>${Users.usUserPwd}$</b></span></p><p><span style="font-size:11pt;font-family:Trebuchet MS,Helvitica,Arial">Help Desk - 7401259090</span></p><p><span style="font-size:11pt;font-family:Trebuchet MS,Helvitica,Arial">Technical support -7299038080</span></p><p><span style="font-size:11pt;font-family:Trebuchet MS,Helvitica,Arial">With Warm Regards,<br>Admin</span></p><p><span style="font-size:11pt;font-family:Trebuchet MS,Helvitica,Arial"><b>Edutel Academy</b><br>', 'Email', 'Welcome to EduTel Academy. User Login Credentials', '2015-01-01 00:00:00', NULL, NULL, 'SuperAdmin', '2015-01-01 00:00:00', 'SuperAdmin', '2015-01-01 00:00:00', b'1'),
	('UserIdPassword_SMS', 'UserIdPassword_SMS', 'Hi ${Users.usUserName}$, Thanks for registering with EDUTEL ACADEMY.Your User Id is ${Users.usUserId}$ and Password is ${Users.usUserPwd}$ . For more information contact our helpdesk 7401259090/email -admin@edutelacademy.com.', 'SMS', '', '2015-01-01 00:00:00', NULL, NULL, 'SuperAdmin', '2015-01-01 00:00:00', 'SuperAdmin', '2015-01-01 00:00:00', b'1'),
	('UserRegistrationReceipt_Email', 'UserRegistrationReceipt_Email', '<html><body> <table cellpadding="25px;"  width="850px;"  > <tr>	<td><p ><input type="image" src="http://www.edutelacademy.com/images/png/edutellogo.png"></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">Invoice(s) for this order in &nbsp;this email for any future reference.</span></p><br><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">PURCHASER NAME :</span></p><br><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.usUserName}$&nbsp;,</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;Address : &nbsp;&nbsp;&nbsp;${Users.usFatherName}$&nbsp;,</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.usAddress1}$&nbsp;,</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.usAddress2}$&nbsp;,</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.usLandMark}$&nbsp;,</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.usCity}$&nbsp;,&nbsp;&nbsp;&nbsp;${Users.usState}$&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;${Users.usPinCode}$&nbsp;&nbsp;&nbsp;.</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">CONTACT NO : &nbsp;&nbsp;&nbsp;${Users.usMobileNo}$&nbsp;&nbsp;&nbsp;.</span></p><br><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">PRODUCTS DELIVERED :</span></p><table rules="all" frame="box" width="850px;"><tr height="50px;" style="background-color:#ececec">	<td width="5%" align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;SNO&nbsp;</span> </td>	<td width="40%" align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">ITEM</span></td>	<td width="20%" align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">ORDER NO</span></td>	<td width="15%" align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">QUANTITY</span></td>	<td width="20%" align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">PRICE</span></td></tdead><tr height="90px;">	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">1</span></td>	<td align="left" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;Full year support Program Ã¢â‚¬â€œ Smart Learner </span></td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.serialKey.serialNo}$</span></td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">1</span></td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.serialKey.sellingAmount}$</span></td></tr><tr height="40px;">	<td align="center" valign="middle" colspan="3">&nbsp;</td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">TOTAL AMOUNT</span></td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.serialKey.sellingAmount}$</span></td></tr><tr height="70px;">	<td align="center" valign="middle" colspan="3">&nbsp;</td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">AMOUNT PAID</span></td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.serialKey.sellingAmount}$</span></td></tr></table><br><p ><span style="font-family:Trebuchet MS,Arial,sans-serif">Thankyou for registering with Edutel Academy.</span></p><p ><span style="font-family:Trebuchet MS,Arial,sans-serif">EdutelAcademy Team</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">For any query or assistance, feel free to&nbsp;</span><a href="admin@edutelacademy.com" target="_blank"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">Contact Us</span></a>.</p><p ><span style="font-family:Trebuchet MS,Arial,sans-serif;font-size:11px;">DECLARATION</span></p><p ><span style="font-family:Trebuchet MS,Arial,sans-serif;font-size:11px;">We declare that this invoice shows actual price of the goods described inclusiveof taxes and that all particulars are true and correct.</span></p><p ><span style="font-family:Trebuchet MS,Arial,sans-serif;font-size:11px;">THIS ISA COMPUTER GENERATED INVOICE AND DOES NOT REQUIRE SIGNATURE</span></p><p ><span style="font-family:Trebuchet MS,Arial,sans-serif"><br></span></p></td></tr></table></body></html>', 'Email', 'EduTel Academy Invoice Order', '2015-01-01 00:00:00', NULL, NULL, 'SuperAdmin', '2015-01-01 00:00:00', 'SuperAdmin', '2015-01-01 00:00:00', b'1'),
	('UserRegistrationReceipt_SMS', 'UserRegistrationReceipt_SMS', 'Dear ${Users.usUserName}$(${Users.usUserId}$), your payment of Rs.${Users.serialKey.sellingAmount}$ has been received for Full Year support Program. you can contact our Relationship Manager - 044-4384 9090 for any technical/queries assistance.Edutel Academy.', 'SMS', '', '2015-01-01 00:00:00', NULL, NULL, 'SuperAdmin', '2015-01-01 00:00:00', 'SuperAdmin', '2015-01-01 00:00:00', b'1'),
	('UserRegistrationWelcome_Email', 'UserRegistrationWelcome_Email', '<html> <body>  <table cellpadding="25px;"  width="850px;"  > <tr>	<td><p><input type="image" src="http://www.edutelacademy.com/images/png/edutellogo.png"></p><br><p align="center" style="text-align:center"><span style="font-size:14pt;font-family:Trebuchet MS,Arial,sans-serif">Welcome To EduTel Academy Online sg_educational Program</span></p><br><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif;font-weight:bold;">Ref : EA/WL/${Users.serialKey.serialNo}$</span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif;font-weight:bold;">Date : ${Users.usCreatedDate}$</span></p><br><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif;font-weight:bold;">Dear&nbsp; ${Users.usUserName}$,</span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">We are extremely happy to welcome you to Edutel Academy.</span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">You have been enrolled under the 12th Std Full year support program Ã¢â‚¬â€œ SMART LEARNER.</span></p><br><p><b><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">Enrollment Details :</span></b></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">Batch&nbsp; : <b>${Users.serialKey.serialBatch}$</b></span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">Register No : <b>${Users.usUserID}$</b></span></p><br><p><b><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">Program includes academic and career support:</span></b></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">Kindly note the following : </span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">You will be receiving 10 offline test series covering XII std syllabus. Answer each modules in a white sheet and mention your Reg no. in each page and send to your nearest center. Our teachers will evaluate and send it back to you.</span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">You will receive all other service like information updates, MCQÃ¢â‚¬â„¢s, e-book, key point, query box, library, academy test, toppers club,weekly planner,smart guide,10 years Model question paper with solutions, compulsory questions,Entrance Exam Cracker,through online only i.e.through your student corner.</span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">PMT Analysis will be done only in the Month of January, you must be present during the test date, the test date cannot be altered. All Application form will be delivered at your door step only by your request [ONLY FORM COST MUST BE BARRED EXTRA].</span></p><p><b><span style="font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;</span></b></p><p><b><span style="font-family:Trebuchet MS,Arial,sans-serif;">DISCLOSURE</span></b><span style="font-family:Trebuchet MS,Arial,sans-serif;"> : &nbsp;DO-NOT-SHARE yourregister number with others, if shared it will identify your IP address and your user name will get deactivated automatically.</span></p><p><span style="font-size:10pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;</span></p><p><span style="font-size:10pt;font-family:Trebuchet MS,Arial,sans-serif;">This is computer generated letter, signature is not required.</span></p></div></td> </tr> </table> </body></html>', 'Email', 'Welcome To EduTel Academy', '2015-02-03 18:10:17', NULL, NULL, 'SuperAdmin', '2015-02-03 18:10:38', 'SuperAdmin', '2015-02-03 18:11:05', b'1'),
	('UserRegistration_Email_Admin', 'UserRegistration_Email_Admin', '<html><head><body><table cellpadding="25px;" width="850px;"><tr><td><p><input type="image" src="http://www.edutelacademy.com/images/png/edutellogo.png"></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Dear Admin,</span></p> <br><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">New User has been registered with Edutel Academy.</span></p> <br><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Registered User Id is &nbsp;<b style="color:#0000FF">${Users.usUserID}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Registered User Name is &nbsp;<b style="color:#0000FF">${Users.usUserName}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">User Mobile No is &nbsp;<b style="color:#0000FF">${Users.usMobileNo}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">School Name is &nbsp;<b style="color:#0000FF">${Users.school.scSchoolName}$,&nbsp;${Users.school.scCity}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Batch is &nbsp;<b style="color:#0000FF">${Users.usBatch}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Serial Key Promotional Code is &nbsp;<b style="color:#0000FF">${Users.serialKey.serialPromo}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Serial Key Sold Amount is &nbsp;<b style="color:#0000FF">${Users.serialKey.sellingAmount}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Serial Key Sold by &nbsp;<b style="color:#0000FF">${Users.serialKey.serialKeyUserMap.users.usUserName}$,&nbsp;${Users.serialKey.createdUser.usCity}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Help Desk - 7401259090</span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Technical support -7299038080</span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">By,<br>Admin</span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial"><b style="color:#0000FF">Edutel Academy</b><br></td></tr></table><br><p><span style="font-family: Trebuchet MS, Arial, sans-serif">Thankyou for registering with Edutel Academy.</span></p><p><span style="font-family: Trebuchet MS, Arial, sans-serif">EdutelAcademy Team</span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Arial, sans-serif;">For any query or assistance, feel free to&nbsp;</span><ahref="admin@edutelacademy.com" target="_blank"><span style="font-size: 11pt; font-family: Trebuchet MS, Arial, sans-serif;">Contact Us</span></a></p></td></tr></table></body></html>', 'Email', 'New User Registration in EduTel Academy Notification', '2015-01-01 00:00:00', NULL, NULL, 'SuperAdmin', '2015-01-01 00:00:00', 'SuperAdmin', '2015-01-01 00:00:00', b'1'),
	('User_Create_Admin', 'User_Create_Admin', '<html>\r\n\r\n<head>\r\n  <title>HatchBird - Confirm your account!</title>\r\n  <style>\r\n    \r\n      	body{\r\n      		background: #ffffff;\r\n      		margin: 0px;\r\n      		text-align: center;\r\n      		font-family: \'Avenir\', \'Open Sans\', Arial, sans-serif;\r\n      	}\r\n      	.head{\r\n      		background: #488dfb;\r\n      		color: #ffffff;\r\n      	}\r\n      \r\n      	.head h1{\r\n      		font-size: 50px;\r\n      		font-weight: normal;\r\n      		line-height: 100px;\r\n      		margin-top: 100px;\r\n      	}\r\n      \r\n      	.button{\r\n      		background: #39ce00;\r\n      		color: #ffffff;\r\n      		line-height: 50px;\r\n      		text-decoration: none;\r\n      		text-align: center;\r\n      		margin-top: 50px;\r\n      		margin-bottom: 50px;\r\n      	}\r\n      \r\n      	.button a{\r\n      		color: #ffffff;\r\n      		text-decoration: none;\r\n      	}\r\n      	a{ color: #fff; } \r\n      	p a{ color: #565656; } \r\n      	.black a{ color: #000; }\r\n  </style>\r\n  <link href=\'https://fonts.googleapis.com/css?family=Open+Sans\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body bgcolor="#ffffff">\r\n  <table bgcolor="#efefef" cellpadding="0" cellspacing="0" border-collapse="collapse" width="100%">\r\n    <tr>\r\n      <td align="center" style="padding: 30px;">\r\n        <table bgcolor="#efefef" cellpadding="0" cellspacing="0" border-collapse="collapse" width="700px">\r\n          <tr>\r\n\r\n            <td align="center">\r\n              <table bgcolor="#efefef" cellpadding="0" cellspacing="0" border-collapse="collapse" width="100%">\r\n                <tr>\r\n                  <td width="50%" style="text-transform: uppercase; color: #868686; font-weight: bold;">$todayDate</td>\r\n                  <td width="50%" style="text-align: right;">\r\n                    <!--<a href="#" style="color: #868686;">View in Browser</a>-->\r\n                  </td>\r\n                </tr>\r\n              </table>\r\n              <img src="http://localhost:8090/edutel/academia/img/home2/logo-default.png" alt="HatchBird" border="0" height="50" style="margin-top: 50px; margin-bottom: 50px;" />\r\n              <table bgcolor="#488dfb" class="head" style="background: #488dfb;" cellpadding="0" cellspacing="0" border="0" border-collapse="collapse" width="100%">\r\n                <tr>\r\n                  <td style="text-align: center;" colspan="3">\r\n                    <h1>Welcome to HatchBird</h1>\r\n\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td colspan="3" style="padding: 0px 80px; font-size: 20px; text-align: center;">Hi $user.usUserName,<br Welcome to HatchBird,<br>please confirm your email address to get started.</td>\r\n                </tr>\r\n                <tr>\r\n                  <td width="30%">&nbsp;</td>\r\n                  <td style="text-align: center;" width="40%">\r\n                    <table cellpadding="0" cellspacing="0" border-collapse="collapse" class="button" width="100%">\r\n                      <tr>\r\n                        <td>\r\n                          <a href="#" style="font-size: 15px;">Confirm my email</a>\r\n                        </td>\r\n                      </tr>\r\n                    </table>\r\n                  </td>\r\n                  <td width="30%">&nbsp;</td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n              </table>\r\n              <table cellpadding="0" cellspacing="0" border="0" border-collapse="collapse" width="100%">\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n              </table>\r\n              <table bgcolor="#ffffff" class="head" style="background: #ffffff;" cellpadding="0" cellspacing="0" border="0" border-collapse="collapse" width="100%">\r\n                <tr>\r\n                  <td style="text-align: center;" colspan="3">\r\n                    <h1 style="color: #000000">Questions?</h1>\r\n\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td colspan="3" style="padding: 0px 80px; font-size: 20px; text-align: center; color: #595f63;  font-size: 20px;">If you have any questions about HatchBird please donÃ¢â‚¬â„¢t hesitate to get in touch.</td>\r\n                </tr>\r\n                <tr>\r\n                  <td style="padding: 40px;" align="center">\r\n                    <a href="mailto:$producerAdminEmailId" style="color: #488dfb; text-decoration: none; margin-bottom: 40px; font-size: 20px;">$producerAdminEmailId</a>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n              </table>\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n      <td>&nbsp;</td>\r\n    </tr>\r\n    <tr>\r\n      <td>&nbsp;</td>\r\n    </tr>\r\n  </table>\r\n  <table width="100%" bgcolor="#ffffff" style="background: #ffffff;" cellpadding="0" cellspacing="0" border="0" border-collapse="collapse" width="100%">\r\n    <tr>\r\n      <td>&nbsp;</td>\r\n    </tr>\r\n    <tr>\r\n      <td align="center">\r\n        <table width="600">\r\n          <tr>\r\n            <td style="font-size: 14px;" class="black">This email was sent to xxxxxx@xxxxxxxxx.com</td>\r\n            <td style="text-align: right;">\r\n              <a href="#" style="color: #000; text-decoration: none; font-size: 14px;">Unsubscribe</a>\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>&nbsp;</td>\r\n    </tr>\r\n  </table>\r\n  \r\n</body>\r\n\r\n</html>', 'Email', 'New User Registeration  in EduTel Academy', '2017-09-24 12:00:12', NULL, NULL, 'SuperAdmin', '2017-09-24 12:00:49', 'SuperAdmin', '2017-09-24 12:00:32', b'1'),
	('User_Reset_Password', 'User_Reset_Password', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n  <head>\r\n    <meta name="viewport" content="width=device-width, initial-scale=1.0" />\r\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    <title>Set up a new password for EduTel Academy</title>\r\n    <!-- \r\n    The style block is collapsed on page load to save you some scrolling.\r\n    Postmark automatically inlines all CSS properties for maximum email client \r\n    compatibility. You can just update styles here, and Postmark does the rest.\r\n    -->\r\n    <style type="text/css" rel="stylesheet" media="all">\r\n    /* Base ------------------------------ */\r\n    \r\n    *:not(br):not(tr):not(html) {\r\n      font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;\r\n      box-sizing: border-box;\r\n    }\r\n    \r\n    body {\r\n      width: 100% !important;\r\n      height: 100%;\r\n      margin: 0;\r\n      line-height: 1.4;\r\n      background-color: #F2F4F6;\r\n      color: #74787E;\r\n      -webkit-text-size-adjust: none;\r\n    }\r\n    \r\n    p,\r\n    ul,\r\n    ol,\r\n    blockquote {\r\n      line-height: 1.4;\r\n      text-align: left;\r\n    }\r\n    \r\n    a {\r\n      color: #3869D4;\r\n    }\r\n    \r\n    a img {\r\n      border: none;\r\n    }\r\n    \r\n    td {\r\n      word-break: break-word;\r\n    }\r\n    /* Layout ------------------------------ */\r\n    \r\n    .email-wrapper {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      background-color: #F2F4F6;\r\n    }\r\n    \r\n    .email-content {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n    }\r\n    /* Masthead ----------------------- */\r\n    \r\n    .email-masthead {\r\n      padding: 25px 0;\r\n      text-align: center;\r\n    }\r\n    \r\n    .email-masthead_logo {\r\n      width: 94px;\r\n    }\r\n    \r\n    .email-masthead_name {\r\n      font-size: 16px;\r\n      font-weight: bold;\r\n      color: #bbbfc3;\r\n      text-decoration: none;\r\n      text-shadow: 0 1px 0 white;\r\n    }\r\n    /* Body ------------------------------ */\r\n    \r\n    .email-body {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      border-top: 1px solid #EDEFF2;\r\n      border-bottom: 1px solid #EDEFF2;\r\n      background-color: #FFFFFF;\r\n    }\r\n    \r\n    .email-body_inner {\r\n      width: 570px;\r\n      margin: 0 auto;\r\n      padding: 0;\r\n      -premailer-width: 570px;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      background-color: #FFFFFF;\r\n    }\r\n    \r\n    .email-footer {\r\n      width: 570px;\r\n      margin: 0 auto;\r\n      padding: 0;\r\n      -premailer-width: 570px;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      text-align: center;\r\n    }\r\n    \r\n    .email-footer p {\r\n      color: #AEAEAE;\r\n    }\r\n    \r\n    .body-action {\r\n      width: 100%;\r\n      margin: 30px auto;\r\n      padding: 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      text-align: center;\r\n    }\r\n    \r\n    .body-sub {\r\n      margin-top: 25px;\r\n      padding-top: 25px;\r\n      border-top: 1px solid #EDEFF2;\r\n    }\r\n    \r\n    .content-cell {\r\n      padding: 35px;\r\n    }\r\n    \r\n    .preheader {\r\n      display: none !important;\r\n      visibility: hidden;\r\n      mso-hide: all;\r\n      font-size: 1px;\r\n      line-height: 1px;\r\n      max-height: 0;\r\n      max-width: 0;\r\n      opacity: 0;\r\n      overflow: hidden;\r\n    }\r\n    /* Attribute list ------------------------------ */\r\n    \r\n    .attributes {\r\n      margin: 0 0 21px;\r\n    }\r\n    \r\n    .attributes_content {\r\n      background-color: #EDEFF2;\r\n      padding: 16px;\r\n    }\r\n    \r\n    .attributes_item {\r\n      padding: 0;\r\n    }\r\n    /* Related Items ------------------------------ */\r\n    \r\n    .related {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 25px 0 0 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n    }\r\n    \r\n    .related_item {\r\n      padding: 10px 0;\r\n      color: #74787E;\r\n      font-size: 15px;\r\n      line-height: 18px;\r\n    }\r\n    \r\n    .related_item-title {\r\n      display: block;\r\n      margin: .5em 0 0;\r\n    }\r\n    \r\n    .related_item-thumb {\r\n      display: block;\r\n      padding-bottom: 10px;\r\n    }\r\n    \r\n    .related_heading {\r\n      border-top: 1px solid #EDEFF2;\r\n      text-align: center;\r\n      padding: 25px 0 10px;\r\n    }\r\n    /* Discount Code ------------------------------ */\r\n    \r\n    .discount {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 24px;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      background-color: #EDEFF2;\r\n      border: 2px dashed #9BA2AB;\r\n    }\r\n    \r\n    .discount_heading {\r\n      text-align: center;\r\n    }\r\n    \r\n    .discount_body {\r\n      text-align: center;\r\n      font-size: 15px;\r\n    }\r\n    /* Social Icons ------------------------------ */\r\n    \r\n    .social {\r\n      width: auto;\r\n    }\r\n    \r\n    .social td {\r\n      padding: 0;\r\n      width: auto;\r\n    }\r\n    \r\n    .social_icon {\r\n      height: 20px;\r\n      margin: 0 8px 10px 8px;\r\n      padding: 0;\r\n    }\r\n    /* Data table ------------------------------ */\r\n    \r\n    .purchase {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 35px 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n    }\r\n    \r\n    .purchase_content {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 25px 0 0 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n    }\r\n    \r\n    .purchase_item {\r\n      padding: 10px 0;\r\n      color: #74787E;\r\n      font-size: 15px;\r\n      line-height: 18px;\r\n    }\r\n    \r\n    .purchase_heading {\r\n      padding-bottom: 8px;\r\n      border-bottom: 1px solid #EDEFF2;\r\n    }\r\n    \r\n    .purchase_heading p {\r\n      margin: 0;\r\n      color: #9BA2AB;\r\n      font-size: 12px;\r\n    }\r\n    \r\n    .purchase_footer {\r\n      padding-top: 15px;\r\n      border-top: 1px solid #EDEFF2;\r\n    }\r\n    \r\n    .purchase_total {\r\n      margin: 0;\r\n      text-align: right;\r\n      font-weight: bold;\r\n      color: #2F3133;\r\n    }\r\n    \r\n    .purchase_total--label {\r\n      padding: 0 15px 0 0;\r\n    }\r\n    /* Utilities ------------------------------ */\r\n    \r\n    .align-right {\r\n      text-align: right;\r\n    }\r\n    \r\n    .align-left {\r\n      text-align: left;\r\n    }\r\n    \r\n    .align-center {\r\n      text-align: center;\r\n    }\r\n    /*Media Queries ------------------------------ */\r\n    \r\n    @media only screen and (max-width: 600px) {\r\n      .email-body_inner,\r\n      .email-footer {\r\n        width: 100% !important;\r\n      }\r\n    }\r\n    \r\n    @media only screen and (max-width: 500px) {\r\n      .button {\r\n        width: 100% !important;\r\n      }\r\n    }\r\n    /* Buttons ------------------------------ */\r\n    \r\n    .button {\r\n      background-color: #3869D4;\r\n      border-top: 10px solid #3869D4;\r\n      border-right: 18px solid #3869D4;\r\n      border-bottom: 10px solid #3869D4;\r\n      border-left: 18px solid #3869D4;\r\n      display: inline-block;\r\n      color: #FFF;\r\n      text-decoration: none;\r\n      border-radius: 3px;\r\n      box-shadow: 0 2px 3px rgba(0, 0, 0, 0.16);\r\n      -webkit-text-size-adjust: none;\r\n    }\r\n    \r\n    .button--green {\r\n      background-color: #22BC66;\r\n      border-top: 10px solid #22BC66;\r\n      border-right: 18px solid #22BC66;\r\n      border-bottom: 10px solid #22BC66;\r\n      border-left: 18px solid #22BC66;\r\n    }\r\n    \r\n    .button--red {\r\n      background-color: #FF6136;\r\n      border-top: 10px solid #FF6136;\r\n      border-right: 18px solid #FF6136;\r\n      border-bottom: 10px solid #FF6136;\r\n      border-left: 18px solid #FF6136;\r\n    }\r\n    /* Type ------------------------------ */\r\n    \r\n    h1 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 19px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    \r\n    h2 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 16px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    \r\n    h3 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 14px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    \r\n    p {\r\n      margin-top: 0;\r\n      color: #74787E;\r\n      font-size: 16px;\r\n      line-height: 1.5em;\r\n      text-align: left;\r\n    }\r\n    \r\n    p.sub {\r\n      font-size: 12px;\r\n    }\r\n    \r\n    p.center {\r\n      text-align: center;\r\n    }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <span class="preheader">Use this link to reset your password. The link is only valid for 10 minutes.</span>\r\n    <table class="email-wrapper" width="100%" cellpadding="0" cellspacing="0">\r\n      <tr>\r\n        <td align="center">\r\n          <table class="email-content" width="100%" cellpadding="0" cellspacing="0">\r\n            <tr>\r\n              <td class="email-masthead">\r\n                <a href="https://example.com" class="email-masthead_name">EduTel Academy sg_educational Solutions </a>\r\n              </td>\r\n            </tr>\r\n            <!-- Email Body -->\r\n            <tr>\r\n              <td class="email-body" width="100%" cellpadding="0" cellspacing="0">\r\n                <table class="email-body_inner" align="center" width="570" cellpadding="0" cellspacing="0">\r\n                  <!-- Body content -->\r\n                  <tr>\r\n                    <td class="content-cell">\r\n                      <h1>Hi $user.usUserName,</h1>\r\n                      <p>You recently requested to reset your password for your EduTel Academy account. Use the button below to reset it. <strong>This password reset is only valid for the next 10 minutes.</strong></p>\r\n                      <!-- Action -->\r\n                      <table class="body-action" align="center" width="100%" cellpadding="0" cellspacing="0">\r\n                        <tr>\r\n                          <td align="center">\r\n                            <!-- Border based button\r\n                       https://litmus.com/blog/a-guide-to-bulletproof-buttons-in-email-design -->\r\n                            <table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n                              <tr>\r\n                                <td align="center">\r\n                                  <table border="0" cellspacing="0" cellpadding="0">\r\n                                    <tr>\r\n                                      <td>\r\n                                        <a href="$tokenURL" class="button button--green" target="_blank">Reset your password</a>\r\n                                      </td>\r\n                                    </tr>\r\n                                  </table>\r\n                                </td>\r\n                              </tr>\r\n                            </table>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                      <p>For security, this request was received from a {{operating_system}} device using {{browser_name}}. If you did not request a password reset, please ignore this email or <a href="{{support_url}}">contact support</a> if you have questions.</p>\r\n                      <p>Thanks,\r\n                        <br>The EduTel Admin Team</p>\r\n                      <!-- Sub copy -->\r\n                      <table class="body-sub">\r\n                        <tr>\r\n                          <td>\r\n                            <p class="sub">If youÃ¢â‚¬â„¢re having trouble with the button above, copy and paste the URL below into your web browser.</p>\r\n                            <p class="sub">$tokenURL</p>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </td>\r\n                  </tr>\r\n                </table>\r\n              </td>\r\n            </tr>\r\n            <tr>\r\n              <td>\r\n                <table class="email-footer" align="center" width="570" cellpadding="0" cellspacing="0">\r\n                  <tr>\r\n                    <td class="content-cell" align="center">\r\n                      <p class="sub align-center">&copy; 2017 EduTel Academy. All rights reserved.</p>\r\n                      <p class="sub align-center">\r\n                        EduTel Academy\r\n                        <br>1234 Street Rd.\r\n                        <br>Suite 1234\r\n                      </p>\r\n                    </td>\r\n                  </tr>\r\n                </table>\r\n              </td>\r\n            </tr>\r\n          </table>\r\n        </td>\r\n      </tr>\r\n    </table>\r\n  </body>\r\n</html>', 'Email', 'EduTel Password Reset', '2017-09-24 12:00:12', NULL, NULL, 'SuperAdmin', '2017-09-24 12:00:49', 'SuperAdmin', '2017-09-24 12:00:32', b'1');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

-- Dumping structure for table education.messagesusermapping
CREATE TABLE IF NOT EXISTS `messagesusermapping` (
  `autoId` int(11) NOT NULL,
  `messageId` varchar(50) NOT NULL,
  `messageStatus` varchar(50) NOT NULL,
  `deliveryDateTime` varchar(50) NOT NULL,
  `retryCount` int(11) NOT NULL,
  `receiptant` blob NOT NULL,
  `dataObject` blob NOT NULL,
  `attachmentObject` blob NOT NULL,
  `selfDelete` bit(1) NOT NULL DEFAULT b'0',
  `createdBy` varchar(50) NOT NULL DEFAULT '0',
  `modifiedBy` varchar(50) NOT NULL DEFAULT '0',
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.messagesusermapping: ~0 rows (approximately)
DELETE FROM `messagesusermapping`;
/*!40000 ALTER TABLE `messagesusermapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `messagesusermapping` ENABLE KEYS */;

-- Dumping structure for table education.organisation
CREATE TABLE IF NOT EXISTS `organisation` (
  `organisationId` varchar(50) NOT NULL,
  `organisationName` varchar(100) DEFAULT NULL,
  `organisationType` varchar(20) DEFAULT NULL,
  `producerId` varchar(50) DEFAULT NULL,
  `country` varchar(2) NOT NULL DEFAULT 'IN',
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`organisationId`),
  KEY `FK_organisation_country` (`country`),
  KEY `FK_organisation_producers` (`producerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.organisation: ~18 rows (approximately)
DELETE FROM `organisation`;
/*!40000 ALTER TABLE `organisation` DISABLE KEYS */;
INSERT INTO `organisation` (`organisationId`, `organisationName`, `organisationType`, `producerId`, `country`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('ORG000001', 'Rosily Higher Sec. School', 'School', 'PRD000001', 'IN', 'PRDADM0001', '2018-01-04 10:47:22', NULL, NULL, b'1'),
	('ORG000002', 'DAV Higher Sec. School', 'School', 'PRD000001', 'IN', 'PRDADM0001', '2018-01-04 10:47:22', NULL, NULL, b'1'),
	('ORG000003', 'Prince Higher Sec. School', 'School', 'PRD000001', 'IN', 'PRDADM0001', '2018-01-04 10:47:22', NULL, NULL, b'1'),
	('ORG000004', 'Sundaravalli Higher Sec. School', 'School', 'PRD000001', 'IN', 'PRDADM0001', '2018-01-04 10:47:22', NULL, NULL, b'1'),
	('ORG000005', 'Velammal Higher Sec. School', 'School', 'PRD000001', 'IN', 'PRDADM0001', '2018-01-04 10:47:22', NULL, NULL, b'1'),
	('ORG1518023301614', 'MM Hr Sec School', 'School', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-07 22:39:24', NULL, NULL, b'1'),
	('ORG1518116525970', 'MM Hr Sec School', 'School', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-09 00:33:27', NULL, NULL, b'1'),
	('ORG1518118053791', 'MM Hr Sec School', 'School', 'PRD000001', 'IN', 'PRDADM0001', '2018-02-09 01:02:15', NULL, NULL, b'1'),
	('ORG1518147612471', 'MM Hr Sec School', 'School', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-09 09:10:12', NULL, NULL, b'1'),
	('ORG1518147854690', 'MM Hr Sec School', 'School', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-09 09:14:15', NULL, NULL, b'1'),
	('ORG1518967033291', 'MM Hr Sec School', 'School', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-18 20:47:13', NULL, NULL, b'1'),
	('ORG1518979845530', 'MM Hr Sec School', 'School', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-19 00:20:46', NULL, NULL, b'1'),
	('ORG1519017483495', 'Bunny123', 'University', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-19 10:48:03', NULL, NULL, b'1'),
	('ORG1519017647568', 'Testing Upload', 'College', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-19 10:50:48', NULL, NULL, b'1'),
	('ORG1519457255624', 'MM Hr Sec School111', 'University', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-24 12:57:54', NULL, NULL, b'1'),
	('ORG1519465198970', 'Rajaji', 'College', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-24 15:09:59', NULL, NULL, b'1'),
	('ORG1519466118076', 'Rajajirrrrr', 'University', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-24 15:25:18', NULL, NULL, b'1'),
	('ORG1519466147882', '1111111', 'University', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-24 15:25:48', NULL, NULL, b'1'),
	('ORG1519466181746', 'MM Hr Sec School111', 'School', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-24 15:26:22', NULL, NULL, b'1'),
	('ORG1519469038243', 'MM Hr Sec School11', 'University', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-24 16:13:58', NULL, NULL, b'1'),
	('ORG1519580579351', 'MM Hr Sec School', 'School', 'PRD000001', 'IN', 'USR1513438024801', '2018-02-25 23:12:59', NULL, NULL, b'1'),
	('ORG1520182691953', 'MM Hr Sec School11111', 'Tutorial', 'PRD000001', 'IN', 'USR1513438024801', '2018-03-04 22:28:12', NULL, NULL, b'1');
/*!40000 ALTER TABLE `organisation` ENABLE KEYS */;

-- Dumping structure for table education.organisationaddress
CREATE TABLE IF NOT EXISTS `organisationaddress` (
  `addressId` varchar(50) NOT NULL,
  `organisationId` varchar(50) DEFAULT NULL,
  `addressLine1` varchar(50) DEFAULT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `addressLine3` varchar(50) DEFAULT NULL,
  `addressType` varchar(50) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT 'No State',
  `country` varchar(50) DEFAULT 'IN',
  `pincode` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobileNo` bigint(20) DEFAULT NULL,
  `alternateMobileNo` bigint(20) DEFAULT NULL,
  `whatsAppMobileNo` bigint(20) DEFAULT NULL,
  `primaryPhoneNo` bigint(20) DEFAULT NULL,
  `phoneNo1` bigint(20) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `FK_organisationaddress_state` (`state`),
  KEY `FK_organisationaddress_country` (`country`),
  KEY `FK_organisationaddress_organisation` (`organisationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.organisationaddress: ~43 rows (approximately)
DELETE FROM `organisationaddress`;
/*!40000 ALTER TABLE `organisationaddress` DISABLE KEYS */;
INSERT INTO `organisationaddress` (`addressId`, `organisationId`, `addressLine1`, `addressLine2`, `addressLine3`, `addressType`, `landmark`, `city`, `state`, `country`, `pincode`, `email`, `mobileNo`, `alternateMobileNo`, `whatsAppMobileNo`, `primaryPhoneNo`, `phoneNo1`, `website`) VALUES
	('OADD1518023301618', 'ORG1518023301614', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518023301619', 'ORG1518023301614', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518023301620', 'ORG1518023301614', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518116525975', 'ORG1518116525970', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518116525976', 'ORG1518116525970', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518116525977', 'ORG1518116525970', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518118053796', 'ORG1518118053791', 'addressdsdfgsdgsLine1', 'dsfgaSFS', 'SDFSDF', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'sdfsdgsd', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518118053797', 'ORG1518118053791', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518118053798', 'ORG1518118053791', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518147601626', 'ORG1518147854690', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518147601627', 'ORG1518147854690', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518147601628', 'ORG1518147854690', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518966977216', 'ORG1518967033291', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518966977218', 'ORG1518967033291', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518966977220', 'ORG1518967033291', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518979837673', 'ORG1518979845530', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518979837674', 'ORG1518979845530', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1518979837675', 'ORG1518979845530', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519016556146', 'ORG1519017483495', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519016556148', 'ORG1519017483495', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519016556149', 'ORG1519017483495', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519017622413', 'ORG1519017647568', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519017622414', 'ORG1519017647568', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519017622416', 'ORG1519017647568', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519457111761', 'ORG1519457255624', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519457111763', 'ORG1519457255624', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519457111765', 'ORG1519457255624', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519465177700', 'ORG1519465198970', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519465177701', 'ORG1519466147882', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519465177703', 'ORG1519466147882', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519466162235', 'ORG1519466181746', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519466162236', 'ORG1519466181746', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519469020256', 'ORG1519469038243', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519469020258', 'ORG1519469038243', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519469020259', 'ORG1519469038243', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519580558788', 'ORG1519580579351', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519580558789', 'ORG1519580579351', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1519580558790', 'ORG1519580579351', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1520182659820', 'ORG1520182691953', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, '1111111111111asdadas', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1520182659821', 'ORG1520182691953', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1520182659822', 'ORG1520182691953', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('ORGAD001', 'ORG000001', NULL, NULL, NULL, 'CommunicationAddress', NULL, 'Chennai', 'Tamil Nadu', NULL, NULL, 'rosily@gmail.com', 9677101112, NULL, NULL, 444440000, NULL, 'www.rosily.com'),
	('ORGAD002', 'ORG000002', NULL, NULL, NULL, 'CommunicationAddress', NULL, 'Chennai', 'Tamil Nadu', NULL, NULL, 'dav@gmail.com', 9677101113, NULL, NULL, 444440000, NULL, 'www.rosily.com'),
	('ORGAD003', 'ORG000003', NULL, NULL, NULL, 'CommunicationAddress', NULL, 'Chennai', 'Tamil Nadu', NULL, NULL, 'prince@gmail.com', 9677101114, NULL, NULL, 444440000, NULL, 'www.rosily.com'),
	('ORGAD004', 'ORG000004', NULL, NULL, NULL, 'CommunicationAddress', NULL, 'Chennai', 'Tamil Nadu', NULL, NULL, 'sundaravalli@gmail.com', 9677101115, NULL, NULL, 444440000, NULL, 'www.rosily.com'),
	('ORGAD005', 'ORG000005', NULL, NULL, NULL, 'CommunicationAddress', NULL, 'Chennai', 'Tamil Nadu', NULL, NULL, 'velammal@gmail.com', 9677101116, NULL, NULL, 444440000, NULL, 'www.rosily.com');
/*!40000 ALTER TABLE `organisationaddress` ENABLE KEYS */;

-- Dumping structure for table education.organisationattachments
CREATE TABLE IF NOT EXISTS `organisationattachments` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `organisationId` varchar(50) DEFAULT NULL,
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileFolderURL` varchar(500) DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileNameForDisplay` varchar(100) DEFAULT NULL,
  `uploadFileSize` bigint(20) NOT NULL,
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table education.organisationattachments: ~14 rows (approximately)
DELETE FROM `organisationattachments`;
/*!40000 ALTER TABLE `organisationattachments` DISABLE KEYS */;
INSERT INTO `organisationattachments` (`autoId`, `organisationId`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileLastModifiedDate`, `uploadFileName`, `uploadFileNameForDisplay`, `uploadFileSize`, `uploadDocumentForType`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	(1, 'ORG1518118053791', NULL, '\\ORG1518118053791\\ProfileImage', NULL, 'Image1.jpg', NULL, 0, 'ProfileImage', '2018-02-09 00:58:29', NULL, 'USR1513438024801', NULL, b'1'),
	(2, 'ORG000001', NULL, '\\ORG1518118053791\\ProfileImage', NULL, 'Image2.jpg', NULL, 0, 'ProfileImage', '2018-02-09 01:02:15', NULL, 'USR1513438024801', NULL, b'1'),
	(3, 'ORG1518147612471', NULL, '\\ORG1518147612471\\ProfileImage', NULL, 'Image3.jpg', NULL, 0, 'ProfileImage', '2018-02-09 09:10:12', NULL, 'USR1513438024801', NULL, b'1'),
	(4, 'ORG1518147854690', NULL, '\\ORG1518147854690\\ProfileImage', NULL, 'Image4.png', NULL, 0, 'ProfileImage', '2018-02-09 09:14:15', NULL, 'USR1513438024801', NULL, b'1'),
	(5, 'ORG1518967033291', NULL, '\\ORG1518967033291\\Attachment', NULL, 'Image2.jpg', NULL, 0, 'ProfileImage', '2018-02-18 20:47:13', NULL, 'USR1513438024801', NULL, b'1'),
	(6, 'ORG1518979845530', NULL, '\\ORG1518979845530\\Attachment', NULL, 'WhatsApp Image 2017-12-28 at 10.07.01 PM.jpeg', NULL, 0, 'ProfileImage', '2018-02-19 00:20:46', NULL, 'USR1513438024801', NULL, b'1'),
	(7, 'ORG1519017483495', NULL, 'ORG1519017483495\\ProfileImage', NULL, 'caterpillar-60-fun-zoo-original-imaetykajy7gvahh.jpeg', NULL, 0, 'ProfileImage', '2018-02-19 10:48:17', NULL, 'USR1513438024801', NULL, b'1'),
	(8, 'ORG1519017647568', NULL, 'ORG1519017647568\\ProfileImage', NULL, 'Ananth.jpg', NULL, 0, 'ProfileImage', '2018-02-19 10:50:48', NULL, 'USR1513438024801', NULL, b'1'),
	(9, 'ORG1519465198970', NULL, 'ORG1519465198970\\ProfileImage', NULL, 'Ananth.jpg', NULL, 0, 'ProfileImage', '2018-02-24 15:10:14', NULL, 'USR1513438024801', NULL, b'1'),
	(10, 'ORG1519466118076', NULL, 'ORG1519466118076\\ProfileImage', NULL, 'Ananth.jpg', NULL, 0, 'ProfileImage', '2018-02-24 15:25:18', NULL, 'USR1513438024801', NULL, b'1'),
	(11, 'ORG1519466147882', NULL, 'ORG1519466147882\\ProfileImage', NULL, 'Ananth.jpg', NULL, 0, 'ProfileImage', '2018-02-24 15:25:48', NULL, 'USR1513438024801', NULL, b'1'),
	(12, 'ORG1519466181746', NULL, 'ORG1519466181746\\ProfileImage', NULL, 'desktop.ini', NULL, 0, 'ProfileImage', '2018-02-24 15:26:22', NULL, 'USR1513438024801', NULL, b'1'),
	(13, 'ORG1519469038243', NULL, 'ORG1519469038243\\ProfileImage', NULL, 'AnanthHoroscope.txt', NULL, 0, 'ProfileImage', '2018-02-24 16:13:58', NULL, 'USR1513438024801', NULL, b'1'),
	(14, 'ORG1519580579351', NULL, 'ORG1519580579351\\ProfileImage', NULL, 'Ananth.jpg', NULL, 0, 'ProfileImage', '2018-02-25 23:12:59', NULL, 'USR1513438024801', NULL, b'1');
/*!40000 ALTER TABLE `organisationattachments` ENABLE KEYS */;

-- Dumping structure for table education.portlets
CREATE TABLE IF NOT EXISTS `portlets` (
  `portletId` varchar(50) NOT NULL,
  `portletName` varchar(50) NOT NULL,
  `portletBeanName` varchar(50) NOT NULL,
  `portletTemplatePath` varchar(100) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.portlets: ~9 rows (approximately)
DELETE FROM `portlets`;
/*!40000 ALTER TABLE `portlets` DISABLE KEYS */;
INSERT INTO `portlets` (`portletId`, `portletName`, `portletBeanName`, `portletTemplatePath`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('PRT000001', 'Login Logout Information', 'org.hbs.sg.portlet.executors.LoginLogoutPortlet', '../../jsp/content/portlets/login-pt.jsp', 'SuperAdmin', '2018-01-04 22:45:31', NULL, NULL, b'1'),
	('PRT000002', 'Activity Information', 'org.hbs.sg.portlet.executors.ActivityPortlet', '../../jsp/content/portlets/login-pt.jsp', 'SuperAdmin', '2018-01-04 22:45:31', NULL, NULL, b'1'),
	('PRT000003', 'Assessment Information', 'org.hbs.sg.portlet.executors.AssessmentPortlet', '../../jsp/content/portlets/login-pt.jsp', 'SuperAdmin', '2018-01-04 22:45:31', NULL, NULL, b'1'),
	('PRT000004', 'Calendar Information', 'org.hbs.sg.portlet.executors.CalendarPortlet', '../../jsp/content/portlets/login-pt.jsp', 'SuperAdmin', '2018-01-04 22:45:31', NULL, NULL, b'1'),
	('PRT000005', 'Discussion Information', 'org.hbs.sg.portlet.executors.DiscussionPortlet', '../../jsp/content/portlets/login-pt.jsp', 'SuperAdmin', '2018-01-04 22:45:31', NULL, NULL, b'1'),
	('PRT000006', 'Notifications Information', 'org.hbs.sg.portlet.executors.NotificationsPortlet', '../../jsp/content/portlets/login-pt.jsp', 'SuperAdmin', '2018-01-04 22:45:31', NULL, NULL, b'1'),
	('PRT000007', 'Practise Information', 'org.hbs.sg.portlet.executors.PractiseExamPortlet', '../../jsp/content/portlets/login-pt.jsp', 'SuperAdmin', '2018-01-04 22:45:31', NULL, NULL, b'1'),
	('PRT000008', 'Report Card Information', 'org.hbs.sg.portlet.executors.ReportCardPortlet', '../../jsp/content/portlets/login-pt.jsp', 'SuperAdmin', '2018-01-04 22:45:31', NULL, NULL, b'1'),
	('PRT000009', 'Users Information', 'org.hbs.sg.portlet.executors.UsersPortlet', '../../jsp/content/portlets/login-pt.jsp', 'SuperAdmin', '2018-01-04 22:45:31', NULL, NULL, b'1');
/*!40000 ALTER TABLE `portlets` ENABLE KEYS */;

-- Dumping structure for table education.portletsusersroles
CREATE TABLE IF NOT EXISTS `portletsusersroles` (
  `ptAutoId` int(10) NOT NULL AUTO_INCREMENT,
  `portletId` varchar(50) NOT NULL,
  `urAutoId` int(11) NOT NULL,
  `status` bit(1) DEFAULT b'1',
  `order` int(11) NOT NULL,
  PRIMARY KEY (`ptAutoId`),
  KEY `FK_portletsusers_portlets` (`portletId`),
  KEY `FK_portletsusersroles_userroles` (`urAutoId`),
  CONSTRAINT `FK_portletsusers_portlets` FOREIGN KEY (`portletId`) REFERENCES `portlets` (`portletId`),
  CONSTRAINT `FK_portletsusersroles_userroles` FOREIGN KEY (`urAutoId`) REFERENCES `userroles` (`urAutoId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table education.portletsusersroles: ~10 rows (approximately)
DELETE FROM `portletsusersroles`;
/*!40000 ALTER TABLE `portletsusersroles` DISABLE KEYS */;
INSERT INTO `portletsusersroles` (`ptAutoId`, `portletId`, `urAutoId`, `status`, `order`) VALUES
	(1, 'PRT000001', 2, b'1', 1),
	(2, 'PRT000003', 2, b'0', 2),
	(3, 'PRT000007', 2, b'0', 3),
	(4, 'PRT000007', 5, b'1', 3),
	(5, 'PRT000003', 5, b'0', 1),
	(6, 'PRT000001', 5, b'1', 2),
	(7, 'PRT000006', 3, b'1', 2),
	(8, 'PRT000003', 4, b'0', 1),
	(9, 'PRT000002', 2, b'1', 4),
	(10, 'PRT000001', 6, b'1', 1);
/*!40000 ALTER TABLE `portletsusersroles` ENABLE KEYS */;

-- Dumping structure for table education.producers
CREATE TABLE IF NOT EXISTS `producers` (
  `producerId` varchar(50) NOT NULL,
  `producerName` varchar(50) DEFAULT NULL,
  `pwdExpiryDays` datetime DEFAULT NULL,
  `domainContext` varchar(100) DEFAULT NULL,
  `usEmployeeId` varchar(50) DEFAULT NULL,
  `documentHandlerUploadBean` varchar(100) DEFAULT NULL,
  `documentHandlerDownloadBean` varchar(100) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`producerId`),
  KEY `FK_producers_users` (`usEmployeeId`),
  CONSTRAINT `FK_producers_users` FOREIGN KEY (`usEmployeeId`) REFERENCES `users` (`usEmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.producers: ~3 rows (approximately)
DELETE FROM `producers`;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
INSERT INTO `producers` (`producerId`, `producerName`, `pwdExpiryDays`, `domainContext`, `usEmployeeId`, `documentHandlerUploadBean`, `documentHandlerDownloadBean`, `createdBy`, `createdDate`, `modifiedDate`, `modifiedBy`, `status`) VALUES
	('PRD000000', 'Default', NULL, NULL, 'SuperAdmin', NULL, NULL, NULL, NULL, NULL, NULL, b'0'),
	('PRD000001', 'EduTel Academy', '2017-08-02 07:33:06', '/edutel', 'PRDADM0001', 'org.hbs.document.fileserver.FileServerUpload', 'org.hbs.document.fileserver.FileServerDownload', 'SuperAdmin', '2017-08-02 07:33:07', '2017-08-02 07:33:08', NULL, b'1'),
	('PRD000002', 'SelfGuru ', '2017-08-02 07:33:06', '/sg', 'PRDADM0002', 'org.hbs.document.fileserver.FileServerUpload', 'org.hbs.document.fileserver.FileServerDownload', 'SuperAdmin', '2017-08-02 07:33:07', '2017-08-02 07:33:08', NULL, b'1');
/*!40000 ALTER TABLE `producers` ENABLE KEYS */;

-- Dumping structure for table education.producersassessment
CREATE TABLE IF NOT EXISTS `producersassessment` (
  `autoId` int(11) NOT NULL,
  `assessmentId` varchar(50) DEFAULT NULL,
  `producerId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`autoId`),
  KEY `FK__assessment` (`assessmentId`),
  KEY `FK__producers` (`producerId`),
  CONSTRAINT `FK__assessment` FOREIGN KEY (`assessmentId`) REFERENCES `assessment` (`assessmentId`),
  CONSTRAINT `FK__producers` FOREIGN KEY (`producerId`) REFERENCES `producers` (`producerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.producersassessment: ~0 rows (approximately)
DELETE FROM `producersassessment`;
/*!40000 ALTER TABLE `producersassessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `producersassessment` ENABLE KEYS */;

-- Dumping structure for table education.producersattachments
CREATE TABLE IF NOT EXISTS `producersattachments` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `producerId` varchar(50) DEFAULT NULL,
  `documentStatus` varchar(50) DEFAULT NULL,
  `documentDesc` varchar(100) DEFAULT NULL,
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileFolderURL` varchar(500) DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileNameForDisplay` varchar(50) DEFAULT NULL,
  `uploadFileSize` bigint(20) NOT NULL,
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.producersattachments: ~0 rows (approximately)
DELETE FROM `producersattachments`;
/*!40000 ALTER TABLE `producersattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `producersattachments` ENABLE KEYS */;

-- Dumping structure for table education.producersproperty
CREATE TABLE IF NOT EXISTS `producersproperty` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `producerId` varchar(50) NOT NULL,
  `group` varchar(50) NOT NULL,
  `enumKey` varchar(50) NOT NULL,
  `property` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table education.producersproperty: ~5 rows (approximately)
DELETE FROM `producersproperty`;
/*!40000 ALTER TABLE `producersproperty` DISABLE KEYS */;
INSERT INTO `producersproperty` (`autoId`, `producerId`, `group`, `enumKey`, `property`, `value`, `status`) VALUES
	(1, 'PRD000001', 'ResourceHandler', 'Profile', '0890b67e-cfb7-46c1-83d8-dbc46938a1ee', 'C:/EduTelDocs/Documents/Profile', b'1'),
	(2, 'PRD000001', 'ResourceHandler', 'Assessment', '8a075246-fb88-4026-9f25-0918574356fb', 'C:/EduTelDocs/Documents/Assessment', b'1'),
	(3, 'PRD000001', 'ResourceHandler', 'EBooks', '9f0aeb0d-2026-4949-b2c3-f840787cb5ca', 'C:/EduTelDocs/Documents/EBooks', b'1'),
	(4, 'PRD000001', 'ResourceHandler', 'EKeyPoints', '880bc7fd-1eaa-4093-97a3-3c0e21dbdafa', 'C:/EduTelDocs/Documents/EKeyPoints', b'1'),
	(5, 'PRD000001', 'ResourceHandler', 'Default', '897f2cc2-9ab5-4df4-91e5-0fde6a2c8f77', 'C:/EduTelDocs/Documents/Default', b'1');
/*!40000 ALTER TABLE `producersproperty` ENABLE KEYS */;

-- Dumping structure for table education.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `rlRoleId` varchar(50) NOT NULL,
  `enumKey` varchar(50) NOT NULL,
  `rlRoleName` varchar(50) NOT NULL,
  `rlRoleShortName` varchar(50) NOT NULL,
  `rlRoleLongName` varchar(50) NOT NULL,
  `rlRoleDescription` varchar(50) NOT NULL,
  `rlRoleType` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  `isAdminRole` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`rlRoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.roles: ~7 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`rlRoleId`, `enumKey`, `rlRoleName`, `rlRoleShortName`, `rlRoleLongName`, `rlRoleDescription`, `rlRoleType`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`, `isAdminRole`) VALUES
	('Admin', 'Admin', 'Admin Role', 'Admin', 'Admin Role', 'Admin Role', 'Admin Role', 'SuperAdmin', '2014-07-06 10:30:00', 'SuperAdmin', '2014-07-06 10:30:00', b'1', b'1'),
	('Dummy', 'Dummy', 'Dummy', 'Dummy', 'Dummy', 'Dummy', 'SuperAdminRole', 'SuperAdmin', '2014-03-22 17:40:42', 'SuperAdmin', '2014-07-06 10:30:00', b'1', b'0'),
	('Employee', 'EmployeeRole', 'Employee Role', 'Employee Role', 'Employeeistrator Role', 'Employee Role', 'EmployeeRole', 'SuperAdmin', '2014-07-06 10:30:00', 'SuperAdmin', '2014-07-06 10:30:00', b'1', b'0'),
	('Franchisee', 'Franchisee', 'Franchisee', 'Franchisee', 'Franchisee Role', 'Super Administrator Role', 'Marketing', 'SuperAdmin', '2014-07-06 10:30:00', 'SuperAdmin', '2014-07-06 10:30:00', b'1', b'0'),
	('Marketing', 'Marketing', 'Marketing', 'Marketing', 'Marketing Role', 'Marketing Role', 'Marketing', 'SuperAdmin', '2014-07-06 10:30:00', 'SuperAdmin', '2014-07-06 10:30:00', b'1', b'0'),
	('Student', 'Student', 'Student Role', 'Student', 'Student Role', 'Student Role', 'Student Role', 'SuperAdmin', '2014-07-06 10:30:00', 'SuperAdmin', '2014-07-06 10:30:00', b'1', b'0'),
	('SuperAdminRole', 'SuperAdminRole', 'Super Admin Role', 'Super Admin Role', 'Super Administrator Role', 'Super Administrator Role', 'SuperAdminRole', 'SuperAdmin', '2014-07-06 10:30:00', 'SuperAdmin', '2014-07-06 10:30:00', b'1', b'1');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table education.scheme
CREATE TABLE IF NOT EXISTS `scheme` (
  `schemeId` varchar(50) NOT NULL,
  `schemeName` varchar(100) NOT NULL,
  `schemeCost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `schemeSell` decimal(10,2) NOT NULL DEFAULT '0.00',
  `producerId` varchar(50) NOT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`schemeId`),
  KEY `FK_scheme_producers` (`producerId`),
  CONSTRAINT `FK_scheme_producers` FOREIGN KEY (`producerId`) REFERENCES `producers` (`producerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.scheme: ~6 rows (approximately)
DELETE FROM `scheme`;
/*!40000 ALTER TABLE `scheme` DISABLE KEYS */;
INSERT INTO `scheme` (`schemeId`, `schemeName`, `schemeCost`, `schemeSell`, `producerId`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('DEFAULT', 'DEFAULT', 0.00, 0.00, 'PRD000001', 'PRDADM0001', '2018-01-05 19:28:03', NULL, '2018-01-05 19:28:31', b'0'),
	('PLN000001', 'Full Year Internship StateBoard', 999.00, 0.00, 'PRD000001', 'PRDADM0001', '2018-01-05 19:28:03', NULL, '2018-01-05 19:28:03', b'1'),
	('PLN000002', 'Full Year Internship CBSE', 999.00, 0.00, 'PRD000001', 'PRDADM0001', '2018-01-05 19:28:03', NULL, '2018-01-05 19:28:03', b'1'),
	('PLN000003', 'Two Year Internship StateBoard', 999.00, 0.00, 'PRD000001', 'PRDADM0001', '2018-01-05 19:28:03', NULL, '2018-01-05 19:28:03', b'1'),
	('PLN000004', 'Two Year Internship CBSE', 999.00, 0.00, 'PRD000001', 'PRDADM0001', '2018-01-05 19:28:03', NULL, '2018-01-05 19:28:03', b'1'),
	('TRIAL', 'Trial Version', 0.00, 0.00, 'PRD000001', 'PRDADM0001', '2018-01-05 19:28:03', NULL, '2018-01-05 19:28:03', b'1');
/*!40000 ALTER TABLE `scheme` ENABLE KEYS */;

-- Dumping structure for table education.schemecoursegroup
CREATE TABLE IF NOT EXISTS `schemecoursegroup` (
  `courseGroupId` varchar(50) NOT NULL,
  `schemeId` varchar(50) NOT NULL,
  KEY `FK_schemecoursegroup_coursegroup` (`courseGroupId`),
  KEY `FK_schemecoursegroup_scheme` (`schemeId`),
  CONSTRAINT `FK_schemecoursegroup_coursegroup` FOREIGN KEY (`courseGroupId`) REFERENCES `coursegroup` (`courseGroupId`),
  CONSTRAINT `FK_schemecoursegroup_scheme` FOREIGN KEY (`schemeId`) REFERENCES `scheme` (`schemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.schemecoursegroup: ~6 rows (approximately)
DELETE FROM `schemecoursegroup`;
/*!40000 ALTER TABLE `schemecoursegroup` DISABLE KEYS */;
INSERT INTO `schemecoursegroup` (`courseGroupId`, `schemeId`) VALUES
	('CG000002', 'PLN000001'),
	('CG000004', 'PLN000002'),
	('CG000001', 'PLN000003'),
	('CG000002', 'PLN000003'),
	('CG000003', 'PLN000004'),
	('CG000004', 'PLN000004');
/*!40000 ALTER TABLE `schemecoursegroup` ENABLE KEYS */;

-- Dumping structure for table education.state
CREATE TABLE IF NOT EXISTS `state` (
  `state` varchar(50) NOT NULL,
  `country` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`state`),
  KEY `FK_states_country` (`country`),
  CONSTRAINT `FK_states_country` FOREIGN KEY (`country`) REFERENCES `country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.state: ~34 rows (approximately)
DELETE FROM `state`;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`state`, `country`) VALUES
	('Andhra Pradesh', 'IN'),
	('Arunachal Pradesh', 'IN'),
	('Assam', 'IN'),
	('Bihar', 'IN'),
	('Chandigarh', 'IN'),
	('Chhattisgarh', 'IN'),
	('Dadra and Nagar Haveli', 'IN'),
	('Daman & Diu', 'IN'),
	('Delhi', 'IN'),
	('Goa', 'IN'),
	('Gujarat', 'IN'),
	('Haryana', 'IN'),
	('Himachal Pradesh', 'IN'),
	('Jammu & Kashmir', 'IN'),
	('Jharkhand', 'IN'),
	('Karnataka', 'IN'),
	('Kerala', 'IN'),
	('Lakshadweep', 'IN'),
	('Madhya Pradesh', 'IN'),
	('Maharashtra', 'IN'),
	('Manipur', 'IN'),
	('Meghalaya', 'IN'),
	('Mizoram', 'IN'),
	('Nagaland', 'IN'),
	('No State', 'IN'),
	('Odisha', 'IN'),
	('Punjab', 'IN'),
	('Rajasthan', 'IN'),
	('Sikkim', 'IN'),
	('Tamil Nadu', 'IN'),
	('Telangana', 'IN'),
	('Tripura', 'IN'),
	('Uttar Pradesh', 'IN'),
	('Uttarakhand', 'IN'),
	('West Bengal', 'IN');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;

-- Dumping structure for table education.useractivity
CREATE TABLE IF NOT EXISTS `useractivity` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `after` varchar(255) DEFAULT NULL,
  `before` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.useractivity: ~0 rows (approximately)
DELETE FROM `useractivity`;
/*!40000 ALTER TABLE `useractivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `useractivity` ENABLE KEYS */;

-- Dumping structure for table education.userlog
CREATE TABLE IF NOT EXISTS `userlog` (
  `ulAutoId` int(10) NOT NULL AUTO_INCREMENT,
  `usEmployeeId` varchar(50) NOT NULL DEFAULT '0',
  `ulUserLoginTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ulUserLogoutTime` datetime DEFAULT '0000-00-00 00:00:00',
  `ulIpaddress` varchar(50) NOT NULL DEFAULT '0',
  `ulFetchBlock` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ulAutoId`),
  KEY `FK_LogUser_User_idx` (`usEmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.userlog: ~0 rows (approximately)
DELETE FROM `userlog`;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;

-- Dumping structure for table education.userroles
CREATE TABLE IF NOT EXISTS `userroles` (
  `urAutoId` int(10) NOT NULL AUTO_INCREMENT,
  `usEmployeeId` varchar(50) NOT NULL,
  `rlRoleId` varchar(50) NOT NULL,
  PRIMARY KEY (`urAutoId`),
  KEY `FK_userroles_users` (`usEmployeeId`),
  KEY `FK_userroles_roles` (`rlRoleId`),
  CONSTRAINT `FK_userroles_roles` FOREIGN KEY (`rlRoleId`) REFERENCES `roles` (`rlRoleId`),
  CONSTRAINT `FK_userroles_users` FOREIGN KEY (`usEmployeeId`) REFERENCES `users` (`usEmployeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table education.userroles: ~5 rows (approximately)
DELETE FROM `userroles`;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` (`urAutoId`, `usEmployeeId`, `rlRoleId`) VALUES
	(1, 'SuperAdmin', 'SuperAdminRole'),
	(2, 'USR1513438024799', 'Student'),
	(3, 'USR1513438024801', 'Admin'),
	(4, 'PRDADM0001', 'Employee'),
	(5, 'USR1513438024800', 'Student'),
	(6, 'USR1513438024801', 'Employee');
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;

-- Dumping structure for table education.users
CREATE TABLE IF NOT EXISTS `users` (
  `usEmployeeId` varchar(50) NOT NULL,
  `producerId` varchar(50) DEFAULT NULL,
  `usUserId` varchar(50) DEFAULT NULL,
  `usFolderToken` varchar(50) DEFAULT NULL,
  `usUserName` varchar(100) DEFAULT '0',
  `usLastName` varchar(100) DEFAULT NULL,
  `usFatherName` varchar(100) DEFAULT NULL,
  `usUserPwd` varchar(100) DEFAULT NULL,
  `usUserPwdModFlag` bit(1) DEFAULT b'0',
  `usUserPwdModDate` datetime DEFAULT NULL,
  `usDob` varchar(50) DEFAULT NULL,
  `usSex` varchar(10) DEFAULT NULL,
  `usUsersType` varchar(50) DEFAULT NULL,
  `usUserStatus` varchar(50) DEFAULT NULL,
  `usDateOfJoin` varchar(50) DEFAULT NULL,
  `usToken` varchar(200) DEFAULT NULL,
  `usTokenExpiryDate` datetime DEFAULT NULL,
  `country` varchar(2) NOT NULL DEFAULT 'IN',
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`usEmployeeId`),
  KEY `FK_users_producers` (`producerId`),
  KEY `FK_users_country` (`country`),
  CONSTRAINT `FK_users_country` FOREIGN KEY (`country`) REFERENCES `country` (`country`),
  CONSTRAINT `FK_users_producers` FOREIGN KEY (`producerId`) REFERENCES `producers` (`producerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.users: ~6 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`usEmployeeId`, `producerId`, `usUserId`, `usFolderToken`, `usUserName`, `usLastName`, `usFatherName`, `usUserPwd`, `usUserPwdModFlag`, `usUserPwdModDate`, `usDob`, `usSex`, `usUsersType`, `usUserStatus`, `usDateOfJoin`, `usToken`, `usTokenExpiryDate`, `country`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('PRDADM0001', 'PRD000001', 'EduTel-Id', '013ea493-8fcc-4c68-b4b8-431a82a375bb', 'EduTel ', 'Academy', NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', b'0', NULL, NULL, NULL, 'Producer', 'Activated', NULL, '6ecd993b-d84c-46a8-8c57-8d07feb14c47', '2017-09-23 22:00:21', 'IN', 'SuperAdmin', '2018-01-30 23:47:50', NULL, '2018-01-30 23:47:50', b'1'),
	('PRDADM0002', 'PRD000002', 'SelfGuru-Id', 'dd04dfe0-2d1a-4f02-97c3-52274d9a3c0a', 'SelfGuru', 'Aptituders', NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', b'0', NULL, NULL, NULL, 'Producer', 'Activated', NULL, '6ecd993b-d84c-46a8-8c57-8d07feb14c47', '2017-09-23 22:00:21', 'IN', 'SuperAdmin', '2018-01-30 23:47:50', NULL, '2018-01-30 23:47:50', b'1'),
	('SuperAdmin', 'PRD000000', 'SuperAdmin-Id', '89e0ba9b-0017-4cb0-b514-bd57eb89e080', 'SuperAdmin', NULL, NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', b'1', '2017-12-03 12:08:35', NULL, NULL, 'Producer', 'Activated', NULL, 'a21e8c20-fa37-4ce8-88d4-6494bb8b844f', '2017-12-03 11:50:59', 'IN', 'SuperAdmin', '2018-01-30 23:47:50', NULL, '2018-01-30 23:47:50', b'1'),
	('USR1513438024799', 'PRD000001', 'Ananth-Id', '1aa2850a-6717-4664-9215-56a2bf52806e', 'Ananth', 'Balasubramanian', NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', NULL, NULL, NULL, NULL, 'Consumer', 'Activated', NULL, '0239cba9-7c38-4e06-acf8-a62dc748fb30', '2017-12-16 20:57:29', 'IN', 'PRDADM0001', '2017-12-16 20:57:33', NULL, NULL, b'1'),
	('USR1513438024800', 'PRD000001', 'Raja-Id', '486f11d5-4972-44b0-9bdc-50f7b572ce11', 'Raja', 'Nellaiyyappar', NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', NULL, NULL, NULL, NULL, 'Consumer', 'Activated', NULL, '0239cba9-7c38-4e06-acf8-a62dc748fb30', '2017-12-16 20:57:29', 'IN', 'PRDADM0001', '2017-12-16 20:57:33', NULL, NULL, b'1'),
	('USR1513438024801', 'PRD000001', 'Logeswaran-Id', 'ca7621f6-a0e0-425a-a1ca-e0c171e6b282', 'Logeswaran', 'Nellaiyyappar', NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', NULL, NULL, NULL, NULL, 'Employee', 'Activated', NULL, '0239cba9-7c38-4e06-acf8-a62dc748fb30', '2017-12-16 20:57:29', 'SG', 'PRDADM0001', '2018-01-30 23:47:50', NULL, '2018-01-30 23:47:50', b'1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table education.usersaddress
CREATE TABLE IF NOT EXISTS `usersaddress` (
  `addressId` varchar(50) NOT NULL,
  `usEmployeeId` varchar(50) NOT NULL,
  `addressLine1` varchar(50) DEFAULT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `addressLine3` varchar(50) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT 'No State',
  `country` varchar(50) DEFAULT 'IN',
  `pincode` int(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `mobileNo` bigint(20) NOT NULL,
  `alternateMobileNo` bigint(20) DEFAULT NULL,
  `whatsAppMobileNo` bigint(20) DEFAULT NULL,
  `primaryPhoneNo` bigint(20) DEFAULT NULL,
  `addressType` varchar(50) NOT NULL,
  PRIMARY KEY (`addressId`),
  KEY `FK_useraddress_users` (`usEmployeeId`),
  KEY `FK_usersaddress_state` (`state`),
  KEY `FK_usersaddress_country` (`country`),
  CONSTRAINT `FK_useraddress_users` FOREIGN KEY (`usEmployeeId`) REFERENCES `users` (`usEmployeeId`),
  CONSTRAINT `FK_usersaddress_country` FOREIGN KEY (`country`) REFERENCES `country` (`country`),
  CONSTRAINT `FK_usersaddress_state` FOREIGN KEY (`state`) REFERENCES `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.usersaddress: ~5 rows (approximately)
DELETE FROM `usersaddress`;
/*!40000 ALTER TABLE `usersaddress` DISABLE KEYS */;
INSERT INTO `usersaddress` (`addressId`, `usEmployeeId`, `addressLine1`, `addressLine2`, `addressLine3`, `landmark`, `city`, `state`, `country`, `pincode`, `email`, `mobileNo`, `alternateMobileNo`, `whatsAppMobileNo`, `primaryPhoneNo`, `addressType`) VALUES
	('ADD10001', 'SuperAdmin', 'Add1', 'Add2', 'Add3', 'LM', 'Chennai', 'Tamil Nadu', 'IN', 600092, 'eselfguru@gmail.com', 9500395591, NULL, NULL, 4495003955, 'CommunicationAddress'),
	('UADD1507911648747', 'PRDADM0001', 'Add1', 'Add2', 'Add3', 'LM', 'Chennai', 'Tamil Nadu', 'IN', 600091, 'anandb.hbs@gmail.com', 9789875852, NULL, NULL, 4495003956, 'CommunicationAddress'),
	('UADD1513438016242', 'USR1513438024799', 'Add1', 'Add2', 'Add3', 'LM', 'Chennai', 'Tamil Nadu', 'IN', 600090, 'ananth.malbal@gmail.com', 9865629667, NULL, NULL, 4495003957, 'CommunicationAddress'),
	('UADD1513438016243', 'USR1513438024800', 'Add1', 'Add2', 'Add3', 'LM', 'Chennai', 'Tamil Nadu', 'IN', 600089, 'rajan.hbs@gmail.com', 9943969762, NULL, NULL, 4495003958, 'CommunicationAddress'),
	('UADD1513438016244', 'USR1513438024801', 'Add1', 'Add2', 'Add3', 'LM', 'Chennai', 'Tamil Nadu', 'IN', 600088, 'niranjan@gmail.com', 9677101112, NULL, NULL, 4495003959, 'CommunicationAddress');
/*!40000 ALTER TABLE `usersaddress` ENABLE KEYS */;

-- Dumping structure for table education.usersattachments
CREATE TABLE IF NOT EXISTS `usersattachments` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `usEmployeeId` varchar(50) DEFAULT NULL,
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `uploadFileFolderURL` varchar(500) DEFAULT NULL,
  `uploadResourceHandler` varchar(50) NOT NULL DEFAULT 'Default',
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileSize` bigint(20) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_userattachments_users` (`usEmployeeId`),
  CONSTRAINT `FK_userattachments_users` FOREIGN KEY (`usEmployeeId`) REFERENCES `users` (`usEmployeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table education.usersattachments: ~1 rows (approximately)
DELETE FROM `usersattachments`;
/*!40000 ALTER TABLE `usersattachments` DISABLE KEYS */;
INSERT INTO `usersattachments` (`autoId`, `usEmployeeId`, `uploadDocumentForType`, `uploadFileFolderURL`, `uploadResourceHandler`, `uploadFileName`, `uploadFileDate`, `uploadFileLastModifiedDate`, `uploadFileSize`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	(1, 'USR1513438024801', 'UserImage', 'ca7621f6-a0e0-425a-a1ca-e0c171e6b282', 'Profile', 'logo.png', NULL, NULL, 1, NULL, NULL, NULL, NULL, b'1');
/*!40000 ALTER TABLE `usersattachments` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
