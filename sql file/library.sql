-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 05:58 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-07-16 18:11:42'),
(2, 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', '2017-07-16 18:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'R.D. Sharma ', '2017-07-08 14:35:36', NULL),
(9, 'fwdfrwer', '2017-07-08 15:22:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `imgname` varchar(200) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`, `imgname`, `image`) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 20, '2017-07-08 20:04:55', '2019-07-05 10:43:47', 'placeholder.jpg', 'data:image/jpg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD//gA7Q1JFQVRPUjogZ2QtanBlZyB2MS4wICh1c2luZyBJSkcgSlBFRyB2NjIpLCBxdWFsaXR5ID0gOTAK/9sAQwADAgIDAgIDAwMDBAMDBAUIBQUEBAUKBwcGCAwKDAwLCgsLDQ4SEA0OEQ4LCxAWEBETFBUVFQwPFxgWFBgSFBUU/9sAQwEDBAQFBAUJBQUJFA0LDRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU/8AAEQgBkAEsAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A/QcCijFGKACijFGM9qACjFOC0uOaAEAxQOBS+tJQAv40fjRRQAnI6UtFFABRRjvS4yaAE5oxzS4/GgCgBDxR1p3XtSYwaAExRTugpNuaAEozS7aQCgAopcUnvQAUUAUUAGaOaMcUmKAAUtFJ3oACM0hXApT7UtADKKdtFN2+1ABRRiigApMUtGKACgUU4D1oAT8KUDFKKKADHNAooxkUAFFHelxQAlFLxilxQAgFGKXGKBjtQAdqTFLRQAUcUCigAzRxRRQAZooooAKKDmigAPX2o4o7UYxQAUmKXrR3oAQ8UYpaDQA2inYxSEAUAJ3ooooACaOooooATbxSEYpRQaAG0fhQaOKAHBaWiigAoo7UUABoApaB0NABjFLik7UtABjrQBRRQAUYoHNFABRRRQAUUUUAFFGKKAAUUUUAFFFFABRRRQAYoxS0UAJ3oxzmiloAQCg0dqKADtTcZp2KOlADaKUjgmkNABRRR1oAQ/nSFfrTulFABR6UUY9qACjvS0uKAAetJjFLS0AJ2oBpaKAEozS0UAFFJS0AJmjNHaigA6UUUUAHWjNFHagAzR0oooAKOtFFABmjNHaigBaKKKACiiigApM0tFABSYyaWigA603GKXiigBuCOtFLt96QigAPvQKOtLQAlKOB/SilA5oABR3oooAKKKKAFpKKKAFpMUUUAGKWkooAO1GKKKADrRRRQAUdqKKADFHWiigAooooAO1FFFAC0fjRRQAUfjRRQAfjRRRQAfjRRSUAL+NH40UUAFIT2paT6UAIRSClooAWijFGaACiijNABRRmigBaSlozQAlFFGaACloooASijNGaACijpRQAUUdaM0AFFGaOlABRRR1oAKKM0ZoAWiiigAooooAKKKKACiiigAooooAKTtRjApaAEpMYpTmgcUALSUtFACZpaKKACijFFAAaM0UYoAAeKKKKADNBoooATPFAo7UdaAAGjPNHWjvQAGjPFHSjtQACgGjrR1oAM80GjvR0oAM8UCjtQKAFoyKKKADijIoooAKKKKADIo4oooAMiiiigBODRS0UAHFAooAxQAlFLSUAFFFFABRRzRQAtGPejmjmgBKKXmjmgBKWjmjmgBMUUc4o5oAKKKKACjFHNHOKACijmigAooo5oAMUUc4ooAXFGKPxooAKMUUfjQAUYoo/GgAxRRRQAYoo/GigAxRij8aKACk5HaloFABSZpaSgAozRS0AJmjNLRQAUZoNGaAEozSg8UUAJS0ZoNACZ4oBxRnigUAHSg9aAaM80AB5ozxQaM8UAAOKOlAoBoAD1oPNGeaDQAZ4oBozxQKAFoooyKACjNHFGRQAUUUUAFFGRRxQAZooyKKACiijIoAKKOKBQAUUlFAC0UlFAC4opKKAFoxRRj3oAKKSigBaKSloATtR1oxRQAdaO9FFAB0o7UUYoAOtHWiigA70dKKKADtQKMUUALRRijFABRRRigAoooxQAUUYooAK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'),
(3, 'physics', 6, 4, 1111, 15, '2017-07-08 20:17:31', '2019-07-05 10:43:49', 'placeholder.jpg', 'data:image/jpg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD//gA7Q1JFQVRPUjogZ2QtanBlZyB2MS4wICh1c2luZyBJSkcgSlBFRyB2NjIpLCBxdWFsaXR5ID0gOTAK/9sAQwADAgIDAgIDAwMDBAMDBAUIBQUEBAUKBwcGCAwKDAwLCgsLDQ4SEA0OEQ4LCxAWEBETFBUVFQwPFxgWFBgSFBUU/9sAQwEDBAQFBAUJBQUJFA0LDRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU/8AAEQgBkAEsAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A/QcCijFGKACijFGM9qACjFOC0uOaAEAxQOBS+tJQAv40fjRRQAnI6UtFFABRRjvS4yaAE5oxzS4/GgCgBDxR1p3XtSYwaAExRTugpNuaAEozS7aQCgAopcUnvQAUUAUUAGaOaMcUmKAAUtFJ3oACM0hXApT7UtADKKdtFN2+1ABRRiigApMUtGKACgUU4D1oAT8KUDFKKKADHNAooxkUAFFHelxQAlFLxilxQAgFGKXGKBjtQAdqTFLRQAUcUCigAzRxRRQAZooooAKKDmigAPX2o4o7UYxQAUmKXrR3oAQ8UYpaDQA2inYxSEAUAJ3ooooACaOooooATbxSEYpRQaAG0fhQaOKAHBaWiigAoo7UUABoApaB0NABjFLik7UtABjrQBRRQAUYoHNFABRRRQAUUUUAFFGKKAAUUUUAFFFFABRRRQAYoxS0UAJ3oxzmiloAQCg0dqKADtTcZp2KOlADaKUjgmkNABRRR1oAQ/nSFfrTulFABR6UUY9qACjvS0uKAAetJjFLS0AJ2oBpaKAEozS0UAFFJS0AJmjNHaigA6UUUUAHWjNFHagAzR0oooAKOtFFABmjNHaigBaKKKACiiigApM0tFABSYyaWigA603GKXiigBuCOtFLt96QigAPvQKOtLQAlKOB/SilA5oABR3oooAKKKKAFpKKKAFpMUUUAGKWkooAO1GKKKADrRRRQAUdqKKADFHWiigAooooAO1FFFAC0fjRRQAUfjRRQAfjRRRQAfjRRSUAL+NH40UUAFIT2paT6UAIRSClooAWijFGaACiijNABRRmigBaSlozQAlFFGaACloooASijNGaACijpRQAUUdaM0AFFGaOlABRRR1oAKKM0ZoAWiiigAooooAKKKKACiiigAooooAKTtRjApaAEpMYpTmgcUALSUtFACZpaKKACijFFAAaM0UYoAAeKKKKADNBoooATPFAo7UdaAAGjPNHWjvQAGjPFHSjtQACgGjrR1oAM80GjvR0oAM8UCjtQKAFoyKKKADijIoooAKKKKADIo4oooAMiiiigBODRS0UAHFAooAxQAlFLSUAFFFFABRRzRQAtGPejmjmgBKKXmjmgBKWjmjmgBMUUc4o5oAKKKKACjFHNHOKACijmigAooo5oAMUUc4ooAXFGKPxooAKMUUfjQAUYoo/GgAxRRRQAYoo/GigAxRij8aKACk5HaloFABSZpaSgAozRS0AJmjNLRQAUZoNGaAEozSg8UUAJS0ZoNACZ4oBxRnigUAHSg9aAaM80AB5ozxQaM8UAAOKOlAoBoAD1oPNGeaDQAZ4oBozxQKAFoooyKACjNHFGRQAUUUUAFFGRRxQAZooyKKACiijIoAKKOKBQAUUlFAC0UlFAC4opKKAFoxRRj3oAKKSigBaKSloATtR1oxRQAdaO9FFAB0o7UUYoAOtHWiigA70dKKKADtQKMUUALRRijFABRRRigAoooxQAUUYooAK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');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2017-07-04 18:35:25', '2017-07-06 16:00:42'),
(5, 'Technology', 0, '2017-07-04 18:35:39', '2019-07-06 14:50:02'),
(6, 'Science', 1, '2017-07-04 18:35:55', '0000-00-00 00:00:00'),
(7, 'Management', 0, '2017-07-04 18:36:16', '2019-07-06 14:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', '2019-07-05 09:35:40', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'Anuj kumar', 'anuj.lpu1@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:37:05', '2017-07-15 18:26:21'),
(8, 'SID009', 'test', 'test@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:58:28', '2017-07-15 13:42:44'),
(9, 'SID010', 'Amit', 'amit@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 13:40:30', NULL),
(10, 'SID011', 'Sarita Pandey', 'sarita@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 18:00:59', NULL),
(17, '7', 'Chavindu Nuwanpriya', 'chavindun@gmail.com', 'Professor', 'c7578a60723c07b28782b661461a934c', 1, '2019-07-06 13:37:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
