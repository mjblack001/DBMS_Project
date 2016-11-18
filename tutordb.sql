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
(100, 'Java', 1, 'CS'),
(200, 'Web Tech', 1, 'CS'),
(552, 'Computer Architecture', 1, 'CS'),
(553, 'Computer Systems', 1, 'CS'),
(554, 'Theory of Computation', 1, 'CS'),
(610, 'Software Engineering', 1, 'CS'),
(620, 'Internet App. Development', 1, 'CS'),
(621, 'Database', 1, 'CS'),
(623, 'Data Communications', 1, 'CS'),
(627, 'Introduction to Security', 1, 'CS'),
(680, 'Artificial Intelligence', 1, 'CS'),
(681, 'Programming Paradigms', 1, 'CS'),
(101, 'Precalc', 1, 'MA'),
(201, 'Geometry', 1, 'MA'),
(160, 'Calculus', 1, 'MA'),
(161, 'Calculus II', 1, 'MA'),
(213, 'Calculus III', 1, 'MA'),
(180, 'Number Theory', 1, 'MA'),
(226, 'Linear Algebra', 1, 'MA'),
(245, 'Abstract Algebra', 1, 'MA'),
(418, 'Topology', 1, 'MA'),
(409, 'Real Analysis', 1, 'MA'),
(238, 'Differential Equations', 1, 'MA'),
(301, 'Actuarial Probability', 1, 'AS'),
(401, 'Financial Mathematics of Actuarial Science', 1, 'AS'),
(101, 'Cells', 1, 'BI'),
(102, 'Genetic and Evolutionary Biology', 1, 'BI'),
(201, 'Organismic Biology', 1, 'BI'),
(402, 'Advanced Cell Biology', 1, 'BI'),
(404, 'Biochemistry', 1, 'BI'),
(416, 'Microbiology', 1, 'BI'),
(403, 'Biometrics and Modeling', 1, 'BI'),
(405, 'Biomechanics', 1, 'BI'),
(415, 'Immunology', 1, 'BI'),
(401, 'Animal Behavior', 1, 'BI'),
(409, 'Ecology', 1, 'BI'),
(423, 'Evolution', 1, 'BI'),
(120, 'General Chemistry I', 1, 'CH'),
(125, 'General Chemistry II', 1, 'CH'),
(210, 'Organic Chemistry I', 1, 'CH'),
(215, 'Organic Chemistry II', 1, 'CH'),
(310, 'Physical Chemistry I', 1, 'CH'),
(315, 'Physical Chemistry II', 1, 'CH'),
(330, 'Instrumental Analysis', 1, 'CH'),
(340, 'Biochemistry', 1, 'CH'),
(350, 'Inorganic Chemistry', 1, 'CH'),
(105, 'University Physics I', 1, 'PH'),
(106, 'University Physics II', 1, 'PH'),
(115, 'Investigations in Astronomy', 1, 'PH'),
(257, 'Mathematical Methods of Physics', 1, 'PH'),
(251, 'Modern Physics I', 1, 'PH'),
(252, 'Modern Physics II', 1, 'PH'),
(301, 'Classical Mechanics', 1, 'PH'),
(303, 'Thermal Physics', 1, 'PH'),
(307, 'Electricity and Magnetism', 1, 'PH'),
(308, 'Waves and Optics', 1, 'PH'),
(321, 'Quantum Mechanics', 1, 'PH'),
(101, 'Introductory Sociology', 1, 'SO'),
(102, 'Social Problems', 1, 'SO'),
(205, 'Ethics and Modern Relations', 1, 'SO'),
(208, 'Sociology of Gender', 1, 'SO'),
(211, 'Classical Sociological Theory', 1, 'SO'),
(253, 'Race and Social Justice', 1, 'SO'),
(312, 'Social Research Methods', 1, 'SO'),
(313, 'Data Analysis', 1, 'SO'),
(345, 'Law and Social Policy', 1, 'SO'),
(154, 'Moral Foundations', 1, 'PL'),
(250, 'Philosophy of Death', 1, 'PL'),
(257, 'Philosophy and Liberation', 1, 'PL'),
(253, 'Hume, Darwin, Marx and Freud', 1, 'PL'),
(260, 'Philosophy of Human Nature', 1, 'PL'),
(264, 'Topics in Moral Psychology', 1, 'PL'),
(268, 'The Self: East and West', 1, 'PL'),
(284, 'Philosophy and Personal Relationships', 1, 'PL'),
(330, 'Social and Political Philosophy', 1, 'PL'),
(350, 'God in Recent Philosophy', 1, 'PL'),
(353, 'Philsophy, Science, and Religion', 1, 'PL'),
(354, 'Philosophy of Religion', 1, 'PL'),
(101, 'Intro to Psychology', 1, 'PS'),
(200, 'Personality Psychology', 1, 'PS'),
(201, 'Biological Basis of Behavior', 1, 'PS'),
(211, 'Statistics for the Sociel Sciences', 1, 'PS'),
(212, 'Multicultural Psychology', 1, 'PS'),
(231, 'Developmental Psychology', 1, 'PS'),
(232, 'Abnormal Psychology', 1, 'PS'),
(300, 'Clinical Psychology', 1, 'PS'),
(301, 'Psychological Assessment', 1, 'PS'),
(101, 'Comparative Religion', 1, 'RE',)
(154, 'Faith, Justice, and the Catholic Tradition', 1, 'RE'),
(211, 'Hebrew Bible', 1, 'RE'),
(212, 'Israelite Religion', 1, 'RE'),
(231, 'Judaism', 1, 'RE'),
(241, 'Islam', 1, 'RE'),
(261, 'Hinduism', 1, 'RE'),
(271, 'African and Caribbean Religions', 1, 'RE'),
(351, 'Indian Buddhism', 1, 'RE'),
(383, 'Ancient Greek Religions', 1, 'RE'),
(101, 'Craft of Language', 1, 'EN'),
(102, 'Texts and Contexts' 1, 'EN'),
(201, 'Major American Writers', 1, 'EN'),
(209, 'Literature and Film', 1, 'EN'),
(210, 'The Roaring Twenties', 1, 'EN'),
(217, 'Music and American Literature', 1, 'EN'),
(324, 'Twentieth Century American Literature', 1, 'EN'),
(325, 'Contemporary American Literature', 1, 'EN'),
(328, 'African American Literature', 1, 'EN'),
(402, 'Shakespeare: Early Works', 1, 'EN'),
(403, 'Shakespeare: Later Works', 1, 'EN'),
(420, 'American Authors', 1, 'EN'),
(101, 'Beginning French I', 1, 'FR'),
(102, 'Beginning French II', 1, 'FR'),
(201, 'Intermediate French I', 1, 'FR'),
(202, 'Intermediate French II', 1, 'FR'),
(301, 'Conversation', 1, 'FR'),
(302, 'Composition', 1, 'FR'),
(309, 'Love and Hatred', 1, 'FR'),
(310, 'Introduction to Literary Analysis', 1, 'FR'),
(315, 'The Francophone World', 1, 'FR'),
(320, 'History of the French Language', 1, 'FR'),
(101, 'Beginning Spanish I', 1, 'SP'),
(102, 'Beginning Spanish II', 1, 'SP'),
(201, 'Intermediate Spanish I', 1, 'SP'),
(202, 'Intermediate Spanish II', 1, 'SP'),
(301, 'Spanish Conversation', 1, 'SP'),
(302, 'Spanish Composition', 1, 'SP'),
(340, 'Advanced Spanish Conversation', 1, 'SP'),
(341, 'Advanced Spanish Composition', 1, 'SP'),
(342, 'Advanced Spanish Grammar', 1, 'SP'),
(350, 'Introduction to Latin American Cultures', 1, 'SP'),
(351, 'Introduction to Spanish Cultures', 1, 'SP'),
(101, 'Beginning Japanese I', 1, 'JA'),
(102, 'Beginning Japanese II', 1, 'JA'),
(201, 'Intermediate Japanese I', 1, 'JA'),
(202, 'Intermediate Japanese II', 1, 'JA'),
(301, 'Japanese Conversation', 1, 'JA'),
(302, 'Japanese Composition', 1, 'JA'),
(310, 'Selections in Japanese Literature I', 1, 'JA'),
(311, 'Selections in Japanese Literature II', 1, 'JA'),
(330, 'Japanese Film and Culture', 1, 'JA'),
(101, 'Beginning German I', 1, 'GE'),
(102, 'Beginning German II', 1, 'GE'),
(201, 'Intermediate German I', 1, 'GE'),
(202, 'Intermediate German II', 1, 'GE'),
(301, 'German Conversation', 1, 'GE'),
(302, 'German Composition', 1, 'GE'),
(303, 'Selections in German Literature I', 1, 'GE'),
(304, 'Selections in German Literature II', 1, 'GE'),
(101, 'Beginning Latin I', 1, 'LA'),
(102, 'Beginning Latin II', 1, 'LA'),
(201, 'Intermediate Latin I', 1, 'LA'),
(202, 'Intermediate Latin II', 1, 'LA'),
(301, 'Oratory', 1, 'LA'),
(302, 'Republican Prose', 1, 'LA'),
(303, 'Historiography', 1, 'LA'),
(304, 'Drama', 1, 'LA'),
(305, 'Lyric Poetry', 1, 'LA'),
(306, 'Roman Elegy', 1, 'LA'),
(401, 'Silver Age Latin', 1, 'LA'),
(402, 'Golden Age Latin', 1, 'LA'),
(403, 'Epic Poetry', 1, 'LA'),
(404, 'Horace', 1, 'LA'),
(201, 'Classical Mythology', 1, 'CA'),
(202, 'Classical Epic: Gods and Heroes in Homer and Virgil', 1, 'CA'),
(203, 'Classical Tragedy', 1, 'CA'),
(204, 'Ancient Comedy', 1, 'CA'),
(206, 'Sports in the Ancient World', 1, 'CA'),
(301, 'Art and Archaeology of Greece', 1, 'CA'),
(302, 'Art and Archaeology of Italy', 1, 'CA'),
(303, 'Pompeii and Herculaneum: Life in the Roman Empire', 1, 'CA'),
(304, 'Etruscan Art and Archaeology', 1, 'CA'),
(305, 'Cleopatra Through Ancient and Modern Eyes', 1, 'CA'),
(306, 'Ancient Medicine in Context', 1, 'CA'),
(307, 'Ancient Greece and Rome in Film', 1, 'CA'),
(151, 'Music Fundamentals', 1, 'MF'),
(161, 'Introduction to Theatre', 1, 'MF'),
(191, 'Introduction to Film', 1, 'MF'),
(201, 'Principles of Marketing', 1, 'MK'),
(202, 'Marketing Research', 1, 'MK'),
(301, 'Integrated Marketing Communication', 1, 'MK'),
(302, 'Consumer and Buyer Behavior', 1, 'MK'),
(321, 'Advertising', 1, 'MK'),
(325, 'Fundamentals of Design', 1, 'MK'),
(331, 'International Marketing', 1, 'MK'),
(341, 'Music Marketing', 1, 'MK'),
(350, 'Event marketing', 1, 'MK'),
(101, 'Concepts of Financial Accounting', 1, 'AC'),
(102, 'Managerial Accounting', 1, 'AC'),
(205, 'Financial Accounting Info System I', 1, 'AC'),
(206, 'Financial Accounting Info System II', 1, 'AC'),
(212, 'Management Accounting Info System', 1, 'AC'),
(307, 'Financial Accounting Info System III', 1, 'AC'),
(315, 'Federal Income Taxation', 1, 'AC'),
(317, 'Auditing & Assurance Services', 1, 'AC'),
(101, 'Introductory Economics (Micro)', 1, 'EC'),
(102, 'Introductory Economics (Macro)', 1, 'EC'),
(301, 'Microeconomic Theory', 1, 'EC'),
(302, 'Macroeconomic Theory', 1, 'EC'),
(321, 'International Trade', 1, 'EC'),
(350, 'Monetary Economics', 1, 'EC'),
(360, 'Industrial Economics', 1, 'EC'),
(390, 'The Economics of Healthcare', 1, 'EC'),
(410, 'Econometrics', 1, 'EC'),
(415, 'Economic Forecasting', 1, 'EC'),
(435, 'History of Economic Thought', 1, 'EC'),
(105, 'The Environment', 1, 'ES'),
(106, 'Exploring the Earth', 1, 'ES'),
(111, 'Environmental Science', 1, 'ES'),
(200, 'Intro to Finance', 1, 'FI'),
(201, 'Market and Institutions', 1, 'FI'),
(300, 'Intermediate Finance', 1, 'FI'),
(301, 'Investments', 1, 'FI'),
(302, 'International Finance', 1, 'FI'),
(400, 'Mergers and Acquisitions', 1, 'FI'),
(401, 'Student Managed Funds', 1, 'FI'),
(402, 'Portfolio Managment', 1, 'FI'),
(154, 'Forging the Modern World', 1, 'HI'),
(201, 'American History to 1877', 1, 'HI'),
(202, 'American History 1865 to the Present', 1, 'HI'),
(208, 'Historical Intro to Asian Civilization', 1, 'HI'),
(316, 'The Grandeur that was Rome', 1, 'HI'),
(329, 'Crime and Punishment', 1, 'HI'),
(367, 'Postwar America 1945 to the Present'),
(387, 'Popular Culture', 1, 'HI'),
(111, 'Intro to American Government and Politics', 1, 'PO'),
(113, 'Intro to Comparative Politics', 1, 'PO'),
(115, 'Intro to Global Politics', 1, 'PO'),
(317, 'Urban Politics', 1, 'PO'),
(318, 'Pennsylvania Politics', 1, 'PO'),
(321, 'Religion in American Politics', 1, 'PO'),
(323, 'Women in American Politics', 1, 'PO'),
(331, 'Latin American Politics', 1, 'PO'),
(354, 'War and Peace', 1, 'PO'),
(403, 'Nations and Nationalism', 1, 'PO');

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
(3, 'Mark', 'Black', 'mk123@gmail.com', 0, 'mk123'),
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
('CS', 'Computer Science', 1);
('MA', 'Mathematics', 1);
('AS', 'Actuarial Science', 1);
('BI', 'Biology', 1);
('CH', 'Chemistry', 1);
('PH', 'Physics', 1);
('SO', 'Sociology', 1);
('PL', 'Philosophy', 1);
('PS', 'Psycology', 1);
('RE', 'Religion', 1);
('EN', 'English', 1);
('FR', 'French', 1);
('SP', 'Spanish', 1);
('JA', 'Japanese', 1);
('GE', 'German', 1);
('LA', 'Latin', 1);
('CA', 'Classics', 1);
('MF', 'Music, Theatre, Film', 1);
('MK', 'Marketing', 1);
('AC', 'Accounting', 1);
('EC', 'Economics', 1);
('ES', 'Environmental Science', 1);
('FI', 'Finance', 1);
('HI', 'History', 1);
('PO', 'Political Science', 1);


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
