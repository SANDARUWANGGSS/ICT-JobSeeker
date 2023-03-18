-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2022 at 08:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ict_jobseeker_44`
--

-- --------------------------------------------------------

--
-- Table structure for table `add and answer`
--

CREATE TABLE `add and answer` (
  `Job_ID` int(10) UNSIGNED NOT NULL,
  `FAQ_forum_ID` int(10) UNSIGNED NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL COMMENT 'from company table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Company, FAQ_Forum, job(ADD and Answer';

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Admin_NIC` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `Application_ID` int(10) UNSIGNED NOT NULL,
  `Jobseeker_ID` int(10) UNSIGNED NOT NULL COMMENT 'user id of jobseeker table',
  `Company_ID` int(10) UNSIGNED NOT NULL COMMENT 'user id of company table ',
  `Job_ID` int(10) UNSIGNED NOT NULL,
  `First_name` varchar(255) DEFAULT NULL,
  `Last_name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone_number` int(15) DEFAULT NULL,
  `Message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Jobseeker, Company, Job (Apply)';

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Company_name` varchar(50) NOT NULL,
  `Company_facebook` varchar(1024) DEFAULT NULL,
  `Company_twitter` varchar(1024) DEFAULT NULL,
  `Company_LinkedIn` varchar(1024) DEFAULT NULL,
  `Company_website` varchar(1024) DEFAULT NULL,
  `Company_registered_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Company_short_intro_video` varchar(1024) DEFAULT NULL,
  `Company_posted_job_count` int(50) NOT NULL,
  `Company_provide_mock_interviews` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`User_ID`, `Company_name`, `Company_facebook`, `Company_twitter`, `Company_LinkedIn`, `Company_website`, `Company_registered_date`, `Company_short_intro_video`, `Company_posted_job_count`, `Company_provide_mock_interviews`) VALUES
(74, 'Dialog', '  ', ' https://twitter.com/dialoglk', 'https://www.linkedin.com/checkpoint/challengesV2/AQEpyoa1tKMnDwAAAX_HcrRy3cX9_OgUAsR3TF_Pnu2dZlg38nQvC4Q-7CTmLchIK3Kh89blqgqf2dUFpM1TH9OxqYmmX1U8Gg?original_referer=https%3A%2F%2Fwww.dialog.lk%2F', 'https://www.dialog.lk/', '2022-01-03 06:15:04', NULL, 39, 1),
(119, 'ABC Tech', 'www.facebook.com', 'www.twitter.com', 'www.linkedin.com', NULL, '2022-01-02 12:05:08', NULL, 30, 1),
(133, 'ND Eng', '', '', '', '', '2022-03-23 11:56:08', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Jobseeker_ID` int(10) UNSIGNED NOT NULL COMMENT 'user id from jobseeker table',
  `Counsellor_ID` int(10) UNSIGNED NOT NULL COMMENT 'user id from counsellor table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Jobseeker, Counseller (Contact)';

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `Contract_ID` int(10) UNSIGNED NOT NULL,
  `Contract_title` varchar(225) NOT NULL,
  `Contract_description` text NOT NULL,
  `Contract_publish_date` date NOT NULL DEFAULT current_timestamp(),
  `Contract_deadline` date NOT NULL,
  `Contract_bid_avg` int(11) NOT NULL,
  `Contract_category` varchar(500) NOT NULL,
  `Contract_provider_ID` int(10) UNSIGNED NOT NULL COMMENT 'user id from contract provider table',
  `Contractcatergory_ID` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`Contract_ID`, `Contract_title`, `Contract_description`, `Contract_publish_date`, `Contract_deadline`, `Contract_bid_avg`, `Contract_category`, `Contract_provider_ID`, `Contractcatergory_ID`) VALUES
(7, 'Build me a website', 'Hello, I would like a website created for an association which I belong to. Please take a look at [login to view URL] We would like a website exactly like this but for our local circle. We would like to use Word Press (premium). We would like a members area with secure access to share meeting minutes, etc, photos, videos, etc. We would like a way of keeping it updated, maybe a couple of times a month. We are happy to make minor updates if shown how. Please provide me a quote for total cost including a cost/ plan for on going maintenance and how long it would take to complete.', '2021-10-19', '2021-11-19', 5000, 'WordPress', 77, 1),
(8, 'CHANGE Re-type a PDF into WORD 83 pages', '83 pages To Be Converted from a PDF into TEXT at $5 per A4 page', '2021-10-19', '2021-11-17', 2500, 'data entry', 77, 1),
(9, 'Building manufacturing and accounting software', 'Manufacturing of kidswear. included job works.', '2021-10-19', '2021-11-11', 2000, 'Data Entry', 77, 1),
(10, 'Data entry operator', 'Typing work Phone Directory Medical form', '2021-10-19', '2021-11-12', 3000, 'Data Entry', 77, 1),
(22, 'Address Lookup', 'You will be given a list of locations in USA and Canada and a website with addresses on it.\r\nYou will need to locate the mailing address for each location. There are 2000 locations but the task is mostly copy/pasting with little research involved.', '2021-10-29', '2021-11-26', 6000, 'Data Entry', 75, 1),
(23, 'We need type writers for our blog', ' INRBIDDING ENDS IN 6 DAYS, 23 HOURS\r\nIf you have good typing speed you can work on our blog\r\nSkills Required\r\nLogo Design\r\nData Entry\r\nPhotoshop\r\nGhostwriting\r\nArticle Writing', '2021-10-29', '2021-11-03', 6000, 'Article Writing', 75, 1),
(24, 'Need excel script that deletes row from spreadsheet where email address matches email address on list.', 'I have a spreadsheet with several thousand contacts. Many of them have expired. I have a list of the expired email addresses. Rather than manually go through the list and delete matches, I\'m looking for an excel script that looks at the table given and deletes the matching row. The script should work in three modes. It should have a preview mode where it matches one record at a time, finds the record then requests my approval to delete the record. The second mode should give me an option to delete the email field only and not the row.\r\nOtherwise, it should have a bulk mode where it deletes records or gives me an option to just delete the email on the row and not the row itself.\r\n\r\nPlease provide past samples of work\r\n\r\nPlease provide estimate of time to develop macro\r\n\r\nThere art two samples of the spreadsheets attached for the macro to be written against', '2021-10-29', '2021-11-10', 7500, 'Data Entry', 75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contractprovider`
--

CREATE TABLE `contractprovider` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `ContractProvider_NIC` varchar(12) DEFAULT NULL,
  `Contract_provider_rate_total_star_count` int(3) DEFAULT NULL,
  `Contract_provider_rate_and_review_count` int(3) DEFAULT NULL,
  `Website_url` varchar(255) DEFAULT NULL,
  `Fb_url` varchar(255) DEFAULT NULL,
  `Linkedin_url` varchar(255) DEFAULT NULL,
  `Twitter_url` varchar(255) DEFAULT NULL,
  `Contract_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contractprovider`
--

INSERT INTO `contractprovider` (`User_ID`, `ContractProvider_NIC`, `Contract_provider_rate_total_star_count`, `Contract_provider_rate_and_review_count`, `Website_url`, `Fb_url`, `Linkedin_url`, `Twitter_url`, `Contract_count`) VALUES
(75, '199786412356', NULL, NULL, '', '  ', '', '', 5),
(77, '199586412356', NULL, NULL, '', '', '', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `contract_category`
--

CREATE TABLE `contract_category` (
  `Contractcatergory_ID` int(5) UNSIGNED NOT NULL,
  `Contract_category` varchar(100) NOT NULL,
  `Contract_count` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract_category`
--

INSERT INTO `contract_category` (`Contractcatergory_ID`, `Contract_category`, `Contract_count`) VALUES
(1, 'Word press', 1),
(2, 'Websites, IT & Software', 0),
(3, 'Writing & Content', 0),
(4, 'Design, Media & Architecture', 0),
(5, 'Data Entry & Admin', 0),
(6, 'Engineering & Science', 0),
(7, 'Sales & Marketing', 0),
(8, 'Business, Accounting, Human Resources & Legal', 0),
(9, 'Mobile Phones & Computing', 0),
(10, 'Translation & Languages', 0),
(11, 'ICT Education', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contract_post`
--

CREATE TABLE `contract_post` (
  `User_ID` int(10) UNSIGNED NOT NULL COMMENT 'user id of contract provider',
  `Contract_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract_post`
--

INSERT INTO `contract_post` (`User_ID`, `Contract_ID`) VALUES
(75, 7),
(75, 9),
(75, 22),
(75, 31),
(77, 8),
(77, 23),
(77, 24);

-- --------------------------------------------------------

--
-- Table structure for table `counsellor`
--

CREATE TABLE `counsellor` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Facebook` varchar(2083) DEFAULT NULL,
  `Linkedin` varchar(2083) DEFAULT NULL,
  `Twitter` varchar(2083) DEFAULT NULL,
  `Qualifications` longtext DEFAULT NULL,
  `Counsellor_provide_mock_interviews` enum('yes','no') DEFAULT NULL,
  `Approve_registration_status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counsellor`
--

INSERT INTO `counsellor` (`User_ID`, `City`, `Facebook`, `Linkedin`, `Twitter`, `Qualifications`, `Counsellor_provide_mock_interviews`, `Approve_registration_status`) VALUES
(98, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Weligama', '', '', '', '• aksdfj \r\n• as.dkjfj sdf\r\n• kaksdjf fsdf\r\n• lkakjdjf dsf\r\n• sdfdsff', 'yes', NULL),
(109, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '', '', '', '', '• lljsdf\r\n• ;sdff;dsjkjffk\r\n• sdf;f;jlkjklsdff\r\n• \r\n• \r\n• ', 'no', NULL),
(118, '', 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://www.twitter.com/', '• As a counsellor I would like to provide counselling services to jobseekers or any others who willing to take counselling. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae voluptatem cupiditate temporibus dolorum natus commodi quo tenetur, itaque ullam, officiis autem quos porro nihil minima libero, corrupti vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.\r\n• As a counsellor I would like to provide counselling services to jobseekers or any \r\n• lskjdf fdkjf\r\n•  autsdfsdffdsfljjlkjklem quos porro nihil minima libero, corrupti vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.\r\nAs a counsellor I would like to provide counselling services to jobseekers or any others who willing to take counselling. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae voluptatem cupiditate temporibus dolorum natus commodi quo tenetur, itaque ullam, officiis autem quos porro nihil minima libero, corrupti vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.\r\n\r\nhiiiiiiiiiiiiiiiiiAs a counsellor I would like to provide counselling services to jobseekers or any others who willing to take counselling. Lorem ipsum dolor sit amet consectetur adipisicing e to provide counselling services to jobseekers or any others who willing to take counsor any others who willing to take counselling. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae voluptatem cupiditate tempoadipisiadipisicing elit.hiiiiiiiiiii\r\n', 'no', NULL),
(122, 'Weligama', 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://www.twitter.com/', '• sadfjd;\r\n• sdlfkfj sdf\r\nds\r\n• sldkffjjsd\r\n\r\n• dfgfg', 'yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `counsellorqulification`
--

CREATE TABLE `counsellorqulification` (
  `Counsellor_ID` int(10) UNSIGNED NOT NULL,
  `Counsellor_qulification` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cp_rate_js`
--

CREATE TABLE `cp_rate_js` (
  `User_ID(CP)` int(10) UNSIGNED NOT NULL,
  `User_ID(JS)` int(10) UNSIGNED NOT NULL,
  `Star_count` int(10) NOT NULL,
  `Review` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dobid`
--

CREATE TABLE `dobid` (
  `Bid_ID` int(10) UNSIGNED NOT NULL,
  `Bid_value` int(10) UNSIGNED NOT NULL,
  `Bid_proposal` text DEFAULT NULL,
  `Jobseeker_ID` int(10) UNSIGNED NOT NULL,
  `Contract_provider_ID` int(10) UNSIGNED NOT NULL,
  `Contract_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Jobseeker, Contract_provider, Contract (doBID)';

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `FAQ_forum_ID` int(10) UNSIGNED NOT NULL,
  `FAQ_forum_question` text NOT NULL,
  `FAQ_forum_answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `Inquiry_ID` int(10) UNSIGNED NOT NULL,
  `Inquiry_status` tinyint(1) NOT NULL,
  `Inquiry` varchar(500) DEFAULT NULL,
  `Inquiry_from` varchar(500) DEFAULT NULL,
  `Inquiry_email_to` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inquirymessage`
--

CREATE TABLE `inquirymessage` (
  `Inquiry_message_ID` int(10) UNSIGNED NOT NULL,
  `Inquiry_ID` int(10) UNSIGNED NOT NULL,
  `Inquiry_reply` text NOT NULL,
  `Inquiry_message_date_time` datetime NOT NULL,
  `Inquiry_reply_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `Job_ID` int(10) UNSIGNED NOT NULL,
  `JobCategory_ID` int(10) UNSIGNED NOT NULL,
  `Job_category` varchar(255) NOT NULL,
  `Job_type` varchar(50) NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Job_title` varchar(255) NOT NULL,
  `Job_publish_date` date NOT NULL,
  `Job_deadline` date NOT NULL,
  `Job_salary` int(10) DEFAULT NULL,
  `Job_provide_mock_interviews` tinyint(1) NOT NULL,
  `Job_city` varchar(255) NOT NULL,
  `Job_description` text NOT NULL,
  `Job_forum` tinyint(1) DEFAULT NULL,
  `Job_image` varchar(255) DEFAULT NULL,
  `Job_phone_no` varchar(10) DEFAULT NULL,
  `Company_logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`Job_ID`, `JobCategory_ID`, `Job_category`, `Job_type`, `User_ID`, `Job_title`, `Job_publish_date`, `Job_deadline`, `Job_salary`, `Job_provide_mock_interviews`, `Job_city`, `Job_description`, `Job_forum`, `Job_image`, `Job_phone_no`, `Company_logo`) VALUES
(5, 1, '', 'Full Time', 133, 'Manager, Software Development II', '0000-00-00', '2022-04-28', 0, 0, 'Colombo', 'Welcome! you made it to the job description page! at zappos, we look for people who will show up as their whole self because we value diversity and inclusion, as well as people who enjoy fun and maybe even a little weirdnessSo be sure to check on whether you’re aligned with our company values and cultureIf you think you can see yourself delivering wow as a member of the zappos family, then check out the job description below! company culture is at our core\r\nOur 10 core values are more than just words, they`re a way of lifeWe know that companies with a strong culture & a higher purpose perform better in the long run.\r\nDo our values speak to you? 1Deliver wow through service\r\n2Embrace and drive change\r\n3Create fun and a little weirdness\r\n4Be adventurous, creative, and open-minded\r\n5Pursue growth and learning\r\n6Build open and honest relationships with communication\r\n7Build a positive team and family spirit\r\n8Do more with less\r\n9Be passionate and determined\r\n10Be humble\r\nWe focus on four c’s\r\nCompany culture\r\nCustomer service\r\nCommerce (the `e` kind in our case)\r\nCommunity zappos continues to transform and growEnsuring the four c’s remain top of mind in everyone’s day-to-day means delivering happiness and wow in the long-term to customers, as well as employees, vendors, shareholders and the community, in a sustainable wayIt’s also part of our core culture to offer shoppers more styles and variety, while reimagining ways to exceed expectations, protect and grow our company culture, and serve our communities near and farCompany perks: quick reference', 0, NULL, '', NULL),
(6, 8, '', 'Full Time', 133, 'computer operator', '0000-00-00', '2022-04-17', 0, 0, 'Colombo', 'වයස අවු 18-23 අතර පුහුණු නුපුහුණු ගැහැණු ළමුන් සඳහා පුරප්පාඩු ඇත\r\n\r\nහෝමාගමට ආසන්න පදිංචිකරුවන් සඳහා පමණයි\r\n\r\nවැටුප 15000-25000\r\n\r\nපරිගණක භාවිතයට ඇති මූලික දැනුම මේ සඳහා ප්රමාණවත් වන අතර\r\n\r\nපරිගණක පාඨමාලා හදාරා තිබීම විශේෂ සුදුසුකමක් වේ (Graphic Design,Photoshop,CorelDraw)\r\n\r\nCALL 071 667 4141 OR EMAIL info@mdcomputers.lk\r\n\r\nMDCOMPUTERS.LK(PVT)LTD', 0, NULL, '0112458976', NULL),
(7, 10, '', 'Full Time', 133, 'ICT Teacher - Primary Section', '0000-00-00', '2022-04-11', 0, 0, 'Kandy', 'ICT Teacher - Primary Section ( National Curriculum ) We are seeking to appoint a dynamic , self - motivated and results oriented ICT teacher to our National Curriculum Requirements\r\n\r\nBachelor`s Degree or Diploma in ICT Passed GCE ALL with high gradings\r\n\r\nExpectations\r\n\r\nCapacity to teach ICT in English language Ability conduct online lessons Experience in teaching ICT for Primary Classes in a reputed educational\r\n\r\ninstitute is an added advantage To apply for the above vacancy , please email your request for an application form ( stating your name and mobile number ) to careers@musaeus.lk .\r\n\r\nComplete the application form ( we send you via email ) with a supporting statement ( section 7 of the application form ) .\r\n\r\nChairman Musaeus College .', 0, NULL, '0112415569', NULL),
(8, 10, '', 'Full Time', 133, 'ICT Teacher', '0000-00-00', '2022-04-09', 25, 0, 'Colombo', 'If you are an IT teacher who is capable of handling ICT group classes, this is your chance. Apply now Give us a call on 0719281283 We are looking for teachers around Malabe.', 0, NULL, '0719281283', NULL),
(9, 2, '', 'Full Time', 119, 'Data Operator', '0000-00-00', '2022-04-18', 0, 0, 'Matara', 'Successful applicants for this position must be fully vaccinated against covid-19 as a condition of employmentVaccine verification will be required.\r\n\r\nPosition summary the clinical data entry operator 3 performs qc checks of cases/samples to ensure quality of accessioningPrimary responsibilities\r\n\r\nReview select cases for accuracy of data entry.\r\nAssist other cdos in resolving issues with their cases and provide feedback on the quality of their work.\r\nConsolidate all send-out samples accessioned by the cdo`s and ensure samples ready for ship-out are reviewed and shipped out the same day.\r\nEnsure that necessary notes and holds are placed on cases for non-conforming samples, discrepancies and/or missing information so that timely follow-up by the customer care team is made.\r\nCompose professional emails using proper grammar and spelling to communicate with other departments for case escalation and/or case status updates.\r\nCompile end of day report of all cases shipped, cases with issues, and cases that require immediate attention.\r\nHelp accession cases when needed.\r\nHelp perform runner tasks and preparing of kits for accessioning when needed.\r\nAttend interdepartmental meetings if needed and provide feedback on the current process or workflow.\r\nMonitor errors and metrics for cases sent to softfile for ode (outsourced data entry)\r\nThis role works with phi on a regular basis both in paper and electronic form and have an access to various technologies to access phi (paper and electronic) in order to perform the job\r\nEmployee must complete training relating to hipaa/phi privacy, general policies and procedure compliance training and security training as soon as possible but not later than the first 30 days of hire.\r\nMust maintain a current status on natera training requirements.\r\nEmployee must pass post offer criminal background check.\r\nPerforms other duties as assigned.', 0, NULL, '0714521456', NULL),
(10, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-04-02', 0, 0, 'Matale', 'gooo', 0, NULL, '0774521456', NULL),
(11, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-04-02', 0, 0, 'Matale', 'gooo', 0, NULL, '0774521456', NULL),
(12, 9, '', 'Part time', 74, 'Remote Mobile Application Developer', '0000-00-00', '2022-04-09', 0, 0, 'Nuwera Eliya', 'g', 0, NULL, '0774521456', NULL),
(13, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(14, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(15, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(16, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(17, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(18, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(19, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(20, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(21, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(22, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(23, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(24, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(25, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-15', 0, 0, 'Matara', 'hhh', 0, NULL, '', NULL),
(26, 1, '', 'Part time', 74, 'Website Development', '0000-00-00', '2022-03-26', 25, 0, 'Badulla', 'h', 0, NULL, '0774521456', NULL),
(27, 10, '', 'Part time', 74, 'ICT Teacher', '0000-00-00', '2022-03-05', 0, 0, 'Kegalle', 'f', 0, NULL, '0714521456', NULL),
(28, 10, '', 'Part time', 74, 'ICT Teacher', '0000-00-00', '2022-03-05', 0, 0, 'Kegalle', 'f', 0, NULL, '0714521456', NULL),
(29, 7, '', 'Part time', 74, 'Manager, Software Development II', '0000-00-00', '2022-03-12', 0, 0, 'Matara', 'ddd', 0, NULL, '', NULL),
(30, 2, '', 'Part time', 74, 'ICT Teacher', '0000-00-00', '2022-04-09', 25, 0, 'Monaragala', 'ggg', 0, NULL, '0774521456', NULL),
(31, 2, '', 'Part time', 74, 'ICT Teacher', '0000-00-00', '2022-04-09', 25, 0, 'Monaragala', 'ggg', 0, NULL, '0774521456', NULL),
(32, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-26', 0, 0, 'Polonnaruwa', '4', 0, NULL, '', NULL),
(34, 1, '', 'Full Time', 74, 'Website Development', '0000-00-00', '2022-03-26', 0, 0, 'Matale', 'g', 0, NULL, '', NULL),
(35, 8, '', 'Part time', 74, 'new job', '0000-00-00', '2022-04-02', 0, 0, 'Matale', 'lll', 0, NULL, '', NULL),
(36, 2, '', 'Part time', 74, 'Website Development', '0000-00-00', '2022-04-09', 0, 0, 'Nuwera Eliya', 'hhh', 0, NULL, '', NULL),
(37, 2, '', 'Full Time', 74, 'new2', '0000-00-00', '2022-04-23', 0, 0, 'Mulathivu', '111', 0, NULL, '', NULL),
(38, 1, '', 'Part time', 74, 'Website Development', '0000-00-00', '2022-04-09', 0, 0, 'Nuwera Eliya', '', 0, NULL, '', NULL),
(39, 1, '', 'Part time', 74, 'Website Development', '0000-00-00', '2022-04-09', 0, 0, 'Nuwera Eliya', '', 0, NULL, '', NULL),
(40, 1, '', 'Part time', 74, 'Website Development', '0000-00-00', '2022-04-09', 0, 0, 'Nuwera Eliya', '', 0, NULL, '', NULL),
(41, 1, '', 'Part time', 74, 'Website Development', '0000-00-00', '2022-04-09', 0, 0, 'Nuwera Eliya', '', 0, NULL, '', NULL),
(42, 1, '', 'Full Time', 74, 'new3', '0000-00-00', '2022-04-02', 0, 0, 'Mannar', 'hh', 0, NULL, '', NULL),
(43, 1, '', 'Part time', 74, 'Website Development', '0000-00-00', '2022-04-09', 0, 0, 'Mannar', 'xxx', 0, NULL, '0774521456', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobcategory`
--

CREATE TABLE `jobcategory` (
  `JobCategory_ID` int(10) UNSIGNED NOT NULL,
  `JobCategory_name` varchar(225) NOT NULL,
  `JobCategory_count` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobcategory`
--

INSERT INTO `jobcategory` (`JobCategory_ID`, `JobCategory_name`, `JobCategory_count`) VALUES
(1, 'Software Engineering', 25),
(2, 'Data Science', 5),
(3, 'Quality Assurance', 0),
(4, 'Front-end Development', 0),
(5, 'Back-end Development', 0),
(6, 'Machine Learning Engineering', 0),
(7, 'Associative Software Engineering', 1),
(8, 'Tech Lead', 2),
(9, 'Mobile App Development', 1),
(10, 'ICT Education', 4);

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Jobseeker_In` varchar(255) DEFAULT NULL,
  `Jobseeker_Twitter` varchar(255) DEFAULT NULL,
  `Jobseeker_Fb` varchar(255) DEFAULT NULL,
  `Jobseeker_Web` varchar(255) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `StreetNo` varchar(255) DEFAULT NULL,
  `Village` varchar(255) DEFAULT NULL,
  `Experience` varchar(255) DEFAULT NULL,
  `Skills` varchar(255) DEFAULT NULL,
  `Education` varchar(255) DEFAULT NULL,
  `Applied_jobs_count` int(5) DEFAULT NULL,
  `Applied_contracts_count` int(5) DEFAULT NULL,
  `Jobseeker_date_of_birth` date NOT NULL,
  `Rated_contract_provider_count` int(11) DEFAULT NULL,
  `Jobseeker_rate_total_star_count` int(5) DEFAULT NULL,
  `Jobseeker_rate_and_review_count` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`User_ID`, `Jobseeker_In`, `Jobseeker_Twitter`, `Jobseeker_Fb`, `Jobseeker_Web`, `Gender`, `Age`, `City`, `StreetNo`, `Village`, `Experience`, `Skills`, `Education`, `Applied_jobs_count`, `Applied_contracts_count`, `Jobseeker_date_of_birth`, `Rated_contract_provider_count`, `Jobseeker_rate_total_star_count`, `Jobseeker_rate_and_review_count`) VALUES
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1995-01-10', NULL, NULL, NULL),
(133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobseekercontracts`
--

CREATE TABLE `jobseekercontracts` (
  `Jobseeker_ID` int(10) UNSIGNED NOT NULL,
  `.Contract_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobseekerratings`
--

CREATE TABLE `jobseekerratings` (
  `Jobseeker_ID` int(10) UNSIGNED NOT NULL,
  `Contract_provider_ID` int(10) UNSIGNED NOT NULL,
  `Jobseeker_rate_and_review_reviews` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_jobs`
--

CREATE TABLE `jobseeker_jobs` (
  `Jobseeker_ID` int(10) UNSIGNED NOT NULL,
  `Job_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `js_rate_cp`
--

CREATE TABLE `js_rate_cp` (
  `User_ID(CP)` int(10) UNSIGNED NOT NULL,
  `User_ID(JS)` int(10) UNSIGNED NOT NULL,
  `Star_count` int(10) NOT NULL,
  `Review` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `js_rate_cp`
--

INSERT INTO `js_rate_cp` (`User_ID(CP)`, `User_ID(JS)`, `Star_count`, `Review`) VALUES
(75, 80, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `learningmaterial`
--

CREATE TABLE `learningmaterial` (
  `LearningMaterial_ID` int(11) NOT NULL,
  `LearningMaterial_link` varchar(1024) DEFAULT NULL,
  `LearningMaterial_category` varchar(100) DEFAULT NULL,
  `LearningMaterial_title` varchar(1024) DEFAULT NULL,
  `Academy_logo` varchar(255) DEFAULT NULL,
  `Resource_logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learningmaterial`
--

INSERT INTO `learningmaterial` (`LearningMaterial_ID`, `LearningMaterial_link`, `LearningMaterial_category`, `LearningMaterial_title`, `Academy_logo`, `Resource_logo`) VALUES
(1, 'https://www.w3schools.com/html/', 'Tutorials', 'HTML Tutorial', 'download (2).png', 'images.jpg'),
(2, 'https://www.youtube.com/watch?v=1Rs2ND1ryYc', 'Videos', 'CSS Tutorial - Zero to Hero (Complete Course)', 'download (3).png', '919826.png'),
(3, 'https://www.codecademy.com/learn/react-101?g_network=g&g_device=c&g_adid=518718871323&g_keyword=%2Btutorial%20%2Breactjs&g_acctid=243-039-7011&g_adtype=search&g_adgroupid=126771679424&g_keywordid=kwd-302300367777&g_campaign=ROW+Language%3A+Basic+-+Broad&g_campaignid=10947274266&utm_id=t_kwd-302300367777:ag_126771679424:cp_10947274266:n_g:d_c&utm_term=%2Btutorial%20%2Breactjs&utm_campaign=ROW%20Language%3A%20Basic%20-%20Broad&utm_source=google&utm_medium=paid-search&utm_content=518718871323&hsa_acc=2430397011&hsa_cam=10947274266&hsa_grp=126771679424&hsa_ad=518718871323&hsa_src=g&hsa_tgt=kwd-302300367777&hsa_kw=%2Btutorial%20%2Breactjs&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gclid=CjwKCAjwloCSBhAeEiwA3hVo_SDg3N91kea0XI9bTgjqWiYIuGSrARE04O2BdEwQyGWndkLncYu-BhoCpaAQAvD_BwE', 'Tutorials', 'Learn React', 'download (3).png', 'download (1).png');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `Notification_ID` int(10) UNSIGNED NOT NULL,
  `Notification_type` varchar(100) NOT NULL,
  `Notification_description` text NOT NULL,
  `User_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(10) UNSIGNED NOT NULL,
  `Payment_amount` int(10) NOT NULL,
  `Payment_description` text DEFAULT NULL,
  `Payment_date_and_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Payment_amount`, `Payment_description`, `Payment_date_and_time`) VALUES
(1, 0, 'Free trail', '2022-03-23 10:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Job_ID` int(10) UNSIGNED NOT NULL,
  `Payment_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Company, Job, Payment (Post)';

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`User_ID`, `Job_ID`, `Payment_ID`) VALUES
(74, 10, 1),
(74, 11, 1),
(74, 12, 1),
(74, 13, 1),
(74, 14, 1),
(74, 15, 1),
(74, 16, 1),
(74, 17, 1),
(74, 18, 1),
(74, 19, 1),
(74, 20, 1),
(74, 21, 1),
(74, 22, 1),
(74, 23, 1),
(74, 24, 1),
(74, 25, 1),
(74, 26, 1),
(74, 27, 1),
(74, 28, 1),
(74, 29, 1),
(74, 30, 1),
(74, 31, 1),
(74, 32, 1),
(74, 34, 1),
(74, 35, 1),
(74, 36, 1),
(74, 37, 1),
(74, 38, 1),
(74, 39, 1),
(74, 40, 1),
(74, 41, 1),
(74, 42, 1),
(74, 43, 1),
(119, 9, 1),
(133, 5, 1),
(133, 6, 1),
(133, 7, 1),
(133, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_question`
--

CREATE TABLE `post_question` (
  `FAQ_forum_ID` int(10) UNSIGNED NOT NULL,
  `Job_ID` int(10) UNSIGNED NOT NULL,
  `Jobseeker_ID` int(10) UNSIGNED NOT NULL COMMENT 'user id from jobseeker table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Jobseeker, Job, FAQ_Forum ( Post_Question)';

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `Jobseeker_ID` int(10) UNSIGNED NOT NULL COMMENT 'user id from jobseeker table',
  `Contract_provider_ID` int(10) UNSIGNED NOT NULL COMMENT 'user id from contract provider table',
  `Contract_provider_rate_and_review_reviews` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Contract_provider, Jobseeker (Rate)';

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `Resume_ID` int(10) UNSIGNED NOT NULL,
  `Resume_type` int(10) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Address` varchar(1024) DEFAULT NULL,
  `Email` varchar(500) NOT NULL,
  `Phone_no` varchar(10) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `About you` text DEFAULT NULL,
  `Skills` longtext DEFAULT NULL,
  `Jobseeker_ID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resume_education`
--

CREATE TABLE `resume_education` (
  `Resume_education_ID` varchar(10) NOT NULL,
  `Institute` varchar(100) DEFAULT NULL,
  `Degree` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Brief_description_about_education` text DEFAULT NULL,
  `From` date DEFAULT NULL,
  `To` date DEFAULT NULL,
  `I_currently_study_here` tinyint(1) DEFAULT NULL,
  `Resume_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resume_experience`
--

CREATE TABLE `resume_experience` (
  `Resume_experience_ID` varchar(10) NOT NULL,
  `Job_title` varchar(100) DEFAULT NULL,
  `Employer` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `What_did_you_do_in_this_job` text DEFAULT NULL,
  `From` date DEFAULT NULL,
  `To` date DEFAULT NULL,
  `I_currently_working_here` tinyint(1) DEFAULT NULL,
  `Resume_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resume_project`
--

CREATE TABLE `resume_project` (
  `Resume_project_ID` varchar(10) NOT NULL,
  `Project_title` varchar(100) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Resume_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resume_skil`
--

CREATE TABLE `resume_skil` (
  `Resume_skill_ID` int(10) UNSIGNED NOT NULL,
  `details` text NOT NULL,
  `Resume_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Learning_material_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='User, Learning_Materials (Search)';

-- --------------------------------------------------------

--
-- Table structure for table `system_rate_review`
--

CREATE TABLE `system_rate_review` (
  `System_rate_and_review_ID` int(10) UNSIGNED NOT NULL,
  `System_rate_star_count` int(3) DEFAULT NULL,
  `User_ID` int(10) UNSIGNED DEFAULT NULL,
  `System_rate_and_review_reviews` text NOT NULL,
  `review_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_rate_review`
--

INSERT INTO `system_rate_review` (`System_rate_and_review_ID`, `System_rate_star_count`, `User_ID`, `System_rate_and_review_reviews`, `review_date`) VALUES
(1, 3, 74, 'Good website', '2022-03-23'),
(2, 3, 80, 'good', '2022-03-24');

-- --------------------------------------------------------

--
-- Table structure for table `test_address`
--

CREATE TABLE `test_address` (
  `Address_ID` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `test_personal`
--

CREATE TABLE `test_personal` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_personal`
--

INSERT INTO `test_personal` (`ID`, `Name`, `Age`) VALUES
(1, 'Mohamed', 22),
(2, 'sandharuwan', 23),
(3, 'Ahamed', 21),
(4, 'supun', 24),
(5, 'supun', 24),
(6, 'Lulakshi Naduni Tharuka', 24),
(7, 'Mohamed', 22);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `Password` varchar(225) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Phone_number` varchar(10) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Profile_picture` varchar(1024) DEFAULT NULL,
  `User_type` varchar(20) NOT NULL,
  `Description` text DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Email_verify` tinyint(1) NOT NULL DEFAULT 0,
  `Email_varify_token` text NOT NULL,
  `Password_verify_token` text DEFAULT NULL,
  `Password_expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Password`, `Email`, `First_name`, `Last_name`, `Phone_number`, `Address`, `Profile_picture`, `User_type`, `Description`, `Created_at`, `Updated_at`, `Email_verify`, `Email_varify_token`, `Password_verify_token`, `Password_expires_at`) VALUES
(1, '$2y$10$.gLuj6uc/BeUBsta3cQGD.qMMwIwXCTBiGxzDlcFgAB0X/GGHyZFy', 'emails2ad44@gmail.com', 'ICT', 'Admin', NULL, NULL, NULL, 'Admin44', NULL, '2021-11-08 09:49:46', '2021-11-08 14:22:03', 1, '-1', NULL, '0000-00-00 00:00:00'),
(74, '$2y$10$K7VKzeg1stuZwa58gTz5sOgdLEJLVXZz8yq.pz/7FWN5j7H7J5xtK', '2019cs058@stu.ucsc.lk', 'Lulakshi', 'Naduni', '0777788991', 'No 45,Havankaka Road,Colombo 03', NULL, 'Company', '', '2021-10-25 18:30:00', '2021-10-26 18:03:23', 1, '-1', NULL, '0000-00-00 00:00:00'),
(75, '$2y$10$MTfrAvZWWhJqrsRA06lDv.vAIHSztFeQjJ7.fmEUIBNs7trCj9VJC', 'lalakshinaduni@gmail.com', 'Chamal', 'Gamage', '0756689654', '  No/25 Maharagama,Piliyandala', NULL, 'Contract provider', '', '2021-10-27 18:30:00', '2021-10-28 08:09:27', 1, '-1', NULL, '0000-00-00 00:00:00'),
(77, '$2y$10$YMiSwWDbZVaPJktNc4FLcu9MnP8Xcs29Agv8nw/JLTblCPb8cP1Nu', '2019cs153@stu.ucsc.lk', 'Sandaruwan', 'Gamage', '0776945871', '', NULL, 'Contract provider', '', '2021-10-29 18:30:00', '2021-10-30 07:44:41', 1, '-1', NULL, '0000-00-00 00:00:00'),
(80, '$2y$10$tUVQP5KfjcPPNZfY0iSqBO1UJ7h1Gwf7MfzHb8vhXII9GncCGTSW.', 'saradhamanage@gmail.com', 'Saradha', 'Manage', '0777077066', '', NULL, 'Jobseeker', '', '2021-10-30 08:16:59', '2021-10-30 08:16:59', 1, '-1', NULL, '0000-00-00 00:00:00'),
(98, '$2y$10$HssDnJlaqArz16uo2Z0/ueHsYV9kkvVe8SeJOOy7VLLXrgDgzoCFW', 'emails3ict@gmail.com', 'Mohamed Safrullah', 'Mohomed', '0771231234', '75, Main Street', NULL, 'Counsellor', '        As a counsellor I would like to provide counselling services to         jobseekers or any others who willing to take counselling. Lorem ipsum         dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae         voluptatem cupiditate temporibus dolorum natus commodi quo tenetur,         itaque ullam, officiis autem quos porro nihil minima libero, corrupti         vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt         officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.', '2021-11-06 19:24:14', '2021-11-06 19:24:14', 1, '-1', NULL, '0000-00-00 00:00:00'),
(105, '$2y$10$DR2kYwM9c/W5EljIcrpS5uHBSmGADtGiKo6HZocROaLZvwDJqyYSC', 'emails2ict@gmail.com', 'Oshan', 'Perera', '0771245667', '75, Main Street', NULL, 'Counsellor', '        As a counsellor I would like to provide counselling services to\n        jobseekers or any others who willing to take counselling. Lorem ipsum\n        dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae\n        voluptatem cupiditate temporibus dolorum natus commodi quo tenetur,\n        itaque ullam, officiis autem quos porro nihil minima libero, corrupti\n        vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt\n        officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.\n', '2021-11-09 05:53:03', '2021-11-09 05:53:03', 1, '-1', NULL, '0000-00-00 00:00:00'),
(108, '$2y$10$urNjdLVoSdt93X/WxenLTevloa7gGcf7ssuBvTWRlzrihTeiF5l0.', 'emails3msm@gmail.com', 'Moshfig', 'Hamedani', '0776985211', '75, Main Street', '', 'Counsellor', ' As a counsellor I would like to provide counselling services to jobseekers or any others who willing to take counselling. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae voluptatem cupiditate temporibus dolorum natus commodi quo tenetur, itaque ullam, officiis autem quos porro nihil minima libero, corrupti vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.\r\nhi I am', '2021-11-09 09:34:52', '2021-11-09 09:34:52', 1, '-1', NULL, '0000-00-00 00:00:00'),
(109, '$2y$10$I6cO8ZROJuyMHGBaCgUNfOJwygE6JWBMlapJdaNWcZ4C9NULXC2Lu', 'emails4msm@gmail.com', 'Ahamed', 'Niyas', '0770770777', '75/2, Sri Vajiragnana Mawatha', NULL, 'Counsellor', '        As a counsellor I would like to provide counselling services to         jobseekers or any others who willing to take counselling. Lorem ipsum         dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae         voluptatem cupiditate temporibus dolorum natus commodi quo tenetur,         itaque ullam, officiis autem quos porro nihil minima libero, corrupti         vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt         officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.', '2021-12-06 22:50:49', '2021-12-06 22:50:49', 1, '-1', NULL, '0000-00-00 00:00:00'),
(110, '$2y$10$BfSRUY/34DEVV5xoxa1uY.xxKfFxtjqDQXBh2kvvqPitfV5OesG/q', 'philips@gmail.com', 'Michael', 'Philips', '0779192838', '75/2, Dharmapala Mawatha', NULL, 'Counsellor', '        As a counsellor I would like to provide counselling services to         jobseekers or any others who willing to take counselling. Lorem ipsum         dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae         voluptatem cupiditate temporibus dolorum natus commodi quo tenetur,         itaque ullam, officiis autem quos porro nihil minima libero, corrupti         vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt         officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.', '2021-12-27 08:04:26', '2021-12-27 08:04:26', 1, '-1', NULL, '0000-00-00 00:00:00'),
(111, '$2y$10$PCIP4zc.nHj5dFJ8pHWwM.FWPEWhDWGMRTxPYqw5ybPPk73ZQ.P7S', 'Zoysa@gmail.com', 'Nimal', 'Zoysa', '0767788187', '2, Main Street', NULL, 'Counsellor', '        As a counsellor I would like to provide counselling services to         jobseekers or any others who willing to take counselling. Lorem ipsum         dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae         voluptatem cupiditate temporibus dolorum natus commodi quo tenetur,         itaque ullam, officiis autem quos porro nihil minima libero, corrupti         vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt         officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.', '2021-12-27 08:05:50', '2021-12-27 08:05:50', 1, '-1', NULL, '0000-00-00 00:00:00'),
(112, '$2y$10$nvbNPTJGDQK0MRRI/RR04eG2EK3OgMTfS.DjafOTNVEpuuEZl883i', 'Wichramarachchi@gmail.com', 'Kamal', 'Wichramarachchi', '0783344576', '75, Sri Vajiragnana Mawatha', NULL, 'Counsellor', '        As a counsellor I would like to provide counselling services to         jobseekers or any others who willing to take counselling. Lorem ipsum         dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae         voluptatem cupiditate temporibus dolorum natus commodi quo tenetur,         itaque ullam, officiis autem quos porro nihil minima libero, corrupti         vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt         officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.', '2021-12-27 08:08:36', '2021-12-27 08:08:36', 1, '-1', NULL, '0000-00-00 00:00:00'),
(113, '$2y$10$grnuHFqcyvFRnn7q/QMzV.U0CdZTHT1QZJLxq6GkBjuMk530Hdr8S', 'Dass@gmail.com', 'Johnathan', 'Dass', '0782389765', '73/2, Sri Vajiragnana Mawatha', NULL, 'Counsellor', '        As a counsellor I would like to provide counselling services to         jobseekers or any others who willing to take counselling. Lorem ipsum         dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae         voluptatem cupiditate temporibus dolorum natus commodi quo tenetur,         itaque ullam, officiis autem quos porro nihil minima libero, corrupti         vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt         officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.', '2021-12-27 08:11:07', '2021-12-27 08:11:07', 1, '-1', NULL, '0000-00-00 00:00:00'),
(115, '$2y$10$Kur/HtWTblRrhIYF2siA5uxZPJdUTvMG5tg.rBAckU2cj2rruEnN6', 'gamage@gmail.com', 'Sandaruwan', 'Gamage', '0779270786', '75/2, Main Street', NULL, 'Counsellor', '        As a counsellor I would like to provide counselling services to         jobseekers or any others who willing to take counselling. Lorem ipsum         dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae         voluptatem cupiditate temporibus dolorum natus commodi quo tenetur,         itaque ullam, officiis autem quos porro nihil minima libero, corrupti         vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt         officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.', '2021-12-27 08:13:22', '2021-12-27 08:13:22', 1, '-1', NULL, '0000-00-00 00:00:00'),
(116, '$2y$10$cG.gEb08o8WLdlzt0KMYPupNsxksGq6e2lBSH//WxjUksdegTR2tG', 'hettiarachchi@gmail.com', 'Lulakshi', 'Hettiarachchi', '0779273873', '75/2, Sri Vajiragnana Mawatha', '', 'Counsellor', '        As a counsellor I would like to provide counselling services to         jobseekers or any others who willing to take counselling. Lorem ipsum         dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae         voluptatem cupiditate temporibus dolorum natus commodi quo tenetur,         itaque ullam, officiis autem quos porro nihil minima libero, corrupti         vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt         officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.', '2021-12-27 08:14:22', '2021-12-27 08:14:22', 1, '-1', NULL, '0000-00-00 00:00:00'),
(118, '$2y$10$fskqqM1eDz/1i64x0HDwq.1Ro7m4cOXFs99wGXurY2Jd6WuhcEGxW', 'azeez@gmail.com', 'Ijaz', 'Azeez', '0773003198', '56, Sri Vajiragnana Mawatha', '', 'Counsellor', '        As a counsellor I would like to provide counselling services to         jobseekers or any others who willing to take counselling. Lorem ipsum         dolor sit amet consectetur adipisicing e to provide counselling services to jobseekers or any others who willing to take counsor any others who willing to take counselling. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae voluptatem cupiditate tempoadipisiadipisicing elit.\r\nAs a counsellor I would like to provide counselling services to jobseekers or any others who willing to take counselling. Lorem ipsum dolor sit amet consectetur adipisicing e to provide counselling services to jobseekers or any others who willing to take counsor any others who willing to take counselling. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae voluptatem cupiditate tempoadipisiadipisicing elit.\r\nhiiiiiiiiiiiiAs a counsellor I would like to provide counselling services to jobseekers or any others who willing to take counselling. Lorem ipsum dolor sit amet consectetur adipisicing e to provide counselling services to jobseekers or any others who willing to take counsor any others who willing to take counselling. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae voluptatem cupiditate tempoadipisiadipisicing elit.hiiiiiiii\r\n\r\n', '2021-12-30 05:35:19', '2021-12-30 05:35:19', 1, '-1', NULL, '0000-00-00 00:00:00'),
(119, '$2y$10$fPO7Aw0PWc8PpASGz0pXzOaBYWUOa/jEy8X1bAoeh9ZJrB010rvYe', 'Holan@gmail.com', 'Tom', 'Holan', '0770770777', '34, Main Street, Matara', NULL, 'Company', NULL, '2022-01-02 11:55:42', '2022-01-02 11:55:42', 1, '-1', NULL, '0000-00-00 00:00:00'),
(122, '$2y$10$SlwBsKsIvDqKe.eg12/q7uXIVkqeAvi3oOQpn2vqNJHpRocc9Q4Hy', 'emails3msm@gmail.com', 'Mohamed Safrullah', 'Mohomed', '0779270760', '75/2, Sri Vajiragnana Mawatha', '', 'Counsellor', '        As a counsellor I would like to provide counselling services to         jobseekers or any others who willing to take counselling. Lorem ipsum         dolor sit amet consectetur adipisicing elit. Delectus dolor quod vitae         voluptatem cupiditate temporibus dolorum natus commodi quo tenetur,         itaque ullam, officiis autem quos porro nihil minima libero, corrupti         vero. Inventore omnis adipisci fugiat, officiis tempore odit incidunt         officia repellat dolore expedita quas aspernatur, amet sit sunt at eius.', '2022-01-09 15:42:40', '2022-01-09 15:42:40', 1, '-1', NULL, '0000-00-00 00:00:00'),
(133, '$2y$10$f0Wq9kK.GCw5Gu7xXyH//Ol9ans6FV0IHqnL5RIPrOHfn/zaWsJ7u', 'alwisneetha@gmail.com', 'Neetha', 'Alwis', '0112545665', NULL, NULL, 'Company', '', '2022-03-23 11:51:51', '2022-03-23 11:51:51', 1, '-1', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `User_ID` int(10) UNSIGNED NOT NULL,
  `FAQ_forum_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add and answer`
--
ALTER TABLE `add and answer`
  ADD PRIMARY KEY (`Job_ID`,`FAQ_forum_ID`),
  ADD KEY `FAQ_forum_ID` (`FAQ_forum_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`Application_ID`),
  ADD KEY `Company_ID` (`Company_ID`),
  ADD KEY `Jobseeker_ID` (`Jobseeker_ID`),
  ADD KEY `Job_ID` (`Job_ID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Jobseeker_ID`,`Counsellor_ID`),
  ADD KEY `Counsellor_ID` (`Counsellor_ID`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`Contract_ID`),
  ADD KEY `fk1` (`Contract_provider_ID`),
  ADD KEY `Contractcatergory_ID` (`Contractcatergory_ID`);

--
-- Indexes for table `contractprovider`
--
ALTER TABLE `contractprovider`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `contract_category`
--
ALTER TABLE `contract_category`
  ADD PRIMARY KEY (`Contractcatergory_ID`);

--
-- Indexes for table `contract_post`
--
ALTER TABLE `contract_post`
  ADD PRIMARY KEY (`User_ID`,`Contract_ID`),
  ADD KEY `contract_post_ibfk_2` (`Contract_ID`);

--
-- Indexes for table `counsellor`
--
ALTER TABLE `counsellor`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `counsellorqulification`
--
ALTER TABLE `counsellorqulification`
  ADD PRIMARY KEY (`Counsellor_ID`,`Counsellor_qulification`) USING BTREE;

--
-- Indexes for table `cp_rate_js`
--
ALTER TABLE `cp_rate_js`
  ADD PRIMARY KEY (`User_ID(CP)`,`User_ID(JS)`),
  ADD KEY `JS` (`User_ID(JS)`);

--
-- Indexes for table `dobid`
--
ALTER TABLE `dobid`
  ADD PRIMARY KEY (`Bid_ID`),
  ADD KEY `Contract_provider_ID` (`Contract_provider_ID`),
  ADD KEY `Jobseeker_ID` (`Jobseeker_ID`),
  ADD KEY `Contract_ID` (`Contract_ID`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`FAQ_forum_ID`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`Inquiry_ID`);

--
-- Indexes for table `inquirymessage`
--
ALTER TABLE `inquirymessage`
  ADD PRIMARY KEY (`Inquiry_message_ID`),
  ADD KEY `Inquiry_ID` (`Inquiry_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`Job_ID`),
  ADD KEY `Job_category` (`JobCategory_ID`),
  ADD KEY `Job_company` (`User_ID`);

--
-- Indexes for table `jobcategory`
--
ALTER TABLE `jobcategory`
  ADD PRIMARY KEY (`JobCategory_ID`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `jobseekercontracts`
--
ALTER TABLE `jobseekercontracts`
  ADD PRIMARY KEY (`Jobseeker_ID`,`.Contract_ID`),
  ADD KEY `.Contract_ID` (`.Contract_ID`);

--
-- Indexes for table `jobseekerratings`
--
ALTER TABLE `jobseekerratings`
  ADD PRIMARY KEY (`Jobseeker_ID`,`Contract_provider_ID`),
  ADD KEY `Contract_provider_ID` (`Contract_provider_ID`);

--
-- Indexes for table `jobseeker_jobs`
--
ALTER TABLE `jobseeker_jobs`
  ADD PRIMARY KEY (`Jobseeker_ID`,`Job_ID`),
  ADD KEY `Job_ID` (`Job_ID`);

--
-- Indexes for table `js_rate_cp`
--
ALTER TABLE `js_rate_cp`
  ADD PRIMARY KEY (`User_ID(CP)`,`User_ID(JS)`),
  ADD KEY `JS` (`User_ID(JS)`);

--
-- Indexes for table `learningmaterial`
--
ALTER TABLE `learningmaterial`
  ADD PRIMARY KEY (`LearningMaterial_ID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`Notification_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`User_ID`,`Job_ID`,`Payment_ID`),
  ADD KEY `Job_ID` (`Job_ID`),
  ADD KEY `Payment_ID` (`Payment_ID`);

--
-- Indexes for table `post_question`
--
ALTER TABLE `post_question`
  ADD PRIMARY KEY (`FAQ_forum_ID`,`Job_ID`),
  ADD KEY `Job_ID` (`Job_ID`),
  ADD KEY `Jobseeker_ID` (`Jobseeker_ID`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`Jobseeker_ID`,`Contract_provider_ID`),
  ADD KEY `Contract_provider_ID` (`Contract_provider_ID`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`Resume_ID`),
  ADD KEY `Jobseeker_ID` (`Jobseeker_ID`);

--
-- Indexes for table `resume_education`
--
ALTER TABLE `resume_education`
  ADD PRIMARY KEY (`Resume_education_ID`,`Resume_ID`),
  ADD KEY `Resume_ID` (`Resume_ID`);

--
-- Indexes for table `resume_experience`
--
ALTER TABLE `resume_experience`
  ADD PRIMARY KEY (`Resume_experience_ID`,`Resume_ID`),
  ADD KEY `Resume_ID` (`Resume_ID`);

--
-- Indexes for table `resume_project`
--
ALTER TABLE `resume_project`
  ADD PRIMARY KEY (`Resume_project_ID`,`Resume_ID`),
  ADD KEY `Resume_ID` (`Resume_ID`);

--
-- Indexes for table `resume_skil`
--
ALTER TABLE `resume_skil`
  ADD PRIMARY KEY (`Resume_skill_ID`,`Resume_ID`),
  ADD KEY `Resume_ID` (`Resume_ID`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`User_ID`,`Learning_material_ID`),
  ADD KEY `Learning_material_ID` (`Learning_material_ID`);

--
-- Indexes for table `system_rate_review`
--
ALTER TABLE `system_rate_review`
  ADD PRIMARY KEY (`System_rate_and_review_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `test_address`
--
ALTER TABLE `test_address`
  ADD PRIMARY KEY (`Address_ID`),
  ADD KEY `Address` (`User_ID`);

--
-- Indexes for table `test_personal`
--
ALTER TABLE `test_personal`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`User_ID`,`FAQ_forum_ID`),
  ADD KEY `FAQ_forum_ID` (`FAQ_forum_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply`
--
ALTER TABLE `apply`
  MODIFY `Application_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `Contract_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `contract_category`
--
ALTER TABLE `contract_category`
  MODIFY `Contractcatergory_ID` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dobid`
--
ALTER TABLE `dobid`
  MODIFY `Bid_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `FAQ_forum_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `Inquiry_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquirymessage`
--
ALTER TABLE `inquirymessage`
  MODIFY `Inquiry_message_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `Job_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `jobcategory`
--
ALTER TABLE `jobcategory`
  MODIFY `JobCategory_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `learningmaterial`
--
ALTER TABLE `learningmaterial`
  MODIFY `LearningMaterial_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `Notification_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `Resume_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resume_skil`
--
ALTER TABLE `resume_skil`
  MODIFY `Resume_skill_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_rate_review`
--
ALTER TABLE `system_rate_review`
  MODIFY `System_rate_and_review_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `test_address`
--
ALTER TABLE `test_address`
  MODIFY `Address_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_personal`
--
ALTER TABLE `test_personal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add and answer`
--
ALTER TABLE `add and answer`
  ADD CONSTRAINT `add and answer_ibfk_1` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`Job_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `add and answer_ibfk_2` FOREIGN KEY (`FAQ_forum_ID`) REFERENCES `faq` (`FAQ_forum_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `add and answer_ibfk_3` FOREIGN KEY (`User_ID`) REFERENCES `company` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `apply_ibfk_1` FOREIGN KEY (`Company_ID`) REFERENCES `company` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apply_ibfk_2` FOREIGN KEY (`Jobseeker_ID`) REFERENCES `jobseeker` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apply_ibfk_3` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`Job_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`Jobseeker_ID`) REFERENCES `jobseeker` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`Counsellor_ID`) REFERENCES `counsellor` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`Contractcatergory_ID`) REFERENCES `contract_category` (`Contractcatergory_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk1` FOREIGN KEY (`Contract_provider_ID`) REFERENCES `contractprovider` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contractprovider`
--
ALTER TABLE `contractprovider`
  ADD CONSTRAINT `contractprovider_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contract_post`
--
ALTER TABLE `contract_post`
  ADD CONSTRAINT `contract_post_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `counsellor`
--
ALTER TABLE `counsellor`
  ADD CONSTRAINT `counsellor_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `counsellorqulification`
--
ALTER TABLE `counsellorqulification`
  ADD CONSTRAINT `counsellorqulification_ibfk_1` FOREIGN KEY (`Counsellor_ID`) REFERENCES `counsellor` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dobid`
--
ALTER TABLE `dobid`
  ADD CONSTRAINT `dobid_ibfk_1` FOREIGN KEY (`Contract_provider_ID`) REFERENCES `contractprovider` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dobid_ibfk_2` FOREIGN KEY (`Jobseeker_ID`) REFERENCES `jobseeker` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dobid_ibfk_3` FOREIGN KEY (`Contract_ID`) REFERENCES `contract` (`Contract_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inquirymessage`
--
ALTER TABLE `inquirymessage`
  ADD CONSTRAINT `inquirymessage_ibfk_1` FOREIGN KEY (`Inquiry_ID`) REFERENCES `inquiry` (`Inquiry_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `Job_category` FOREIGN KEY (`JobCategory_ID`) REFERENCES `jobcategory` (`JobCategory_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Job_company` FOREIGN KEY (`User_ID`) REFERENCES `company` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD CONSTRAINT `jobseeker_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobseekercontracts`
--
ALTER TABLE `jobseekercontracts`
  ADD CONSTRAINT `jobseekercontracts_ibfk_1` FOREIGN KEY (`Jobseeker_ID`) REFERENCES `jobseeker` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobseekercontracts_ibfk_2` FOREIGN KEY (`.Contract_ID`) REFERENCES `contract` (`Contract_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobseekerratings`
--
ALTER TABLE `jobseekerratings`
  ADD CONSTRAINT `jobseekerratings_ibfk_1` FOREIGN KEY (`Contract_provider_ID`) REFERENCES `contractprovider` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobseekerratings_ibfk_2` FOREIGN KEY (`Jobseeker_ID`) REFERENCES `jobseeker` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobseeker_jobs`
--
ALTER TABLE `jobseeker_jobs`
  ADD CONSTRAINT `jobseeker_jobs_ibfk_1` FOREIGN KEY (`Jobseeker_ID`) REFERENCES `jobseeker` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobseeker_jobs_ibfk_2` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`Job_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `js_rate_cp`
--
ALTER TABLE `js_rate_cp`
  ADD CONSTRAINT `JS` FOREIGN KEY (`User_ID(JS)`) REFERENCES `jobseeker` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`Job_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_3` FOREIGN KEY (`User_ID`) REFERENCES `company` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_question`
--
ALTER TABLE `post_question`
  ADD CONSTRAINT `post_question_ibfk_1` FOREIGN KEY (`FAQ_forum_ID`) REFERENCES `faq` (`FAQ_forum_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_question_ibfk_2` FOREIGN KEY (`Job_ID`) REFERENCES `job` (`Job_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_question_ibfk_3` FOREIGN KEY (`Jobseeker_ID`) REFERENCES `jobseeker` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`Contract_provider_ID`) REFERENCES `contractprovider` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`Jobseeker_ID`) REFERENCES `jobseeker` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resume`
--
ALTER TABLE `resume`
  ADD CONSTRAINT `resume_ibfk_1` FOREIGN KEY (`Jobseeker_ID`) REFERENCES `jobseeker` (`User_ID`) ON DELETE CASCADE;

--
-- Constraints for table `resume_education`
--
ALTER TABLE `resume_education`
  ADD CONSTRAINT `resume_education_ibfk_1` FOREIGN KEY (`Resume_ID`) REFERENCES `resume` (`Resume_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resume_experience`
--
ALTER TABLE `resume_experience`
  ADD CONSTRAINT `resume_experience_ibfk_1` FOREIGN KEY (`Resume_ID`) REFERENCES `resume` (`Resume_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resume_project`
--
ALTER TABLE `resume_project`
  ADD CONSTRAINT `resume_project_ibfk_1` FOREIGN KEY (`Resume_ID`) REFERENCES `resume` (`Resume_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `resume_skil`
--
ALTER TABLE `resume_skil`
  ADD CONSTRAINT `resume_skil_ibfk_1` FOREIGN KEY (`Resume_ID`) REFERENCES `resume` (`Resume_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `system_rate_review`
--
ALTER TABLE `system_rate_review`
  ADD CONSTRAINT `system_rate_review_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
