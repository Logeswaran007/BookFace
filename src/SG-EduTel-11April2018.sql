-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.6.10 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
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

-- Dumping data for table education.alertsandnotifications: ~12 rows (approximately)
DELETE FROM `alertsandnotifications`;
/*!40000 ALTER TABLE `alertsandnotifications` DISABLE KEYS */;
INSERT INTO `alertsandnotifications` (`autoId`, `message`, `messageType`, `producerId`, `scheduledDate`, `expiryDate`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	(1, 'Hii..Loges', 'Alerts', 'PRD000001', '', NULL, 'SuperAdmin', '2018-01-29 15:41:19', NULL, NULL, b'1'),
	(2, 'Hii...Hbs', 'Banner', 'PRD000001', '', NULL, 'SuperAdmin', '2018-01-29 16:11:36', NULL, NULL, b'1'),
	(3, 'Hii...Suresh', 'Popup', 'PRD000001', '', NULL, 'SuperAdmin', '2018-01-29 16:11:36', NULL, NULL, b'1'),
	(4, 'Hii...Raja', 'SMS', 'PRD000001', '', NULL, 'SuperAdmin', '2018-01-29 16:11:36', NULL, NULL, b'1'),
	(5, 'Hii...Ananth', 'Mail', 'PRD000001', '', NULL, 'SuperAdmin', '2018-01-29 16:11:36', NULL, NULL, b'1'),
	(13, 'good', 'Popup', NULL, NULL, NULL, 'USR1513438024801', '2018-02-03 12:02:50', NULL, NULL, b'1'),
	(14, 'good', 'Popup', NULL, NULL, NULL, 'USR1513438024801', '2018-02-03 12:03:30', NULL, NULL, b'1'),
	(18, 'helllo', 'SMS', NULL, '', '', 'USR1513438024801', '2018-02-03 12:37:01', NULL, NULL, b'1'),
	(19, 'how r u..?', 'SMS', NULL, '', '', 'USR1513438024801', '2018-02-03 12:40:02', NULL, NULL, b'1'),
	(20, 'hiii da suresh...', 'Notifications', NULL, '', '', 'USR1513438024801', '2018-02-03 16:30:11', NULL, NULL, b'1'),
	(21, '<pre class=" language-markup" style="font-family: Consolas, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; padding: 1em; margin-bottom: 20px; line-height: 1.5; word-break: normal; word-wrap: normal; color: black; background-position: initial; background-color: rgb(247, 247, 249); border-color: rgb(209, 209, 232); border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; text-shadow: white 0px 1px; tab-size: 4; hyphens: none;"><code class=" language-markup" style="font-family: Consolas, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace; color: black; background-image: none; background-position: initial; white-space: pre; text-shadow: white 0px 1px; word-spacing: normal; word-break: normal; word-wrap: normal; line-height: 1.5; tab-size: 4; hyphens: none;"><span class="token prolog" style="color: slategray;">&lt;?xml version="1.0" encoding="UTF-8" ?&gt;</span>\n<span class="token doctype" style="color: slategray;">&lt;!DOCTYPE log4j:configuration SYSTEM "log4j.dtd"&gt;</span>\n<span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span><span class="token namespace" style="opacity: 0.7;">log4j:</span>configuration</span> <span class="token attr-name" style="color: rgb(102, 153, 0);">debug</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>true<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span>\n	<span class="token attr-name" style="color: rgb(102, 153, 0);"><span class="token namespace" style="opacity: 0.7;">xmlns:</span>log4j</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">\'</span>http://jakarta.apache.org/log4j/<span class="token punctuation" style="color: rgb(153, 153, 153);">\'</span></span><span class="token punctuation" style="color: rgb(153, 153, 153);">&gt;</span></span>\n\n	<span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span>appender</span> <span class="token attr-name" style="color: rgb(102, 153, 0);">name</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>file<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token attr-name" style="color: rgb(102, 153, 0);">class</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>org.apache.log4j.RollingFileAppender<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span><span class="token punctuation" style="color: rgb(153, 153, 153);">&gt;</span></span>\n	   <span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span>param</span> <span class="token attr-name" style="color: rgb(102, 153, 0);">name</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>append<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token attr-name" style="color: rgb(102, 153, 0);">value</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 15\r\n\r\n\r\n3);">"</span>false<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token punctuation" style="color: rgb(153, 153, 153);">/&gt;</span></span>\n	   <span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span>param</span> <span class="token attr-name" style="color: rgb(102, 153, 0);">name</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>maxFileSize<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token attr-name" style="color: rgb(102, 153, 0);">value</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>10KB<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token punctuation" style="color: rgb(153, 153, 153);">/&gt;</span></span>\n	   <span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span>param</span> <span class="token attr-name" style="color: rgb(102, 153, 0);">name</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>maxBackupIndex<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token attr-name" style="color: rgb(102, 153, 0);">value</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>5<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token punctuation" style="color: rgb(153, 153, 153);">/&gt;</span></span>\n	   <span class="token comment" spellcheck="true" style="color: slategray;">&lt;!-- For Tomcat --&gt;</span>\n	   <span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span>param</span> <span class="token attr-name" style="color: rgb(102, 153, 0);">name</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>file<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token attr-name" style="color: rgb(102, 153, 0);">value</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>${catalina.home}/logs/myStruts1App.log<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token punctuation" style="color: rgb(153, 153, 153);">/&gt;</span></span>\n	   <span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span>layout</span> <span class="token attr-name" style="color: rgb(102, 153, 0);">class</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>org.apache.log4j.PatternLayout<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span><span class="token punctuation" style="color: rgb(153, 153, 153);">&gt;</span></span>\n		<span class="token tag" style="co\r\nlor:\r\n rgb\r\n(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span>param</span> <span class="token attr-name" style="color: rgb(102, 153, 0);">name</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>ConversionPattern<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span>\n			<span class="token attr-name" style="color: rgb(102, 153, 0);">value</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>%d{yyyy-MM-dd HH:mm:ss} %-5p %c{1}:%L - %m%n<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token punctuation" style="color: rgb(153, 153, 153);">/&gt;</span></span>\n	   <span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;/</span>layout</span><span class="token punctuation" style="color: rgb(153, 153, 153);">&gt;</span></span>\n	<span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;/</span>appender</span><span class="token punctuation" style="color: rgb(153, 153, 153);">&gt;</span></span>\n\n	<span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span>root</span><span class="token punctuation" style="color: rgb(153, 153, 153);">&gt;</span></span>\n		<span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span>level</span> <span class="token attr-name" style="color: rgb(102, 153, 0);">value</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>ERROR<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token punctuation" style="color: rgb(153, 153, 153);">/&gt;</span></span>\n		<span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;</span>appender-ref</span> <span class="token attr-name" style="color: rgb(102, 153, 0);">ref</span><span class="token attr-value" style="color: rgb(0, 119, 170);"><span class="token punctuation" style="color: rgb(153, 153, 153);">=</span><span class="token punctuation" style="color: rgb(153, 153, 153);">"</span>file<span class="token punctuation" style="color: rgb(153, 153, 153);">"</span></span> <span class="token punctuation" style="color: rgb(153, 153, 153);">/&gt;</span></span>\n	<span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;/</span>root</span><span class="token punctuation" style="color: rgb(153, 153, 153);">&gt;</span></span>\n\n<span class="token tag" style="color: rgb(153, 0, 85);"><span class="token tag"><span class="token punctuation" style="color: rgb(153, 153, 153);">&lt;/</span><span class="token namespace" style="opacity: 0.7;">log4j:</span>configuration</span><span class="token punctuation" style="color: rgb(153, 153, 153);">&gt;</span></span></code></pre>', 'Notifications', NULL, '09 February 2018 - 11:35', '21 February 2018 - 06:35', 'USR1513438024801', '2018-02-12 17:37:56', NULL, NULL, b'1'),
	(22, '', 'Banner', NULL, '01 February 2018 - 10:15', '06 February 2018 - 10:45', 'USR1513438024801', '2018-02-15 15:04:50', NULL, NULL, b'1');
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
	('AST00002', 'Test2', NULL, 'Dedicated', NULL, NULL, b'0', b'0', 0, b'0', 'PRD000001', 'CS000001', 'CHP000002', 'Default', 'PRDADM0001', '2018-03-11 17:34:15', NULL, NULL, b'1'),
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
  `uploadResourceHandler` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`answerId`),
  KEY `FK_assessmentanswer_assessmentquestion` (`questionId`),
  CONSTRAINT `FK_assessmentanswer_assessmentquestion` FOREIGN KEY (`questionId`) REFERENCES `assessmentquestion` (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.assessmentanswer: ~4 rows (approximately)
DELETE FROM `assessmentanswer`;
/*!40000 ALTER TABLE `assessmentanswer` DISABLE KEYS */;
INSERT INTO `assessmentanswer` (`answerId`, `questionId`, `textAnswer`, `patternMode`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileLastModifiedDate`, `uploadFileName`, `uploadFileNameForDisplay`, `uploadFileSize`, `uploadDocumentForType`, `uploadResourceHandler`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	('ANS0001', 'QST0001', 'Ananth1', 'Option', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2018-03-29 12:01:44', NULL, 'SuperAdmin', NULL, b'1'),
	('ANS0002', 'QST0001', 'Ananth2', 'Option', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2018-03-29 12:01:45', NULL, 'SuperAdmin', NULL, b'1'),
	('ANS0003', 'QST0001', 'Ananth3', 'Option', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2018-03-29 12:01:46', NULL, 'SuperAdmin', NULL, b'1'),
	('ANS0004', 'QST0001', 'Ananth4', 'Option', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2018-03-29 12:01:47', NULL, 'SuperAdmin', NULL, b'1');
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
  `uploadResourceHandler` varchar(50) DEFAULT NULL,
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
INSERT INTO `assessmentexplanation` (`explanationId`, `questionId`, `explanation`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileLastModifiedDate`, `uploadFileName`, `uploadFileNameForDisplay`, `uploadFileSize`, `uploadDocumentForType`, `uploadResourceHandler`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	('EXP0001', 'QST0001', 'He is an Idiot', '2018-03-11 21:01:02', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2018-03-29 15:34:30', NULL, 'SuperAdmin', NULL, b'1');
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

-- Dumping data for table education.assessmentpatterninfo: ~3 rows (approximately)
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
  `textQuestion` longtext NOT NULL,
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
  `uploadFileNameForDisplay` varchar(50) DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadFileName` varchar(50) DEFAULT NULL,
  `uploadFileSize` bigint(20) NOT NULL DEFAULT '0',
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `uploadResourceHandler` varchar(50) DEFAULT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`questionId`),
  KEY `FK_assessmentquestion_assessment` (`assessmentId`),
  CONSTRAINT `FK_assessmentquestion_assessment` FOREIGN KEY (`assessmentId`) REFERENCES `assessment` (`assessmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.assessmentquestion: ~1,233 rows (approximately)
DELETE FROM `assessmentquestion`;
/*!40000 ALTER TABLE `assessmentquestion` DISABLE KEYS */;
INSERT INTO `assessmentquestion` (`questionId`, `assessmentId`, `textQuestion`, `correctAnswer1`, `correctAnswer2`, `correctAnswer3`, `correctAnswer4`, `answerMode`, `markPerQuestion`, `negativeMarkPerQuestion`, `askedYears`, `weightage`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileNameForDisplay`, `uploadFileLastModifiedDate`, `uploadFileName`, `uploadFileSize`, `uploadDocumentForType`, `uploadResourceHandler`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	('ASTQSN1523440123773', 'AST00001', '<p><img src="data:image/png;base64,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" data-filename="newlog.png" style="width: 189px;">png<br></p>', 'on', 'false', 'false', 'false', b'0', 1.0, 0.0, NULL, 'Low', NULL, NULL, NULL, NULL, NULL, 0, 'Aptitude', 'Default', '2018-04-11 15:18:44', NULL, 'USR1513438024801', NULL, b'1'),
	('ASTQSN1523440211442', 'AST00001', '<p><img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/4RCERXhpZgAATU0AKgAAAAgABAE7AAIAAAAGAAAISodpAAQAAAABAAAIUJydAAEAAAAMAAAQcOocAAcAAAgMAAAAPgAAAAAc6gAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFNlbHZhAAAB6hwABwAACAwAAAhiAAAAABzqAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABTAGUAbAB2AGEAAAD/4QpeaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49J++7vycgaWQ9J1c1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCc/Pg0KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyI+PHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj48cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0idXVpZDpmYWY1YmRkNS1iYTNkLTExZGEtYWQzMS1kMzNkNzUxODJmMWIiIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIvPjxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSJ1dWlkOmZhZjViZGQ1LWJhM2QtMTFkYS1hZDMxLWQzM2Q3NTE4MmYxYiIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIj48ZGM6Y3JlYXRvcj48cmRmOlNlcSB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPjxyZGY6bGk+U2VsdmE8L3JkZjpsaT48L3JkZjpTZXE+DQoJCQk8L2RjOmNyZWF0b3I+PC9yZGY6RGVzY3JpcHRpb24+PC9yZGY6UkRGPjwveDp4bXBtZXRhPg0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8P3hwYWNrZXQgZW5kPSd3Jz8+/9sAQwAHBQUGBQQHBgUGCAcHCAoRCwoJCQoVDxAMERgVGhkYFRgXGx4nIRsdJR0XGCIuIiUoKSssKxogLzMvKjInKisq/9sAQwEHCAgKCQoUCwsUKhwYHCoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq/8AAEQgAvgC9AwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0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" data-filename="newlog.jpg" style="width: 189px;">jpg<br></p>', 'on', 'false', 'false', 'false', b'0', 1.0, 0.0, NULL, 'Low', NULL, NULL, NULL, NULL, NULL, 0, 'Aptitude', 'Default', '2018-04-11 15:20:11', NULL, 'USR1513438024801', NULL, b'1'),
	('QST0001', 'AST00001', 'What is your name01?', 'ANS0001', 'ANS0002', NULL, NULL, b'1', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0002', 'AST00001', 'What is your name02?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0003', 'AST00001', 'What is your name03?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0004', 'AST00001', 'What is your name04?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0005', 'AST00001', 'What is your name05?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0006', 'AST00001', 'What is your name06?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0007', 'AST00001', 'What is your name07?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0008', 'AST00001', 'What is your name08?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0009', 'AST00001', 'What is your name09?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0010', 'AST00001', 'What is your name10?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0011', 'AST00001', 'What is your name11?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0012', 'AST00001', 'What is your name12?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0013', 'AST00001', 'What is your name13?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0014', 'AST00001', 'What is your name14?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0015', 'AST00001', 'What is your name15?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0016', 'AST00001', 'What is your name16?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0017', 'AST00001', 'What is your name17?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0018', 'AST00001', 'What is your name18?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0019', 'AST00001', 'What is your name19?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0020', 'AST00001', 'What is your name20?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0021', 'AST00001', 'What is your name21?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0022', 'AST00001', 'What is your name22?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0023', 'AST00001', 'What is your name23?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0024', 'AST00001', 'What is your name24?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0025', 'AST00001', 'What is your name25?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0026', 'AST00001', 'What is your name26?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0027', 'AST00001', 'What is your name27?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0028', 'AST00001', 'What is your name28?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0029', 'AST00001', 'What is your name29?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0030', 'AST00001', 'What is your name30?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0031', 'AST00002', 'What is your name31?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0032', 'AST00002', 'What is your name32?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0033', 'AST00002', 'What is your name33?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0034', 'AST00002', 'What is your name34?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0035', 'AST00002', 'What is your name35?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0036', 'AST00002', 'What is your name36?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0037', 'AST00002', 'What is your name37?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0038', 'AST00002', 'What is your name38?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0039', 'AST00002', 'What is your name39?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0040', 'AST00002', 'What is your name40?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0041', 'AST00002', 'What is your name41?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0042', 'AST00002', 'What is your name42?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0043', 'AST00002', 'What is your name43?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0044', 'AST00002', 'What is your name44?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0045', 'AST00002', 'What is your name45?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0046', 'AST00002', 'What is your name46?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0047', 'AST00002', 'What is your name47?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0048', 'AST00002', 'What is your name48?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0049', 'AST00002', 'What is your name49?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0050', 'AST00002', 'What is your name50?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0051', 'AST00002', 'What is your name51?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0052', 'AST00002', 'What is your name52?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0053', 'AST00002', 'What is your name53?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0054', 'AST00002', 'What is your name54?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0055', 'AST00002', 'What is your name55?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0056', 'AST00002', 'What is your name56?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0057', 'AST00002', 'What is your name57?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0058', 'AST00002', 'What is your name58?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0059', 'AST00002', 'What is your name59?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0060', 'AST00002', 'What is your name60?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0061', 'AST00003', 'What is your name61?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0062', 'AST00003', 'What is your name62?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0063', 'AST00003', 'What is your name63?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0064', 'AST00003', 'What is your name64?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0065', 'AST00003', 'What is your name65?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0066', 'AST00003', 'What is your name66?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0067', 'AST00003', 'What is your name67?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0068', 'AST00003', 'What is your name68?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0069', 'AST00003', 'What is your name69?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0070', 'AST00003', 'What is your name70?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0071', 'AST00003', 'What is your name71?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0072', 'AST00003', 'What is your name72?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0073', 'AST00003', 'What is your name73?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0074', 'AST00003', 'What is your name74?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0075', 'AST00003', 'What is your name75?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0076', 'AST00003', 'What is your name76?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0077', 'AST00003', 'What is your name77?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0078', 'AST00003', 'What is your name78?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0079', 'AST00003', 'What is your name79?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0080', 'AST00003', 'What is your name80?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0081', 'AST00003', 'What is your name81?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0082', 'AST00003', 'What is your name82?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0083', 'AST00003', 'What is your name83?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0084', 'AST00003', 'What is your name84?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0085', 'AST00003', 'What is your name85?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0086', 'AST00003', 'What is your name86?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0087', 'AST00003', 'What is your name87?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0088', 'AST00003', 'What is your name88?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0089', 'AST00003', 'What is your name89?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0090', 'AST00003', 'What is your name90?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0091', 'AST00003', 'What is your name91?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0092', 'AST00003', 'What is your name92?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0093', 'AST00003', 'What is your name93?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0094', 'AST00003', 'What is your name94?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0095', 'AST00003', 'What is your name95?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Medium', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0096', 'AST00003', 'What is your name96?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0097', 'AST00003', 'What is your name97?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'Low', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0098', 'AST00003', 'What is your name98?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0099', 'AST00003', 'What is your name99?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1'),
	('QST0100', 'AST00003', 'What is your name100?', 'ANS0001', NULL, NULL, NULL, b'0', 1.0, 1.0, NULL, 'High', NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2018-03-28 11:42:06', NULL, 'SuperAdmin', NULL, b'1');
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

-- Dumping data for table education.authkeygen: ~18 rows (approximately)
DELETE FROM `authkeygen`;
/*!40000 ALTER TABLE `authkeygen` DISABLE KEYS */;
INSERT INTO `authkeygen` (`serialKey`, `usEmployeeId`, `schemeId`, `serialKeyStatus`, `sellingPrice`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	('3JFHY7L6U0U6ACG', 'USR1513438024801', 'PLN000002', 'Not Sold', 999.00, 'USR1513438024801', '2018-03-26 03:36:14', NULL, NULL, b'1'),
	('4NLCJNVX9Z5HXNO', 'USR1513438024801', 'PLN000002', 'Not Sold', 1000.00, 'USR1513438024801', '2018-03-26 03:40:11', NULL, NULL, b'1'),
	('906X62M8C4YR8HX', 'USR1513438024801', 'PLN000001', 'Not Sold', 999.00, 'USR1513438024801', '2018-03-04 22:09:06', NULL, NULL, b'1'),
	('AGIIYPR8RK9MIJ9', 'USR1513438024801', 'PLN000001', 'Not Sold', 222.00, 'USR1513438024801', '2018-03-04 22:10:54', NULL, NULL, b'1'),
	('B1BB8LGXOVX6FBZ', 'USR1513438024801', 'PLN000001', 'Not Sold', 5667.00, 'USR1513438024801', '2018-03-18 13:23:58', NULL, NULL, b'1'),
	('D9BPQV62RY0HEB2', 'USR1513438024801', 'PLN000002', 'Not Sold', 999.00, 'USR1513438024801', '2018-03-26 03:36:14', NULL, NULL, b'1'),
	('E8RWUGWKH2E3A19', 'USR1513438024801', 'PLN000002', 'Not Sold', 1000.00, 'USR1513438024801', '2018-03-26 03:40:11', NULL, NULL, b'1'),
	('GW6AYT1RRKTE03E', 'USR1513438024801', 'PLN000001', 'Not Sold', 5667.00, 'USR1513438024801', '2018-03-18 13:23:58', NULL, NULL, b'1'),
	('LLNLCNJ5R16OUCW', 'USR1513438024801', 'PLN000002', 'Not Sold', 1000.00, 'USR1513438024801', '2018-03-26 03:40:11', NULL, NULL, b'1'),
	('O3KVCZQ22HFLEXE', 'USR1513438024801', 'PLN000004', 'Not Sold', 999.00, 'USR1513438024801', '2018-04-04 18:32:48', NULL, NULL, b'1'),
	('R26X1L2MK2HS2E6', 'USR1513438024801', 'PLN000004', 'Not Sold', 999.00, 'USR1513438024801', '2018-04-04 18:32:48', NULL, NULL, b'1'),
	('R8IE8D7RMKDLN18', 'USR1513438024801', 'PLN000001', 'Not Sold', 222.00, 'USR1513438024801', '2018-03-04 22:10:59', NULL, NULL, b'1'),
	('RD39FL3O25FJNK4', 'USR1513438024801', 'PLN000003', 'Not Sold', 2000.00, 'USR1513438024801', '2018-04-04 18:33:21', NULL, NULL, b'1'),
	('U6UWP85PV7QJHNT', 'USR1513438024801', 'PLN000001', 'Not Sold', 999.00, 'USR1513438024801', '2018-03-04 22:09:06', NULL, NULL, b'1'),
	('XD6FWZULDRHAOGH', 'USR1513438024801', 'PLN000003', 'Not Sold', 2000.00, 'USR1513438024801', '2018-04-04 18:33:21', NULL, NULL, b'1'),
	('YTZXUYW7R9J18VM', 'USR1513438024801', 'PLN000001', 'Not Sold', 5667.00, 'USR1513438024801', '2018-03-18 13:23:58', NULL, NULL, b'1'),
	('Z0BZVRATFLK958U', 'USR1513438024801', 'PLN000001', 'Not Sold', 1000.00, 'USR1513438024801', '2018-03-26 03:38:38', NULL, NULL, b'1'),
	('Z2EC1IPVJEAVLH7', 'USR1513438024801', 'PLN000001', 'Not Sold', 1000.00, 'USR1513438024801', '2018-03-26 03:38:38', NULL, NULL, b'1');
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
  `uploadResourceHandler` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table education.chapterattachments: ~2 rows (approximately)
DELETE FROM `chapterattachments`;
/*!40000 ALTER TABLE `chapterattachments` DISABLE KEYS */;
INSERT INTO `chapterattachments` (`autoId`, `chapterId`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileLastModifiedDate`, `uploadFileName`, `uploadFileNameForDisplay`, `uploadFileSize`, `uploadDocumentForType`, `uploadResourceHandler`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	(15, 'CHP000001', NULL, 'CHP000001\\EBooks', NULL, 'Java-Collections-Framework.pdf', NULL, 0, 'EBooks', 'EBooks', '2018-03-31 14:49:48', NULL, 'USR1513438024801', NULL, b'1'),
	(16, 'CHP000001', NULL, 'CHP000001\\EBooks', NULL, 'Keyboard_shortcuts_(3.0).pdf', NULL, 0, 'EBooks', 'EBooks', '2018-03-31 14:49:51', NULL, 'USR1513438024801', NULL, b'1');
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
	('CHP000000', 'All Chapters', 'CS000001', b'0', 'SuperAdmin', '2018-04-04 12:42:57', NULL, NULL, b'1'),
	('CHP000001', 'Measurements', 'CS000001', b'0', 'SuperAdmin', '2018-04-04 12:42:59', NULL, NULL, b'1'),
	('CHP000002', 'Algebra', 'CS000001', b'0', 'SuperAdmin', '2018-04-04 12:43:00', NULL, NULL, b'1'),
	('CHP000003', 'Matrices', 'CS000001', b'0', 'SuperAdmin', '2018-04-04 12:43:01', NULL, NULL, b'1');
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

-- Dumping data for table education.consumerassessment: ~0 rows (approximately)
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

-- Dumping data for table education.consumerorganisation: ~0 rows (approximately)
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
  `uploadResourceHandler` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_courseattachments_courses` (`courseId`),
  CONSTRAINT `FK_courseattachments_courses` FOREIGN KEY (`courseId`) REFERENCES `courses` (`courseId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table education.courseattachments: ~3 rows (approximately)
DELETE FROM `courseattachments`;
/*!40000 ALTER TABLE `courseattachments` DISABLE KEYS */;
INSERT INTO `courseattachments` (`autoId`, `courseId`, `attachmentDesc`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileLastModifiedDate`, `uploadFileName`, `uploadFileNameForDisplay`, `uploadFileSize`, `uploadDocumentForType`, `uploadResourceHandler`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	(1, 'CS000001', NULL, NULL, 'CS000001\\EBooks', NULL, 'Keyboard_shortcuts_(3.0).pdf', NULL, 0, 'EBooks', NULL, '2018-03-31 14:49:07', NULL, 'USR1513438024801', NULL, b'1'),
	(2, 'CS000001', NULL, NULL, 'CS000001\\EBooks', NULL, 'Keyboard_shortcuts_(3.0).pdf', NULL, 0, 'EBooks', NULL, '2018-03-31 14:49:07', NULL, 'USR1513438024801', NULL, b'1'),
	(3, 'CS000001', NULL, NULL, 'CS000001\\EBooks', NULL, 'Java-Collections-Framework.pdf', NULL, 0, 'EBooks', NULL, '2018-03-31 14:49:07', NULL, 'USR1513438024801', NULL, b'1');
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
  `elementId` varchar(50) NOT NULL,
  `displayName` varchar(200) NOT NULL,
  `displayProperty` varchar(200) DEFAULT NULL,
  `displayPropertyAlias` varchar(50) NOT NULL,
  `displayPropertyGetter` varchar(200) DEFAULT NULL,
  `render` longtext,
  `columnType` varchar(50) NOT NULL,
  `dataType` varchar(50) NOT NULL,
  `isEmbeddedClass` bit(1) NOT NULL DEFAULT b'0',
  `transformerBeanName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`elementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table education.layoutelements: ~144 rows (approximately)
DELETE FROM `layoutelements`;
/*!40000 ALTER TABLE `layoutelements` DISABLE KEYS */;
INSERT INTO `layoutelements` (`elementId`, `displayName`, `displayProperty`, `displayPropertyAlias`, `displayPropertyGetter`, `render`, `columnType`, `dataType`, `isEmbeddedClass`, `transformerBeanName`) VALUES
	('AAN_AutoId', '', 'autoId', 'AN', NULL, NULL, 'String', 'String', b'0', NULL),
	('AAN_Country', '', 'createdUser.country.countryName', 'AN', NULL, NULL, 'String', 'String', b'0', NULL),
	('AAN_CreatedCountry', '', 'createdUser.country.country', 'AN', NULL, NULL, 'String', 'String', b'0', NULL),
	('AAN_CreatedDate', 'Created Date', 'createdDate', 'AN', 'getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('AAN_CreatedFirstName', 'Created By', 'createdUser.usUserName', 'AN', NULL, NULL, 'String', 'String', b'0', NULL),
	('AAN_CreatedLastName', '', 'createdUser.usLastName', 'AN', NULL, NULL, 'Sting', 'String', b'0', NULL),
	('AAN_ExpiryDate', 'Expiry Date', 'expiryDate', 'AN', NULL, NULL, 'String', 'String', b'0', NULL),
	('AAN_Message', 'Message', 'message', 'AN', NULL, NULL, 'String', 'String', b'0', NULL),
	('AAN_ScheduledDate', 'Scheduled Date', 'scheduledDate', 'AN', NULL, NULL, 'String', 'String', b'0', NULL),
	('AAN_Type', 'Type', 'messageType', 'AN', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKCountry', ' ', 'createdUser.country.countryName', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKCreatedCountry', ' ', 'createdUser.country.country', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKCreatedDate', 'Created Date', 'createdDate', 'AKG', 'getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('AKCreatedFirstName', 'Created By', 'createdUser.usUserName', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKCreatedLastName', '', 'createdUser.usLastName', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKFirstName', 'Assigned To', 'users.usUserName', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKKeyStatus', 'Key Status', 'serialKeyStatus', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKLastName', '', 'users.usLastName', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKSchemeCost', 'Scheme Cost', 'scheme.schemeCost', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKSchemeName', 'Scheme', 'scheme.schemeName', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKSellingPrice', 'Selling', 'sellingPrice', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKSerialKey', 'Serial Key', 'serialKey', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('AKSerialKeyChkBox', '<center><input type="checkbox" class="editor-active" name="serialKeyColumnHeadId" id="serialKeyColumnHeadId" value="" onchange="onSelectAllCheckBox();"></input></center>', 'serialKey', 'AKG', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASSQUS_Country', 'Country', 'assessment.createdUser.country.countryName', 'AQ', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASSQUS_CreatedBy', 'Created By', 'createdUser.usUserName', 'AQ', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASSQUS_CreatedCountry', '', 'assessment.createdUser.country.country', 'AQ', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASSQUS_CreatedDate', 'Created Date', 'assessment.createdDate', 'AQ', 'getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('ASSQUS_ExamName', 'Assessment Name', 'assessment.name', 'AQ', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASSQUS_LastName', '', 'createdUser.usLastName', 'AQ', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASSQUS_QuestionID', 'QuestionId', 'questionId', 'AQ', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASSQUS_Status', 'Status', 'status', 'AQ', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_ChapterName', 'Chapter', 'chapter.chapterName', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_Country', 'Country', 'createdUser.country.countryName', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_CourseName', 'Subject', 'course.courseName', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_CreatedBy', 'Created By', 'createdUser.usUserName', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_CreatedCountry', '', 'createdUser.country.country', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_CreatedDate', 'Created Date ', 'createdDate', 'A', 'getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('ASS_Delete', '', '', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_GroupDescription', 'Description', 'course.courseGroup.courseDesc', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_Id', '', 'assessmentId', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_LastName', '', 'createdUser.usLastName', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_Name', 'Assessment Name', 'name', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_Public', 'Public', 'info.broadCast', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('ASS_Status', 'Status', 'status', 'A', NULL, NULL, 'String', 'String', b'0', NULL),
	('CHATAutoId', 'autoId', 'autoId', 'CHA', NULL, NULL, 'Integer', 'String', b'0', NULL),
	('CHATCountry', 'Country', 'chapters.createdUser.country.countryName', 'CHA', NULL, NULL, 'String', 'string', b'0', NULL),
	('CHATCourseDesc', 'Group', 'chapters.course.courseGroup.courseDesc', 'CHA', NULL, NULL, 'String', 'String', b'0', NULL),
	('CHATCourseName', 'Course Name', 'chapters.course.courseName', 'CHA', NULL, NULL, 'String', 'String', b'0', NULL),
	('CHATCreatedCountry', '', 'chapters.createdUser.country.country', 'CHA', NULL, NULL, 'String', 'string', b'0', NULL),
	('CHATCreatedDate', 'Created Date', 'chapters.createdDate', 'CHA', 'getCreatedDateByTimeZone()', NULL, 'String', 'string', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('CHATCreatedFirstName', 'Created By', 'chapters.createdUser.usUserName', 'CHA', NULL, NULL, 'String', 'string', b'0', NULL),
	('CHATCreatedLastName', '', 'chapters.createdUser.usLastName', 'CHA', NULL, NULL, 'String', 'string', b'0', NULL),
	('CHATStatus', 'Status', 'status', 'CHA', NULL, NULL, 'String', 'String', b'0', NULL),
	('CHATView', 'View', 'uploadFileName', 'CHA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Consumer_Country', 'country', 'users.createdUser.country.countryName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Consumer_CreatedCountry', 'createdCountry', 'users.createdUser.country.country', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Consumer_CreatedDate', 'Created Date', 'users.createdDate', 'UA', 'getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('Consumer_CreatedFirstName', 'createdFirstName', 'users.createdUser.usUserName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Consumer_CreatedLastName', 'createdLastName', 'users.createdUser.usLastName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Consumer_Mobile', 'Mobile', 'mobileNo', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Consumer_Status', 'status', 'users.status', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Consumer_UserFirstName', 'userFirstName', 'users.usUserName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Consumer_UserId', 'userId', 'users.usUserId', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Consumer_UserLastName', 'userLastName', 'users.usLastName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('CRATAutoId', 'autoId', 'autoId', 'CRA', NULL, NULL, 'Integer', 'String', b'0', NULL),
	('CRATCountry', 'Country', 'courses.createdUser.country.countryName', 'CRA', NULL, NULL, 'String', 'string', b'0', NULL),
	('CRATCourseDesc', 'Group', 'courses.courseGroup.courseDesc', 'CRA', NULL, NULL, 'String', 'String', b'0', NULL),
	('CRATCourseName', 'Course Name', 'courses.courseName', 'CRA', 'NULL', NULL, 'String', 'String', b'0', NULL),
	('CRATCreatedCountry', '', 'courses.createdUser.country.country', 'CRA', 'NULL', NULL, 'String', 'String', b'0', NULL),
	('CRATCreatedDate', 'Created Date', 'courses.createdDate', 'CRA', 'getCreatedDateByTimeZone()', NULL, 'String', 'string', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('CRATCreatedFirstName', 'Created By', 'courses.createdUser.usUserName', 'CRA', 'NULL', NULL, 'String', 'string', b'0', NULL),
	('CRATCreatedLastName', '', 'courses.createdUser.usLastName', 'CRA', 'NULL', NULL, 'String', 'string', b'0', NULL),
	('CRATStatus', 'Status', 'status', 'CRA', 'NULL', NULL, 'String', 'String', b'0', NULL),
	('CRATView', 'View', 'uploadFileName', 'CRA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Employee_Country', 'country', 'users.createdUser.country.countryName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Employee_CreatedCountry', 'createdCountry', 'users.createdUser.country.country', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Employee_CreatedDate', 'Created Date', 'users.createdDate', 'UA', 'getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('Employee_CreatedFirstName', 'createdFirstName', 'users.createdUser.usUserName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Employee_CreatedLastName', 'createdLastName', 'users.createdUser.usLastName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Employee_Mobile', 'Mobile', 'mobileNo', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Employee_Status', 'status', 'users.status', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Employee_UserFirstName', 'userFirstName', 'users.usUserName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Employee_UserId', 'userId', 'users.usUserId', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Employee_UserLastName', 'userLastName', 'users.usLastName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('EXPAND', '', '', 'UA', '', NULL, 'String', 'String', b'0', NULL),
	('ORGAdd1', '', 'addressLine1', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGAdd2', '', 'addressLine2', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGAdd3', '', 'addressLine3', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGCity', 'City', 'city', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGCountry', 'Country', 'country.countryName', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGCreatedCountry', ' ', 'organisation.createdUser.country.country', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGCreatedDate', 'Created Date', 'organisation.createdDate', 'OA', 'getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('ORGCreatedFirstName', 'Created By', 'organisation.createdUser.usUserName', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGCreatedLastName', '', 'organisation.createdUser.usLastName', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGEmail', 'Email', 'email', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGId', '', 'organisation.organisationId', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGImage', 'View', 'uploadFileVirtualURL', 'OA', NULL, NULL, 'String', 'String', b'0', 'org.hbs.util.transformer.AttachmentTransformer'),
	('ORGLandmark', 'Landmark', 'landmark', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGMobile', 'Mobile', 'mobileNo', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGName', 'Name', 'organisation.organisationName', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGPhone', 'Phone', 'primaryPhoneNo', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGPincode', 'Pincode', 'pincode', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGState', 'State', 'state.state', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGStatus', 'Status', 'status', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('ORGWebsite', 'Website', 'website', 'OA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Producer_Country', 'country', 'users.createdUser.country.countryName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Producer_CreatedCountry', 'createdCountry', 'users.createdUser.country.country', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Producer_CreatedDate', 'Created Date', 'users.createdDate', 'UA', 'getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('Producer_CreatedFirstName', 'createdFirstName', 'users.createdUser.usUserName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Producer_CreatedLastName', 'createdLastName', 'users.createdUser.usLastName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Producer_Mobile', 'Mobile', 'mobileNo', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Producer_Status', 'status', 'users.status', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Producer_UserFirstName', 'userFirstName', 'users.usUserName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Producer_UserId', 'userId', 'users.usUserId', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('Producer_UserLastName', 'userLastName', 'users.usLastName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('U01UserName', 'Name', 'usUserName', 'UA', '', NULL, 'String', 'String', b'0', NULL),
	('U02LastName', 'LastName', 'usUserId', 'UA', '', NULL, 'String', 'String', b'0', NULL),
	('U03Mobile', 'Mobile No', 'mobileNo', 'UA', 'getMobileNo()', NULL, 'String', 'String', b'0', NULL),
	('U04Email', 'Email', 'email', 'UA', 'getEmail()', NULL, 'String', 'String', b'0', NULL),
	('U05Status', 'User Status', 'usUserStatus', 'UA', 'getUsers().getUsUserStatus()', NULL, 'String', 'String', b'0', NULL),
	('U06CreatedBy', 'Created By', 'createdUser.usUserName', 'UA', 'getUsers().getCreatedUser().getUsUserName()', NULL, 'String', 'String', b'0', NULL),
	('U06DOJ', 'Date of Join', 'usDateOfJoin', 'UA', 'getUsers().getUsDateOfJoin()', NULL, 'String', 'String', b'0', NULL),
	('U07CreatedByLast', ' ', 'createdUser.usLastName', 'UA', 'getUsers().getCreatedUser().getUsLastName()', NULL, 'String', 'String', b'0', NULL),
	('U08CreatedDate', 'Created Date', 'createdDateByTimeZone', 'UA', 'getUsers().getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', NULL),
	('U09Status', 'Status', 'status', 'UA', 'getUsers().getStatus()', NULL, 'String', 'String', b'0', NULL),
	('U10Country', 'Country', 'country.country', 'UA', 'getCountry().getCountryName()', NULL, 'String', 'String', b'0', NULL),
	('U11State', 'State', 'state.state', 'UA', 'getState().getState()', NULL, 'String', 'String', b'0', NULL),
	('U12IsAdmin', 'IsAdmin', '', 'UA', 'getUsers().isAdmin()', NULL, 'String', 'String', b'0', NULL),
	('U13Organisation', 'Organistation', '', 'UA', 'getUsers().getOrganisation().getOrganisationName()', NULL, 'String', 'String', b'0', NULL),
	('UA0001', 'Action', 'action', '', 'getAction()', NULL, 'String', 'String', b'0', NULL),
	('UA0002', 'Created By', 'createdUser.usUserName', '', 'getCreatedUser().getUsUserName()', NULL, 'String', 'String', b'0', NULL),
	('UA0003', 'Created Date', 'createdDateByTimeZone', '', 'getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', NULL),
	('UL0001', 'Login Time', 'ulUserLoginTime', '', 'getUlUserLoginTime()', NULL, 'String', 'String', b'0', NULL),
	('UL0002', 'Logout Time', 'ulUserLogoutTime', '', 'getUlUserLogoutTime()', NULL, 'String', 'String', b'0', NULL),
	('UL0003', 'IP Address', 'ulIpaddress', '', 'getUlIpaddress()', NULL, 'String', 'String', b'0', NULL),
	('USRAdd1', 'Address', 'addressLine1', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRAdd2', '', 'addressLine2', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRAdd3', '', 'addressLine3', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRCity', 'City', 'city', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRCountry', 'Country', 'country.countryName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRCreatedCountry', ' ', 'createdUser.country.country', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRCreatedDate', 'Created Date', 'createdDate', 'UA', 'getCreatedDateByTimeZone()', NULL, 'String', 'String', b'0', 'org.hbs.util.transformer.DateTimeTransformer'),
	('USRCreatedFirstName', 'Created By', 'createdUser.usUserName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRCreatedLastName', '', 'createdUser.usLastName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USREmail', 'Email', 'email', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRId', '', 'usEmployeeId', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRLandmark', 'Landmark', 'landmark', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRLastName', 'Name', 'usLastName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRMobile', 'Mobile', 'mobileNo', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRName', 'Name', 'usUserName', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRPhone', 'Phone', 'primaryPhoneNo', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRPincode', 'Pincode', 'pincode', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRState', 'State', 'state.state', 'UA', NULL, NULL, 'String', 'String', b'0', NULL),
	('USRStatus', 'Status', 'status', 'UA', NULL, NULL, 'String', 'String', b'0', NULL);
/*!40000 ALTER TABLE `layoutelements` ENABLE KEYS */;


-- Dumping structure for table education.layouts
CREATE TABLE IF NOT EXISTS `layouts` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `layoutName` varchar(50) NOT NULL,
  `layoutSubName` varchar(50) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `elementId` varchar(50) DEFAULT NULL,
  `render` varchar(1500) DEFAULT NULL,
  `cssClassName` varchar(100) DEFAULT NULL,
  `defaultContent` text,
  `displayScriptColumn` varchar(50) DEFAULT NULL,
  `displayName` varchar(200) DEFAULT NULL,
  `displayWidth` varchar(10) DEFAULT NULL,
  `orderable` bit(1) NOT NULL DEFAULT b'1',
  `searchable` bit(1) NOT NULL DEFAULT b'1',
  `visible` bit(1) NOT NULL DEFAULT b'1',
  `searchName` varchar(50) DEFAULT NULL,
  `searchOrder` int(11) DEFAULT NULL,
  `baseBeanNameWithFullPackage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- Dumping data for table education.layouts: ~115 rows (approximately)
DELETE FROM `layouts`;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` (`autoId`, `layoutName`, `layoutSubName`, `displayOrder`, `elementId`, `render`, `cssClassName`, `defaultContent`, `displayScriptColumn`, `displayName`, `displayWidth`, `orderable`, `searchable`, `visible`, `searchName`, `searchOrder`, `baseBeanNameWithFullPackage`) VALUES
	(7, 'AuthKeyGen', '', 2, 'AKSerialKey', NULL, NULL, NULL, 'serialKey', NULL, '15', b'1', b'1', b'1', NULL, 1, NULL),
	(8, 'AuthKeyGen', '', 3, 'AKFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return data\\[assignedFirstName\\] + \\\' \\\' + data\\[assignedLastName\\]; } }', NULL, NULL, 'assignedFirstName', NULL, '15', b'1', b'1', b'1', NULL, 1, NULL),
	(9, 'AuthKeyGen', '', 4, 'AKLastName', NULL, NULL, NULL, 'assignedLastName', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(10, 'AuthKeyGen', '', 5, 'AKSchemeName', NULL, NULL, NULL, 'scheme', NULL, '20', b'1', b'1', b'1', NULL, 1, NULL),
	(11, 'AuthKeyGen', '', 6, 'AKSchemeCost', NULL, NULL, NULL, 'cost', NULL, '6', b'1', b'1', b'1', NULL, 1, NULL),
	(12, 'AuthKeyGen', '', 7, 'AKSellingPrice', NULL, NULL, NULL, 'selling', NULL, '6', b'1', b'1', b'1', NULL, 1, NULL),
	(13, 'AuthKeyGen', '', 8, 'AKKeyStatus', 'function(data, type, full, meta) { if (type === \\\'display\\\') { if(data\\[status\\] === \'Not Sold\'){ return \\"<center><span class=\\\\"label label-sm label-success\\\\">\\"+data\\[status\\]+\\" </span></center>\\"; }else if(data\\[status\\] === \'Suspended\'){ return \\"<center><span class=\\\\"label label-sm label-danger\\\\">\\"+data\\[status\\]+\\" </span></center>\\";  } } else { return data\\[status\\]; } }', NULL, NULL, 'status', NULL, '9', b'1', b'1', b'1', NULL, 1, NULL),
	(15, 'AuthKeyGen', '', 9, 'AKCreatedFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return data\\[createdFirstName\\] + \\\' \\\' + data\\[createdLastName\\]; } }', NULL, NULL, 'createdFirstName', NULL, '15', b'1', b'1', b'1', NULL, 1, NULL),
	(16, 'AuthKeyGen', '', 10, 'AKCreatedLastName', NULL, NULL, NULL, 'createdLastName', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(17, 'AuthKeyGen', '', 12, 'AKCreatedDate', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, 'createdDate', NULL, '20', b'1', b'1', b'1', NULL, 1, NULL),
	(18, 'OrganisationAddress', '', 2, 'ORGId', NULL, NULL, NULL, 'orgId', NULL, '10', b'0', b'0', b'0', NULL, 1, NULL),
	(19, 'OrganisationAddress', '', 3, 'ORGName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[2\\] + "</span>"; } }', NULL, NULL, 'orgName', NULL, '20', b'1', b'1', b'1', NULL, 1, NULL),
	(20, 'OrganisationAddress', '', 4, 'ORGMobile', NULL, NULL, NULL, 'mobileNo', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(21, 'OrganisationAddress', '', 5, 'ORGPhone', NULL, NULL, NULL, 'phoneNo', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(22, 'OrganisationAddress', '', 7, 'ORGEmail', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[email\\] + "</span>"; } }', NULL, NULL, 'email', NULL, '20', b'1', b'1', b'1', NULL, 1, NULL),
	(23, 'OrganisationAddress', '', 15, 'ORGCity', NULL, NULL, NULL, 'city', NULL, '10', b'1', b'1', b'0', NULL, 1, NULL),
	(24, 'OrganisationAddress', '', 8, 'ORGCreatedFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, 'firstName', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(25, 'OrganisationAddress', '', 9, 'ORGCreatedLastName', NULL, NULL, NULL, 'lastName', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(26, 'OrganisationAddress', '', 11, 'ORGCreatedDate', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, 'createdDate', NULL, '15', b'1', b'1', b'1', NULL, 1, NULL),
	(27, 'OrganisationAddress', '', 6, 'ORGWebsite', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[website\\] + "</span>"; } }', NULL, NULL, 'website', NULL, '20', b'1', b'1', b'1', NULL, 1, NULL),
	(28, 'OrganisationAddress', '', 1, 'EXPAND', NULL, 'control', NULL, 'chkBox', ' ', '1', b'0', b'0', b'1', NULL, 0, NULL),
	(29, 'OrganisationAddress', '', 16, 'ORGState', NULL, NULL, NULL, 'state', NULL, '10', b'1', b'1', b'0', NULL, 1, NULL),
	(30, 'OrganisationAddress', '', 17, 'ORGCountry', NULL, NULL, NULL, 'country', NULL, '10', b'1', b'1', b'0', NULL, 1, NULL),
	(31, 'OrganisationAddress', '', 12, 'ORGAdd1', 'function(data, type, full, meta) { if (type === \\\'display\\\') { if(data\\[add1\\] == \\\'\\\'){return \\"<div class=\\\'row\\\'><div class=\\\'col-md-12\\\'><div class=\\\'col-md-1\\\'>&nbsp;<\\/div><div class=\\\'col-md-11\\\'><b>Profile Picture<\\/b><br><div class=\\\'mt-card-item\\\'><div class=\\\'mt-card-avatar mt-overlay-1\\\'><img src=\\\'#\\\' width=\\\'175px;\\\'><\\/div><\\/div><\\/div><\\/div>\\";}else{    return \\"<div class=\\\'row\\\'><div class=\\\'col-md-12\\\'><div class=\\\'col-md-1\\\'>&nbsp;<\\/div><div class=\\\'col-md-3\\\'><b>Address<\\/b><br><span class=\\\'td-span175\\\'>\\" + data\\[add1\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[add2\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[add3\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[landmark\\]+ \\"<\\/span><\\/div><div class=\\\'col-md-3\\\'>&nbsp;<br><span class=\\\'td-span175\\\'>\\" + data\\[city\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[state\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[country\\] + \\"<\\/span><span class=\\\'td-span175\\\'>\\" + data\\[pincode\\]+ \\"<\\/span><\\/div><div class=\\\'col-md-5\\\'><b>Profile Picture<\\/b><br><div class=\\\'mt-card-item\\\'><div class=\\\'mt-card-avatar mt-overlay-1\\\'><img src=\\\'#\\\' width=\\\'175px;\\\'><\\/div><\\/div><\\/div><\\/div>\\";}}}', NULL, NULL, 'add1', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(32, 'OrganisationAddress', '', 13, 'ORGAdd2', NULL, NULL, NULL, 'add2', NULL, '10', b'1', b'1', b'0', NULL, 1, NULL),
	(33, 'OrganisationAddress', '', 14, 'ORGAdd3', NULL, NULL, NULL, 'add3', NULL, '10', b'1', b'1', b'0', NULL, 1, NULL),
	(34, 'OrganisationAddress', '', 19, 'ORGLandmark', NULL, NULL, NULL, 'landmark', NULL, '10', b'1', b'1', b'0', NULL, 1, NULL),
	(35, 'OrganisationAddress', '', 18, 'ORGPincode', NULL, NULL, NULL, 'pincode', NULL, '10', b'1', b'1', b'0', NULL, 1, NULL),
	(42, 'AlertsAndNotifications', '', 1, 'AAN_AutoId', NULL, NULL, NULL, 'autoId', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(43, 'AlertsAndNotifications', '', 5, 'AAN_ExpiryDate', NULL, NULL, NULL, NULL, NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(44, 'AlertsAndNotifications', '', 2, 'AAN_Message', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<div class=\\\'td-div300\\\'>" +  data\\[1\\] + "</div>"; } }', NULL, NULL, NULL, NULL, '40', b'1', b'1', b'1', NULL, 1, NULL),
	(45, 'AlertsAndNotifications', '', 3, 'AAN_Type', NULL, NULL, NULL, NULL, NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(46, 'AlertsAndNotifications', '', 4, 'AAN_ScheduledDate', NULL, NULL, NULL, NULL, NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(47, 'AlertsAndNotifications', '', 6, 'AAN_CreatedFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return data\\[createdFirstName\\] + \\\' \\\' + data\\[createdLastName\\]; } }', NULL, NULL, 'firstName', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(48, 'AlertsAndNotifications', '', 7, 'AAN_CreatedLastName', NULL, NULL, NULL, 'lastName', NULL, '20', b'1', b'1', b'1', NULL, 1, NULL),
	(49, 'AuthKeyGen', '', 1, 'AKSerialKeyChkBox', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<input type=\\\\"checkbox\\\\" class=\\\\"editor-active\\\\" name=\\\\"serialKey\\\\" value=\\\\"\\" + data\\[chkBox\\] + \\"\\\\"  onchange=\\\\\'onShow();\\\\\'>\\"; }else { return data\\[chkBox\\];}}', 'dt-body-center', NULL, 'chkBox', '<div style="text-align:center"><input type="checkbox" class="editor-active" name="serialKeyColumnHeadId" id="serialKeyColumnHeadId" value="" onchange="onSelectAllCheckBox();"></input></div>', '5', b'0', b'0', b'1', NULL, 0, NULL),
	(50, 'Assessment', '', 3, 'ASS_Name', 'function(data, type, full, meta){if (type === \\\'display\\\'){return \\"<a href=\\\\"javascript:loadAssessmentQuestionPage(\\\'bd73b98a32ed8d14650cb948dee7d408\\\',\\\'\\"+data\\[0\\]+\\"\\\',false);\\\\" ><strong>\\"+data\\[assessmentName\\]+\\"</strong></a>\\"}else {return data\\[0\\];}}', NULL, NULL, 'assessmentName', NULL, '5', b'1', b'1', b'1', NULL, 1, NULL),
	(51, 'Assessment', '', 4, 'ASS_CourseName', NULL, NULL, NULL, NULL, NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(52, 'Assessment', '', 5, 'ASS_ChapterName', NULL, NULL, NULL, NULL, NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(54, 'Assessment', '', 7, 'ASS_GroupDescription', NULL, NULL, NULL, NULL, NULL, '6', b'1', b'1', b'1', NULL, 1, NULL),
	(55, 'Assessment', '', 8, 'ASS_CreatedBy', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, 'firstName', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(56, 'Assessment', '', 9, 'ASS_LastName', NULL, NULL, NULL, 'lastName', NULL, '0', b'0', b'0', b'0', NULL, 0, NULL),
	(57, 'Assessment', '', 11, 'ASS_Public', NULL, NULL, NULL, NULL, NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(58, 'Assessment', '', 12, 'ASS_Status', NULL, NULL, NULL, NULL, NULL, '10', b'0', b'0', b'0', NULL, 0, NULL),
	(59, 'Assessment', '', 10, 'ASS_CreatedDate', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, 'createdDate', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(60, 'Assessment', '', 13, 'ASS_CreatedCountry', NULL, NULL, NULL, 'countryCode', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(61, 'Assessment', '', 14, 'ASS_Country', NULL, NULL, NULL, 'country', NULL, '0', b'0', b'0', b'0', NULL, 0, NULL),
	(62, 'Assessment', '', 2, 'ASS_Id', NULL, NULL, NULL, 'assessmentId', NULL, '10', b'0', b'0', b'0', NULL, 0, NULL),
	(95, 'OrganisationAddress', '', 10, 'ORGCreatedCountry', NULL, NULL, NULL, 'countryCode', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(96, 'AuthKeyGen', '', 11, 'AKCountry', NULL, NULL, NULL, 'country', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(97, 'AssessmentQuestion', '', 2, 'ASSQUS_ExamName', NULL, NULL, NULL, 'name', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(99, 'AssessmentQuestion', '', 4, 'ASSQUS_CreatedBy', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, 'firstName', NULL, '10', b'1', b'1', b'1', NULL, 0, NULL),
	(100, 'AssessmentQuestion', '', 5, 'ASSQUS_LastName', NULL, NULL, NULL, 'lastName', NULL, '0', b'1', b'0', b'0', NULL, 0, NULL),
	(101, 'AssessmentQuestion', '', 7, 'ASSQUS_Status', NULL, NULL, NULL, 'status', NULL, '5', b'1', b'1', b'1', NULL, 1, NULL),
	(103, 'AssessmentQuestion', '', 1, 'ASSQUS_QuestionID', NULL, NULL, NULL, 'questionId', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(104, 'UsersAddress', 'Producer', 1, 'EXPAND', NULL, 'control', NULL, 'chkBox', ' ', '1', b'0', b'0', b'1', NULL, 0, NULL),
	(105, 'UsersAddress', 'Producer', 2, 'Producer_UserId', NULL, NULL, NULL, 'userId', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(106, 'UsersAddress', 'Producer', 3, 'Producer_UserFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[userFirstName\\] + \\\' \\\' + data\\[userLastName\\] + "</span>"; } }', NULL, NULL, 'userFirstName', NULL, '20', b'1', b'1', b'1', NULL, 1, NULL),
	(107, 'UsersAddress', 'Producer', 4, 'Producer_UserLastName', NULL, NULL, NULL, 'userLastName', NULL, '20', b'0', b'0', b'0', NULL, 1, NULL),
	(108, 'UsersAddress', 'Producer', 5, 'Producer_Mobile', NULL, NULL, NULL, 'mobileNo', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(110, 'UsersAddress', 'Producer', 7, 'Producer_CreatedCountry', NULL, NULL, NULL, 'countryCode', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(111, 'UsersAddress', 'Producer', 8, 'Producer_CreatedFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, 'firstName', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(112, 'UsersAddress', 'Producer', 9, 'Producer_CreatedLastName', NULL, NULL, NULL, 'lastName', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(113, 'UsersAddress', 'Producer', 10, 'Producer_Country', NULL, NULL, NULL, 'country', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(114, 'UsersAddress', 'Producer', 11, 'Producer_CreatedDate', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, 'createdDate', NULL, '15', b'1', b'1', b'1', NULL, 1, NULL),
	(120, 'UsersAddress', 'Producer', 12, 'Producer_Status', NULL, NULL, NULL, 'status', NULL, '5', b'1', b'1', b'1', NULL, 1, NULL),
	(123, 'AssessmentQuestion', '', 6, 'ASSQUS_CreatedDate', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, 'createdDate', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(124, 'AssessmentQuestion', '', 8, 'ASSQUS_CreatedCountry', NULL, NULL, NULL, 'countryCode', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(125, 'AssessmentQuestion', '', 9, 'ASSQUS_Country', NULL, NULL, NULL, 'country', NULL, '0', b'0', b'0', b'0', NULL, 0, NULL),
	(126, 'ChapterAttachments', NULL, 1, 'CHATAutoId', NULL, NULL, NULL, 'autoId', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(127, 'ChapterAttachments', NULL, 2, 'CHATCourseName', NULL, NULL, NULL, 'name', NULL, '15', b'1', b'1', b'1', NULL, 1, NULL),
	(128, 'ChapterAttachments', NULL, 3, 'CHATCourseDesc', NULL, NULL, NULL, 'Desc', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(129, 'ChapterAttachments', NULL, 4, 'CHATView', 'function(data, type, full, meta){if (type === \\\'display\\\') {return \\"<a href=\\"javascript:loadChapterEBooksPDFDownload(\\\'\\"+data\\[0\\]+\\"\\\');\\" target = \\"_blank\\"><strong>\\"+data\\[3\\]+\\"</strong></a>\\"}else {return data\\[0\\];}}', NULL, NULL, 'view', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(130, 'ChapterAttachments', NULL, 5, 'CHATCountry', NULL, NULL, NULL, 'country', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(131, 'ChapterAttachments', NULL, 6, 'CHATCreatedCountry', NULL, NULL, NULL, 'countryCode', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(132, 'ChapterAttachments', NULL, 7, 'CHATCreatedFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, 'firstName', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(133, 'ChapterAttachments', NULL, 8, 'CHATCreatedLastName', NULL, NULL, NULL, 'lastName', NULL, '0', b'1', b'1', b'0', NULL, 1, NULL),
	(134, 'ChapterAttachments', NULL, 9, 'CHATCreatedDate', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, 'createdDate', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(135, 'ChapterAttachments', NULL, 10, 'CHATStatus', NULL, NULL, NULL, 'status', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(136, 'CourseAttachments', '', 1, 'CRATAutoId', NULL, NULL, NULL, 'autoId', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(137, 'CourseAttachments', '', 2, 'CRATCourseName', NULL, NULL, NULL, 'name', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(138, 'CourseAttachments', '', 3, 'CRATCourseDesc', NULL, NULL, NULL, 'courseDesc', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(139, 'CourseAttachments', '', 4, 'CRATView', 'function(data, type, full, meta){if (type === \\\'display\\\') {return \\"<a href=\\"javascript:loadCourseEBooksPDFDownload(\\\'\\"+data\\[0\\]+\\"\\\');\\"  target = \\"_blank\\"><strong>\\"+data\\[3\\]+\\"</strong></a>\\"}else {return data\\[0\\];}}', NULL, NULL, 'view', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(140, 'CourseAttachments', '', 5, 'CRATCountry', NULL, NULL, NULL, 'country', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(141, 'CourseAttachments', '', 6, 'CRATCreatedCountry', NULL, NULL, NULL, 'countryCode', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(142, 'CourseAttachments', '', 7, 'CRATCreatedFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, 'firstName', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(143, 'CourseAttachments', '', 8, 'CRATCreatedLastName', NULL, NULL, NULL, 'lastName', NULL, '0', b'1', b'1', b'0', NULL, 1, NULL),
	(144, 'CourseAttachments', '', 9, 'CRATCreatedDate', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, 'createdDate', NULL, '15', b'1', b'1', b'1', NULL, 1, NULL),
	(145, 'CourseAttachments', '', 10, 'CRATStatus', NULL, NULL, NULL, 'status', NULL, '15', b'1', b'1', b'1', NULL, 1, NULL),
	(146, 'AuthKeyGen', '', 13, 'AKCreatedCountry', NULL, NULL, NULL, 'countryCode', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(147, 'AlertsAndNotifications', '', 8, 'AAN_CreatedDate', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, 'createdDate', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(148, 'AlertsAndNotifications', '', 9, 'AAN_Country', NULL, NULL, NULL, 'country', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(149, 'AlertsAndNotifications', '', 10, 'AAN_CreatedCountry', NULL, NULL, NULL, 'countryCode', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(156, 'UsersAddress', 'Consumer', 1, 'EXPAND', NULL, 'control', NULL, 'chkBox', ' ', '1', b'0', b'0', b'1', NULL, 0, NULL),
	(157, 'UsersAddress', 'Consumer', 2, 'Consumer_UserId', NULL, NULL, NULL, 'userId', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(158, 'UsersAddress', 'Consumer', 3, 'Consumer_UserFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[userFirstName\\] + \\\' \\\' + data\\[userLastName\\] + "</span>"; } }', NULL, NULL, 'userFirstName', NULL, '20', b'1', b'1', b'1', NULL, 1, NULL),
	(159, 'UsersAddress', 'Consumer', 4, 'Consumer_UserLastName', NULL, NULL, NULL, 'userLastName', NULL, '20', b'0', b'0', b'0', NULL, 1, NULL),
	(160, 'UsersAddress', 'Consumer', 5, 'Consumer_Mobile', NULL, NULL, NULL, 'mobileNo', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(161, 'UsersAddress', 'Consumer', 7, 'Consumer_CreatedCountry', NULL, NULL, NULL, 'countryCode', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(162, 'UsersAddress', 'Consumer', 8, 'Consumer_CreatedFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, 'firstName', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(163, 'UsersAddress', 'Consumer', 9, 'Consumer_CreatedLastName', NULL, NULL, NULL, 'lastName', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(164, 'UsersAddress', 'Consumer', 10, 'Consumer_Country', NULL, NULL, NULL, 'country', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(165, 'UsersAddress', 'Consumer', 11, 'Consumer_CreatedDate', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, 'createdDate', NULL, '15', b'1', b'1', b'1', NULL, 1, NULL),
	(166, 'UsersAddress', 'Consumer', 12, 'Consumer_Status', NULL, NULL, NULL, 'status', NULL, '5', b'1', b'1', b'1', NULL, 1, NULL),
	(167, 'UsersAddress', 'Employee', 1, 'EXPAND', NULL, 'control', NULL, 'chkBox', ' ', '1', b'0', b'0', b'1', NULL, 0, NULL),
	(168, 'UsersAddress', 'Employee', 2, 'Employee_UserId', NULL, NULL, NULL, 'userId', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(169, 'UsersAddress', 'Employee', 3, 'Employee_UserFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[userFirstName\\] + \\\' \\\' + data\\[userLastName\\] + "</span>"; } }', NULL, NULL, 'userFirstName', NULL, '20', b'1', b'1', b'1', NULL, 1, NULL),
	(170, 'UsersAddress', 'Employee', 4, 'Employee_UserLastName', NULL, NULL, NULL, 'userLastName', NULL, '20', b'0', b'0', b'0', NULL, 1, NULL),
	(171, 'UsersAddress', 'Employee', 5, 'Employee_Mobile', NULL, NULL, NULL, 'mobileNo', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(172, 'UsersAddress', 'Employee', 7, 'Employee_CreatedCountry', NULL, NULL, NULL, 'countryCode', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(173, 'UsersAddress', 'Employee', 8, 'Employee_CreatedFirstName', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[firstName\\] + \\\' \\\' + data\\[lastName\\] + "</span>"; } }', NULL, NULL, 'firstName', NULL, '10', b'1', b'1', b'1', NULL, 1, NULL),
	(174, 'UsersAddress', 'Employee', 9, 'Employee_CreatedLastName', NULL, NULL, NULL, 'lastName', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(175, 'UsersAddress', 'Employee', 10, 'Employee_Country', NULL, NULL, NULL, 'country', NULL, '0', b'0', b'0', b'0', NULL, 1, NULL),
	(176, 'UsersAddress', 'Employee', 11, 'Employee_CreatedDate', 'function(data, type, full, meta) { if (type === \\\'display\\\') { return \\"<span class=\\\'td-span175\\\'>" +  data\\[createdDate\\] + "</span>"; } }', NULL, NULL, 'createdDate', NULL, '15', b'1', b'1', b'1', NULL, 1, NULL),
	(177, 'UsersAddress', 'Employee', 12, 'Employee_Status', NULL, NULL, NULL, 'status', NULL, '5', b'1', b'1', b'1', NULL, 1, NULL);
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

-- Dumping data for table education.mamenu: ~14 rows (approximately)
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
	('M00082', 'M0005\r\n', 'Assessment Search', 'fa fa-file-text', 'javascript:loadContent(\'d0f9600d5f8d0b22a87adf6d58b32059\', \'\',\'false\');', 'title\r\n', 'CE', b'0'),
	('M0009', 'M0009', 'Uploads', 'icon-bar-chart', 'javascript:;', 'title\r\n', 'D', b'1'),
	('M00091', 'M0013', 'E-Books View', 'icon-tag', 'javascript:loadContent(\'6d1ebf572dba98851c34e281efec5de2\',\'e-books-view\',\'false\');\r\n\r\n', 'title', 'EA', b'0'),
	('M0010', 'M0009', 'E-Books', 'icon-tag', 'javascript:loadContent(\'a500fe2139d875b2f6d9679600577191\',\'\',\'false\');', 'title\r\n', 'DA', b'0'),
	('M0011', 'M0009', 'E-BluePrints', 'icon-tag', 'javascript:loadContent(\'e-blueprint\',\'false\');', 'title\r\n', 'DB', b'0'),
	('M0012', 'M0009', 'E-KeyPoints', 'icon-tag', 'javascript:loadContent(\'e-keypoint\',\'false\');', 'title\r\n', 'DC', b'0'),
	('M0013', 'M0013', 'Consumer View', 'icon-user', 'javascript:;', 'title', 'E', b'1'),
	('M0016', 'M0002\r\n', 'Information Alerts', 'icon-bar-chart\r\n', 'javascript:loadContent(\'f44c136f4bd6db98e4bec455066422c5\',\'\',\'false\');', 'title\r\n', 'BC', b'0');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

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
	(36, 'M0007_1', 'PRD000001', 'Employee'),
	(37, 'M00082', 'PRD000001', 'Employee'),
	(39, 'M0013', 'PRD000001', 'Employee'),
	(40, 'M00091', 'PRD000001', 'Employee');
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
	('UserRegistrationReceipt_Email', 'UserRegistrationReceipt_Email', '<html><body> <table cellpadding="25px;"  width="850px;"  > <tr>	<td><p ><input type="image" src="http://www.edutelacademy.com/images/png/edutellogo.png"></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">Invoice(s) for this order in &nbsp;this email for any future reference.</span></p><br><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">PURCHASER NAME :</span></p><br><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.usUserName}$&nbsp;,</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;Address : &nbsp;&nbsp;&nbsp;${Users.usFatherName}$&nbsp;,</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.usAddress1}$&nbsp;,</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.usAddress2}$&nbsp;,</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.usLandMark}$&nbsp;,</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.usCity}$&nbsp;,&nbsp;&nbsp;&nbsp;${Users.usState}$&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;${Users.usPinCode}$&nbsp;&nbsp;&nbsp;.</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">CONTACT NO : &nbsp;&nbsp;&nbsp;${Users.usMobileNo}$&nbsp;&nbsp;&nbsp;.</span></p><br><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">PRODUCTS DELIVERED :</span></p><table rules="all" frame="box" width="850px;"><tr height="50px;" style="background-color:#ececec">	<td width="5%" align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;SNO&nbsp;</span> </td>	<td width="40%" align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">ITEM</span></td>	<td width="20%" align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">ORDER NO</span></td>	<td width="15%" align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">QUANTITY</span></td>	<td width="20%" align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">PRICE</span></td></tdead><tr height="90px;">	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">1</span></td>	<td align="left" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;Full year support Program ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ Smart Learner </span></td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.serialKey.serialNo}$</span></td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">1</span></td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.serialKey.sellingAmount}$</span></td></tr><tr height="40px;">	<td align="center" valign="middle" colspan="3">&nbsp;</td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">TOTAL AMOUNT</span></td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.serialKey.sellingAmount}$</span></td></tr><tr height="70px;">	<td align="center" valign="middle" colspan="3">&nbsp;</td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">AMOUNT PAID</span></td>	<td align="center" valign="middle"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;&nbsp;&nbsp;${Users.serialKey.sellingAmount}$</span></td></tr></table><br><p ><span style="font-family:Trebuchet MS,Arial,sans-serif">Thankyou for registering with Edutel Academy.</span></p><p ><span style="font-family:Trebuchet MS,Arial,sans-serif">EdutelAcademy Team</span></p><p ><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">For any query or assistance, feel free to&nbsp;</span><a href="admin@edutelacademy.com" target="_blank"><span style="font-size:11pt;font-family:Trebuchet MS,Arial,sans-serif;">Contact Us</span></a>.</p><p ><span style="font-family:Trebuchet MS,Arial,sans-serif;font-size:11px;">DECLARATION</span></p><p ><span style="font-family:Trebuchet MS,Arial,sans-serif;font-size:11px;">We declare that this invoice shows actual price of the goods described inclusiveof taxes and that all particulars are true and correct.</span></p><p ><span style="font-family:Trebuchet MS,Arial,sans-serif;font-size:11px;">THIS ISA COMPUTER GENERATED INVOICE AND DOES NOT REQUIRE SIGNATURE</span></p><p ><span style="font-family:Trebuchet MS,Arial,sans-serif"><br></span></p></td></tr></table></body></html>', 'Email', 'EduTel Academy Invoice Order', '2015-01-01 00:00:00', NULL, NULL, 'SuperAdmin', '2015-01-01 00:00:00', 'SuperAdmin', '2015-01-01 00:00:00', b'1'),
	('UserRegistrationReceipt_SMS', 'UserRegistrationReceipt_SMS', 'Dear ${Users.usUserName}$(${Users.usUserId}$), your payment of Rs.${Users.serialKey.sellingAmount}$ has been received for Full Year support Program. you can contact our Relationship Manager - 044-4384 9090 for any technical/queries assistance.Edutel Academy.', 'SMS', '', '2015-01-01 00:00:00', NULL, NULL, 'SuperAdmin', '2015-01-01 00:00:00', 'SuperAdmin', '2015-01-01 00:00:00', b'1'),
	('UserRegistrationWelcome_Email', 'UserRegistrationWelcome_Email', '<html> <body>  <table cellpadding="25px;"  width="850px;"  > <tr>	<td><p><input type="image" src="http://www.edutelacademy.com/images/png/edutellogo.png"></p><br><p align="center" style="text-align:center"><span style="font-size:14pt;font-family:Trebuchet MS,Arial,sans-serif">Welcome To EduTel Academy Online sg_educational Program</span></p><br><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif;font-weight:bold;">Ref : EA/WL/${Users.serialKey.serialNo}$</span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif;font-weight:bold;">Date : ${Users.usCreatedDate}$</span></p><br><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif;font-weight:bold;">Dear&nbsp; ${Users.usUserName}$,</span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">We are extremely happy to welcome you to Edutel Academy.</span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">You have been enrolled under the 12th Std Full year support program ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“ SMART LEARNER.</span></p><br><p><b><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">Enrollment Details :</span></b></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">Batch&nbsp; : <b>${Users.serialKey.serialBatch}$</b></span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">Register No : <b>${Users.usUserID}$</b></span></p><br><p><b><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">Program includes academic and career support:</span></b></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">Kindly note the following : </span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">You will be receiving 10 offline test series covering XII std syllabus. Answer each modules in a white sheet and mention your Reg no. in each page and send to your nearest center. Our teachers will evaluate and send it back to you.</span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">You will receive all other service like information updates, MCQÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢s, e-book, key point, query box, library, academy test, toppers club,weekly planner,smart guide,10 years Model question paper with solutions, compulsory questions,Entrance Exam Cracker,through online only i.e.through your student corner.</span></p><p><span style="font-size:12pt;font-family:Trebuchet MS,Arial,sans-serif">PMT Analysis will be done only in the Month of January, you must be present during the test date, the test date cannot be altered. All Application form will be delivered at your door step only by your request [ONLY FORM COST MUST BE BARRED EXTRA].</span></p><p><b><span style="font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;</span></b></p><p><b><span style="font-family:Trebuchet MS,Arial,sans-serif;">DISCLOSURE</span></b><span style="font-family:Trebuchet MS,Arial,sans-serif;"> : &nbsp;DO-NOT-SHARE yourregister number with others, if shared it will identify your IP address and your user name will get deactivated automatically.</span></p><p><span style="font-size:10pt;font-family:Trebuchet MS,Arial,sans-serif;">&nbsp;</span></p><p><span style="font-size:10pt;font-family:Trebuchet MS,Arial,sans-serif;">This is computer generated letter, signature is not required.</span></p></div></td> </tr> </table> </body></html>', 'Email', 'Welcome To EduTel Academy', '2015-02-03 18:10:17', NULL, NULL, 'SuperAdmin', '2015-02-03 18:10:38', 'SuperAdmin', '2015-02-03 18:11:05', b'1'),
	('UserRegistration_Email_Admin', 'UserRegistration_Email_Admin', '<html><head><body><table cellpadding="25px;" width="850px;"><tr><td><p><input type="image" src="http://www.edutelacademy.com/images/png/edutellogo.png"></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Dear Admin,</span></p> <br><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">New User has been registered with Edutel Academy.</span></p> <br><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Registered User Id is &nbsp;<b style="color:#0000FF">${Users.usUserID}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Registered User Name is &nbsp;<b style="color:#0000FF">${Users.usUserName}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">User Mobile No is &nbsp;<b style="color:#0000FF">${Users.usMobileNo}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">School Name is &nbsp;<b style="color:#0000FF">${Users.school.scSchoolName}$,&nbsp;${Users.school.scCity}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Batch is &nbsp;<b style="color:#0000FF">${Users.usBatch}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Serial Key Promotional Code is &nbsp;<b style="color:#0000FF">${Users.serialKey.serialPromo}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Serial Key Sold Amount is &nbsp;<b style="color:#0000FF">${Users.serialKey.sellingAmount}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Serial Key Sold by &nbsp;<b style="color:#0000FF">${Users.serialKey.serialKeyUserMap.users.usUserName}$,&nbsp;${Users.serialKey.createdUser.usCity}$</b></span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Help Desk - 7401259090</span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">Technical support -7299038080</span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial">By,<br>Admin</span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Helvitica, Arial"><b style="color:#0000FF">Edutel Academy</b><br></td></tr></table><br><p><span style="font-family: Trebuchet MS, Arial, sans-serif">Thankyou for registering with Edutel Academy.</span></p><p><span style="font-family: Trebuchet MS, Arial, sans-serif">EdutelAcademy Team</span></p><p><span style="font-size: 11pt; font-family: Trebuchet MS, Arial, sans-serif;">For any query or assistance, feel free to&nbsp;</span><ahref="admin@edutelacademy.com" target="_blank"><span style="font-size: 11pt; font-family: Trebuchet MS, Arial, sans-serif;">Contact Us</span></a></p></td></tr></table></body></html>', 'Email', 'New User Registration in EduTel Academy Notification', '2015-01-01 00:00:00', NULL, NULL, 'SuperAdmin', '2015-01-01 00:00:00', 'SuperAdmin', '2015-01-01 00:00:00', b'1'),
	('User_Create_Admin', 'User_Create_Admin', '<html>\r\n\r\n<head>\r\n  <title>HatchBird - Confirm your account!</title>\r\n  <style>\r\n    \r\n      	body{\r\n      		background: #ffffff;\r\n      		margin: 0px;\r\n      		text-align: center;\r\n      		font-family: \'Avenir\', \'Open Sans\', Arial, sans-serif;\r\n      	}\r\n      	.head{\r\n      		background: #488dfb;\r\n      		color: #ffffff;\r\n      	}\r\n      \r\n      	.head h1{\r\n      		font-size: 50px;\r\n      		font-weight: normal;\r\n      		line-height: 100px;\r\n      		margin-top: 100px;\r\n      	}\r\n      \r\n      	.button{\r\n      		background: #39ce00;\r\n      		color: #ffffff;\r\n      		line-height: 50px;\r\n      		text-decoration: none;\r\n      		text-align: center;\r\n      		margin-top: 50px;\r\n      		margin-bottom: 50px;\r\n      	}\r\n      \r\n      	.button a{\r\n      		color: #ffffff;\r\n      		text-decoration: none;\r\n      	}\r\n      	a{ color: #fff; } \r\n      	p a{ color: #565656; } \r\n      	.black a{ color: #000; }\r\n  </style>\r\n  <link href=\'https://fonts.googleapis.com/css?family=Open+Sans\' rel=\'stylesheet\' type=\'text/css\'>\r\n</head>\r\n\r\n<body bgcolor="#ffffff">\r\n  <table bgcolor="#efefef" cellpadding="0" cellspacing="0" border-collapse="collapse" width="100%">\r\n    <tr>\r\n      <td align="center" style="padding: 30px;">\r\n        <table bgcolor="#efefef" cellpadding="0" cellspacing="0" border-collapse="collapse" width="700px">\r\n          <tr>\r\n\r\n            <td align="center">\r\n              <table bgcolor="#efefef" cellpadding="0" cellspacing="0" border-collapse="collapse" width="100%">\r\n                <tr>\r\n                  <td width="50%" style="text-transform: uppercase; color: #868686; font-weight: bold;">$todayDate</td>\r\n                  <td width="50%" style="text-align: right;">\r\n                    <!--<a href="#" style="color: #868686;">View in Browser</a>-->\r\n                  </td>\r\n                </tr>\r\n              </table>\r\n              <img src="http://localhost:8090/edutel/academia/img/home2/logo-default.png" alt="HatchBird" border="0" height="50" style="margin-top: 50px; margin-bottom: 50px;" />\r\n              <table bgcolor="#488dfb" class="head" style="background: #488dfb;" cellpadding="0" cellspacing="0" border="0" border-collapse="collapse" width="100%">\r\n                <tr>\r\n                  <td style="text-align: center;" colspan="3">\r\n                    <h1>Welcome to HatchBird</h1>\r\n\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td colspan="3" style="padding: 0px 80px; font-size: 20px; text-align: center;">Hi $user.usUserName,<br Welcome to HatchBird,<br>please confirm your email address to get started.</td>\r\n                </tr>\r\n                <tr>\r\n                  <td width="30%">&nbsp;</td>\r\n                  <td style="text-align: center;" width="40%">\r\n                    <table cellpadding="0" cellspacing="0" border-collapse="collapse" class="button" width="100%">\r\n                      <tr>\r\n                        <td>\r\n                          <a href="#" style="font-size: 15px;">Confirm my email</a>\r\n                        </td>\r\n                      </tr>\r\n                    </table>\r\n                  </td>\r\n                  <td width="30%">&nbsp;</td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n              </table>\r\n              <table cellpadding="0" cellspacing="0" border="0" border-collapse="collapse" width="100%">\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n              </table>\r\n              <table bgcolor="#ffffff" class="head" style="background: #ffffff;" cellpadding="0" cellspacing="0" border="0" border-collapse="collapse" width="100%">\r\n                <tr>\r\n                  <td style="text-align: center;" colspan="3">\r\n                    <h1 style="color: #000000">Questions?</h1>\r\n\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td colspan="3" style="padding: 0px 80px; font-size: 20px; text-align: center; color: #595f63;  font-size: 20px;">If you have any questions about HatchBird please donÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢t hesitate to get in touch.</td>\r\n                </tr>\r\n                <tr>\r\n                  <td style="padding: 40px;" align="center">\r\n                    <a href="mailto:$producerAdminEmailId" style="color: #488dfb; text-decoration: none; margin-bottom: 40px; font-size: 20px;">$producerAdminEmailId</a>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n                <tr>\r\n                  <td>&nbsp;</td>\r\n                </tr>\r\n              </table>\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n      <td>&nbsp;</td>\r\n    </tr>\r\n    <tr>\r\n      <td>&nbsp;</td>\r\n    </tr>\r\n  </table>\r\n  <table width="100%" bgcolor="#ffffff" style="background: #ffffff;" cellpadding="0" cellspacing="0" border="0" border-collapse="collapse" width="100%">\r\n    <tr>\r\n      <td>&nbsp;</td>\r\n    </tr>\r\n    <tr>\r\n      <td align="center">\r\n        <table width="600">\r\n          <tr>\r\n            <td style="font-size: 14px;" class="black">This email was sent to xxxxxx@xxxxxxxxx.com</td>\r\n            <td style="text-align: right;">\r\n              <a href="#" style="color: #000; text-decoration: none; font-size: 14px;">Unsubscribe</a>\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td>&nbsp;</td>\r\n    </tr>\r\n  </table>\r\n  \r\n</body>\r\n\r\n</html>', 'Email', 'New User Registeration  in EduTel Academy', '2017-09-24 12:00:12', NULL, NULL, 'SuperAdmin', '2017-09-24 12:00:49', 'SuperAdmin', '2017-09-24 12:00:32', b'1'),
	('User_Reset_Password', 'User_Reset_Password', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n  <head>\r\n    <meta name="viewport" content="width=device-width, initial-scale=1.0" />\r\n    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    <title>Set up a new password for EduTel Academy</title>\r\n    <!-- \r\n    The style block is collapsed on page load to save you some scrolling.\r\n    Postmark automatically inlines all CSS properties for maximum email client \r\n    compatibility. You can just update styles here, and Postmark does the rest.\r\n    -->\r\n    <style type="text/css" rel="stylesheet" media="all">\r\n    /* Base ------------------------------ */\r\n    \r\n    *:not(br):not(tr):not(html) {\r\n      font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;\r\n      box-sizing: border-box;\r\n    }\r\n    \r\n    body {\r\n      width: 100% !important;\r\n      height: 100%;\r\n      margin: 0;\r\n      line-height: 1.4;\r\n      background-color: #F2F4F6;\r\n      color: #74787E;\r\n      -webkit-text-size-adjust: none;\r\n    }\r\n    \r\n    p,\r\n    ul,\r\n    ol,\r\n    blockquote {\r\n      line-height: 1.4;\r\n      text-align: left;\r\n    }\r\n    \r\n    a {\r\n      color: #3869D4;\r\n    }\r\n    \r\n    a img {\r\n      border: none;\r\n    }\r\n    \r\n    td {\r\n      word-break: break-word;\r\n    }\r\n    /* Layout ------------------------------ */\r\n    \r\n    .email-wrapper {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      background-color: #F2F4F6;\r\n    }\r\n    \r\n    .email-content {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n    }\r\n    /* Masthead ----------------------- */\r\n    \r\n    .email-masthead {\r\n      padding: 25px 0;\r\n      text-align: center;\r\n    }\r\n    \r\n    .email-masthead_logo {\r\n      width: 94px;\r\n    }\r\n    \r\n    .email-masthead_name {\r\n      font-size: 16px;\r\n      font-weight: bold;\r\n      color: #bbbfc3;\r\n      text-decoration: none;\r\n      text-shadow: 0 1px 0 white;\r\n    }\r\n    /* Body ------------------------------ */\r\n    \r\n    .email-body {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      border-top: 1px solid #EDEFF2;\r\n      border-bottom: 1px solid #EDEFF2;\r\n      background-color: #FFFFFF;\r\n    }\r\n    \r\n    .email-body_inner {\r\n      width: 570px;\r\n      margin: 0 auto;\r\n      padding: 0;\r\n      -premailer-width: 570px;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      background-color: #FFFFFF;\r\n    }\r\n    \r\n    .email-footer {\r\n      width: 570px;\r\n      margin: 0 auto;\r\n      padding: 0;\r\n      -premailer-width: 570px;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      text-align: center;\r\n    }\r\n    \r\n    .email-footer p {\r\n      color: #AEAEAE;\r\n    }\r\n    \r\n    .body-action {\r\n      width: 100%;\r\n      margin: 30px auto;\r\n      padding: 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      text-align: center;\r\n    }\r\n    \r\n    .body-sub {\r\n      margin-top: 25px;\r\n      padding-top: 25px;\r\n      border-top: 1px solid #EDEFF2;\r\n    }\r\n    \r\n    .content-cell {\r\n      padding: 35px;\r\n    }\r\n    \r\n    .preheader {\r\n      display: none !important;\r\n      visibility: hidden;\r\n      mso-hide: all;\r\n      font-size: 1px;\r\n      line-height: 1px;\r\n      max-height: 0;\r\n      max-width: 0;\r\n      opacity: 0;\r\n      overflow: hidden;\r\n    }\r\n    /* Attribute list ------------------------------ */\r\n    \r\n    .attributes {\r\n      margin: 0 0 21px;\r\n    }\r\n    \r\n    .attributes_content {\r\n      background-color: #EDEFF2;\r\n      padding: 16px;\r\n    }\r\n    \r\n    .attributes_item {\r\n      padding: 0;\r\n    }\r\n    /* Related Items ------------------------------ */\r\n    \r\n    .related {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 25px 0 0 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n    }\r\n    \r\n    .related_item {\r\n      padding: 10px 0;\r\n      color: #74787E;\r\n      font-size: 15px;\r\n      line-height: 18px;\r\n    }\r\n    \r\n    .related_item-title {\r\n      display: block;\r\n      margin: .5em 0 0;\r\n    }\r\n    \r\n    .related_item-thumb {\r\n      display: block;\r\n      padding-bottom: 10px;\r\n    }\r\n    \r\n    .related_heading {\r\n      border-top: 1px solid #EDEFF2;\r\n      text-align: center;\r\n      padding: 25px 0 10px;\r\n    }\r\n    /* Discount Code ------------------------------ */\r\n    \r\n    .discount {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 24px;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n      background-color: #EDEFF2;\r\n      border: 2px dashed #9BA2AB;\r\n    }\r\n    \r\n    .discount_heading {\r\n      text-align: center;\r\n    }\r\n    \r\n    .discount_body {\r\n      text-align: center;\r\n      font-size: 15px;\r\n    }\r\n    /* Social Icons ------------------------------ */\r\n    \r\n    .social {\r\n      width: auto;\r\n    }\r\n    \r\n    .social td {\r\n      padding: 0;\r\n      width: auto;\r\n    }\r\n    \r\n    .social_icon {\r\n      height: 20px;\r\n      margin: 0 8px 10px 8px;\r\n      padding: 0;\r\n    }\r\n    /* Data table ------------------------------ */\r\n    \r\n    .purchase {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 35px 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n    }\r\n    \r\n    .purchase_content {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 25px 0 0 0;\r\n      -premailer-width: 100%;\r\n      -premailer-cellpadding: 0;\r\n      -premailer-cellspacing: 0;\r\n    }\r\n    \r\n    .purchase_item {\r\n      padding: 10px 0;\r\n      color: #74787E;\r\n      font-size: 15px;\r\n      line-height: 18px;\r\n    }\r\n    \r\n    .purchase_heading {\r\n      padding-bottom: 8px;\r\n      border-bottom: 1px solid #EDEFF2;\r\n    }\r\n    \r\n    .purchase_heading p {\r\n      margin: 0;\r\n      color: #9BA2AB;\r\n      font-size: 12px;\r\n    }\r\n    \r\n    .purchase_footer {\r\n      padding-top: 15px;\r\n      border-top: 1px solid #EDEFF2;\r\n    }\r\n    \r\n    .purchase_total {\r\n      margin: 0;\r\n      text-align: right;\r\n      font-weight: bold;\r\n      color: #2F3133;\r\n    }\r\n    \r\n    .purchase_total--label {\r\n      padding: 0 15px 0 0;\r\n    }\r\n    /* Utilities ------------------------------ */\r\n    \r\n    .align-right {\r\n      text-align: right;\r\n    }\r\n    \r\n    .align-left {\r\n      text-align: left;\r\n    }\r\n    \r\n    .align-center {\r\n      text-align: center;\r\n    }\r\n    /*Media Queries ------------------------------ */\r\n    \r\n    @media only screen and (max-width: 600px) {\r\n      .email-body_inner,\r\n      .email-footer {\r\n        width: 100% !important;\r\n      }\r\n    }\r\n    \r\n    @media only screen and (max-width: 500px) {\r\n      .button {\r\n        width: 100% !important;\r\n      }\r\n    }\r\n    /* Buttons ------------------------------ */\r\n    \r\n    .button {\r\n      background-color: #3869D4;\r\n      border-top: 10px solid #3869D4;\r\n      border-right: 18px solid #3869D4;\r\n      border-bottom: 10px solid #3869D4;\r\n      border-left: 18px solid #3869D4;\r\n      display: inline-block;\r\n      color: #FFF;\r\n      text-decoration: none;\r\n      border-radius: 3px;\r\n      box-shadow: 0 2px 3px rgba(0, 0, 0, 0.16);\r\n      -webkit-text-size-adjust: none;\r\n    }\r\n    \r\n    .button--green {\r\n      background-color: #22BC66;\r\n      border-top: 10px solid #22BC66;\r\n      border-right: 18px solid #22BC66;\r\n      border-bottom: 10px solid #22BC66;\r\n      border-left: 18px solid #22BC66;\r\n    }\r\n    \r\n    .button--red {\r\n      background-color: #FF6136;\r\n      border-top: 10px solid #FF6136;\r\n      border-right: 18px solid #FF6136;\r\n      border-bottom: 10px solid #FF6136;\r\n      border-left: 18px solid #FF6136;\r\n    }\r\n    /* Type ------------------------------ */\r\n    \r\n    h1 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 19px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    \r\n    h2 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 16px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    \r\n    h3 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 14px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    \r\n    p {\r\n      margin-top: 0;\r\n      color: #74787E;\r\n      font-size: 16px;\r\n      line-height: 1.5em;\r\n      text-align: left;\r\n    }\r\n    \r\n    p.sub {\r\n      font-size: 12px;\r\n    }\r\n    \r\n    p.center {\r\n      text-align: center;\r\n    }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <span class="preheader">Use this link to reset your password. The link is only valid for 10 minutes.</span>\r\n    <table class="email-wrapper" width="100%" cellpadding="0" cellspacing="0">\r\n      <tr>\r\n        <td align="center">\r\n          <table class="email-content" width="100%" cellpadding="0" cellspacing="0">\r\n            <tr>\r\n              <td class="email-masthead">\r\n                <a href="https://example.com" class="email-masthead_name">EduTel Academy sg_educational Solutions </a>\r\n              </td>\r\n            </tr>\r\n            <!-- Email Body -->\r\n            <tr>\r\n              <td class="email-body" width="100%" cellpadding="0" cellspacing="0">\r\n                <table class="email-body_inner" align="center" width="570" cellpadding="0" cellspacing="0">\r\n                  <!-- Body content -->\r\n                  <tr>\r\n                    <td class="content-cell">\r\n                      <h1>Hi $user.usUserName,</h1>\r\n                      <p>You recently requested to reset your password for your EduTel Academy account. Use the button below to reset it. <strong>This password reset is only valid for the next 10 minutes.</strong></p>\r\n                      <!-- Action -->\r\n                      <table class="body-action" align="center" width="100%" cellpadding="0" cellspacing="0">\r\n                        <tr>\r\n                          <td align="center">\r\n                            <!-- Border based button\r\n                       https://litmus.com/blog/a-guide-to-bulletproof-buttons-in-email-design -->\r\n                            <table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n                              <tr>\r\n                                <td align="center">\r\n                                  <table border="0" cellspacing="0" cellpadding="0">\r\n                                    <tr>\r\n                                      <td>\r\n                                        <a href="$tokenURL" class="button button--green" target="_blank">Reset your password</a>\r\n                                      </td>\r\n                                    </tr>\r\n                                  </table>\r\n                                </td>\r\n                              </tr>\r\n                            </table>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                      <p>For security, this request was received from a {{operating_system}} device using {{browser_name}}. If you did not request a password reset, please ignore this email or <a href="{{support_url}}">contact support</a> if you have questions.</p>\r\n                      <p>Thanks,\r\n                        <br>The EduTel Admin Team</p>\r\n                      <!-- Sub copy -->\r\n                      <table class="body-sub">\r\n                        <tr>\r\n                          <td>\r\n                            <p class="sub">If youÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢re having trouble with the button above, copy and paste the URL below into your web browser.</p>\r\n                            <p class="sub">$tokenURL</p>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </td>\r\n                  </tr>\r\n                </table>\r\n              </td>\r\n            </tr>\r\n            <tr>\r\n              <td>\r\n                <table class="email-footer" align="center" width="570" cellpadding="0" cellspacing="0">\r\n                  <tr>\r\n                    <td class="content-cell" align="center">\r\n                      <p class="sub align-center">&copy; 2017 EduTel Academy. All rights reserved.</p>\r\n                      <p class="sub align-center">\r\n                        EduTel Academy\r\n                        <br>1234 Street Rd.\r\n                        <br>Suite 1234\r\n                      </p>\r\n                    </td>\r\n                  </tr>\r\n                </table>\r\n              </td>\r\n            </tr>\r\n          </table>\r\n        </td>\r\n      </tr>\r\n    </table>\r\n  </body>\r\n</html>', 'Email', 'EduTel Password Reset', '2017-09-24 12:00:12', NULL, NULL, 'SuperAdmin', '2017-09-24 12:00:49', 'SuperAdmin', '2017-09-24 12:00:32', b'1');
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

-- Dumping data for table education.organisation: ~23 rows (approximately)
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
	('ORG1520182691953', 'MM Hr Sec School11111', 'Tutorial', 'PRD000001', 'IN', 'USR1513438024801', '2018-03-04 22:28:12', NULL, NULL, b'1'),
	('ORG1523425500921', 'MM Hr Sec School', 'School', 'PRD000001', 'IN', 'USR1513438024801', '2018-04-11 11:15:01', NULL, NULL, b'1');
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

-- Dumping data for table education.organisationaddress: ~49 rows (approximately)
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
	('OADD1523425418652', 'ORG1523425500921', 'addressLine1', 'addressLine2', 'addressLine3', 'CommunicationAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'raja@', 99999000000, 909090909090, 80808080808, 96345454547785, 8888888888, 'website'),
	('OADD1523425418653', 'ORG1523425500921', 'addressLine1', 'addressLine2', 'addressLine3', 'PresentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
	('OADD1523425418654', 'ORG1523425500921', 'addressLine1', 'addressLine2', 'addressLine3', 'PermanentAddress', 'landmark', 'City', 'Andhra Pradesh', 'IN', 2321312, 'emailorganisation', 99999000000, 909090909090, 80808080808, 99999999999, 8888888888, 'website'),
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
  `uploadResourceHandler` varchar(50) DEFAULT NULL,
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
INSERT INTO `organisationattachments` (`autoId`, `organisationId`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileLastModifiedDate`, `uploadFileName`, `uploadFileNameForDisplay`, `uploadFileSize`, `uploadDocumentForType`, `uploadResourceHandler`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	(1, 'ORG1518118053791', NULL, '\\ORG1518118053791\\ProfileImage', NULL, 'Image1.jpg', NULL, 0, 'ProfileImage', NULL, '2018-02-09 00:58:29', NULL, 'USR1513438024801', NULL, b'1'),
	(2, 'ORG000001', NULL, '\\ORG1518118053791\\ProfileImage', NULL, 'Image2.jpg', NULL, 0, 'ProfileImage', NULL, '2018-02-09 01:02:15', NULL, 'USR1513438024801', NULL, b'1'),
	(3, 'ORG1518147612471', NULL, '\\ORG1518147612471\\ProfileImage', NULL, 'Image3.jpg', NULL, 0, 'ProfileImage', NULL, '2018-02-09 09:10:12', NULL, 'USR1513438024801', NULL, b'1'),
	(4, 'ORG1518147854690', NULL, '\\ORG1518147854690\\ProfileImage', NULL, 'Image4.png', NULL, 0, 'ProfileImage', NULL, '2018-02-09 09:14:15', NULL, 'USR1513438024801', NULL, b'1'),
	(5, 'ORG1518967033291', NULL, '\\ORG1518967033291\\Attachment', NULL, 'Image2.jpg', NULL, 0, 'ProfileImage', NULL, '2018-02-18 20:47:13', NULL, 'USR1513438024801', NULL, b'1'),
	(6, 'ORG1518979845530', NULL, '\\ORG1518979845530\\Attachment', NULL, 'WhatsApp Image 2017-12-28 at 10.07.01 PM.jpeg', NULL, 0, 'ProfileImage', NULL, '2018-02-19 00:20:46', NULL, 'USR1513438024801', NULL, b'1'),
	(7, 'ORG1519017483495', NULL, 'ORG1519017483495\\ProfileImage', NULL, 'caterpillar-60-fun-zoo-original-imaetykajy7gvahh.jpeg', NULL, 0, 'ProfileImage', NULL, '2018-02-19 10:48:17', NULL, 'USR1513438024801', NULL, b'1'),
	(8, 'ORG1519017647568', NULL, 'ORG1519017647568\\ProfileImage', NULL, 'Ananth.jpg', NULL, 0, 'ProfileImage', NULL, '2018-02-19 10:50:48', NULL, 'USR1513438024801', NULL, b'1'),
	(9, 'ORG1519465198970', NULL, 'ORG1519465198970\\ProfileImage', NULL, 'Ananth.jpg', NULL, 0, 'ProfileImage', NULL, '2018-02-24 15:10:14', NULL, 'USR1513438024801', NULL, b'1'),
	(10, 'ORG1519466118076', NULL, 'ORG1519466118076\\ProfileImage', NULL, 'Ananth.jpg', NULL, 0, 'ProfileImage', NULL, '2018-02-24 15:25:18', NULL, 'USR1513438024801', NULL, b'1'),
	(11, 'ORG1519466147882', NULL, 'ORG1519466147882\\ProfileImage', NULL, 'Ananth.jpg', NULL, 0, 'ProfileImage', NULL, '2018-02-24 15:25:48', NULL, 'USR1513438024801', NULL, b'1'),
	(12, 'ORG1519466181746', NULL, 'ORG1519466181746\\ProfileImage', NULL, 'desktop.ini', NULL, 0, 'ProfileImage', NULL, '2018-02-24 15:26:22', NULL, 'USR1513438024801', NULL, b'1'),
	(13, 'ORG1519469038243', NULL, 'ORG1519469038243\\ProfileImage', NULL, 'AnanthHoroscope.txt', NULL, 0, 'ProfileImage', NULL, '2018-02-24 16:13:58', NULL, 'USR1513438024801', NULL, b'1'),
	(14, 'ORG1519580579351', NULL, 'ORG1519580579351\\ProfileImage', NULL, 'Ananth.jpg', NULL, 0, 'ProfileImage', NULL, '2018-02-25 23:12:59', NULL, 'USR1513438024801', NULL, b'1');
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
  CONSTRAINT `FK_portletsusersroles_userroles` FOREIGN KEY (`urAutoId`) REFERENCES `userroles` (`urAutoId`),
  CONSTRAINT `FK_portletsusers_portlets` FOREIGN KEY (`portletId`) REFERENCES `portlets` (`portletId`)
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

-- Dumping data for table education.producers: ~2 rows (approximately)
DELETE FROM `producers`;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
INSERT INTO `producers` (`producerId`, `producerName`, `pwdExpiryDays`, `domainContext`, `usEmployeeId`, `documentHandlerUploadBean`, `documentHandlerDownloadBean`, `createdBy`, `createdDate`, `modifiedDate`, `modifiedBy`, `status`) VALUES
	('PRD000000', 'Default', NULL, NULL, 'SuperAdmin', NULL, NULL, NULL, NULL, NULL, NULL, b'0'),
	('PRD000001', 'EduTel Academy', '2017-08-02 07:33:06', '/edutel', 'PRDADM0001', 'org.hbs.document.fileserver.FileServerUpload', 'org.hbs.document.fileserver.FileServerDownload', 'SuperAdmin', '2017-08-02 07:33:07', '2017-08-02 07:33:08', NULL, b'1'),
	('PRD000002', 'SelfGuru', '2018-03-28 17:29:29', '/sg', 'PRDADM0002', 'org.hbs.document.fileserver.FileServerUpload', 'org.hbs.document.fileserver.FileServerDownload', 'SuperAdmin', '2018-03-28 17:34:12', NULL, NULL, b'1');
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
  `uploadResourceHandler` varchar(50) DEFAULT NULL,
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

-- Dumping data for table education.state: ~35 rows (approximately)
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
  `beforeMsg` varchar(255) DEFAULT NULL,
  `afterMsg` varchar(255) DEFAULT NULL,
  `groupName` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- Dumping data for table education.useractivity: ~123 rows (approximately)
DELETE FROM `useractivity`;
/*!40000 ALTER TABLE `useractivity` DISABLE KEYS */;
INSERT INTO `useractivity` (`autoId`, `action`, `beforeMsg`, `afterMsg`, `groupName`, `className`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
	(1, 'erthtfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'1'),
	(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'1'),
	(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'1'),
	(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'1'),
	(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'1'),
	(6, 'UserImage', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(7, 'UserImage', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(8, 'UserImage', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(9, 'UserImage', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(10, 'UserImage', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(11, 'UserImage', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(12, 'UserImage', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(13, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(14, 'Search_Organisation ', NULL, NULL, '', 'Organisation', NULL, NULL, NULL, NULL, b'1'),
	(15, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(16, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(17, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(18, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(19, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(20, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(21, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(22, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(23, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(24, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(25, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(26, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(27, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(28, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(29, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(30, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(31, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(32, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(33, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(34, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(35, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(36, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(37, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(38, 'Search_Organisation ', NULL, NULL, '', 'Organisation', NULL, NULL, NULL, NULL, b'1'),
	(39, 'Search_Organisation ', NULL, NULL, '', 'Organisation', NULL, NULL, NULL, NULL, b'1'),
	(40, 'Search_Organisation ', NULL, NULL, '', 'Organisation', NULL, NULL, NULL, NULL, b'1'),
	(41, 'Search_Organisation ', NULL, NULL, '', 'Organisation', NULL, NULL, NULL, NULL, b'1'),
	(42, 'Add_Organisation ', NULL, NULL, '', 'Organisation', NULL, NULL, NULL, NULL, b'1'),
	(43, 'Search_Organisation ', NULL, NULL, '', 'Organisation', NULL, NULL, NULL, NULL, b'1'),
	(44, 'Search_Organisation ', NULL, NULL, '', 'Organisation', NULL, NULL, NULL, NULL, b'1'),
	(45, 'Search_Organisation ', NULL, NULL, '', 'Organisation', NULL, NULL, NULL, NULL, b'1'),
	(46, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(47, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(48, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(49, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(50, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(51, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(52, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(53, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(54, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(55, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(56, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(57, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(58, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(59, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(60, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(61, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(62, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(63, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(64, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(65, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(66, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(67, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(68, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(69, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(70, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(71, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(72, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(73, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(74, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(75, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(76, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(77, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(78, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(79, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(80, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(81, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(82, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(83, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(84, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(85, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(86, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(87, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(88, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(89, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(90, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(91, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(92, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(93, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(94, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(95, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(96, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(97, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(98, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(99, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(100, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(101, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(102, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(103, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(104, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(105, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(106, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(107, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(108, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(109, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(110, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(111, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(112, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(113, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(114, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(115, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(116, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1'),
	(117, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(118, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(119, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(120, 'Search_Assessment ', NULL, NULL, '', 'Assessment', NULL, NULL, NULL, NULL, b'1'),
	(121, 'Search_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(122, 'Add_AssessmentQuestion ', NULL, NULL, '', 'AssessmentQuestion', NULL, NULL, NULL, NULL, b'1'),
	(123, 'Login ', NULL, NULL, 'Login', 'UserLog', NULL, NULL, NULL, NULL, b'1');
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
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8;

-- Dumping data for table education.userlog: ~433 rows (approximately)
DELETE FROM `userlog`;
/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` (`ulAutoId`, `usEmployeeId`, `ulUserLoginTime`, `ulUserLogoutTime`, `ulIpaddress`, `ulFetchBlock`) VALUES
	(1, 'USR1513438024801', '2018-03-19 10:35:14', '2018-03-19 10:38:44', '0:0:0:0:0:0:0:1', b'0'),
	(2, 'USR1513438024801', '2018-03-19 10:39:43', '2018-03-19 11:12:01', '0:0:0:0:0:0:0:1', b'0'),
	(3, 'USR1513438024801', '2018-03-21 11:37:10', '2018-03-21 12:08:04', '0:0:0:0:0:0:0:1', b'0'),
	(4, 'USR1513438024801', '2018-03-21 20:48:47', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(5, 'USR1513438024801', '2018-03-21 21:02:59', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(6, 'USR1513438024801', '2018-03-21 21:43:07', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(7, 'USR1513438024801', '2018-03-22 12:38:49', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(8, 'USR1513438024801', '2018-03-22 13:03:07', '2018-03-22 13:47:07', '0:0:0:0:0:0:0:1', b'0'),
	(9, 'USR1513438024801', '2018-03-22 13:47:09', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(10, 'USR1513438024801', '2018-03-22 13:54:53', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(11, 'USR1513438024801', '2018-03-22 15:27:57', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(12, 'USR1513438024801', '2018-03-22 15:32:27', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(13, 'USR1513438024801', '2018-03-22 15:34:40', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(14, 'USR1513438024801', '2018-03-22 16:14:13', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(15, 'USR1513438024801', '2018-03-22 16:30:58', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(16, 'USR1513438024801', '2018-03-24 13:57:28', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(17, 'USR1513438024801', '2018-03-24 16:36:18', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(18, 'USR1513438024801', '2018-03-26 03:21:27', '2018-03-26 03:40:55', '0:0:0:0:0:0:0:1', b'0'),
	(19, 'USR1513438024801', '2018-03-26 10:15:29', '2018-03-26 10:53:32', '0:0:0:0:0:0:0:1', b'0'),
	(20, 'USR1513438024801', '2018-03-26 11:38:00', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(21, 'USR1513438024801', '2018-03-26 11:49:03', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(22, 'USR1513438024801', '2018-03-26 12:50:48', '2018-03-26 13:22:03', '0:0:0:0:0:0:0:1', b'0'),
	(23, 'USR1513438024801', '2018-03-26 14:20:19', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(24, 'USR1513438024801', '2018-03-26 14:46:55', '2018-03-26 15:23:40', '0:0:0:0:0:0:0:1', b'0'),
	(25, 'USR1513438024801', '2018-03-26 16:06:08', '2018-03-26 17:02:41', '0:0:0:0:0:0:0:1', b'0'),
	(26, 'USR1513438024801', '2018-03-26 17:12:19', '2018-03-26 17:58:11', '0:0:0:0:0:0:0:1', b'0'),
	(27, 'USR1513438024801', '2018-03-26 18:06:36', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(28, 'USR1513438024801', '2018-03-26 18:23:39', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(29, 'USR1513438024801', '2018-03-26 18:33:43', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(30, 'USR1513438024801', '2018-03-26 18:50:53', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(31, 'USR1513438024801', '2018-03-26 19:27:39', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(32, 'USR1513438024801', '2018-03-26 19:33:04', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(33, 'USR1513438024801', '2018-03-26 19:37:45', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(34, 'USR1513438024801', '2018-03-26 20:00:35', '2018-03-26 20:01:06', '0:0:0:0:0:0:0:1', b'0'),
	(35, 'USR1513438024801', '2018-03-27 10:57:04', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(36, 'USR1513438024801', '2018-03-27 11:35:30', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(37, 'USR1513438024801', '2018-03-27 11:44:26', '2018-03-27 12:33:04', '0:0:0:0:0:0:0:1', b'0'),
	(38, 'USR1513438024801', '2018-03-27 12:43:14', '2018-03-27 13:21:05', '0:0:0:0:0:0:0:1', b'0'),
	(39, 'USR1513438024801', '2018-03-27 14:20:24', '2018-03-27 14:54:49', '0:0:0:0:0:0:0:1', b'0'),
	(40, 'USR1513438024801', '2018-03-27 16:08:21', '2018-03-27 16:39:51', '0:0:0:0:0:0:0:1', b'0'),
	(41, 'USR1513438024801', '2018-03-27 16:51:40', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(42, 'USR1513438024801', '2018-03-27 17:47:29', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(43, 'USR1513438024801', '2018-03-27 17:51:50', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(44, 'USR1513438024801', '2018-03-27 18:06:51', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(45, 'USR1513438024801', '2018-03-27 19:00:56', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(46, 'USR1513438024801', '2018-03-27 19:02:42', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(47, 'USR1513438024801', '2018-03-27 19:05:25', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(48, 'USR1513438024801', '2018-03-27 19:22:00', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(49, 'USR1513438024801', '2018-03-27 19:56:16', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(50, 'USR1513438024801', '2018-03-27 19:56:18', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(51, 'USR1513438024801', '2018-03-28 10:39:35', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(52, 'USR1513438024801', '2018-03-28 11:18:41', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(53, 'USR1513438024801', '2018-03-28 11:37:05', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(54, 'USR1513438024801', '2018-03-28 11:53:44', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(55, 'USR1513438024801', '2018-03-28 12:00:12', '2018-03-28 12:38:03', '0:0:0:0:0:0:0:1', b'0'),
	(56, 'USR1513438024801', '2018-03-28 18:28:52', '2018-03-28 18:31:01', '0:0:0:0:0:0:0:1', b'0'),
	(57, 'USR1513438024801', '2018-03-28 18:32:45', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(58, 'USR1513438024801', '2018-03-28 18:44:30', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(59, 'USR1513438024801', '2018-03-28 19:29:34', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(60, 'USR1513438024801', '2018-03-28 19:40:01', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(61, 'USR1513438024801', '2018-03-28 19:53:16', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(62, 'USR1513438024801', '2018-03-28 20:00:25', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(63, 'USR1513438024801', '2018-03-29 10:50:43', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(64, 'USR1513438024801', '2018-03-29 11:01:26', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(65, 'USR1513438024801', '2018-03-29 11:06:38', '2018-03-29 11:46:15', '0:0:0:0:0:0:0:1', b'0'),
	(66, 'USR1513438024801', '2018-03-29 11:46:45', '2018-03-29 11:58:47', '0:0:0:0:0:0:0:1', b'0'),
	(67, 'USR1513438024801', '2018-03-29 11:59:04', '2018-03-29 12:03:13', '0:0:0:0:0:0:0:1', b'0'),
	(68, 'USR1513438024801', '2018-03-29 12:03:42', '2018-03-29 12:10:04', '0:0:0:0:0:0:0:1', b'0'),
	(69, 'USR1513438024801', '2018-03-29 12:10:17', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(70, 'USR1513438024801', '2018-03-29 12:51:15', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(71, 'USR1513438024801', '2018-03-29 13:25:34', '2018-03-29 13:57:29', '0:0:0:0:0:0:0:1', b'0'),
	(72, 'USR1513438024801', '2018-03-29 14:17:06', '2018-03-29 14:25:03', '0:0:0:0:0:0:0:1', b'0'),
	(73, 'USR1513438024801', '2018-03-29 14:25:17', '2018-03-29 15:00:44', '0:0:0:0:0:0:0:1', b'0'),
	(74, 'USR1513438024801', '2018-03-29 15:00:56', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(75, 'USR1513438024801', '2018-03-29 15:13:36', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(76, 'USR1513438024801', '2018-03-29 15:24:46', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(77, 'USR1513438024801', '2018-03-29 15:27:30', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(78, 'USR1513438024801', '2018-03-29 15:32:38', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(79, 'USR1513438024801', '2018-03-29 16:04:43', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(80, 'USR1513438024801', '2018-03-29 16:20:21', '2018-03-29 16:58:48', '0:0:0:0:0:0:0:1', b'0'),
	(81, 'USR1513438024801', '2018-03-29 17:10:22', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(82, 'USR1513438024801', '2018-03-29 17:43:46', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(83, 'USR1513438024801', '2018-03-29 18:02:14', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(84, 'USR1513438024801', '2018-03-29 19:13:44', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(85, 'USR1513438024801', '2018-03-29 19:16:59', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(86, 'USR1513438024801', '2018-03-29 19:20:47', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(87, 'USR1513438024801', '2018-03-29 19:23:44', '2018-03-29 19:42:49', '0:0:0:0:0:0:0:1', b'0'),
	(88, 'USR1513438024801', '2018-03-29 19:43:54', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(89, 'USR1513438024801', '2018-03-29 20:18:40', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(90, 'USR1513438024801', '2018-03-29 21:37:48', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(91, 'USR1513438024801', '2018-03-30 11:08:26', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(92, 'USR1513438024801', '2018-03-30 11:58:49', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(93, 'USR1513438024801', '2018-03-30 12:46:08', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(94, 'USR1513438024801', '2018-03-30 12:55:12', '2018-03-30 13:53:55', '0:0:0:0:0:0:0:1', b'0'),
	(95, 'USR1513438024801', '2018-03-30 14:25:05', '2018-03-30 14:57:06', '0:0:0:0:0:0:0:1', b'0'),
	(96, 'USR1513438024801', '2018-03-30 16:02:16', '2018-03-30 16:34:15', '0:0:0:0:0:0:0:1', b'0'),
	(97, 'USR1513438024801', '2018-03-30 17:00:15', '2018-03-30 17:32:34', '0:0:0:0:0:0:0:1', b'0'),
	(98, 'USR1513438024801', '2018-03-30 18:21:14', '2018-03-30 19:02:35', '0:0:0:0:0:0:0:1', b'0'),
	(99, 'USR1513438024801', '2018-03-31 10:09:57', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(100, 'USR1513438024801', '2018-03-31 10:17:24', '2018-03-31 11:15:08', '0:0:0:0:0:0:0:1', b'0'),
	(101, 'USR1513438024801', '2018-03-31 12:04:50', '2018-03-31 12:19:08', '0:0:0:0:0:0:0:1', b'0'),
	(102, 'USR1513438024801', '2018-03-31 12:19:37', '2018-03-31 13:39:10', '0:0:0:0:0:0:0:1', b'0'),
	(103, 'USR1513438024801', '2018-03-31 13:50:55', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(104, 'USR1513438024801', '2018-03-31 13:54:41', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(105, 'USR1513438024801', '2018-03-31 14:26:03', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(106, 'USR1513438024801', '2018-03-31 14:32:58', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(107, 'USR1513438024801', '2018-03-31 14:51:26', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(108, 'USR1513438024801', '2018-03-31 15:14:45', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(109, 'USR1513438024801', '2018-04-01 03:24:54', '2018-04-01 04:30:56', '0:0:0:0:0:0:0:1', b'0'),
	(110, 'USR1513438024801', '2018-04-01 04:37:22', '2018-04-01 05:09:56', '0:0:0:0:0:0:0:1', b'0'),
	(111, 'USR1513438024801', '2018-04-01 05:57:53', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(112, 'USR1513438024801', '2018-04-01 06:02:05', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(113, 'USR1513438024801', '2018-04-02 10:44:26', '2018-04-02 11:15:17', '0:0:0:0:0:0:0:1', b'0'),
	(114, 'USR1513438024801', '2018-04-02 11:33:17', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(115, 'USR1513438024801', '2018-04-02 11:39:21', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(116, 'USR1513438024801', '2018-04-02 11:57:32', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(117, 'USR1513438024801', '2018-04-02 12:16:10', '2018-04-02 12:48:38', '0:0:0:0:0:0:0:1', b'0'),
	(118, 'USR1513438024801', '2018-04-02 13:04:26', '2018-04-02 13:09:49', '0:0:0:0:0:0:0:1', b'0'),
	(119, 'USR1513438024801', '2018-04-02 13:11:03', '2018-04-02 13:11:12', '0:0:0:0:0:0:0:1', b'0'),
	(120, 'USR1513438024801', '2018-04-02 13:19:12', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(121, 'USR1513438024801', '2018-04-02 13:19:21', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(122, 'USR1513438024801', '2018-04-02 13:19:55', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(123, 'USR1513438024801', '2018-04-02 13:29:57', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(124, 'USR1513438024801', '2018-04-02 13:30:38', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(125, 'USR1513438024801', '2018-04-02 13:41:31', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(126, 'USR1513438024801', '2018-04-02 13:46:27', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(127, 'USR1513438024801', '2018-04-02 14:36:45', '2018-04-02 14:44:32', '0:0:0:0:0:0:0:1', b'0'),
	(128, 'USR1513438024801', '2018-04-02 15:26:20', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(129, 'USR1513438024801', '2018-04-02 17:39:29', '2018-04-02 17:58:44', '0:0:0:0:0:0:0:1', b'0'),
	(130, 'USR1513438024801', '2018-04-03 10:30:03', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(131, 'USR1513438024801', '2018-04-03 11:27:03', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(132, 'USR1513438024801', '2018-04-03 12:16:18', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(133, 'USR1513438024801', '2018-04-03 12:43:23', '2018-04-03 12:48:45', '0:0:0:0:0:0:0:1', b'0'),
	(134, 'USR1513438024801', '2018-04-03 12:48:49', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(135, 'USR1513438024801', '2018-04-03 12:54:57', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(136, 'USR1513438024801', '2018-04-03 13:00:11', '2018-04-03 13:32:47', '0:0:0:0:0:0:0:1', b'0'),
	(137, 'USR1513438024801', '2018-04-03 14:39:03', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(138, 'USR1513438024801', '2018-04-03 14:45:43', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(139, 'USR1513438024801', '2018-04-03 14:57:36', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(140, 'USR1513438024801', '2018-04-03 14:57:48', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(141, 'USR1513438024801', '2018-04-03 15:39:47', '2018-04-03 15:47:31', '0:0:0:0:0:0:0:1', b'0'),
	(142, 'USR1513438024801', '2018-04-03 17:19:51', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(143, 'USR1513438024801', '2018-04-03 17:21:28', '2018-04-03 17:45:15', '0:0:0:0:0:0:0:1', b'0'),
	(144, 'USR1513438024801', '2018-04-03 20:32:52', NULL, '127.0.0.1', b'0'),
	(145, 'USR1513438024801', '2018-04-04 10:07:10', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(146, 'USR1513438024801', '2018-04-04 10:07:11', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(147, 'USR1513438024801', '2018-04-04 10:08:46', '2018-04-04 10:22:24', '0:0:0:0:0:0:0:1', b'0'),
	(148, 'USR1513438024801', '2018-04-04 10:29:48', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(149, 'USR1513438024801', '2018-04-04 10:50:02', '2018-04-04 11:03:08', '0:0:0:0:0:0:0:1', b'0'),
	(150, 'USR1513438024801', '2018-04-04 11:03:59', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(151, 'USR1513438024801', '2018-04-04 11:11:04', '2018-04-04 11:36:10', '0:0:0:0:0:0:0:1', b'0'),
	(152, 'USR1513438024801', '2018-04-04 12:04:42', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(153, 'USR1513438024801', '2018-04-04 12:19:05', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(154, 'USR1513438024801', '2018-04-04 12:36:30', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(155, 'USR1513438024801', '2018-04-04 12:55:03', '2018-04-04 13:09:24', '0:0:0:0:0:0:0:1', b'0'),
	(156, 'USR1513438024801', '2018-04-04 13:14:06', '2018-04-04 13:23:25', '0:0:0:0:0:0:0:1', b'0'),
	(157, 'USR1513438024801', '2018-04-04 14:50:35', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(158, 'USR1513438024801', '2018-04-04 14:52:03', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(159, 'USR1513438024801', '2018-04-04 14:55:32', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(160, 'USR1513438024801', '2018-04-04 15:00:31', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(161, 'USR1513438024801', '2018-04-04 15:08:03', '2018-04-04 15:08:14', '0:0:0:0:0:0:0:1', b'0'),
	(162, 'USR1513438024801', '2018-04-04 15:26:32', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(163, 'USR1513438024801', '2018-04-04 15:39:54', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(164, 'USR1513438024801', '2018-04-04 16:06:07', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(165, 'USR1513438024801', '2018-04-04 16:08:21', '2018-04-04 16:11:16', '0:0:0:0:0:0:0:1', b'0'),
	(166, 'USR1513438024801', '2018-04-04 17:13:52', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(167, 'USR1513438024801', '2018-04-04 17:22:03', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(168, 'USR1513438024801', '2018-04-04 17:25:35', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(169, 'USR1513438024801', '2018-04-04 17:34:31', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(170, 'USR1513438024801', '2018-04-04 17:36:34', '2018-04-04 17:50:13', '0:0:0:0:0:0:0:1', b'0'),
	(171, 'USR1513438024801', '2018-04-04 18:10:29', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(172, 'USR1513438024801', '2018-04-04 18:10:29', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(173, 'USR1513438024801', '2018-04-04 18:10:29', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(174, 'USR1513438024801', '2018-04-04 18:10:30', '2018-04-04 18:20:48', '0:0:0:0:0:0:0:1', b'0'),
	(175, 'USR1513438024801', '2018-04-04 18:32:13', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(176, 'USR1513438024801', '2018-04-04 18:37:46', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(177, 'USR1513438024801', '2018-04-04 18:49:40', '2018-04-04 19:05:33', '0:0:0:0:0:0:0:1', b'0'),
	(178, 'USR1513438024801', '2018-04-04 19:05:48', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(179, 'USR1513438024801', '2018-04-04 19:21:25', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(180, 'USR1513438024801', '2018-04-04 19:22:20', '2018-04-04 19:40:01', '0:0:0:0:0:0:0:1', b'0'),
	(181, 'USR1513438024801', '2018-04-05 10:18:26', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(182, 'USR1513438024801', '2018-04-05 10:32:56', '2018-04-05 10:57:19', '0:0:0:0:0:0:0:1', b'0'),
	(183, 'USR1513438024801', '2018-04-05 11:01:47', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(184, 'USR1513438024801', '2018-04-05 11:17:26', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(185, 'USR1513438024801', '2018-04-05 11:27:14', '2018-04-05 11:49:04', '0:0:0:0:0:0:0:1', b'0'),
	(186, 'USR1513438024801', '2018-04-05 11:56:02', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(187, 'USR1513438024801', '2018-04-05 12:05:27', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(188, 'USR1513438024801', '2018-04-05 12:17:42', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(189, 'USR1513438024801', '2018-04-05 12:37:25', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(190, 'USR1513438024801', '2018-04-05 12:39:33', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(191, 'USR1513438024801', '2018-04-05 12:41:19', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(192, 'USR1513438024801', '2018-04-05 13:08:01', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(193, 'USR1513438024801', '2018-04-05 13:10:42', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(194, 'USR1513438024801', '2018-04-05 13:11:56', '2018-04-05 14:22:35', '0:0:0:0:0:0:0:1', b'0'),
	(195, 'USR1513438024801', '2018-04-05 14:23:20', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(196, 'USR1513438024801', '2018-04-05 14:51:53', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(197, 'USR1513438024801', '2018-04-05 14:55:01', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(198, 'USR1513438024801', '2018-04-05 15:50:17', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(199, 'USR1513438024801', '2018-04-05 15:59:02', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(200, 'USR1513438024801', '2018-04-05 16:37:46', '2018-04-05 17:49:14', '0:0:0:0:0:0:0:1', b'0'),
	(201, 'USR1513438024801', '2018-04-05 17:58:58', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(202, 'USR1513438024801', '2018-04-05 18:11:23', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(203, 'USR1513438024801', '2018-04-06 10:20:03', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(204, 'USR1513438024801', '2018-04-06 10:30:21', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(205, 'USR1513438024801', '2018-04-06 10:32:38', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(206, 'USR1513438024801', '2018-04-06 10:34:27', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(207, 'USR1513438024801', '2018-04-06 10:44:44', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(208, 'USR1513438024801', '2018-04-06 11:07:02', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(209, 'USR1513438024801', '2018-04-06 11:15:07', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(210, 'USR1513438024801', '2018-04-06 11:59:50', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(211, 'USR1513438024801', '2018-04-06 12:08:23', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(212, 'USR1513438024801', '2018-04-06 12:11:49', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(213, 'USR1513438024801', '2018-04-06 12:13:30', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(214, 'USR1513438024801', '2018-04-06 12:15:02', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(215, 'USR1513438024801', '2018-04-06 12:16:41', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(216, 'USR1513438024801', '2018-04-06 12:29:46', '2018-04-06 12:34:56', '0:0:0:0:0:0:0:1', b'0'),
	(217, 'USR1513438024801', '2018-04-06 12:37:20', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(218, 'USR1513438024801', '2018-04-06 12:38:37', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(219, 'USR1513438024801', '2018-04-06 12:43:01', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(220, 'USR1513438024801', '2018-04-06 12:45:26', '2018-04-06 12:46:15', '0:0:0:0:0:0:0:1', b'0'),
	(221, 'USR1513438024801', '2018-04-06 12:46:32', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(222, 'USR1513438024801', '2018-04-06 12:56:09', '2018-04-06 12:58:05', '0:0:0:0:0:0:0:1', b'0'),
	(223, 'USR1513438024801', '2018-04-06 13:00:10', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(224, 'USR1513438024801', '2018-04-06 13:02:02', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(225, 'USR1513438024801', '2018-04-06 13:04:27', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(226, 'USR1513438024801', '2018-04-06 13:06:43', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(227, 'USR1513438024801', '2018-04-06 13:13:02', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(228, 'USR1513438024801', '2018-04-06 13:14:41', '2018-04-06 13:19:32', '0:0:0:0:0:0:0:1', b'0'),
	(229, 'USR1513438024801', '2018-04-06 13:19:46', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(230, 'USR1513438024801', '2018-04-06 13:24:04', '2018-04-06 13:26:36', '0:0:0:0:0:0:0:1', b'0'),
	(231, 'USR1513438024801', '2018-04-06 13:26:49', '2018-04-06 13:28:22', '0:0:0:0:0:0:0:1', b'0'),
	(232, 'USR1513438024801', '2018-04-06 13:28:36', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(233, 'USR1513438024801', '2018-04-06 14:10:22', '2018-04-06 14:13:45', '0:0:0:0:0:0:0:1', b'0'),
	(234, 'USR1513438024801', '2018-04-06 14:14:04', '2018-04-06 14:18:38', '0:0:0:0:0:0:0:1', b'0'),
	(235, 'USR1513438024801', '2018-04-06 14:21:54', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(236, 'USR1513438024801', '2018-04-06 14:22:54', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(237, 'USR1513438024801', '2018-04-06 14:25:26', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(238, 'USR1513438024801', '2018-04-06 14:30:35', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(239, 'USR1513438024801', '2018-04-06 14:34:54', '2018-04-06 15:20:16', '0:0:0:0:0:0:0:1', b'0'),
	(240, 'USR1513438024801', '2018-04-06 15:20:32', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(241, 'USR1513438024801', '2018-04-06 15:32:13', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(242, 'USR1513438024801', '2018-04-06 17:02:12', '2018-04-06 17:25:18', '0:0:0:0:0:0:0:1', b'0'),
	(243, 'USR1513438024801', '2018-04-06 17:27:10', '2018-04-06 17:59:33', '0:0:0:0:0:0:0:1', b'0'),
	(244, 'USR1513438024801', '2018-04-06 17:59:56', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(245, 'USR1513438024801', '2018-04-06 18:04:24', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(246, 'USR1513438024801', '2018-04-06 18:56:13', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(247, 'USR1513438024801', '2018-04-06 19:12:25', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(248, 'USR1513438024801', '2018-04-06 19:16:53', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(249, 'USR1513438024801', '2018-04-06 19:23:21', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(250, 'USR1513438024801', '2018-04-06 19:30:55', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(251, 'USR1513438024801', '2018-04-06 19:41:24', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(252, 'USR1513438024801', '2018-04-07 12:05:25', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(253, 'USR1513438024801', '2018-04-07 12:16:50', '2018-04-07 12:40:29', '0:0:0:0:0:0:0:1', b'0'),
	(254, 'USR1513438024801', '2018-04-07 14:24:39', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(255, 'USR1513438024801', '2018-04-07 14:54:28', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(256, 'USR1513438024801', '2018-04-07 15:13:45', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(257, 'USR1513438024801', '2018-04-07 16:16:00', '2018-04-07 17:11:01', '0:0:0:0:0:0:0:1', b'0'),
	(258, 'USR1513438024801', '2018-04-07 17:26:49', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(259, 'USR1513438024801', '2018-04-07 17:37:58', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(260, 'USR1513438024801', '2018-04-07 17:50:34', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(261, 'USR1513438024801', '2018-04-07 18:13:41', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(262, 'USR1513438024801', '2018-04-09 10:14:38', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(263, 'USR1513438024801', '2018-04-09 10:22:27', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(264, 'USR1513438024801', '2018-04-09 10:26:34', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(265, 'USR1513438024801', '2018-04-09 10:27:50', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(266, 'USR1513438024801', '2018-04-09 10:28:37', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(267, 'USR1513438024801', '2018-04-09 10:43:48', '2018-04-09 10:44:20', '0:0:0:0:0:0:0:1', b'0'),
	(268, 'USR1513438024801', '2018-04-09 10:49:14', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(269, 'USR1513438024801', '2018-04-09 10:52:45', '2018-04-09 10:53:24', '0:0:0:0:0:0:0:1', b'0'),
	(270, 'USR1513438024801', '2018-04-09 10:53:31', '2018-04-09 11:40:47', '0:0:0:0:0:0:0:1', b'0'),
	(271, 'USR1513438024801', '2018-04-09 11:48:16', '2018-04-09 11:51:38', '0:0:0:0:0:0:0:1', b'0'),
	(272, 'USR1513438024801', '2018-04-09 11:54:48', '2018-04-09 11:57:39', '0:0:0:0:0:0:0:1', b'0'),
	(273, 'USR1513438024801', '2018-04-09 11:57:45', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(274, 'USR1513438024801', '2018-04-09 12:06:30', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(275, 'USR1513438024801', '2018-04-09 12:23:36', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(276, 'USR1513438024801', '2018-04-09 12:35:17', '2018-04-09 12:49:10', '0:0:0:0:0:0:0:1', b'0'),
	(277, 'USR1513438024801', '2018-04-09 12:49:08', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(278, 'USR1513438024801', '2018-04-09 12:50:39', '2018-04-09 13:54:35', '0:0:0:0:0:0:0:1', b'0'),
	(279, 'USR1513438024801', '2018-04-09 14:19:45', '2018-04-09 14:23:14', '0:0:0:0:0:0:0:1', b'0'),
	(280, 'USR1513438024801', '2018-04-09 14:23:26', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(281, 'USR1513438024801', '2018-04-09 14:38:53', '2018-04-09 14:38:56', '0:0:0:0:0:0:0:1', b'0'),
	(282, 'USR1513438024801', '2018-04-09 14:40:06', '2018-04-09 14:41:14', '0:0:0:0:0:0:0:1', b'0'),
	(283, 'USR1513438024801', '2018-04-09 14:41:26', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(284, 'USR1513438024801', '2018-04-09 14:41:37', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(285, 'USR1513438024801', '2018-04-09 15:04:17', '2018-04-09 15:19:37', '0:0:0:0:0:0:0:1', b'0'),
	(286, 'USR1513438024801', '2018-04-09 15:29:39', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(287, 'USR1513438024801', '2018-04-09 15:32:00', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(288, 'USR1513438024801', '2018-04-09 15:33:08', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(289, 'USR1513438024801', '2018-04-09 15:36:38', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(290, 'USR1513438024801', '2018-04-09 15:46:56', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(291, 'USR1513438024801', '2018-04-09 15:49:14', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(292, 'USR1513438024801', '2018-04-09 16:01:07', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(293, 'USR1513438024801', '2018-04-09 16:05:35', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(294, 'USR1513438024801', '2018-04-09 16:09:29', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(295, 'USR1513438024801', '2018-04-09 16:12:06', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(296, 'USR1513438024801', '2018-04-09 16:41:04', '2018-04-09 17:31:27', '0:0:0:0:0:0:0:1', b'0'),
	(297, 'USR1513438024801', '2018-04-09 17:37:55', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(298, 'USR1513438024801', '2018-04-09 17:38:20', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(299, 'USR1513438024801', '2018-04-09 17:51:06', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(300, 'USR1513438024801', '2018-04-09 17:52:20', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(301, 'USR1513438024801', '2018-04-09 17:54:16', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(302, 'USR1513438024801', '2018-04-09 17:55:13', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(303, 'USR1513438024801', '2018-04-09 18:07:12', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(304, 'USR1513438024801', '2018-04-09 18:08:36', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(305, 'USR1513438024801', '2018-04-09 18:10:56', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(306, 'USR1513438024801', '2018-04-09 18:15:23', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(307, 'USR1513438024801', '2018-04-09 18:32:51', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(308, 'USR1513438024801', '2018-04-09 18:37:32', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(309, 'USR1513438024801', '2018-04-09 18:42:50', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(310, 'USR1513438024801', '2018-04-09 18:46:29', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(311, 'USR1513438024801', '2018-04-09 18:55:33', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(312, 'USR1513438024801', '2018-04-09 19:00:51', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(313, 'USR1513438024801', '2018-04-09 19:02:55', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(314, 'USR1513438024801', '2018-04-09 19:19:19', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(315, 'USR1513438024801', '2018-04-09 19:19:20', '2018-04-09 19:19:30', '0:0:0:0:0:0:0:1', b'0'),
	(316, 'USR1513438024801', '2018-04-09 19:19:20', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(317, 'USR1513438024801', '2018-04-09 19:19:46', '2018-04-09 19:20:20', '0:0:0:0:0:0:0:1', b'0'),
	(318, 'USR1513438024801', '2018-04-09 19:27:29', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(319, 'USR1513438024801', '2018-04-09 19:39:09', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(320, 'USR1513438024801', '2018-04-09 19:45:17', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(321, 'USR1513438024801', '2018-04-09 19:56:34', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(322, 'USR1513438024801', '2018-04-10 10:03:15', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(323, 'USR1513438024801', '2018-04-10 10:05:13', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(324, 'USR1513438024801', '2018-04-10 10:11:14', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(325, 'USR1513438024801', '2018-04-10 10:19:24', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(326, 'USR1513438024801', '2018-04-10 11:11:02', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(327, 'USR1513438024801', '2018-04-10 11:30:11', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(328, 'USR1513438024801', '2018-04-10 11:41:07', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(329, 'USR1513438024801', '2018-04-10 11:44:51', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(330, 'USR1513438024801', '2018-04-10 11:53:03', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(331, 'USR1513438024801', '2018-04-10 11:54:16', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(332, 'USR1513438024801', '2018-04-10 12:00:01', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(333, 'USR1513438024801', '2018-04-10 12:22:50', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(334, 'USR1513438024801', '2018-04-10 12:27:13', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(335, 'USR1513438024801', '2018-04-10 12:30:27', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(336, 'USR1513438024801', '2018-04-10 12:35:52', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(337, 'USR1513438024801', '2018-04-10 12:42:51', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(338, 'USR1513438024801', '2018-04-10 13:01:55', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(339, 'USR1513438024801', '2018-04-10 13:32:28', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(340, 'USR1513438024801', '2018-04-10 13:35:28', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(341, 'USR1513438024801', '2018-04-10 13:37:39', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(342, 'USR1513438024801', '2018-04-10 13:44:24', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(343, 'USR1513438024801', '2018-04-10 13:57:47', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(344, 'USR1513438024801', '2018-04-10 14:04:01', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(345, 'USR1513438024801', '2018-04-10 14:11:57', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(346, 'USR1513438024801', '2018-04-10 14:15:38', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(347, 'USR1513438024801', '2018-04-10 14:20:36', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(348, 'USR1513438024801', '2018-04-10 14:20:41', '2018-04-10 14:26:26', '0:0:0:0:0:0:0:1', b'0'),
	(349, 'USR1513438024801', '2018-04-10 14:26:48', '2018-04-10 14:29:12', '0:0:0:0:0:0:0:1', b'0'),
	(350, 'USR1513438024801', '2018-04-10 14:29:18', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(351, 'USR1513438024801', '2018-04-10 14:29:43', '2018-04-10 14:30:18', '0:0:0:0:0:0:0:1', b'0'),
	(352, 'USR1513438024801', '2018-04-10 14:32:59', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(353, 'USR1513438024801', '2018-04-10 14:55:37', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(354, 'USR1513438024801', '2018-04-10 15:01:10', '2018-04-10 15:01:58', '0:0:0:0:0:0:0:1', b'0'),
	(355, 'USR1513438024801', '2018-04-10 15:02:03', '2018-04-10 15:02:39', '0:0:0:0:0:0:0:1', b'0'),
	(356, 'USR1513438024801', '2018-04-10 15:02:44', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(357, 'USR1513438024801', '2018-04-10 15:26:52', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(358, 'USR1513438024801', '2018-04-10 15:33:01', '2018-04-10 15:35:24', '0:0:0:0:0:0:0:1', b'0'),
	(359, 'USR1513438024801', '2018-04-10 15:38:33', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(360, 'USR1513438024801', '2018-04-10 15:40:24', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(361, 'USR1513438024801', '2018-04-10 15:43:22', '2018-04-10 16:17:25', '0:0:0:0:0:0:0:1', b'0'),
	(362, 'USR1513438024801', '2018-04-10 16:28:12', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(363, 'USR1513438024801', '2018-04-10 16:31:27', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(364, 'USR1513438024801', '2018-04-10 16:32:41', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(365, 'USR1513438024801', '2018-04-10 16:35:23', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(366, 'USR1513438024801', '2018-04-10 16:36:53', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(367, 'USR1513438024801', '2018-04-10 16:40:33', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(368, 'USR1513438024801', '2018-04-10 16:45:52', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(369, 'USR1513438024801', '2018-04-10 16:50:19', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(370, 'USR1513438024801', '2018-04-10 17:06:01', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(371, 'USR1513438024801', '2018-04-10 17:14:30', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(372, 'USR1513438024801', '2018-04-10 17:33:18', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(373, 'USR1513438024801', '2018-04-10 17:41:06', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(374, 'USR1513438024801', '2018-04-10 17:47:19', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(375, 'USR1513438024801', '2018-04-10 17:53:57', '2018-04-10 19:39:04', '0:0:0:0:0:0:0:1', b'0'),
	(376, 'USR1513438024801', '2018-04-10 19:39:24', '2018-04-10 19:55:54', '0:0:0:0:0:0:0:1', b'0'),
	(377, 'USR1513438024801', '2018-04-11 10:16:20', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(378, 'USR1513438024801', '2018-04-11 10:31:37', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(379, 'USR1513438024801', '2018-04-11 10:35:49', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(380, 'USR1513438024801', '2018-04-11 10:51:08', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(381, 'USR1513438024801', '2018-04-11 10:55:28', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(382, 'USR1513438024801', '2018-04-11 10:58:20', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(383, 'USR1513438024801', '2018-04-11 11:01:20', '2018-04-11 12:00:55', '0:0:0:0:0:0:0:1', b'0'),
	(384, 'USR1513438024801', '2018-04-11 12:13:39', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(385, 'USR1513438024801', '2018-04-11 12:17:28', '2018-04-11 12:53:36', '0:0:0:0:0:0:0:1', b'0'),
	(386, 'USR1513438024801', '2018-04-11 12:55:31', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(387, 'USR1513438024801', '2018-04-11 13:16:48', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(388, 'USR1513438024801', '2018-04-11 13:21:40', '2018-04-11 14:08:42', '0:0:0:0:0:0:0:1', b'0'),
	(389, 'USR1513438024801', '2018-04-11 14:17:14', '2018-04-11 14:32:20', '0:0:0:0:0:0:0:1', b'0'),
	(390, 'USR1513438024801', '2018-04-11 14:34:27', '2018-04-11 14:35:54', '0:0:0:0:0:0:0:1', b'0'),
	(391, 'USR1513438024801', '2018-04-11 14:36:56', '2018-04-11 14:37:59', '0:0:0:0:0:0:0:1', b'0'),
	(392, 'USR1513438024801', '2018-04-11 14:39:20', '2018-04-11 14:41:33', '0:0:0:0:0:0:0:1', b'0'),
	(393, 'USR1513438024801', '2018-04-11 14:41:42', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(394, 'USR1513438024801', '2018-04-11 14:44:33', '2018-04-11 14:45:24', '0:0:0:0:0:0:0:1', b'0'),
	(395, 'USR1513438024801', '2018-04-11 14:45:32', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(396, 'USR1513438024801', '2018-04-11 14:46:19', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(397, 'USR1513438024801', '2018-04-11 14:48:31', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(398, 'USR1513438024801', '2018-04-11 14:49:55', '2018-04-11 14:50:46', '0:0:0:0:0:0:0:1', b'0'),
	(399, 'USR1513438024801', '2018-04-11 14:50:52', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(400, 'USR1513438024801', '2018-04-11 14:51:28', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(401, 'USR1513438024801', '2018-04-11 14:53:41', '2018-04-11 14:55:55', '0:0:0:0:0:0:0:1', b'0'),
	(402, 'USR1513438024801', '2018-04-11 14:56:02', '2018-04-11 14:59:55', '0:0:0:0:0:0:0:1', b'0'),
	(403, 'USR1513438024801', '2018-04-11 14:59:55', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(404, 'USR1513438024801', '2018-04-11 15:03:43', '2018-04-11 15:08:07', '0:0:0:0:0:0:0:1', b'0'),
	(405, 'USR1513438024801', '2018-04-11 15:08:14', '2018-04-11 15:17:21', '0:0:0:0:0:0:0:1', b'0'),
	(406, 'USR1513438024801', '2018-04-11 15:17:29', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(407, 'USR1513438024801', '2018-04-11 15:23:05', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(408, 'USR1513438024801', '2018-04-11 15:45:51', '2018-04-11 15:52:01', '0:0:0:0:0:0:0:1', b'0'),
	(409, 'USR1513438024801', '2018-04-11 16:00:05', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(410, 'USR1513438024801', '2018-04-11 16:02:47', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(411, 'USR1513438024801', '2018-04-11 16:05:30', '2018-04-11 16:27:56', '0:0:0:0:0:0:0:1', b'0'),
	(412, 'USR1513438024801', '2018-04-11 16:28:18', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(413, 'USR1513438024801', '2018-04-11 16:33:18', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(414, 'USR1513438024801', '2018-04-11 16:39:07', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(415, 'USR1513438024801', '2018-04-11 16:44:23', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(416, 'USR1513438024801', '2018-04-11 16:47:18', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(417, 'USR1513438024801', '2018-04-11 16:50:19', '2018-04-11 17:19:02', '0:0:0:0:0:0:0:1', b'0'),
	(418, 'USR1513438024801', '2018-04-11 17:20:37', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(419, 'USR1513438024801', '2018-04-11 17:33:18', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(420, 'USR1513438024801', '2018-04-11 17:41:07', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(421, 'USR1513438024801', '2018-04-11 17:50:49', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(422, 'USR1513438024801', '2018-04-11 18:01:01', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(423, 'USR1513438024801', '2018-04-11 18:11:47', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(424, 'USR1513438024801', '2018-04-11 18:27:15', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(425, 'USR1513438024801', '2018-04-11 18:29:33', '2018-04-11 18:34:54', '0:0:0:0:0:0:0:1', b'1'),
	(426, 'USR1513438024801', '2018-04-11 18:35:48', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(427, 'USR1513438024801', '2018-04-11 18:41:59', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(428, 'USR1513438024801', '2018-04-11 18:46:18', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(429, 'USR1513438024801', '2018-04-11 18:55:12', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(430, 'USR1513438024801', '2018-04-11 18:59:44', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(431, 'USR1513438024801', '2018-04-11 19:01:16', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(432, 'USR1513438024801', '2018-04-11 19:12:06', NULL, '0:0:0:0:0:0:0:1', b'0'),
	(433, 'USR1513438024801', '2018-04-11 19:18:05', NULL, '0:0:0:0:0:0:0:1', b'0');
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

-- Dumping data for table education.userroles: ~6 rows (approximately)
DELETE FROM `userroles`;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` (`urAutoId`, `usEmployeeId`, `rlRoleId`) VALUES
	(1, 'SuperAdmin', 'SuperAdminRole'),
	(2, 'USR1513438024799', 'Student'),
	(3, 'PRDADM0001', 'Admin'),
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
	('PRDADM0001', 'PRD000001', 'EduTel', NULL, 'EduTel ', 'Academy', NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', b'0', NULL, NULL, NULL, 'Producer', 'Activated', NULL, '6ecd993b-d84c-46a8-8c57-8d07feb14c47', '2017-09-23 22:00:21', 'IN', 'SuperAdmin', '2018-01-30 23:47:50', NULL, '2018-01-30 23:47:50', b'1'),
	('PRDADM0002', 'PRD000002', 'SelfGuru-Id', 'dd04dfe0-2d1a-4f02-97c3-52274d9a3c0a', 'SelfGuru', 'Aptituders', NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', b'0', '2018-03-28 17:40:23', NULL, NULL, 'Producer', 'Activated', NULL, '6ecd993b-d84c-46a8-8c57-8d07feb14c47', '2018-03-28 17:40:36', 'IN', 'SuperAdmin', '2018-03-28 17:41:03', NULL, NULL, b'1'),
	('SuperAdmin', 'PRD000000', 'SuperAdmin', NULL, 'SuperAdmin', NULL, NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', b'1', '2017-12-03 12:08:35', NULL, NULL, 'Producer', 'Activated', NULL, 'a21e8c20-fa37-4ce8-88d4-6494bb8b844f', '2017-12-03 11:50:59', 'IN', 'SuperAdmin', '2018-01-30 23:47:50', NULL, '2018-01-30 23:47:50', b'1'),
	('USR1513438024799', 'PRD000001', NULL, NULL, 'Ananth', 'Balasubramanian', NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', NULL, NULL, NULL, NULL, 'Consumer', 'Activated', NULL, '0239cba9-7c38-4e06-acf8-a62dc748fb30', '2017-12-16 20:57:29', 'IN', 'PRDADM0001', '2017-12-16 20:57:33', NULL, NULL, b'1'),
	('USR1513438024800', 'PRD000001', NULL, NULL, 'Raja', 'Nellaiyyappar', NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', NULL, NULL, NULL, NULL, 'Consumer', 'Activated', NULL, '0239cba9-7c38-4e06-acf8-a62dc748fb30', '2017-12-16 20:57:29', 'IN', 'PRDADM0001', '2017-12-16 20:57:33', NULL, NULL, b'1'),
	('USR1513438024801', 'PRD000001', NULL, NULL, 'Logeswaran', 'Nellaiyyappar', NULL, '$2a$10$7hnkWav9ZOLtz/Q2y.FLvuIyS3NFQ1J42jkV3SMbo9NRzi1P9m2fW', NULL, NULL, NULL, NULL, 'Employee', 'Activated', NULL, '0239cba9-7c38-4e06-acf8-a62dc748fb30', '2017-12-16 20:57:29', 'SG', 'PRDADM0001', '2018-01-30 23:47:50', NULL, '2018-01-30 23:47:50', b'1');
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
	('ADD10001', 'SuperAdmin', NULL, NULL, NULL, NULL, NULL, 'Tamil Nadu', 'IN', NULL, 'eselfguru@gmail.com', 9500395591, NULL, NULL, NULL, 'CommunicationAddress'),
	('UADD1507911648747', 'PRDADM0001', NULL, NULL, NULL, NULL, NULL, 'Tamil Nadu', 'IN', NULL, 'anandb.hbs@gmail.com', 9789875852, NULL, NULL, NULL, 'CommunicationAddress'),
	('UADD1513438016242', 'USR1513438024799', NULL, NULL, NULL, NULL, NULL, 'Tamil Nadu', 'IN', NULL, 'ananth.malbal@gmail.com', 9865629667, NULL, NULL, NULL, 'CommunicationAddress'),
	('UADD1513438016243', 'USR1513438024800', NULL, NULL, NULL, NULL, NULL, 'Tamil Nadu', 'IN', NULL, 'rajan.hbs@gmail.com', 9943969762, NULL, NULL, NULL, 'CommunicationAddress'),
	('UADD1513438016244', 'USR1513438024801', NULL, NULL, NULL, NULL, NULL, 'Tamil Nadu', 'IN', NULL, 'niranjan@gmail.com', 9677101112, NULL, NULL, NULL, 'CommunicationAddress');
/*!40000 ALTER TABLE `usersaddress` ENABLE KEYS */;


-- Dumping structure for table education.usersattachments
CREATE TABLE IF NOT EXISTS `usersattachments` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `usEmployeeId` varchar(50) DEFAULT NULL,
  `uploadFileDate` datetime DEFAULT NULL,
  `uploadFileFolderURL` varchar(500) DEFAULT NULL,
  `uploadFileLastModifiedDate` datetime DEFAULT NULL,
  `uploadResourceHandler` varchar(50) DEFAULT NULL,
  `uploadFileName` varchar(100) DEFAULT NULL,
  `uploadFileNameForDisplay` varchar(50) DEFAULT NULL,
  `uploadFileSize` bigint(20) NOT NULL,
  `uploadDocumentForType` varchar(50) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`autoId`),
  KEY `FK_userattachments_users` (`usEmployeeId`),
  CONSTRAINT `FK_userattachments_users` FOREIGN KEY (`usEmployeeId`) REFERENCES `users` (`usEmployeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table education.usersattachments: ~0 rows (approximately)
DELETE FROM `usersattachments`;
/*!40000 ALTER TABLE `usersattachments` DISABLE KEYS */;
INSERT INTO `usersattachments` (`autoId`, `usEmployeeId`, `uploadFileDate`, `uploadFileFolderURL`, `uploadFileLastModifiedDate`, `uploadResourceHandler`, `uploadFileName`, `uploadFileNameForDisplay`, `uploadFileSize`, `uploadDocumentForType`, `createdDate`, `modifiedDate`, `createdBy`, `modifiedBy`, `status`) VALUES
	(1, 'USR1513438024801', NULL, 'UserImage', NULL, 'Profile', 'profile.jpg', NULL, 1, 'UserImage', NULL, NULL, NULL, NULL, b'1');
/*!40000 ALTER TABLE `usersattachments` ENABLE KEYS */;


-- Dumping structure for procedure education._GetAssessmentQuestionsByPattern
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `_GetAssessmentQuestionsByPattern`(
	IN `consumerExamId` VARCHAR(50)

)
    DETERMINISTIC
BEGIN
SELECT * FROM ConsumerAssessment
WHERE consumerExamId = consumerExamId; END//
DELIMITER ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
