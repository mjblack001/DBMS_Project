-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2016 at 01:21 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutordb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `AdLName` varchar(25) NOT NULL,
  `AdFName` varchar(25) NOT NULL,
  `AdminEmail` varchar(25) NOT NULL,
  `Username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `AdLName`, `AdFName`, `AdminEmail`, `Username`) VALUES
(1, 'Admin', 'Administrator', 'jazanu2010@gmail.com', 'Admin1'),
(2, 'Reed', 'Mark', 'ProfR@sju.edu', 'ProfessorR'),
(3, 'Krueger', 'Mary', 'ProfM@sju.edu', 'ProfessorK'),
(4, 'Nochenson', 'Alan', 'PrfA@sju.edu', 'ProfessorN'),
(5, 'Black', 'Mark', 'markblack001@gmail.com', 'mBlack'),
(6, 'Szefinski', 'Brendan', 'bszefinski@gmail.com', 'bSzefinski'),
(7, 'Grevera', 'George', 'ProfG@sju.edu', 'ProfessorG'),
(8, 'Tezel', 'Suzanne', 'ProfT@sju.edu', 'ProfessorT'),
(9, 'Forouraghi', 'Babak', 'ProfF@sju.edu', 'ProfessorF'),
(10, 'Wei', 'Susanna', 'ProfW@sju.edu', 'ProfessorW'),
(11, 'Stein', 'Martin', 'ProfS@star.labs', 'Firestorm'),
(12, 'Xavier', 'Charles', 'ProfX@Xhouse.edu', 'ProfX'),
(13, 'Richards', 'Reed', 'ProfRichards@baxter.net', 'StretchyMan'),
(14, 'Dumbledore', 'Albus', 'Headmaster@hotmail.net', 'Brian'),
(15, 'Brown', 'Emmet', 'TotallyNotlibyans@gmail.com', 'FluxCapacitor'),
(16, 'Trask', 'Bolivar', 'Trask@TraskIndustries.gov', 'Sentinal'),
(17, 'Palmer', 'Ray', 'Palmer@ivy.edu', 'Atom'),
(18, 'Fronkenstein', 'Froderick', 'PutTheCandleBack@gmail.com', 'AbbyNormal'),
(19, 'Nye', 'Bill', 'ScienceRulez@aol.com', 'TheScienceGuy'),
(20, 'Palpatine', 'Steve', 'emperor@coruscant.net', 'darklord');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(25) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `SubjectID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CourseName`, `AdminID`, `SubjectID`) VALUES
(100, 'Java', 9, 'CS'),
(101, 'Web Tech', 9, 'CS'),
(102, 'Computer Architecture', 9, 'CS'),
(103, 'Computer Systems', 9, 'CS'),
(104, 'Theory of Computation', 9, 'CS'),
(105, 'Software Engineering', 9, 'CS'),
(106, 'Internet App. Development', 9, 'CS'),
(107, 'Database', 9, 'CS'),
(108, 'Data Communications', 9, 'CS'),
(109, 'Introduction to Security', 9, 'CS'),
(110, 'Artificial Intelligence', 9, 'CS'),
(111, 'Programming Paradigms', 9, 'CS'),
(112, 'Precalc', 2, 'MA'),
(113, 'Geometry', 2, 'MA'),
(114, 'Calculus', 2, 'MA'),
(115, 'Calculus II', 2, 'MA'),
(116, 'Calculus III', 2, 'MA'),
(117, 'Number Theory', 2, 'MA'),
(118, 'Linear Algebra', 2, 'MA'),
(119, 'Abstract Algebra', 2, 'MA'),
(120, 'Topology', 2, 'MA'),
(121, 'Real Analysis', 2, 'MA'),
(122, 'Differential Equations', 2, 'MA'),
(123, 'Actuarial Probability', 3, 'AS'),
(124, 'Financial Mathematics of Actuarial Science', 3, 'AS'),
(125, 'Cells', 4, 'BI'),
(126, 'Genetic and Evolutionary Biology', 4, 'BI'),
(127, 'Organismic Biology', 4, 'BI'),
(128, 'Advanced Cell Biology', 4, 'BI'),
(129, 'Biochemistry', 4, 'BI'),
(130, 'Microbiology', 4, 'BI'),
(131, 'Biometrics and Modeling', 4, 'BI'),
(132, 'Biomechanics', 4, 'BI'),
(133, 'Immunology', 4, 'BI'),
(134, 'Animal Behavior', 4, 'BI'),
(135, 'Ecology', 4, 'BI'),
(136, 'Evolution', 4, 'BI'),
(137, 'General Chemistry I', 5, 'CH'),
(138, 'General Chemistry II', 5, 'CH'),
(139, 'Organic Chemistry I', 5, 'CH'),
(140, 'Organic Chemistry II', 5, 'CH'),
(141, 'Physical Chemistry I', 5, 'CH'),
(142, 'Physical Chemistry II', 5, 'CH'),
(143, 'Instrumental Analysis', 5, 'CH'),
(144, 'Biochemistry', 5, 'CH'),
(145, 'Inorganic Chemistry', 5, 'CH'),
(146, 'University Physics I', 6, 'PH'),
(147, 'University Physics II', 6, 'PH'),
(148, 'Investigations in Astronomy', 6, 'PH'),
(149, 'Mathematical Methods of Physics', 6, 'PH'),
(150, 'Modern Physics I', 6, 'PH'),
(152, 'Modern Physics II', 6, 'PH'),
(153, 'Classical Mechanics', 6, 'PH'),
(154, 'Thermal Physics', 6, 'PH'),
(155, 'Electricity and Magnetism', 6, 'PH'),
(156, 'Waves and Optics', 6, 'PH'),
(157, 'Quantum Mechanics', 6, 'PH'),
(158, 'Introductory Sociology', 7, 'SO'),
(159, 'Social Problems', 7, 'SO'),
(160, 'Ethics and Modern Relations', 7, 'SO'),
(161, 'Sociology of Gender', 7, 'SO'),
(162, 'Classical Sociological Theory', 7, 'SO'),
(163, 'Race and Social Justice', 7, 'SO'),
(164, 'Social Research Methods', 7, 'SO'),
(165, 'Data Analysis', 7, 'SO'),
(166, 'Law and Social Policy', 7, 'SO'),
(167, 'Moral Foundations', 8, 'PL'),
(168, 'Philosophy of Death', 8, 'PL'),
(169, 'Philosophy and Liberation', 8, 'PL'),
(170, 'Hume, Darwin, Marx and Freud', 8, 'PL'),
(171, 'Philosophy of Human Nature', 8, 'PL'),
(172, 'Topics in Moral Psychology', 8, 'PL'),
(173, 'The Self: East and West', 8, 'PL'),
(174, 'Philosophy and Personal Relationships', 8, 'PL'),
(175, 'Social and Political Philosophy', 8, 'PL'),
(176, 'God in Recent Philosophy', 8, 'PL'),
(177, 'Philsophy, Science, and Religion', 8, 'PL'),
(178, 'Philosophy of Religion', 8, 'PL'),
(179, 'Intro to Psychology', 9, 'PS'),
(180, 'Personality Psychology', 9, 'PS'),
(181, 'Biological Basis of Behavior', 9, 'PS'),
(182, 'Statistics for the Sociel Sciences', 9, 'PS'),
(183, 'Multicultural Psychology', 9, 'PS'),
(184, 'Developmental Psychology', 9, 'PS'),
(185, 'Abnormal Psychology', 9, 'PS'),
(186, 'Clinical Psychology', 9, 'PS'),
(187, 'Psychological Assessment', 9, 'PS'),
(188, 'Comparative Religion', 10, 'RE',)
(189, 'Faith, Justice, and the Catholic Tradition', 10, 'RE'),
(190, 'Hebrew Bible', 10, 'RE'),
(191, 'Israelite Religion', 10, 'RE'),
(192, 'Judaism', 10, 'RE'),
(193, 'Islam', 10 'RE'),
(194, 'Hinduism', 10, 'RE'),
(195, 'African and Caribbean Religions', 10, 'RE'),
(196, 'Indian Buddhism', 10, 'RE'),
(197, 'Ancient Greek Religions', 10, 'RE'),
(198, 'Craft of Language', 11, 'EN'),
(199, 'Texts and Contexts', 11, 'EN'),
(200, 'Major American Writers', 11, 'EN'),
(201, 'Literature and Film', 11, 'EN'),
(202, 'The Roaring Twenties', 11, 'EN'),
(203, 'Music and American Literature', 11, 'EN'),
(204, 'Twentieth Century American Literature', 11, 'EN'),
(205, 'Contemporary American Literature', 11, 'EN'),
(206, 'African American Literature', 11, 'EN'),
(207, 'Shakespeare: Early Works', 11, 'EN'),
(208, 'Shakespeare: Later Works', 11, 'EN'),
(209, 'American Authors', 11, 'EN'),
(210, 'Beginning French I', 12, 'FR'),
(211, 'Beginning French II', 12, 'FR'),
(212, 'Intermediate French I', 12, 'FR'),
(213, 'Intermediate French II', 12, 'FR'),
(214, 'Conversation', 12, 'FR'),
(215, 'Composition', 12, 'FR'),
(216, 'Love and Hatred', 12, 'FR'),
(217, 'Introduction to Literary Analysis', 12, 'FR'),
(218, 'The Francophone World', 12, 'FR'),
(219, 'History of the French Language', 12, 'FR'),
(220, 'Beginning Spanish I', 13, 'SP'),
(221, 'Beginning Spanish II', 13, 'SP'),
(223, 'Intermediate Spanish I', 13, 'SP'),
(224, 'Intermediate Spanish II', 13, 'SP'),
(225, 'Spanish Conversation', 13, 'SP'),
(226, 'Spanish Composition', 13, 'SP'),
(227, 'Advanced Spanish Conversation', 13, 'SP'),
(228, 'Advanced Spanish Composition', 13, 'SP'),
(229, 'Advanced Spanish Grammar', 13, 'SP'),
(230, 'Introduction to Latin American Cultures', 13, 'SP'),
(231, 'Introduction to Spanish Cultures', 13, 'SP'),
(232, 'Beginning Japanese I', 14, 'JA'),
(233, 'Beginning Japanese II', 14, 'JA'),
(234, 'Intermediate Japanese I', 14, 'JA'),
(235, 'Intermediate Japanese II', 14, 'JA'),
(236, 'Japanese Conversation', 14, 'JA'),
(237, 'Japanese Composition', 14, 'JA'),
(238, 'Selections in Japanese Literature I', 14, 'JA'),
(239, 'Selections in Japanese Literature II', 14, 'JA'),
(240, 'Japanese Film and Culture', 14, 'JA'),
(241, 'Beginning German I', 15, 'GE'),
(242, 'Beginning German II', 15, 'GE'),
(243, 'Intermediate German I', 15, 'GE'),
(244, 'Intermediate German II', 15, 'GE'),
(245, 'German Conversation', 15, 'GE'),
(246, 'German Composition', 15, 'GE'),
(247, 'Selections in German Literature I', 15, 'GE'),
(248, 'Selections in German Literature II', 14, 'GE'),
(249, 'Beginning Latin I', 16, 'LA'),
(250, 'Beginning Latin II', 16, 'LA'),
(251, 'Intermediate Latin I', 16, 'LA'),
(252, 'Intermediate Latin II', 16, 'LA'),
(253, 'Oratory', 16, 'LA'),
(254, 'Republican Prose', 16, 'LA'),
(255, 'Historiography', 16, 'LA'),
(256, 'Drama', 16, 'LA'),
(257, 'Lyric Poetry', 16, 'LA'),
(258, 'Roman Elegy', 16, 'LA'),
(259, 'Silver Age Latin', 16, 'LA'),
(260, 'Golden Age Latin', 16, 'LA'),
(261, 'Epic Poetry', 16, 'LA'),
(262, 'Horace', 16, 'LA'),
(263, 'Classical Mythology', 17, 'CA'),
(264, 'Classical Epic: Gods and Heroes in Homer and Virgil', 17, 'CA'),
(265, 'Classical Tragedy', 17, 'CA'),
(266, 'Ancient Comedy', 17, 'CA'),
(267, 'Sports in the Ancient World', 17, 'CA'),
(268, 'Art and Archaeology of Greece', 17, 'CA'),
(269, 'Art and Archaeology of Italy', 17, 'CA'),
(270, 'Pompeii and Herculaneum: Life in the Roman Empire', 17, 'CA'),
(271, 'Etruscan Art and Archaeology', 17, 'CA'),
(272, 'Cleopatra Through Ancient and Modern Eyes', 17, 'CA'),
(273, 'Ancient Medicine in Context', 17, 'CA'),
(274, 'Ancient Greece and Rome in Film', 17, 'CA'),
(275, 'Music Fundamentals', 18, 'MF'),
(276, 'Introduction to Theatre', 18, 'MF'),
(277, 'Introduction to Film', 18, 'MF'),
(278, 'Principles of Marketing', 19, 'MK'),
(279, 'Marketing Research', 19, 'MK'),
(280, 'Integrated Marketing Communication', 19, 'MK'),
(281, 'Consumer and Buyer Behavior', 19, 'MK'),
(282, 'Advertising', 19, 'MK'),
(283, 'Fundamentals of Design', 19, 'MK'),
(284, 'International Marketing', 19, 'MK'),
(285, 'Music Marketing', 19, 'MK'),
(286, 'Event marketing', 19, 'MK'),
(287, 'Concepts of Financial Accounting', 20, 'AC'),
(288, 'Managerial Accounting', 20, 'AC'),
(289, 'Financial Accounting Info System I', 20, 'AC'),
(290, 'Financial Accounting Info System II', 20, 'AC'),
(291, 'Management Accounting Info System', 20, 'AC'),
(292, 'Financial Accounting Info System III', 20, 'AC'),
(293, 'Federal Income Taxation', 20, 'AC'),
(294, 'Auditing & Assurance Services', 20, 'AC'),
(295, 'Introductory Economics (Micro)', 1, 'EC'),
(296, 'Introductory Economics (Macro)', 1, 'EC'),
(297, 'Microeconomic Theory', 1, 'EC'),
(298, 'Macroeconomic Theory', 1, 'EC'),
(299, 'International Trade', 1, 'EC'),
(300, 'Monetary Economics', 1, 'EC'),
(301, 'Industrial Economics', 1, 'EC'),
(302, 'The Economics of Healthcare', 1, 'EC'),
(303, 'Econometrics', 1, 'EC'),
(304, 'Economic Forecasting', 1, 'EC'),
(305, 'History of Economic Thought', 1, 'EC'),
(306, 'The Environment', 2, 'ES'),
(307, 'Exploring the Earth', 2, 'ES'),
(308, 'Environmental Science', 2, 'ES'),
(309, 'Intro to Finance', 3, 'FI'),
(310, 'Market and Institutions', 3, 'FI'),
(311, 'Intermediate Finance', 3, 'FI'),
(312, 'Investments', 3, 'FI'),
(313, 'International Finance', 3, 'FI'),
(314, 'Mergers and Acquisitions', 3, 'FI'),
(315, 'Student Managed Funds', 3, 'FI'),
(316, 'Portfolio Managment', 3, 'FI'),
(317, 'Forging the Modern World', 4, 'HI'),
(318, 'American History to 1877', 4, 'HI'),
(319, 'American History 1865 to the Present', 4, 'HI'),
(320, 'Historical Intro to Asian Civilization', 4, 'HI'),
(321, 'The Grandeur that was Rome', 4, 'HI'),
(322, 'Crime and Punishment', 4, 'HI'),
(323, 'Postwar America 1945 to the Present', 4,'HI'),
(324, 'Popular Culture', 4, 'HI'),
(325, 'Intro to American Government and Politics', 5, 'PO'),
(326, 'Intro to Comparative Politics', 5, 'PO'),
(327, 'Intro to Global Politics', 5, 'PO'),
(328, 'Urban Politics', 5, 'PO'),
(329, 'Pennsylvania Politics', 5, 'PO'),
(330, 'Religion in American Politics', 5, 'PO'),
(331, 'Women in American Politics', 5, 'PO'),
(332, 'Latin American Politics', 5, 'PO'),
(333, 'War and Peace', 5, 'PO'),
(334, 'Nations and Nationalism', 5, 'PO');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedID` int(11) NOT NULL,
  `Comment` varchar(25) NOT NULL,
  `Date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

INSERT INTO `feedback` (`FeedID`, `Comment`, `Date`) VALUES
(1,'Excellent. Really knows his stuff','9/19/2014'),
(2,'Spent the entire time on his phone, would not recommend','7/3/2015'),
(3,'She was really helpful, I aced the test','7/31/2016'),
(4,'Better than the professor.','3/1/2015'),
(5,"You're better off reading the book",'9/19/2016'),
(6,'Was extremely late, fine otherwise','12/21/2012'),
(7,'Somewhat helpful, would probably go to again','4/1/2015'),
(8,'Really Great, knowledgeable and informative','1/20/2016'),
(9,'Very friendly, but not helpful','3/15/2016'),
(10,'Talked a lot but did not help me with my problem','11/11/2011'),
(11,'Knew a lot but had a hard time explaining it','3/14/2015'),
(12,'BEST. TUTOR. EVER.','9/23/2015'),
(13,'Good','1/30/2016'),
(14,'Really funny and super intelligent, she was an excellent tutor','6/1/2015'),
(15,'Muy bien','5/5/2015'),
(16,'Rather use Khan academy','6/12/2015'),
(17,'Basically did the assignment for me, did not explain anything','7/15/2015'),
(18,'Absolutely brilliant and super helpful','8/29/2014'),
(19,'meh','1/3/2015'),
(20,'kinda smelly','8/21/2016');




--
-- Table structure for table `feedback_rate`
--

CREATE TABLE `feedback_rate` (
  `FeedID` int(11) NOT NULL,
  `Rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

INSERT INTO `feedback_rate` (`FeedID`, `Rate`) VALUES
(1,5),
(2,1),
(3,5),
(4,5),
(5,2),
(6,3),
(7,3),
(8,4),
(9,2),
(10,2),
(11,2),
(12,5),
(13,4),
(14,5),
(15,4),
(16,2),
(17,1),
(18,4),
(19,3),
(20,2);


--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`, `Type`) VALUES
('aa123', '123', 'Student'),
('Admin1', 'Admin123', 'Admin'),
('mk123', '123', 'Student'),
('Tx123', '123', 'Student'),
('bs999', '456', 'Student'),
('sc923', '923', 'Student'),
('sf492', '123', 'Student'),
('ms111', '111', 'Student'),
('JonDoe297', '123', 'Student'),
('bearAllen', 'need4speed', 'Student'),
('starkiller', 'binarysuns', 'Student'),
('john_doe', '123', 'Student'),
('jane_doe', '123', 'Student'),
('1ring', 'shire4ever', 'Student'),
('oldben', 'force', 'Student'),
('thechosen1', 'quidditchislife', 'Student'),
('kingweasley', 'chuddleycannon', 'Student'),
('h_granger', 'books4life', 'Student'),
('trustno1', 'truthisoutthere', 'Student'),
('bfrank', '100dollarbill', 'Student'),
('drDrakeRamoray', 'howyoudoin', 'Student'),
('ChanChanMan', 'chickandduck', 'Student'),
('DrRoss', 'geologyrox', 'Student'),
('MEG', 'apt20', 'Student'),
('RKGreen', 'emma02', 'Student'),
('ReginaPhalange', 'smellycat', 'Student'),
('ProfessorR', 'THWND', 'Admin'),
('ProfessorK', 'THWND', 'Admin'),
('ProfessorN', 'THWND', 'Admin'),
('mBlack', 'SuperSecurePassw0rd', 'Admin'),
('bSzefinski', 'Password', 'Admin'),
('ProfessorG', 'THWND', 'Admin'),
('ProfessorT', 'THWND', 'Admin'),
('ProfessorF', 'THWND', 'Admin'),
('ProfessorW', 'THWND', 'Admin'),
('Firestorm', 'Ronnie', 'Admin'),
('ProfX', 'MutantRights', 'Admin'),
('StretchyMan', 'Sue', 'Admin'),
('Brian', 'Cockroach', 'Admin'),
('FluxCapacitor', 'JulesVerne', 'Admin'),
('Sentinal', 'MasterMold', 'Admin'),
('Atom', 'dwarfStar', 'Admin'),
('AbbyNormal', 'whathump', 'Admin'),
('TheScienceGuy', 'poetryInMotion', 'Admin'),
('darklord', 'jarjarrox', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `preview`
--

CREATE TABLE `preview` (
  `SID` int(11) NOT NULL,
  `FeedID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `preview` (`SID`, `FeedID`) VALUES
(1, 1),
(23, 2),
(5, 3),
(18, 4),
(17, 5),
(14, 6),
(9, 7),
(7, 8),
(8, 9),
(2, 10),
(21, 11),
(22, 12),
(14, 13),
(9, 14),
(7, 15),
(8, 16),
(1, 17),
(22, 18),
(19, 19),
(9, 20);
-- --------------------------------------------------------

--
-- Table structure for table `requesttutoron`
--

CREATE TABLE `requesttutoron` (
  `CourseID` int(11) NOT NULL,
  `SID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requesttutoron`
--

INSERT INTO `requesttutoron` (`CourseID`, `SID`) VALUES
(100, 1),
(621, 2),
(621, 3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SID` int(11) NOT NULL,
  `SFName` varchar(25) NOT NULL,
  `SLName` varchar(25) NOT NULL,
  `SEmail` varchar(25) NOT NULL,
  `IsTutor` tinyint(1) NOT NULL,
  `Username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SID`, `SFName`, `SLName`, `SEmail`, `IsTutor`, `Username`) VALUES
(1, 'Tao', 'Xie', 'tx123@gmail.com', 1, 'Tx123'),
(2, 'Abdul', 'Alharbi', 'aa123@gmail.com', 1, 'aa123'),
(3, 'Mark', 'Black', 'mblackisthebest@gmail.com', 0, 'mk123'),
(4, 'Brendan', 'Szefinski', 'bs999@gmail.com', 0, 'bs999'),
(5, 'Sarah', 'Cooney', 'sc923@gmail.com', 1, 'sc923'),
(6, 'Seth', 'Fields', 'sf492@gmail.com', 0, 'sf492'),
(7, 'Matt', 'Sibona', 'matt.sibona@gmail.com', 1, 'ms111'),
(8, 'Bruce', 'Wayne', 'jondoe297@aol.com', 1, 'JonDoe297'),
(9, 'Barry', 'Allen', 'speedy@gmail.com', 1, 'bearAllen'),
(10, 'Luke', 'Skywalker', 'lastJedi77@yahoo.com', 0, 'starkiller'),
(11, 'John', 'Doe', 'jd1@hotmail.com', 0, 'john_doe'),
(12, 'Jane', 'Doe', 'jd2@hotmail.com', 0, 'jane_doe'),
(13, 'Frodo', 'Baggins', 'fbaggins@yahoo.com', 0, '1ring'),
(14, 'Ben', 'Kenobi', 'jedimaster@aol.com', 1, 'oldben'),
(15, 'Harry', 'Potter', 'hp731@gmail.com', 0, 'thechosen1'),
(16, 'Ron', 'Weasley', 'rw0301@@aol.com', 0, 'kingweasley'),
(17, 'Hermione', 'Granger', 'hg919@yahoo.com', 1, 'h_granger'),
(18, 'Fox', 'Mulder', 'iwant2believe@aol.com', 1, 'trustno1'),
(19, 'Ben', 'Franklin', '$100@gmail.com', 1, 'bfrank'),
(20, 'Joey', 'Tribbiani', 'jtrib@yahoo.com', 0, 'drDrakeRamoray'),
(21, 'Chandler', 'Bing', 'chanmbing@yahoo.com', 1, 'ChanChanMan'),
(22, 'Ross', 'Geller', 'dinoguy@ayhoo.com', 1, 'DrRoss'),
(23, 'Monica', 'Geller', 'mgeller@yahoo.com', 1, 'MEG'),
(24, 'Rachel', 'Green', 'rkgreen@yahoo.com', 0, 'RKGreen'),
(25, 'Phoebe', 'Buffay', 'smellycat123@aol.com', 0, 'ReginaPhalange');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SubjectID` varchar(25) NOT NULL,
  `SubjectName` varchar(25) NOT NULL,
  `AdminID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjectID`, `SubjectName`, `AdminID`) VALUES
('CS', 'Computer Science', 9);
('MA', 'Mathematics', 2);
('AS', 'Actuarial Science', 3);
('BI', 'Biology', 4);
('CH', 'Chemistry', 5);
('PH', 'Physics', 6);
('SO', 'Sociology', 7);
('PL', 'Philosophy', 8);
('PS', 'Psycology', 9);
('RE', 'Religion', 10);
('EN', 'English', 11);
('FR', 'French', 12);
('SP', 'Spanish', 13);
('JA', 'Japanese', 14);
('GE', 'German', 15);
('LA', 'Latin', 16);
('CA', 'Classics', 17);
('MF', 'Music, Theatre, Film', 18);
('MK', 'Marketing', 19);
('AC', 'Accounting', 20);
('EC', 'Economics', 1);
('ES', 'Environmental Science', 2);
('FI', 'Finance', 3);
('HI', 'History', 4);
('PO', 'Political Science', 5);


-- --------------------------------------------------------

--
-- Table structure for table `taughtby`
--

CREATE TABLE `taughtby` (
  `SID_1` int(11) NOT NULL,
  `TaughtBySID_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taughtby`
--

INSERT INTO `taughtby` (`SID_1`, `TaughtBySID_2`) VALUES
(1, 2),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE `teach` (
  `SID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teach`
--

INSERT INTO `teach` (`SID`, `CourseID`) VALUES
(1, 621),
(2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `write_tb`
--

CREATE TABLE `write_tb` (
  `SID` int(11) NOT NULL,
  `FeedID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `teach` (`SID`, `FeedID`) VALUES
(3,1),
(4,2),
(6,3),
(10,4),
(11,5),
(12,6),
(13,7),
(15,8),
(16,9),
(20,10),
(24,11),
(25,12),
(3,13),
(4,14),
(6,15),
(10,16),
(11,17),
(12,17),
(13,18),
(15,19),
(16,20);
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `AdminEmail` (`AdminEmail`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`),
  ADD UNIQUE KEY `CourseName` (`CourseName`),
  ADD KEY `AdminID` (`AdminID`),
  ADD KEY `SubjectID` (`SubjectID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedID`);

--
-- Indexes for table `feedback_rate`
--
ALTER TABLE `feedback_rate`
  ADD PRIMARY KEY (`Rate`,`FeedID`),
  ADD KEY `FeedID` (`FeedID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `preview`
--
ALTER TABLE `preview`
  ADD PRIMARY KEY (`SID`,`FeedID`),
  ADD KEY `FeedID` (`FeedID`);

--
-- Indexes for table `requesttutoron`
--
ALTER TABLE `requesttutoron`
  ADD PRIMARY KEY (`CourseID`,`SID`),
  ADD KEY `SID` (`SID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`SID`),
  ADD UNIQUE KEY `SEmail` (`SEmail`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjectID`),
  ADD UNIQUE KEY `SubjectName` (`SubjectName`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `taughtby`
--
ALTER TABLE `taughtby`
  ADD PRIMARY KEY (`SID_1`,`TaughtBySID_2`),
  ADD KEY `TaughtBySID_2` (`TaughtBySID_2`);

--
-- Indexes for table `teach`
--
ALTER TABLE `teach`
  ADD PRIMARY KEY (`SID`,`CourseID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `write_tb`
--
ALTER TABLE `write_tb`
  ADD PRIMARY KEY (`SID`,`FeedID`),
  ADD KEY `FeedID` (`FeedID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `login` (`Username`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`SubjectID`) REFERENCES `subject` (`SubjectID`);

--
-- Constraints for table `feedback_rate`
--
ALTER TABLE `feedback_rate`
  ADD CONSTRAINT `feedback_rate_ibfk_1` FOREIGN KEY (`FeedID`) REFERENCES `feedback` (`FeedID`);

--
-- Constraints for table `preview`
--
ALTER TABLE `preview`
  ADD CONSTRAINT `preview_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `student` (`SID`),
  ADD CONSTRAINT `preview_ibfk_2` FOREIGN KEY (`FeedID`) REFERENCES `feedback` (`FeedID`);

--
-- Constraints for table `requesttutoron`
--
ALTER TABLE `requesttutoron`
  ADD CONSTRAINT `requesttutoron_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  ADD CONSTRAINT `requesttutoron_ibfk_2` FOREIGN KEY (`SID`) REFERENCES `student` (`SID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `login` (`Username`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `taughtby`
--
ALTER TABLE `taughtby`
  ADD CONSTRAINT `taughtby_ibfk_1` FOREIGN KEY (`SID_1`) REFERENCES `student` (`SID`),
  ADD CONSTRAINT `taughtby_ibfk_2` FOREIGN KEY (`TaughtBySID_2`) REFERENCES `student` (`SID`);

--
-- Constraints for table `teach`
--
ALTER TABLE `teach`
  ADD CONSTRAINT `teach_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `student` (`SID`),
  ADD CONSTRAINT `teach_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);

--
-- Constraints for table `write_tb`
--
ALTER TABLE `write_tb`
  ADD CONSTRAINT `write_tb_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `student` (`SID`),
  ADD CONSTRAINT `write_tb_ibfk_2` FOREIGN KEY (`FeedID`) REFERENCES `feedback` (`FeedID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
